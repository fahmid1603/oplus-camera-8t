# Camera 7 on OnePlus 8T — Problems & Fixes

As of 2026-11-06 · Porter: Pedestrian (t.me/pedestrian1603)

Companion: `Camera6_8T_Problems_Fixes.md` (camera 7 runs on top of the camera-6 base — read that first if camera breaks after a portrom change).

---

## 1. Overview

Camera 7 (OplusCamera **7.006.125**, package `com.oplus.camera`) is the only camera shipped in the 8T COS17 port.

- First verified: `ota_full-KB2003_17.0.0.102-CPH2745-10271655-…-6b0dcb0270.zip` (Oct 27, tag `verified-cam7-op15-1027`, commit 096e762)
- Later verified: stock-super build `2c75fd0b97` (tag `verified-stocksuper-v4-wm-1029`, commit e20a008)
- Branch: `cam6` (private remote only)

Camera 7 does **not** run on its own. It sits on the camera-6 groundwork: patched `com.oplus.camera.unit.sdk.jar`, edited odm camera configs, extra CPH2745 odm libs and fixed SELinux labels.

| Layer | What it is | Where in the ROM |
| --- | --- | --- |
| App | OplusCamera 7.006.125 + 38 arm64 libs, 6 dex patches + credit + watermark | `/product/priv-app/OplusCamera` (from `devices/kebab/camera7/`) |
| Camera Unit SDK | `com.oplus.camera.unit.sdk.jar` **p8t51** (camera-6 line + cam7 compat + Meishe fields) | `/product/framework` |
| Native APS | libAlgoInterface / libAlgoProcess + added CPH2745 algo libs | `/odm/lib64` (label `same_process_hal_file`) |
| Configs | camera_unit_config, oplus_camera_config, oplus_camera_aps_config, algo_switch, preview decision, feature protobuf | `/odm/etc/camera/config` |
| HAL | Stock 8T OnePlus CHI HAL (com.oneplus.* vendor tags) — never modified | `/vendor` |

**Rule of thumb:** the 8T HAL speaks OnePlus vendor tags and 8T sensor sizes; the Oplus SDK/APS expects Oplus tags and CPH2745 sizes. Most bugs are that mismatch — fix with config first, jar/dex hook only when config cannot.

### Jar lineage (camera 7 part)

| Jar | sha (short) | = | Purpose |
| --- | --- | --- | --- |
| p8t46 | 29791285… | camera-6 final | base (see camera 6 doc) |
| p8t47 | eedbc092… / stored f59a7207… | p8t46 + Port8tCompat | cam7 photo capture (C1) |
| **p8t51** | 05e4ff88… (repo build 08e2559b…) | p8t46 + Port8tCompat + Meishe fields | **current** (C1 + C3) |

Build scripts: `~/cam5_work/cam7/sdk/cam7_jar48.sh` → `patch_sdk_cam7.py` + `patch_sdk_meishe.py`.

---

## 2. Camera 7 problems and fixes

Seven camera-7 problems (C1–C7) and three porter features (C8–C10), Oct 26 – Nov 3. All are in port.sh and confirmed on a clean-flashed build.

### C1. Photo capture fails (ClassCastException)

- **Symptom:** preview and video OK, photo never saves.
- **Root cause:** cam7 passes `long[]` where the camera-6-era SDK casts `(int[]) PreviewParameter$Builder.get()` (`KEY_PICTURE_EXIF_FLAG` in `BaseMode.updateCaptureRequestTag`).
- **Fix:** jar hook `Port8tCompat.ia()` before all 30 `(int[])` casts: `long[]` → `int[]`, anything else passes through (camera 6 unaffected). Script `patch_sdk_cam7.py`.
- **Verify:** logcat Port8tCompat conversions = number of captures; 0 ClassCast.

### C2. Thumbnail does not open the photo

- **Symptom:** tapping the camera thumbnail does nothing.
- **Root cause:** OnePlus-flavour cam7 hardcodes gallery `com.oneplus.gallery` in `com.oplus.camera.dg.a()` (OplusConfigure, static flag always true).
- **Fix:** dex-only patch `patch_cam7_gallery.py` → returns `com.coloros.gallery3d`; REVIEW intent goes to `com.oppo.gallery3d.app.ViewGallery`.
- **Note:** dex-only patches keep the original signing block (`apk_dex_replace`) — PMS accepts them only from system/product, never as a /data/app update.

### C3. Meishe filter log spam (NoSuchFieldError "scale")

