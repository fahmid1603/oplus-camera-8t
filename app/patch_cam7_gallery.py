#!/usr/bin/env python3
# p8t: camera 7 (OnePlus flavor) hardcodes gallery package com.oneplus.gallery in com.oplus.camera.dg.a()
# (OplusConfigure); this ROM ships com.coloros.gallery3d -> return that instead.
# usage: python3 patch_cam7_gallery.py <baksmali_dir>
import os, re, sys
d = sys.argv[1]
p = os.path.join(d, "com/oplus/camera/dg.smali")
if not os.path.isfile(p):
    sys.exit("dg.smali not found")
s = open(p).read()
if "p8t" in s:
    sys.exit("already patched")
m = re.search(r'\.method public final a\(\)Ljava/lang/String;\n.*?\.end method\n', s, re.S)
if not m or '"com.oneplus.gallery"' not in m.group(0):
    sys.exit("dg.a() with com.oneplus.gallery not found")
new = ('.method public final a()Ljava/lang/String;\n'
       '    .registers 2\n\n'
       '    # p8t: ROM gallery is com.coloros.gallery3d\n'
       '    const-string v0, "com.coloros.gallery3d"\n\n'
       '    return-object v0\n'
       '.end method\n')
open(p, "w").write(s[:m.start()] + new + s[m.end():])
print("patched", p)
