# Camera 6 on OnePlus 8T — Problems & Fixes

As of 2026-11-06 · Porter: Pedestrian (t.me/pedestrian1603)

Companion: `Camera7_8T_Problems_Fixes.md`. Camera 7 (the shipped camera) runs on everything in this document.

---

## 1. Overview

Camera 6 = OplusCamera **6.020.291** (`com.oplus.camera`, from `camera6.0-fix_cos.zip`), ported Oct 19–24, 2026 onto the 8T COS17 port (base CPH2745). It replaced the original OnePlus camera 5.9.84 (`com.oneplus.camera`) and is now the **fallback** in port.sh if camera 7 patching fails.

- Branch `cam6` (private remote). Key commits: c021370 (first recipe), bdec9d3 (slo-mo), 7a24bd7 (autoPipeline/Meishe sync), a449ef3 (watermark, photo 0.6x, video blur off), a60e012 (portrait HAL-RTB), c484429 (track focus off, night zoom), 9a61440 (XPan), 4e79a7b (3 missing libs), 8a45a69 (sphal labels + locksettings guard)
- First full build with camera 6: `…17.0.0.102-CPH2745-10241604-…-770ad140a2.zip` (Oct 24)

**Core problem:** the 8T HAL is a 2020 OnePlus CHI HAL with `com.oneplus.camera2.staticMeta.*` + `org.codeaurora` vendor tags. The Oplus Camera Unit SDK expects 553 `com.oplus.*` tags, CPH2745 sensor sizes and op modes. Swapping KB2000 ColorOS vendor libs does not help (same OnePlus-tag HAL). So every fix is on the app/SDK/odm side.

### Final recipe (what port.sh ships)

| Part | Content |
| --- | --- |
| App | `/product/priv-app/OplusCamera`, PRIVILEGED, `android.permission.SYSTEM_CAMERA`, privapp whitelist (68 perms from aapt) |
| Jar | `com.oplus.camera.unit.sdk.jar` p8t46 (camera 6) → p8t51 (with camera 7 compat) in `/product/framework` |
| odm config | `devices/kebab/camera6/odm/etc/camera/config/` — camera_unit_config, oplus_camera_config, oplus_camera_aps_config (+autoPipeline, +meishe), plain-JSON algo_switch (norect5), CPH2745 preview_decision / preview_decision_params / algo_traversal, camera_unit_feature_config.protobuf (night zoom) |
| odm camera | `fb_default` (CPH2745), `meishe_lut` (118) |
| odm/lib64 (CPH2745) | libOplusSecurity, libexif-jpeg-aps, libFaceBeautyJni, lib2DSlender, libAncFilter, libeffect_custom, libBasicTonePhoto, libOPAlgoCamFaceBeautyCap, libUpScale, libmsnativefilter, libwatermark_photo, libFaceDistortionCorrection, libImageWarpMask, libOPAlgoCamSinglePortrait — all `same_process_hal_file` |

### Jar lineage

| Jar | sha (short) | Adds |
| --- | --- | --- |
| p8t3 | 7334b940… | Port8tCamType + Port8tSafe |
| p8t5 | a3dcc9c5… | getVendorTagAndId NPE → null (preview works) |
| p8t7 | 4830ad00… | Port8tVendorTags static 532-tag list (capture works) |
| p8t9 | 787f0602… | Port8tApsMode portrait→common, strip preview_supereis |
| p8t10 | f7424728… | port8tResolve: missing mode@id → common |
| p8t11 | 103bdf12… | strip preview_rectify |
| p8t15 | ab227666… | Port8tHfr slo-mo PRIVATE preview |
| p8t21 | 773fb9ca… | HAL-RTB portrait preview on logical id 6 |
| p8t33–36 | … | RTB portrait capture chain |
| p8t41 | a77b5624… | skip per-frame EV (night tripod black fix) |
| p8t46 | 29791285… | Port8tRtbCap + Port8tBokeh (portrait blur slider) — **camera 6 final** |
| p8t51 | 05e4ff88… | + Port8tCompat + Meishe fields (camera 7) — **current** |

