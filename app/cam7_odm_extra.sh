#!/bin/bash
# Camera-7-only odm config edits, run AFTER odm/install_odm.sh (same edits as the camera7_port block in port.sh):
#   1. com.oplus.pre.high.resolution.support=1          -> 48 MP Hi-res option in photo mode (rear)
#   2. com.oplus.camera.support.ai.master.watermark 1->0 -> classic bottom watermark bar (our APS rejects the AI-master path)
# Original port by Pedestrian (t.me/pedestrian1603) — GPL-3.0, see LICENSE and NOTICE.
#
# usage: app/cam7_odm_extra.sh <odm_out_dir>
set -euo pipefail
[ $# -eq 1 ] || { echo "usage: $0 <odm_out_dir>"; exit 1; }
OCC="$1/etc/camera/config/oplus_camera_config"
[ -f "$OCC" ] || { echo "missing $OCC (run odm/install_odm.sh first)"; exit 1; }

if ! grep -q '"com.oplus.pre.high.resolution.support"' "$OCC"; then
  sed -i 's#^\({"VendorTag": "com.oplus.ultrawide.support","Type": "Byte","Count": "1","Value": "1"},\)$#\1\n{"VendorTag": "com.oplus.pre.high.resolution.support","Type": "Byte","Count": "1","Value": "1"},#' "$OCC"
fi
grep -q '"com.oplus.pre.high.resolution.support"' "$OCC" \
  || { echo "FAILED: could not add pre.high.resolution.support"; exit 1; }

sed -i '/"com.oplus.camera.support.ai.master.watermark"/,/"Value"/ s/"Value": *"1"/"Value": "0"/' "$OCC"
grep -A3 '"com.oplus.camera.support.ai.master.watermark"' "$OCC" | grep -q '"Value": *"0"' \
  || { echo "FAILED: ai.master.watermark not switched to 0"; exit 1; }

echo "hires=1, ai.master.watermark=0"
echo CAM7_ODM_EXTRA_DONE