- **Symptom:** ~2000 `NoSuchFieldError scale` lines per session from the filter render thread; filter still visible.
- **Root cause:** `SMsEffectParam` in our SDK lacks 5 fields the 11.C.75 libmsnativefilter (sha 7e285d79) reads.
- **Fix:** `patch_sdk_meishe.py` adds `secondIntpFactor 0.0`, `scale 1.0`, `colorTemperature 0.0`, `minColorTemperature 0.0`, `maxColorTemperature 1.0` (values from 11.C.75 my_product unit.sdk.jar 9455da1d). Result jar **p8t51**.
- **Verify:** 0 NoSuchFieldError with a filter active.

### C4. High-res (48 MP) option missing

- **Symptom:** no Hi-res item in the photo bottom ⋮⋮⋮ menu.
- **Fix (3 parts):**
  1. odm `oplus_camera_config`: `com.oplus.pre.high.resolution.support=1` (port.sh adds it only when cam7 is installed).
  2. dex `wm/d3` (CommonCapMode) `getSupportFunction("key_high_picture_size")` → true on rear when the config is set (`patch_cam7_hires.py`, classes12).
  3. dex `ui/menu/o0`: give the option a menu location + icon array `high_resolution_icons_48M` (0x7f0300b5); title string `camera_setting_submenu_high_res` (0x7f1105c9) instead of raw "%1$1.0f MP" (`patch_cam7_hires_menu.py`, classes23).
- **Menu filter path learned:** `wq/a` CameraSettingUIBottom → `(mode.L4 || mode.e0) && g`; `CameraMenuContainerBottom.L0` needs option menuLocation & 120.
- **Verify:** Hi-res photo 6000x8000, ~16 MB, no crash.

### C5. Hi-res item not highlighted (orange) when on

- **Root cause:** `yq/a` (CameraMenuOptionBottom).w0 selects only when value is "on" (HDR uses "auto"); Hi-res value is "standard_high".
- **Fix:** `patch_cam7_hires_sel.py` prologue: `pref_camera_high_resolution_key` → `setSelected("standard_high".equals(value))`.

### C6. Watermark bar missing on photos

- **Symptom:** photo 3000x4000 with no bar; log `camApsProcessImages() watermark size not valid!`.
- **Root cause:** cam7 uses the "AI master" watermark path (`com.oplus.camera.support.ai.master.watermark=1`): SDK sends only width/height arrays + 6 buffers, scalar `watermark_width/height` = 0 → our APS rejects it.
- **Fix:** set that key to 0 → classic single-bar path (photo 3000x4432). port.sh: `apply_cam7_wm.py` sed in the camera7_port ODM part. No jar change needed.
- **Note:** the watermark toggle then becomes the legacy setting, default off — users must switch watermark on in camera settings once.

### C7. App label shows "Lens is blocked" (test-only)

- **Cause:** during KSU-module testing, Settings saw the cam6 APK (umount on) and resolved cam7's label id 0x7f110133 against cam6 resources.
- **Fix:** none needed — disappears when port.sh puts cam7 in cam6's place.

### C8. Porter credit (feature)

- `patch_cam7_credit.py` adds `com.p8t.Port8tCredit` (WHOAMI `camera7_port_whoami_Pedestrian`, logged as `p8t: …` every launch).
- `Camera` has no own onCreate/onResume (parent class), so the hook is `Camera.onWindowFocusChanged` (first focus after CAMERA permission).
- Must be a **PopupWindow** — a view added to decorView logged "shown" but was hidden under the preview surface.
- Final: centred glass pill "RememberTheName_PEDESTRIAN", 8 s, once (`shared_prefs/p8t_credit.xml` shown=true).
- Reset for retest:
  ```bash
  adb shell "su -c 'rm /data/data/com.oplus.camera/shared_prefs/p8t_credit.xml; am force-stop com.oplus.camera'"
  ```

### C9. Anti-copy build watermark (feature)

- Official builds carry a private per-build fingerprint to identify copies. The generator and its key are not part of this repository.


### C10. Cross-window blur

- Controlled by prop `oplus.camera.cross.window.blur.support` (OplusCamera dex has 2 refs; was set by KSU module BlurEnabler).
- port.sh block `p8t_cam_blur` sets it `true`. Confirmed Nov 3 (commit 9f45b96); module no longer needed.
- Live test needs **all** camera processes killed, not just force-stop of the UI.

---

## 3. port.sh integration