Debug only, never in repo: p8t12dbg (dumps decrypted algo_switch), p8t39dbg, p8t42 (RAW strip, failed).

---

## 2. Problems and fixes (in the order they were solved)

### 1. App can't start / classes missing

- **Symptom:** NoClassDefFound UxThreadPool.
- **Cause:** old 2022 `com.oplus.camera.unit.sdk(.adapter).jar`.
- **Fix:** ship the new jar pair in `/product/framework`.

### 2. Camera characteristics null for ids 2–7

- **Cause:** 8T HAL marks ids 2–7 SYSTEM_CAMERA; a normal app gets null.
- **Fix:** install as PRIVILEGED with `android.permission.SYSTEM_CAMERA` + privapp whitelist (enforce mode).

### 3. UnsatisfiedLinkError libCombineLutJni

- **Cause:** app in system_ext priv-app can't load `/product/lib64/libCombineLutJni.so`.
- **Fix:** put the app in the product partition (`my_product/priv-app/OplusCamera`; Oplus overlays it into `/product/priv-app`). Drop the zip's oat files.

### 4. Open loop, NPE getPictureSizes

- **Cause:** `CameraCharacteristicsHelper.initialize` reads vendor tag `com.oplus.supported.cameraid.type` per id → missing → "cameraIdType is not configure" → empty map.
- **Fix:** jar `Port8tCamType` in `CameraCharacteristicsWrapper.get` + `hasPermissionKeys`: 0→0 rear_main, 1→1 front_main, 2→2 rear_wide, 3→17 macro, 4→13 mono, 5→12 rear_sat, 6→8 rear_portrait (later), 7→none.

### 5. configure_streams −38 "Failed to match usecase"

- **Cause:** Oplus op mode 0x8001 / video 0x830b (0x800b | fovc 0x0300) unknown to OnePlus CHI ("JAMESIA there is no preview stream").
- **Fix (camera_unit_config):** all `mode_operation_mode` → "0" except slowvideo "1"; all `feature_operation_mode` → "0"; fovc "0". Mono id 4 alone has no usecase → remove `rear_mono_1` from mode_type_list, `mono.filter.support` / `mono.id.include.in.sat` 0. Night and tilt-shift moved rear_sat → rear_main. Night/front-night/long-exposure cases reduced to preview+capture (CHI rejects reprocess_input + raw_output).

### 6. IllegalArgumentException on unknown vendor keys

- **Example:** `CaptureResult.get('com.oplus.focus.is.depth.based')`.
- **Fix:** jar `Port8tSafe` — every CaptureResult / TotalCaptureResult / CameraCharacteristics / CaptureRequest get and Builder.set in the SDK goes through a helper that catches IllegalArgumentException.

### 7. Black preview, APS mode 0 (NoneApsImpl)

- **Cause:** real APS config is `/odm/etc/camera/config/oplus_camera_algo_switch_config` (+ preview_decision_config.json, preview_decision_params.json, algo_traversal_config.json) — 8T has none. The CPH2745 one is encrypted; `libOplusStringJNI` dlopens `libOplusSecurity.so` (hidden name, base64 + xor 0x3f) to decode it — missing on 8T → garbage.
- **Fix:** add CPH2745 configs + `libOplusSecurity.so` (10504 B, deps liblog/libc/libm/libdl) → sApsVersion 6, FullAps.
- **Later:** algo_switch can be shipped as **plain JSON** (UpdateHelper reads UTF-8 when not encrypted) → editable per mode/camera id.

### 8. Native SIGSEGV createClient (pc 0)

- **Cause:** `libAlgoProcess.so` dlopen fails — needs `libexif-jpeg-aps.so`.
- **Fix:** add CPH2745 `libexif-jpeg-aps.so` (261816 B).

### 9. NPE ConcurrentHashMap.put in getVendorTagAndId

- **Fix:** jar p8t5 — wrap, NPE → return null. **Preview works.**

### 10. Capture: "unable to capture"

