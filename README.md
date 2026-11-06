# oplus-camera-8t

OplusCamera **7.006.125** (and the camera-6 base, 6.020.291) running on the **OnePlus 8T (kebab, SM8250)** ColorOS 17 port — photo, 0.6x/1x/2x/5x, 48 MP Hi-res, portrait with blur (HAL-RTB), night + tripod, video, slo-mo 240 fps, time-lapse, panorama, XPan, master/pro, filters (Meishe), front beauty, watermark.

**Port by Pedestrian** — t.me/pedestrian1603 · License: **GPL-3.0** with an attribution term (see [NOTICE](NOTICE)).

This repository contains only scripts, patches and the porter's own code. No OPPO/OnePlus binaries are stored in git.

---

## How it works

The 8T keeps its stock 2020 OnePlus CHI camera HAL (com.oneplus.* vendor tags, 8T sensor sizes). The Oplus Camera Unit SDK and APS expect Oplus tags, CPH2745 sizes and op modes. The port bridges that on the app side:

| Layer | What this repo does |
| --- | --- |
| Camera Unit SDK jar | 8 own classes (`Port8tCamType`, `Port8tSafe`, `Port8tVendorTags`, `Port8tApsMode`, `Port8tHfr`, `Port8tRtbCap`, `Port8tBokeh`, `Port8tCompat`) + hooks in stock classes (`sdk/p8t51.patch`) |
| Camera 7 APK | Dex-only patches: gallery, Hi-res menu, Hi-res highlight, porter credit (signing block kept) |
| odm configs | op modes, picture sizes, XPan crop, autoPipeline, Meishe, disabled algos the 8T can't run |
| odm libs | APS dependencies taken from CPH2745 (release asset) |

Full problem/fix history: [docs/Camera6_8T_Problems_Fixes.md](docs/Camera6_8T_Problems_Fixes.md), [docs/Camera7_8T_Problems_Fixes.md](docs/Camera7_8T_Problems_Fixes.md).

---

## What you need

| Input | Where to get it | Check |
| --- | --- | --- |
| `camera6.0-fix_cos.zip` | [toraidl/coloros_port](https://github.com/toraidl/coloros_port) `devices/common/` | unit.sdk jar inside: sha256 `874402e2b851d850a1fe3935a32a7595a03f4c99c03dbdabba7501544caca83b` |
| `camera5.0-fix_odm.zip` | toraidl/coloros_port `devices/OnePlus8T/` | — |
| `OplusCamera.apk` 7.006.125 | your own copy | sha1 `3c9ce83f…` (see app/) |
| `odm_assets.zip` | this repo's **Releases** | checked by `odm/SHA256SUMS` |
| smali / baksmali **3.0.9** | [github.com/JesusFreke/smali](https://github.com/JesusFreke/smali) releases → put `smali.jar`, `baksmali.jar` in `tools/` | other versions may not apply the patch |
| Linux / WSL | `java`, `python3`, `unzip`, `zip`, `patch` | — |

---

## Build

```bash
git clone https://github.com/<you>/oplus-camera-8t && cd oplus-camera-8t
# put smali.jar + baksmali.jar (3.0.9) into tools/

# 1. Camera Unit SDK jar (p8t51)
unzip -o -j camera6.0-fix_cos.zip 'my_product/product_overlay/framework/com.oplus.camera.unit.sdk.jar' -d /tmp/stock
sdk/apply_sdk.sh /tmp/stock/com.oplus.camera.unit.sdk.jar out/com.oplus.camera.unit.sdk.jar

# 2. Patched camera 7 APK
app/build_camera7.sh OplusCamera_7.006.125.apk out/OplusCamera.apk

# 3. odm overlay
odm/install_odm.sh camera5.0-fix_odm.zip odm_assets.zip out/odm
```

Each script ends with `SDK_BUILD_DONE`, `CAMERA7_BUILD_DONE` or `ODM_TREE_OK`. Anything else = stop.

---

## Put it into a ROM

| Item | Destination | Notes |
| --- | --- | --- |
| `out/com.oplus.camera.unit.sdk.jar` + stock `…unit.sdk.adapter.jar` | `/product/framework/` (or `my_product/product_overlay/framework/`) | dex stays **stored** |
| `out/OplusCamera.apk` + its `lib/arm64/*.so` | `/product/priv-app/OplusCamera/` | must be in **product** (libCombineLutJni), never system_ext; never as a /data/app update (dex patches need the system partition) |
| privapp permissions | `/product/etc/permissions/` | camera-6 xml from the camera6 zip + `app/privapp-permissions-p8t-cam7.xml`; app needs `android.permission.SYSTEM_CAMERA` |
| `out/odm/*` | overlay onto `/odm` | every `odm/lib64/*.so` labelled `u:object_r:same_process_hal_file:s0` in odm_file_contexts |
| prop | `oplus.camera.cross.window.blur.support=true` | optional blur |

Camera-7-only odm config edits (Hi-res, classic watermark bar) and the full port.sh block: see `app/` and docs section "port.sh integration".

---

## Verify on device

```bash
adb shell "su -c 'ls -Z /odm/lib64/libexif-jpeg-aps.so'"          # same_process_hal_file
adb logcat -c; adb logcat -b all > cam.txt                          # then test every mode
grep -cE 'FATAL|ClassCast|onCameraError|Failed to match usecase|Fatal signal' cam.txt   # must be 0
```

Regression checklist: docs/Camera7_8T_Problems_Fixes.md → "Test and debug workflow".

---

## Not possible on the 8T

AI moon, turbo HDR, hybrid RAW, RAW, face restore, portrait super-night, AI SR, AINR, merge HDR, hyperlapse / super EIS, video EIS, video blur, long exposure, XPan film filter, front auto flash (open). Reasons in the docs.

---

## Credits & license

- Port, SDK hooks, patches, scripts: **Pedestrian** (t.me/pedestrian1603)
- ColorOS port toolkit and camera zips: **Bruce Teng** — [toraidl/coloros_port](https://github.com/toraidl/coloros_port)
- smali/baksmali: Ben Gruver (JesusFreke)
- OplusCamera, Camera Unit SDK, configs, libs: OPPO / OnePlus — not covered by this license

GPL-3.0 — see [LICENSE](LICENSE). Keep [NOTICE](NOTICE) and the in-app credit in anything you distribute.
