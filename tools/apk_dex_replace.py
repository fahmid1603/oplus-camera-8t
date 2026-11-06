#!/usr/bin/env python3
"""apk_dex_replace.py IN.apk OUT.apk NAME=NEWFILE [NAME=NEWFILE ...]

Replace entries (e.g. classes3.dex) inside an APK WITHOUT touching anything else:
every other entry is copied byte-for-byte, STORED entries stay 4-byte aligned
(.so -> 4096), and the APK Signing Block is carried over unchanged so the
certificate is still readable (system-partition apps are scanned without digest
verification). Replaced entries keep their original compression method.
"""
import struct, sys, zlib

def die(m): sys.exit("apk_dex_replace: " + m)

def main():
    if len(sys.argv) < 4: die(__doc__)
    src, dst = sys.argv[1], sys.argv[2]
    repl = {}
    for a in sys.argv[3:]:
        n, f = a.split("=", 1); repl[n] = open(f, "rb").read()
    d = open(src, "rb").read()
    eocd = d.rfind(b"PK\x05\x06")
    if eocd < 0: die("no EOCD")
    (_, _, _, _, n_ent, cd_size, cd_off, cmt_len) = struct.unpack("<IHHHHIIH", d[eocd:eocd + 22])
    sig_start = cd_off
    if d[cd_off - 16:cd_off] == b"APK Sig Block 42":
        blk = struct.unpack("<Q", d[cd_off - 24:cd_off - 16])[0]
        sig_start = cd_off - blk - 8
    sigblock = d[sig_start:cd_off]
    # parse central directory
    ents, p = [], cd_off
    for _ in range(n_ent):
        if d[p:p + 4] != b"PK\x01\x02": die("bad CD entry")
        f = list(struct.unpack("<IHHHHHHIIIHHHHHII", d[p:p + 46]))
        nl, el, cl = f[10], f[11], f[12]
        name = d[p + 46:p + 46 + nl]
        ents.append((f, name, d[p + 46 + nl:p + 46 + nl + el], d[p + 46 + nl + el:p + 46 + nl + el + cl]))
        p += 46 + nl + el + cl
    order = sorted(range(len(ents)), key=lambda i: ents[i][0][16])
    out, newoff, done = bytearray(), {}, set()
    for i in order:
        f, name, cext, ccom = ents[i]
        lo = f[16]
        lh = list(struct.unpack("<IHHHHHIIIHH", d[lo:lo + 30]))
        lnl, lel = lh[9], lh[10]
        lname = d[lo + 30:lo + 30 + lnl]
        lext = d[lo + 30 + lnl:lo + 30 + lnl + lel]
        method, csize, usize, crc = f[4], f[8], f[9], f[7]
        data = d[lo + 30 + lnl + lel:lo + 30 + lnl + lel + csize]
        dd = b""
        if f[3] & 0x8:   # data descriptor follows the data: carry it over
            q = lo + 30 + lnl + lel + csize
            dd = d[q:q + 16] if d[q:q + 4] == b"PK\x07\x08" else d[q:q + 12]
        sname = name.decode("utf-8", "replace")
        if sname in repl:
            raw = repl[sname]; done.add(sname)
            crc = zlib.crc32(raw) & 0xffffffff; usize = len(raw)
            if method == 0: data = raw
            elif method == 8:
                c = zlib.compressobj(9, zlib.DEFLATED, -15); data = c.compress(raw) + c.flush()
            else: die(f"unsupported method {method} for {sname}")
            csize = len(data)
            if dd: dd = (b"PK\x07\x08" if len(dd) == 16 else b"") + struct.pack("<III", crc, csize, usize)
        # alignment for STORED entries
        if method == 0:
            # keep the alignment the original data had (16K/4K page for .so, 4 for the rest)
            odata = lo + 30 + lnl + lel
            align = 4
            if sname.endswith(".so"):
                for a in (16384, 4096):
                    if odata % a == 0: align = a; break
            base = len(out) + 30 + lnl
            ext = b"" if lext.strip(b"\x00") == b"" else lext   # pure zero padding -> recompute
            pad = (-(base + len(ext))) % align
            ext = ext + b"\x00" * pad
        else:
            ext = lext
        newoff[i] = len(out)
        lh[6], lh[7], lh[8], lh[10] = crc, csize, usize, len(ext)
        out += struct.pack("<IHHHHHIIIHH", *lh) + lname + ext + data + dd
        f[7], f[8], f[9] = crc, csize, usize
    missing = set(repl) - done
    if missing: die(f"entries not found: {missing}")
    out += sigblock
    new_cd = len(out)
    for i, (f, name, cext, ccom) in enumerate(ents):
        f[16] = newoff[i]
        out += struct.pack("<IHHHHHHIIIHHHHHII", *f) + name + cext + ccom
    cd_len = len(out) - new_cd
    out += struct.pack("<IHHHHIIH", 0x06054b50, 0, 0, n_ent, n_ent, cd_len, new_cd, cmt_len) + d[eocd + 22:eocd + 22 + cmt_len]
    open(dst, "wb").write(out)
    print(f"apk_dex_replace: {dst} written ({len(out)} bytes), replaced {sorted(done)}, signing block {'kept' if sigblock else 'absent'}")

if __name__ == "__main__":
    main()
