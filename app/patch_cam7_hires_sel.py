#!/usr/bin/env python3
# p8t: bottom menu item (yq/a CameraMenuOptionBottom.w0) highlights (orange) only when the value is "on"
# ("auto" for HDR). High-res values are standard / standard_high, so it never lit up.
# Prologue in yq/a.w0(): for pref_camera_high_resolution_key -> M.setSelected("standard_high".equals(u())); v0(); return.
import os, re, sys
p = os.path.join(sys.argv[1], "yq", "a.smali")
s = open(p).read()
if "p8t-hires-sel" in s:
    print("already patched"); sys.exit(0)
for need in (" M:Lcom/oplus/camera/common/view/BottomMenuIcon;", ".method public final v0()V"):
    if need not in s:
        sys.exit("yq/a: expected '%s' not found" % need)
CODE = '''    # p8t-hires-sel begin: High-res is "on" when its value is standard_high
    invoke-virtual {p0}, Ler/h;->s()Ljava/lang/String;
    move-result-object v0
    const-string v1, "pref_camera_high_resolution_key"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :p8t_sel_skip
    invoke-virtual {p0}, Ler/h;->u()Ljava/lang/String;
    move-result-object v0
    const-string v1, "standard_high"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    iget-object v0, p0, Lyq/a;->M:Lcom/oplus/camera/common/view/BottomMenuIcon;
    if-eqz v0, :p8t_sel_ret
    invoke-virtual {v0, v1}, Lcom/oplus/camera/common/view/BottomMenuIcon;->setSelected(Z)V
    invoke-virtual {p0}, Lyq/a;->v0()V
    :p8t_sel_ret
    return-void
    :p8t_sel_skip
    # p8t-hires-sel end'''
mm = re.search(r"^\.method public final w0\(\)V\n(.*?)^\.end method", s, re.M | re.S)
if not mm:
    sys.exit("yq/a.w0()V not found")
body = mm.group(1).split("\n")
i = 0
while i < len(body) and not re.match(r"\s*\.(registers|locals)\s+\d+", body[i]):
    i += 1
if i == len(body):
    sys.exit("no .registers/.locals in w0")
r = re.match(r"(\s*)\.(registers|locals)\s+(\d+)", body[i])
if r.group(2) == "locals" and int(r.group(3)) < 2: body[i] = r.group(1) + ".locals 2"
if r.group(2) == "registers" and int(r.group(3)) < 3: body[i] = r.group(1) + ".registers 3"
i += 1
while i < len(body) and (body[i].strip() == "" or body[i].strip().startswith(("#", ".line", ".prologue"))):
    i += 1
body[i:i] = [CODE, ""]
s = s[:mm.start(1)] + "\n".join(body) + s[mm.end(1):]
open(p, "w").write(s)
print("yq/a.w0: High-res highlight when standard_high")