`camera7_port` block (branch cam6). Camera is never taken from the portrom (port.sh `rm -rf`s the portrom OplusCamera).

| Repo path | Content |
| --- | --- |
| `devices/kebab/camera7/OplusCamera_7.006.125.apk` + `.sha1` | Original APK (sha1 3c9ce83f…), excluded via `.git/info/exclude` |
| `devices/kebab/camera7/privapp-permissions-p8t-cam7.xml` | 8 extra privileged perms (main xml is in /my_product, can't overlay) |
| `devices/kebab/patches/camera7/build_camera7.sh` | Applies gallery, d3, o0, credit, yq/a and watermark patches (resource ids hardcoded; reuses systemui_aod baksmali/smali + `apk_dex_replace`) |
| `devices/kebab/camera6/com.oplus.camera.unit.sdk.jar` | p8t51, dex **stored** uncompressed |
| `devices/kebab/camera6/odm/` | Configs, protobuf, fb_default, meishe_lut, CPH2745 libs (copied with cmp check) |

Block flow:

1. Copy camera 6 (fallback) and the camera6/odm overlay.
2. Check APK sha1 → run `build_camera7.sh` → install patched APK + 38 `lib/arm64` libs + privapp xml at `product/priv-app/OplusCamera`, set `p8t_cam7_ok=1`. Any failure keeps camera 6.
3. ODM part (only if cam7): add `pre.high.resolution.support=1`, set `ai.master.watermark` 1→0.
4. `cam6_sphal_labels`: every camera odm .so → `same_process_hal_file` in both odm_file_contexts.
5. Related blocks: `p8t_cam_blur`, `p8t_porter` (`ro.p8t.porter=Say_My_Name (t.me/pedestrian1603)`), `locksettings_guard` (sits inside the camera ODM if-block).

**Release gate:** a build.log line "camera 7 patch FAILED / keeping camera 6" = do not release. The patched APK sha differs every build (watermark nonce + rebuild not byte-identical), so verify by marks, not sha.

Post-build checks:

```bash
grep -nE "camera7|cam7|cam6_sphal_labels|p8t_cam_blur|p8t_porter" build.log
unzip -l out/target/product/OnePlus8T/IMAGES/*.zip 2>/dev/null | head   # or inspect product image
```

---

## 4. Test and debug workflow

Test every change live first (bind or KSU module), make it a port.sh block only after it is confirmed, then do one full build.

**Jar test without reboot** — bind inside zygote64's mount namespace (a bind in init's namespace does not reach apps once a KSU module mounts that path). Scripts: `~/cam5_work/cam7/cam7_zbind.sh`, `cam7_live.sh`.

```bash
adb push p8tXX.jar /data/local/tmp/cam_test.jar
adb shell "su -c 'chcon u:object_r:system_file:s0 /data/local/tmp/cam_test.jar'"
adb shell "su -c 'nsenter -t \$(pidof zygote64) -m -- mount --bind /data/local/tmp/cam_test.jar /product/framework/com.oplus.camera.unit.sdk.jar'"
adb shell "su -c 'am force-stop com.oplus.camera'"
```

Reboot reverts.

**odm config test:** copy the config dir to `/data/local/tmp`, edit, `chcon` to the **original** label (wrong label → EACCES → FeatureManager NPE at launch), bind over `/odm/etc/camera/config`, force-stop camera. Send scripts as files (terminal mangles long heredocs), then `sed -i 's/\r$//' script.sh`.

**APK as a KSU module** (`cam7_module.sh` → `p8t_cam7`): needs all of these or PMS keeps the old camera:

```bash
adb shell "su -c 'pm uninstall-system-updates com.oplus.camera'"
adb shell "su -c 'rm -rf /data/system/package_cache/*'"
# ReSukiSU → App Profile → com.oplus.camera → Umount modules OFF
adb reboot
```

Remove the module before flashing a build that contains camera 7.

**Detailed camera logs** (forcelog is not persistent — set after every reboot):

```bash
adb shell "su -c 'setprop persist.sys.assert.panic true; setprop oplus.autotest.camera.debug.forcelog true'"
adb logcat -c
adb logcat -b all > cam7_test.txt
```

If cameraserver/provider logs are missing: `setprop persist.logd.flowctrl.on 0` (OPLUS logd flow control) — **set back to 1 after debugging.**

**Check a photo was really written** (gallery quick thumbnail can lie):

