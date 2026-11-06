#!/usr/bin/env python3
# p8t: camera 7 builds the High-res menu option (pref_camera_high_resolution_key) without a menu
# location (so the bottom panel, mask 120, skips it) and without an icon array (I()), which the
# bottom menu item needs (er.h.K -> obtainTypedArray(0) crash). In every o0 menu group:
#   after aVar.a0(...): aVar.I(<icon array id>)  (argv[2], e.g. array/high_resolution_icons_48M)
#   after aVar.E(...):                    aVar.O(8)          (bottom menu, like Aspect ratio/Timer/HDR)
import os, re, sys
p = os.path.join(sys.argv[1], "com", "oplus", "camera", "ui", "menu", "o0.smali")
s = open(p).read()
if "p8t-hires-menu" in s:
    print("already patched"); sys.exit(0)
m = re.search(r"(L[\w/$]+;)->O\(I\)V", s)
if not m:
    sys.exit("no ->O(I)V call in o0 to copy")
B = m.group(1)
ICON = sys.argv[2] if len(sys.argv) > 2 else ""
T_OLD = sys.argv[3] if len(sys.argv) > 3 else ""   # string/camera_setting_submenu_high_resolution ("%1$1.0f MP")
T_NEW = sys.argv[4] if len(sys.argv) > 4 else ""   # string/camera_setting_submenu_high_res ("Hi-res")
if not re.fullmatch(r"0x7f[0-9a-f]{6}", ICON):
    sys.exit("usage: patch_cam7_hires_menu.py <smali_dir> <icon array id 0x7f......>")
if (B + "->I(I)V") not in s:
    sys.exit("no ->I(I)V call in o0 to copy")

def regs_of(line):
    mm = re.match(r"(\s*)invoke-virtual(/range)? \{([^}]*)\}, ", line)
    ind, rng, regs = mm.group(1), mm.group(2) or "", mm.group(3)
    ireg = [x.strip() for x in regs.split("..")][1] if rng else [x.strip() for x in regs.split(",")][1]
    return ind, rng, regs, ireg

lines = s.split("\n")
out, i, n = [], 0, 0
while i < len(lines):
    ln = lines[i]
    if not re.match(r'\s*const-string(/jumbo)? v\d+, "pref_camera_high_resolution_key"\s*$', ln):
        out.append(ln); i += 1; continue
    j = i + 1
    while j < len(lines) and (B + "->z()") not in lines[j] and not lines[j].startswith(".end method"):
        j += 1
    seg = lines[i:j]
    if j >= len(lines) or lines[j].startswith(".end method") or any((B + "->O(I)V") in x for x in seg):
        out.append(ln); i += 1; continue
    has_i = any((B + "->I(I)V") in x for x in seg)
    a0 = [k for k, x in enumerate(seg) if (B + "->a0(I)V") in x]
    e = [k for k, x in enumerate(seg) if (B + "->E(I)V") in x]
    if not e:
        out.append(ln); i += 1; continue
    new = []
    for k, x in enumerate(seg):
        new.append(x)
        if not has_i and a0 and k == a0[0]:
            ind, rng, regs, ireg = regs_of(x)
            new.append(f"{ind}# p8t-hires-menu: icon array for the bottom menu item")
            new.append(f"{ind}const {ireg}, {ICON}")
            new.append(f"{ind}invoke-virtual{rng} {{{regs}}}, {B}->I(I)V")
        if k == e[-1]:
            ind, rng, regs, ireg = regs_of(x)
            new.append(f"{ind}# p8t-hires-menu: show High-res in the bottom menu panel")
            new.append(f"{ind}const/16 {ireg}, 0x8")
            new.append(f"{ind}invoke-virtual{rng} {{{regs}}}, {B}->O(I)V")
    out.extend(new)
    n += 1
    i = j
if n == 0:
    sys.exit("no high-res option block patched")
res = "\n".join(out)
titles = 0
if T_OLD and T_NEW:
    res, titles = re.subn(r"^([ \t]*)(const v\d+, )" + T_OLD + r"([ \t]*)$",
                          lambda m: m.group(1) + "# p8t-hires-menu: plain title (Hi-res) instead of %1$1.0f MP\n" + m.group(1) + m.group(2) + T_NEW + m.group(3),
                          res, flags=re.M)
open(p, "w").write(res)
print(f"o0: High-res option given icon array + menu location 8 in {n} group(s), title replaced in {titles}")
