#!/usr/bin/env python3
# p8t cam7 compat for the camera-6 unit.sdk jar (p8t46 line):
# every  (int[]) <PreviewParameter$Builder>.get(key)  goes through Port8tCompat.ia(), which turns a
# long[] (camera 7 app) into int[] (camera 6 SDK). int[]/null pass through unchanged -> camera 6 unaffected.
# usage: python3 patch_sdk_cam7.py <baksmali_dir> [<baksmali_dir> ...]
import os, re, sys
dirs = sys.argv[1:]
pat = re.compile(
    r'(    invoke-[a-z/]+ \{[^}]*\}, L[^;]*PreviewParameter\$Builder;->get\([^)]*\)Ljava/lang/Object;\n'
    r'(?:[ \t]*\n)*    move-result-object ([vp]\d+)\n)'
    r'((?:[ \t]*\n|    \.line \d+\n)*    check-cast \2, \[I\n)')
total, home = 0, None
for d in dirs:
    for r, _, fs in os.walk(d):
        for f in fs:
            if not f.endswith(".smali"):
                continue
            p = os.path.join(r, f)
            s = open(p).read()
            if "Port8tCompat;->ia" in s:
                continue
            n = [0]
            def sub(m):
                n[0] += 1
                reg = m.group(2)
                return (m.group(1) +
                        f"\n    invoke-static/range {{{reg} .. {reg}}}, Lcom/p8t/Port8tCompat;->ia(Ljava/lang/Object;)Ljava/lang/Object;\n"
                        f"\n    move-result-object {reg}\n" + m.group(3))
            s2 = pat.sub(sub, s)
            if n[0]:
                open(p, "w").write(s2)
                total += n[0]
                print(f"{n[0]:3d}  {os.path.relpath(p, d)}")
                if home is None and f == "BaseMode.smali":
                    home = d
if total == 0:
    sys.exit("no (int[]) builder.get casts found")
home = home or dirs[0]
os.makedirs(os.path.join(home, "com/p8t"), exist_ok=True)
open(os.path.join(home, "com/p8t/Port8tCompat.smali"), "w").write('''.class public final Lcom/p8t/Port8tCompat;
.super Ljava/lang/Object;
.source "Port8tCompat.java"

# p8t: camera 7 app passes some int[] request keys as long[]; convert, everything else unchanged

.method public static ia(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p0, [J

    if-eqz v0, :ret

    check-cast p0, [J

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :loop
    if-ge v2, v0, :done

    aget-wide v3, p0, v2

    long-to-int v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :loop

    :done
    const-string v2, "Port8tCompat"

    const-string v3, "long[] -> int[]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :ret
    return-object p0
.end method
''')
print(f"patched {total} cast(s); helper in {home}")
