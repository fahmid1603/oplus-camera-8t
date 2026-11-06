#!/bin/bash
# p8t: build the patched camera 7 (OplusCamera 7.006.125) for the OnePlus 8T port. Dex-only, signing block kept.
#   dg            gallery package -> com.coloros.gallery3d (thumbnail opens the ROM gallery)
#   wm/d3         photo mode supports key_high_picture_size on rear when com.oplus.pre.high.resolution.support=1
#   ui/menu/o0    High-res option: icon array (48M), bottom-menu location 8, title "Hi-res"
#   yq/a          High-res item highlighted (orange) when value is standard_high
#   Camera        porter credit (com.p8t.Port8tCredit: logcat + one-time centred glass pill)
# usage: build_camera7.sh <OplusCamera_7.006.125.apk> <out.apk>
set -euo pipefail
IN=$(readlink -f "$1"); OUT=$(readlink -f "$2")
HERE=$(cd "$(dirname "$0")" && pwd)
TOOLS=$(cd "$HERE/../tools" && pwd)
# resource ids of this exact apk (sha-pinned by port.sh)
ICON=0x7f0300b5      # array/high_resolution_icons_48M
T_OLD=0x7f1105cd     # string/camera_setting_submenu_high_resolution ("%1$1.0f MP")
T_NEW=0x7f1105c9     # string/camera_setting_submenu_high_res ("Hi-res")
W=$(mktemp -d); trap 'rm -rf "$W"' EXIT
rm -f "$OUT"
cd "$W"
unzip -q -o "$IN" 'classes*.dex'
find_dex() {   # $1 = smali path, $2 = grep hint
  for d in classes*.dex; do
    grep -qa "$2" "$d" || continue
    [ -d "s_$d" ] || java -jar "$TOOLS/baksmali.jar" d "$d" -o "s_$d"
    [ -f "s_$d/$1" ] && { echo "$d"; return 0; }
  done
  return 1
}
D0=$(find_dex com/oplus/camera/dg.smali com.oneplus.gallery) || { echo "dg not found"; exit 1; }
D1=$(find_dex wm/d3.smali CommonCapMode) || { echo "wm/d3 not found"; exit 1; }
D2=$(find_dex com/oplus/camera/ui/menu/o0.smali PreferenceMenuOptionScreen) || { echo "ui/menu/o0 not found"; exit 1; }
D3=$(find_dex com/oplus/camera/Camera.smali "Lcom/oplus/camera/Camera;") || { echo "Camera not found"; exit 1; }
D4=$(find_dex yq/a.smali CameraMenuOptionBottom) || { echo "yq/a not found"; exit 1; }
echo "dg:$D0 d3:$D1 o0:$D2 Camera:$D3 yq/a:$D4"
python3 "$HERE/patch_cam7_gallery.py"    "s_$D0"
python3 "$HERE/patch_cam7_hires.py"      "s_$D1"
python3 "$HERE/patch_cam7_hires_menu.py" "s_$D2" "$ICON" "$T_OLD" "$T_NEW"
python3 "$HERE/patch_cam7_credit.py"     "s_$D3"
python3 "$HERE/patch_cam7_hires_sel.py"  "s_$D4"
REPL=""
for d in $(printf '%s\n' "$D0" "$D1" "$D2" "$D3" "$D4" | sort -u); do
  VER=$(head -c 7 "$d" | tail -c 3); case $VER in 035) API=23;; 037) API=25;; 038) API=26;; 039) API=28;; *) API=28;; esac
  java -jar "$TOOLS/smali.jar" a "s_$d" --api $API -o "new_$d"
  REPL="$REPL $d=new_$d"
done
python3 "$TOOLS/apk_dex_replace.py" "$IN" "$OUT" $REPL
ls -l "$OUT"
echo CAMERA7_BUILD_DONE
