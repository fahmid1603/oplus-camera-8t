#!/bin/bash
# Rebuild the 8T camera odm overlay (camera 6 / camera 7) from:
#   1. camera5.0-fix_odm.zip   (toraidl/coloros_port, devices/OnePlus8T/)
#   2. odm_assets.zip          (this repo's GitHub Release)
#   3. config/*.patch          (this repo)
# Original port by Pedestrian (t.me/pedestrian1603) — GPL-3.0, see LICENSE and NOTICE.
#
# usage: odm/install_odm.sh <camera5.0-fix_odm.zip> <odm_assets.zip> <out_dir>
# result: <out_dir> = contents to overlay onto /odm (etc/camera/..., lib64/...)
set -euo pipefail
[ $# -eq 3 ] || { echo "usage: $0 <camera5.0-fix_odm.zip> <odm_assets.zip> <out_dir>"; exit 1; }
C5Z=$(readlink -f "$1"); AZ=$(readlink -f "$2"); OUT=$(readlink -m "$3")
HERE=$(cd "$(dirname "$0")" && pwd)
REPO=$(cd "$HERE/.." && pwd)
W=$(mktemp -d); trap 'rm -rf "$W"' EXIT

unzip -q "$C5Z" -d "$W/c5"
[ -d "$W/c5/odm" ] || { echo "unexpected camera5.0-fix_odm.zip layout (no odm/)"; exit 1; }
rm -rf "$OUT"; mkdir -p "$OUT"

# 1. files used unchanged from camera5.0-fix_odm.zip
while IFS= read -r f; do
  [ -n "$f" ] || continue
  mkdir -p "$OUT/$(dirname "$f")"
  cp "$W/c5/odm/$f" "$OUT/$f"
done < "$HERE/from_c5.txt"

# 2. configs patched from camera5.0-fix_odm.zip (base CRLF -> LF first)
mkdir -p "$OUT/etc/camera/config"
for f in camera_unit_config oplus_camera_config oplus_camera_aps_config; do
  tr -d '\r' < "$W/c5/odm/etc/camera/config/$f" > "$OUT/etc/camera/config/$f"
  patch -s "$OUT/etc/camera/config/$f" < "$REPO/config/$f.patch" || { echo "patch FAILED: $f"; exit 1; }
done

# 3. CPH2745-derived configs + libs from the release asset
unzip -q -o "$AZ" -d "$OUT"

# 4. verify every file
(cd "$OUT" && sha256sum -c --quiet "$HERE/SHA256SUMS") || { echo "sha256 check FAILED"; exit 1; }
echo "files: $(find "$OUT" -type f | wc -l)"
echo ODM_TREE_OK