- **Cause chain:** null vendor-tag list → `APSClientWrapper.algoInit` −1 → APS never inits → APS_PROC −1 every frame → decisionResult null. Empty list instead crashes libAlgoProcess (null deref).
- **Fix:** jar `Port8tVendorTags` — static list of the 532 KB2003 HAL vendor tags (from `dumpsys media.camera` "Dumping configured vendor tag descriptors"). vendorTagIdsSize 1064, APS_PROC 0. **Capture works.**

### 11. Portrait crash / frozen preview (first round)

- **Cause:** app picks 2nd back camera (macro on 8T) for portrait → physical main+wide → no usecase; CPH2745 `portrait@0` preview config is dual-cam RTB → "undefined case".
- **Fix:** portrait_mode → rear_main, `com.oplus.feature.portrait.sat.camera.id.support=1`; jar Port8tApsMode maps portrait → common. (Superseded by #26.)

### 12. Portrait SIGSEGV in APSSuperEISNode

- **Fix:** jar `port8tStrip` drops `preview_supereis` from all preview configs.

### 13. Front camera crash, then black front

- **Crash:** SIGSEGV `libApsFaceBeautyPreviewProductJni` getIsoParams (null json) — falls back to `fb_default` because `pfb_param.txt` is absent. Fix: CPH2745 `fb_default` (96801 B, facebeauty_version 12).
- **Black preview/photo:** add CPH2745 `libFaceBeautyJni.so` + `lib2DSlender.so`.

### 14. Master/pro: no capture; 0.6x SIGSEGV

- **No capture:** `professional@0` missing in CPH2745 preview config → jar `port8tResolve`: any missing mode@cameraId → "common".
- **0.6x crash:** `preview_rectify` needs `libarcsoft_distortion_correction.so` (exists nowhere) → `port8tStrip` also removes preview_rectify. **Do not add lib_rectify.**

### 15. Photo filter crash

- **Fix:** add `libAncFilter.so`, `libeffect_custom.so`, `libBasicTonePhoto.so`.
- **Lesson:** adding all 60 CPH2745 algo libs at once made it worse (libFDClite crashed night). Add one mode at a time.

### 16. Long exposure never finishes

- Needs RAW reprocess; CHI rejects. **Hidden:** `com.oplus.long.exposure.support 0`, removed from mode_type_list.

### 17. Slo-mo hangs / black

- **Cause:** constrained high-speed session rejects the SDK's YUV ImageReader preview (usage 259/0x103).
- **Fix:** jar p8t15 `Port8tHfr` — while SlowVideoMode builds streams, preview ImageReader created as PRIVATE(34) usage 0x100, but SurfaceWrapper keeps format 35 (changing the wrapper format broke surface lookup → black). Config `com.oplus.feature.slow.video.support=1`. 240 fps works.

### 18. No real JPEG written (photo + portrait)

- **Symptom:** gallery shows a quick thumbnail (`IMG…_quick.jpg`) but MediaStore row stays `is_pending=1`, no file in DCIM.
- **Ruled out:** kernel, susfs/rezygisk/tricky_store, ABL, odm libs, watermark, frame count, configs.
- **Root cause:** `libAlgoInterface` APSProcPipeline builds capture pipelines only on the "5.1" path, chosen by `com.oplus.aps.autoPipeline` in `oplus_camera_aps_config`. 8T's 2022 file lacks it → "5.0" path → `updatePipelines is blank` → procPipeline 0.
- **Fix:** add to `/odm/etc/camera/config/oplus_camera_aps_config` (plain JSON):
  ```json
  {"VendorTag":"com.oplus.aps.autoPipeline","Type":"Int32","Count":"1","Value":"1"}
  ```
- **Never** use CPH2745's aps config (different encryption → libAlgoProcess abort).

### 19. Front beauty capture crash

- **Fix:** add `libOPAlgoCamFaceBeautyCap.so` → APS FaceBeauty V1 (V0 needs libFaceBeautyCap, exists nowhere).

### 20. Filter capture SIGSEGV (Polarr) → Meishe

- **Cause:** odm libFilterWrapper needs a newer libPolarrRender than the 8T 2022 copy.
- **Fix (Meishe path):** `libmsnativefilter.so` in odm/lib64, `odm/etc/camera/meishe_lut` (118), `com.ocs.camera.ipu.meishe.filter.support=1` in **both** `oplus_camera_config` (app) and `oplus_camera_aps_config` (APS). Video + photo filter work.

### 21. 1x high-res (48 MP) crash

- APS fell to upscale V1 (libVDUpScale missing). **Fix:** add `libUpScale.so` → V3.

### 22. 0.6x high-res / front+filter crash

- SIGSEGV OCamRectify / OcamFaceRectifyV3.
- **Fix:** plain-JSON algo_switch with `aps_algo_rectify=0` and `aps_algo_face_rectify=0` everywhere (norect2).

### 23. Night tripod / EV slider → black photo

- **Cause:** SDK sets per-frame `CONTROL_AE_EXPOSURE_COMPENSATION` from the EV bracket list; no night merge lib → output is a dark bracket frame.
- **Fix:** jar p8t41 — skip the per-frame EV set. Tripod mode kept.

### 24. RAW never saves

- libarcsoft_turbo_raw missing. **Hidden:** `com.oplus.feature.professional.raw.support=0`, `super.raw.support=0`. (Stripping feature.raw in the protobuf via jar did not work.)

### 25. Watermark bar empty

- **Fix:** add `libwatermark_photo.so` (LLNDK deps). Not added: libWaterMark (needs libsharebuffer), libImplicitWatermark.

### 26. Photo mode has no 0.6x / UW photo small in a white canvas

- **Gate:** `com.oplus.ultrawide.support=1` **and** mode in `com.oplus.feature.none.sat.rear.mode` → `"night,common"`.
- **Small image:** CPH2745 UW size 8192x6144; 8T UW sensor 4656x3496, JPEG 4608x3456 → set `high.picturesize.rear.wide` / `ultra.wide.high.supported.picturesize` (and camera_unit_config copy) to 4608x3456.

### 27. Video "f" (video blur) SIGSEGV

- `libAncHumBokeh-jni` needs an NN model. **Fix:** algo_switch `aps_algo_video_blur 0` for commonVideo/fastVideo/slowVideo → button gone.

### 28. Portrait bokeh — HAL-RTB on logical id 6 (final)

How the old OnePlus camera did it: logical id 6 (main + UW), op 0xa00a, CHI "MultiCamera usecase" with in-HAL RTB (CHIONEPLUSRTB, ArcSoft dual-cam bokeh).

- **Config:** `camera_id_list` + "6"; portrait_mode on new `rear_portrait`; `portrait_bokeh_case` = [preview, preview_frame, capture, capture_yuv] all `var_camera` (logical streams; physical → −38); `portrait.sat.camera.id.support=0`; `com.oplus.portrait.blur.level.enable=1`.
- **Jar (p8t16 → p8t46):**
  - Port8tCamType 6 → 8 rear_portrait.
  - Port8tHfr: PRIVATE/0x100 preview (HAL "m_pTargetPreviewStream is NULL" otherwise); 4 streams like old cam: preview + preview_frame YUV + capture 4000x3000 + capture_yuv UW 3200x2400; op a00a only for rear_portrait (front stays op 0).
  - `PortraitMode.getPreviewStreamNum` → 1 while RTB (2 held 50 images → APS_MISS_FRAME).
  - `Camera2Impl.findWrapper` also matches size while RTB (else CHI "already imported").
  - `Port8tRtbCap`: drop 3200-wide UW frames from APS; capture stream num 1 (else UW image in corner).
  - `Port8tBokeh`: Java algo_switch copy sets portrait `aps_algo_bokeh=1` (shows blur slider) but strips `aps_algo_bokeh` from per-capture `mApsAlgoFlags` (native bokeh lib missing → SIGSEGV doBokehRegisterparal).
- **Never** copy `libarcsoft_dualcam_bokeh_api` / `libmpbase` into odm/lib64 — breaks camera open.

### 29. Front portrait stuck ~20 s

- turbo-HDR ZSL path ("TRZP_S"). **Fix:** algo_switch `aps_algo_turbo_hdr 0` everywhere (norect5).

### 30. Video tap: exposure bar vanishes

- Video tap starts Oplus subject track-focus; 8T HAL has no tracking → stops after ~2 s. **Fix:** `com.oplus.track.focus.support 0`.

### 31. Night: no 0.6x → 1x toggle

- After switching to UW, night_mode/rear_wide feature list lacks `feature.zoom` (`camera_unit_feature_config.protobuf`, schema embedded in SDK ProtobufFeatureConfig).
- **Fix:** edited protobuf adds only `feature.zoom` to night_mode rear_wide (sha d00e6f8f…).

### 32. XPan image only in the corner

- **Sizes:** `com.oplus.xpan.main.picturesize` 4000x1800, wide 4608x2080, crop 3936x1458.
- **Crop regions** (app hardcoded for CPH2745), override keys `com.oplus.xpan.crop.region.{main,wide}.{portrait,landscape}`: main `171,32,1458,3936` / `32,171,3936,1458`; wide `253,180,1574,4248` / `180,253,4248,1574`. **Comma-separated** — `x` → NumberFormatException crash.

### 33. Libs fail in a real build (avc)

- New odm libs labelled `vendor_file` → `cam6_sphal_labels` in port.sh sets every camera odm .so to `same_process_hal_file` in both odm_file_contexts (entries are written `libX\.so`, use `grep -vF` to remove old lines).

---

## 3. port.sh integration

- COS block: APK from `camera6.0-fix_cos.zip` + privapp xml + patched jar from `devices/kebab/camera6/`.
- ODM block: after `camera5.0-fix_odm.zip` unzip, copy the whole `devices/kebab/camera6/odm` tree with cmp check, then `cam6_sphal_labels` + `locksettings_guard` (`product/etc/init/p8t_locksettings_guard.rc`).
- Original OnePlus camera came from base ROM my_product (`old_camera_app=…OnePlusCamera.apk`, port.sh ~line 1974); removing it = disable that block.
- Camera 7 now installs over camera 6's place; camera 6 stays only as fallback.

---

## 4. Live test techniques

- **Jar:** bind over `/product/framework/com.oplus.camera.unit.sdk.jar` (zygote64 mount ns once KSU modules mount the path), force-stop camera.
- **odm config:** copy dir, keep original labels, bind over `/odm/etc/camera/config`.
- **Libs loaded via sphal name:** bind a copy of `/vendor/lib64/egl` with the extra libs. egl is mapped by GPU processes → use `umount -l`; never `rm` a dir that is still a bind source.
- **Libs loaded by absolute /odm/lib64 path:** bind a full copy of `/odm/lib64`, label `same_process_hal_file`.
- **Daily state:** `/data/local/tmp/cam6_daily.sh` + `cam6_repo.jar` + `cam6_mscfg.tar` (rerun after every reboot). Versioned backups `cam6_mscfg.vN.tar` before every change.
- **Logs:** `persist.sys.assert.panic=true`, `oplus.autotest.camera.debug.forcelog=true` (not persistent); `persist.logd.flowctrl.on 0` for cameraserver logs — restore to 1.
- **Real save check:** `ls /data/media/0/DCIM/Camera` + MediaStore `is_pending` — not the gallery thumbnail.
- **Decrypted algo_switch dump:** debug jar p8t12dbg → app external files `port8t_algo_switch.json`.
- `stop; start` on this ROM is unreliable (SystemUI NPE → boot monitor reboot) — prefer force-stop / reboot.

---

## 5. Features not possible on 8T

AI moon, turbo HDR, hybrid RAW, face restore, portrait super-night (QNN/HTP/ODNN); AI SR, AINR, merge HDR, face info (libstface_fd_api), hyperlapse / super EIS (libhyperlapse), video EIS (libarc_sateis), RAW (libarcsoft_turbo_raw), long exposure, video blur, XPan film filter (libFilterWrapper/Polarr mismatch).

**Do-not-add list:** libFDClite, lib_rectify, libarcsoft_dualcam_bokeh_api, libmpbase, the full CPH2745 60-lib algo set at once, CPH2745 oplus_camera_aps_config.
