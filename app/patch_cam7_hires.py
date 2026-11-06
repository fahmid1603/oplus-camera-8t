#!/usr/bin/env python3
# p8t: camera 7 photo mode (wm/d3 "CommonCapMode") answers false for key_high_picture_size,
# which hides the High-res option and disables the high picturesize path.
# Prologue in d3.getSupportFunction: key_high_picture_size + rear + com.oplus.pre.high.resolution.support -> true.
import os, re, sys
d = sys.argv[1]
p = os.path.join(d, "wm", "d3.smali")
s = open(p).read()
if "p8t-hires" in s:
    print("already patched"); sys.exit(0)
GSF = '''    # p8t-hires begin
    const-string v0, "key_high_picture_size"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :p8t_gsf_skip
    invoke-virtual {p0}, Lwm/d3;->isFrontCamera()Z
    move-result v0
    if-nez v0, :p8t_gsf_skip
    const-string v0, "com.oplus.pre.high.resolution.support"
    invoke-static {v0}, Lcom/oplus/camera/configure/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :p8t_gsf_skip
    const/4 v0, 0x1
    return v0
    :p8t_gsf_skip
    # p8t-hires end
'''
mm = re.search(r"^\.method ([^\n]*)getSupportFunction\(Ljava/lang/String;\)Z\n(.*?)^\.end method", s, re.M | re.S)
if not mm:
    sys.exit("d3.getSupportFunction(String)Z not found")
body = mm.group(2).split("\n")
out, i = [], 0
while i < len(body) and not re.match(r"\s*\.(registers|locals)\s+\d+", body[i]):
    out.append(body[i]); i += 1
if i == len(body):
    sys.exit("no .registers/.locals")
r = re.match(r"(\s*)\.(registers|locals)\s+(\d+)", body[i])
kind, n = r.group(2), int(r.group(3))
if kind == "locals" and n < 1: body[i] = f"{r.group(1)}.locals 1"
if kind == "registers" and n < 3: body[i] = f"{r.group(1)}.registers 3"
out.append(body[i]); i += 1
in_blk = None
while i < len(body):
    t = body[i].strip()
    if in_blk:
        out.append(body[i]); i += 1
        if t == in_blk: in_blk = None
        continue
    if t.startswith(".annotation"):
        in_blk = ".end annotation"; out.append(body[i]); i += 1; continue
    if t.startswith(".param"):
        if i + 1 < len(body) and body[i+1].strip().startswith(".annotation"): in_blk = ".end param"
        out.append(body[i]); i += 1; continue
    if t == "" or t.startswith("#") or t.startswith(".prologue") or t.startswith(".line"):
        out.append(body[i]); i += 1; continue
    break
out.append(GSF.rstrip("\n"))
out.extend(body[i:])
s = s[:mm.start(2)] + "\n".join(out) + s[mm.end(2):]
open(p, "w").write(s)
print("d3.getSupportFunction: prologue injected (%s %d)" % (kind, n))
