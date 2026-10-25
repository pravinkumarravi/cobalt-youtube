# Cobalt YouTube TV (Android TV / Fire TV)

> High-fidelity reverse engineering and independent implementation of the YouTube TV Cobalt runtime and web application for Android TV and Fire TV devices.

---

## Overview

YouTube for Android TV is built on Google's **Cobalt** runtime—a lightweight, standards-compliant HTML5/CSS/JS rendering engine optimized for embedded hardware and TV chipsets via the Starboard abstraction layer (`libcobalt.so`).

This repository provides:
1. **Cobalt Application (`cobalt_app/`)**: Full-featured TV application featuring:
   - 2D D-pad spatial navigation with high-contrast white rounded focus outlines (`#FFFFFF`, 3.5dp).
   - Expandable 11-item sidebar navigation drawer.
   - Profile selector ("Who's watching?") with 220dp circular profile avatars and "Watch as guest".
   - Split-banner hero showcase with video previews, watch pills, and overflow menus.
   - 7x4 alphabet on-screen TV search keyboard with real-time suggestion pills.
   - Video player with chapter scrubber and 12-button control cluster.
2. **Re-engineered Cobalt APK (`YouTube_TV_Cobalt.apk`)**: Standalone, signed Android TV package with:
   - Original application icon (`@mipmap/ic_app`) and 16:9 Leanback TV banner (`@drawable/app_banner`).
   - Package namespace `com.cobalt.ytv.clone` with unique startup provider authority to prevent collisions.
   - Fully configured Starboard networking and Cobalt web app loader.
3. **Native Jetpack Compose / Leanback Prototype (`app/`)**: Pure Kotlin Android TV implementation for architectural benchmarking.
4. **Complete Reverse-Engineering Specifications**:
   - [`OPERATIONS.md`](OPERATIONS.md) - Exact UI wireframes, D-pad navigation graphs, and input specs.
   - [`UI_SPEC.md`](UI_SPEC.md) - Design tokens, color palette, typography, and layout dimensions.
   - [`TEST.md`](TEST.md) - 10-phase verification test journeys.
   - [`STEPS.md`](STEPS.md) - Step-by-step reproduction and build instructions.
   - [`ARCHITECTURE.md`](ARCHITECTURE.md) - Deep architectural comparison (Cobalt vs Native Compose).

---

## Releases & Downloads

Pre-built, signed APKs are available in the [Releases](https://github.com/pravinkumarravi/cobalt-youtube/releases) section:
- **`YouTube_TV_Cobalt.apk`**: Production-signed Cobalt APK ready for sideloading on Android TV / Fire TV devices.

### Quick Install via ADB
```bash
adb connect <TV_IP_ADDRESS>:5555
adb install -r YouTube_TV_Cobalt.apk
adb shell am start -n com.cobalt.ytv.clone/dev.cobalt.app.MainActivity
```

---

## Building from Source

### 1. Rebuild the Cobalt APK
```bash
# Decode or modify forensics/apktool_full if needed
java -jar tools/apktool.jar b forensics/apktool_full -o cobalt_unsigned.apk

# Sign with Android SDK apksigner
apksigner sign --ks ~/.android/debug.keystore \
               --ks-pass pass:android \
               --key-pass pass:android \
               --out YouTube_TV_Cobalt.apk \
               cobalt_unsigned.apk
```

### 2. Build the Native Leanback Compose App
```bash
cd app
./gradlew assembleDebug
# Output: app/app/build/outputs/apk/debug/app-debug.apk
```

---

## TV Launcher & Icon Assets

Extracted directly from the reference `YouTube_TV.apk`:
- **App Icon**: `res/mipmap-*/ic_app.png` (Red YouTube lozenge with play triangle across mdpi, hdpi, xhdpi, xxhdpi, xxxhdpi).
- **Leanback Banner**: `res/drawable-*/app_banner.png` (320x180 16:9 landscape banner with YouTube wordmark).
- Configured with `LEANBACK_LAUNCHER` intent filters and density-independent resource fallbacks.

---

## License

This project is created for reverse engineering, research, and educational purposes. All trademarks, service marks, and logos belong to their respective owners.
