#!/bin/bash
# Build the patched Camera Unit SDK jar (p8t51) for OnePlus 8T from the stock camera-6 jar.
# Original port by Pedestrian (t.me/pedestrian1603) — GPL-3.0, see LICENSE and NOTICE.
#
# usage: sdk/apply_sdk.sh <stock com.oplus.camera.unit.sdk.jar> <out.jar>
#   stock jar = my_product/product_overlay/framework/com.oplus.camera.unit.sdk.jar
#               from camera6.0-fix_cos.zip (4922863 bytes, sha256 below)
# needs: java, unzip, zip, patch, tools/baksmali.jar + tools/smali.jar (see README)
set -euo pipefail
STOCK_SHA=874402e2b851d850a1fe3935a32a7595a03f4c99c03dbdabba7501544caca83b
API=28

[ $# -eq 2 ] || { echo "usage: $0 <stock unit.sdk.jar> <out.jar>"; exit 1; }
IN=$(readlink -f "$1"); OUT=$(readlink -m "$2")
HERE=$(cd "$(dirname "$0")" && pwd)
TOOLS=$(cd "$HERE/../tools" && pwd)
for t in baksmali.jar smali.jar; do
  [ -f "$TOOLS/$t" ] || { echo "missing tools/$t (see README)"; exit 1; }
done

sha=$(sha256sum "$IN" | cut -d' ' -f1)
[ "$sha" = "$STOCK_SHA" ] || { echo "stock jar sha256 mismatch: $sha (expected $STOCK_SHA)"; exit 1; }

W=$(mktemp -d); trap 'rm -rf "$W"' EXIT
cd "$W"
unzip -q "$IN" classes.dex
java -jar "$TOOLS/baksmali.jar" d classes.dex -o s
(cd s && patch -p1 --no-backup-if-mismatch -s < "$HERE/p8t51.patch") || { echo "patch FAILED (baksmali version mismatch?)"; exit 1; }
cp -a "$HERE/smali/." s/
mkdir -p z
java -jar "$TOOLS/smali.jar" a s --api "$API" -o z/classes.dex
rm -f "$OUT"
(cd z && zip -0 -X -q "$OUT" classes.dex)    # dex stored, not compressed
echo "out: $OUT"
echo "dex sha256: $(sha256sum z/classes.dex | cut -d' ' -f1)"
echo "note: smali assembly is not byte-deterministic; compare by baksmali output, not sha"
echo SDK_BUILD_DONE
