#!/usr/bin/env python3
# p8t: newer libmsnativefilter.so (11.C.75 odm) reads SMsEffectParam fields that the camera-6-era SDK class lacks
# ("GetFieldID scale failed" every preview frame). Add missing fields with safe defaults.
# usage: python3 patch_sdk_meishe.py <baksmali_dir>...   (extend FIELDS if the log names another field)
import os, re, sys
FIELDS = [   # exact list + defaults from the matching 11.C.75 SDK (my_product unit.sdk.jar 9455da1d)
    ("secondIntpFactor", "F", "const/4 v0, 0x0"),            # 0.0f
    ("scale", "F", "const/high16 v0, 0x3f800000"),           # 1.0f
    ("colorTemperature", "F", "const/4 v0, 0x0"),            # 0.0f
    ("minColorTemperature", "F", "const/4 v0, 0x0"),         # 0.0f
    ("maxColorTemperature", "F", "const/high16 v0, 0x3f800000"),  # 1.0f
]
CLS = "com/meicam/effect/sdk/SMsEffectParam.smali"
hits = [os.path.join(d, CLS) for d in sys.argv[1:] if os.path.isfile(os.path.join(d, CLS))]
if len(hits) != 1:
    sys.exit(f"SMsEffectParam.smali found {len(hits)}")
p = hits[0]; s = open(p).read()
T = "Lcom/meicam/effect/sdk/SMsEffectParam;"
m = re.search(r'\.method public constructor <init>\(\)V\n(.*?)\.end method\n', s, re.S)
if not m:
    sys.exit("<init>()V not found")
body = m.group(1)
loc = re.search(r'\.(locals|registers) (\d+)', body)
if loc.group(1) == "locals" and int(loc.group(2)) < 1:
    body = body.replace(loc.group(0), ".locals 1", 1)
added = []
for name, typ, const in FIELDS:
    if re.search(rf'^\.field public {name}:{re.escape(typ)}', s, re.M):
        continue
    s = s.replace("# instance fields\n", f"# instance fields\n.field public {name}:{typ}\n\n", 1) if "# instance fields\n" in s \
        else s.replace("\n# direct methods", f"\n.field public {name}:{typ}\n\n# direct methods", 1)
    i = body.rfind("    return-void")
    op = "iput-boolean" if typ == "Z" else "iput"
    body = body[:i] + f"    # p8t: native libmsnativefilter expects {name}\n    {const}\n\n    {op} v0, p0, {T}->{name}:{typ}\n\n" + body[i:]
    added.append(name)
if not added:
    sys.exit("nothing to add")
m = re.search(r'\.method public constructor <init>\(\)V\n(.*?)\.end method\n', s, re.S)
s = s[:m.start(1)] + body + s[m.end(1):]
open(p, "w").write(s)
print("added fields:", added, "in", p)