```bash
adb shell "su -c 'ls -la /data/media/0/DCIM/Camera | tail'"
adb shell "content query --uri content://media/external/images/media --projection _display_name:_size:is_pending --sort 'date_added DESC' | head -5"
```

### Regression checklist (clear log BEFORE testing)

- [ ] Photo 1x / 0.6x / 2x / 5x saves (0.6x full 3456x4608)
- [ ] Hi-res: item orange, 6000x8000
- [ ] Watermark bar: 3000x4432 (after enabling watermark in settings)
- [ ] Thumbnail opens Gallery
- [ ] Filter photo + filter video, no NoSuchFieldError
- [ ] Portrait rear (blur slider) + front portrait
- [ ] Night handheld + tripod; night 0.6x ↔ 1x
- [ ] Video (tap → focus + exposure bar), slo-mo, time-lapse, panorama, XPan, master/pro 0.6x–5x
- [ ] Front camera beauty
- [ ] Credit pill once after fresh install
- [ ] `grep -cE 'FATAL|ClassCast|onCameraError|Failed to match usecase|Fatal signal' cam7_test.txt` = 0
- [ ] Odm libs labelled: `adb shell "su -c 'ls -Z /odm/lib64/libexif-jpeg-aps.so'"` → `same_process_hal_file`

---

## 5. Open and parked issues

| Issue | Status / cause | Next idea |
| --- | --- | --- |
| Front auto flash never fires | APS need-flash = HAL tag `com.qti.stats_control.is_flash_snapshot`; 8T QTI AEC never sets it for the LED-less front sensor | Untested jar hook `Port8tFlash` (front: flash when ISO×exposure_ms ≥ 80000, off < 50000) — port onto p8t51 |
| XPan film/movie icon crash | `dofilterProcess` null fn: 2022 libFilterWrapper lacks symbols; CPH2745 has no libFilterWrapper | Parked; LUT folder, libPolarrRender, Meishe path all failed |
| Long exposure hidden | Needs RAW reprocess; OnePlus CHI rejects | Keep hidden |
| RAW hidden | libarcsoft_turbo_raw missing → RAW never saves | Keep hidden |
| Video mode no 0.6x; video focus box corners missing | UI-only; zoom marked-value keys exist nowhere | Parked |
| Rear portrait blur weak | HAL-RTB blur only; native APS bokeh lib missing | Accept |
| libCameraMDMHelper.so missing | Harmless log noise | — |
| Front selfie screen-flash | No config present on 8T | New feature if wanted |

**Not possible on 8T** (QNN/HTP/ODNN or libs exist nowhere): AI moon, turbo HDR, hybrid RAW, face restore, portrait super-night, AI SR, AINR, merge HDR, face info (libstface_fd_api), hyperlapse / super EIS (libhyperlapse), video EIS (libarc_sateis), video blur (libAncHumBokeh NN model).

---

## 6. Lessons and gotchas

- **Config before jar.** Disabling an algo in `oplus_camera_algo_switch_config` or a key in `oplus_camera_config` is safer than another jar hook; ~50 jar trials on camera 6 kept bringing old bugs back. Keep one jar line (p8t51) and rebuild it from scripts.
- **Small image in a white canvas = size mismatch.** SDK asked for a CPH2745 capture size the 8T HAL can't give; HAL returns the preview frame. Fix picture-size keys to 8T sensor sizes.
- **"Failed to match usecase" (-38)** = Oplus op mode or stream layout the OnePlus CHI doesn't know → op mode "0" or trim the stream case.
- **Add libs one mode at a time** from the known-good set; a missing lib is often silently skipped, a present-but-incompatible one crashes.
- **Labels:** every new odm lib must be `same_process_hal_file`, or it works in bind tests but fails in a real build.
- **Int arrays in oplus_camera_config are comma-separated** (`171,32,1458,3936`), not `x` — `x` crashes with NumberFormatException.
- **Dex-only patches** keep the signing block and work only from system/product, not as /data/app updates.
- **KSU modules:** turn off "Umount modules" for the target app, clear `/data/system/package_cache`, remove the module before flashing a build with the same change.
- **Credit UI** must be a PopupWindow; decorView children are hidden by the preview surface.
- **Debug jars** (e.g. p8t12dbg dumping decrypted algo_switch) must never go into the repo.
- **Store jar dex uncompressed** before committing (compressed p8t47 was 1.8 MB).
- **After a portrom change,** re-check that the new portrom's odm/my_product camera files don't override ours and that `camera_id_list` still has "6".
