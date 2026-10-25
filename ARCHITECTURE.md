# ARCHITECTURE.md - Technical Architecture Analysis

## Overview
Deep technical analysis of YouTube TV APK architecture, reverse-engineered from:
- APK extraction and inspection
- Live runtime analysis via ADB + Android CLI
- AndroidManifest.xml parsing
- Asset and resource inspection
- Native library identification

---

## App Architecture: Cobalt Engine

### What is Cobalt?
Cobalt is Google's open-source, lightweight web engine specifically designed for
embedded/TV platforms. It is NOT a full Chromium build - it's a stripped-down
web rendering engine optimized for:
- Low memory devices (TVs, set-top boxes)
- No GPU-heavy features
- Guaranteed 60fps on low-end hardware
- D-pad/remote control navigation

GitHub: https://github.com/youtube/cobalt

### How YouTube TV Uses Cobalt
```
Android OS
  └── dev.cobalt.app.CobaltApplication (Android wrapper)
       └── dev.cobalt.app.MainActivity (single Activity)
            └── CobaltActivity (Cobalt Android bridge)
                 └── libcobalt.lz4 (native Cobalt engine)
                      └── Renders: https://www.youtube.com/tv
                           (HTML/CSS/JavaScript UI)
```

### Key Files
| File | Role |
|------|------|
| classes.dex | Java/Kotlin Android wrapper + GMS integration |
| lib/armeabi-v7a/libcobalt.lz4 | Compressed Cobalt native engine |
| assets/app/cobalt/ | SSL certs, splash screens for Cobalt |
| assets/fonts/ | Roboto font family for web rendering |

---

## Component Architecture

### Application Layer (Android)
```kotlin
// Entry points from AndroidManifest.xml:

CobaltApplication : Application
  - Initializes Cobalt engine
  - Sets up logging, crash reporting

MainActivity : CobaltActivity
  - Handles intents/deep links
  - Manages fullscreen + landscape lock
  - Metadata: APP_URL = "https://www.youtube.com/tv"
  - Metadata: SPLASH_URL = "file:///youtube_splash_screen.html"
  - Metadata: EVERGREEN_LITE = false
  - Metadata: lib_name = "cobalt"

SignInHubActivity (Google GMS)
  - OAuth2 sign-in WebView
  - NOT exported (internal only)
  
GoogleApiActivity (Google GMS)
  - API auth surface

RevocationBoundService (Google GMS)
  - Handles OAuth token revocation

InitializationProvider (Startup)
  - EmojiCompatInitializer
  - ProcessLifecycleInitializer
```

### Cobalt Engine Native Layer
```
libcobalt.lz4 contains:
  - CSS layout engine (custom, not Blink)
  - JavaScript runtime (V8 subset)
  - HTTP client (fetches youtube.com/tv)
  - Audio/Video decoder interface
  - D-pad/remote input mapper
  - Font rendering (uses assets/fonts/)
  - SSL/TLS (uses assets/cobalt/ssl/certs/)
```

### Web App Layer (youtube.com/tv)
The actual UI is served from Google's servers as a web app:
- HTML + CSS for layout
- JavaScript for interaction logic
- YouTube IFrame Player API for video
- YouTube Data API v3 responses

---

## Intent & Deep Link Handling

### Registered Intent Filters (from AndroidManifest)

#### 1. MAIN / LEANBACK_LAUNCHER
```xml
<!-- Standard launcher entry -->
<action android:name="android.intent.action.MAIN" />
<category android:name="android.intent.category.LEANBACK_LAUNCHER" />
```

#### 2. URL Deep Links
```xml
<action android:name="android.intent.action.VIEW" />
<data android:scheme="http" android:host="youtube.com" />
<data android:scheme="https" android:host="youtube.com" />
<data android:scheme="https" android:host="www.youtube.com" />
<data android:scheme="https" android:host="m.youtube.com" />
<data android:scheme="https" android:host="youtu.be" />
```

#### 3. YouTube Custom Scheme
```xml
<data android:scheme="youtube" android:host="search" />
<data android:scheme="youtube" android:host="play" />
```

#### 4. Voice Search
```xml
<action android:name="android.media.action.MEDIA_PLAY_FROM_SEARCH" />
```

---

## Permissions Analysis

| Permission | Purpose | Sensitivity |
|------------|---------|-------------|
| INTERNET | Fetch youtube.com/tv content | Required |
| ACCESS_NETWORK_STATE | Detect WiFi/cellular | Required |
| GET_ACCOUNTS | Google account access | Required |
| MODIFY_AUDIO_SETTINGS | Volume control, audio focus | Required |
| FOREGROUND_SERVICE | Background media playback | Required |
| FOREGROUND_SERVICE_MEDIA_PLAYBACK | Android 14 media service type | Required |
| READ_SECURE_SETTINGS | Read device settings | Low-risk |
| com.amazon.permission.media.session.voicecommandcontrol | Fire TV Alexa voice | Amazon-specific |
| com.amazon.customappaccesskeyprovider.permission.ACCESS_KEY | Fire TV key access | Amazon-specific |
| com.amazon.tv.launcher.permission.DEEPLINK | Fire TV deep link | Amazon-specific |

### Amazon-Specific Notes
This APK was built specifically for Amazon Fire TV. For standard Android TV:
- Remove all `com.amazon.*` permissions
- Replace with Android TV equivalents
- Test on Google TV / AOSP Android TV

---

## Data Flow Architecture

### Video Content Loading
```
User action -> D-pad press
  |
  v
Cobalt JS handler (youtube.com/tv JavaScript)
  |
  v
YouTube Data API v3 request
  |
  v
Google CDN response (video metadata, thumbnails)
  |
  v
Cobalt rendering engine (HTML + CSS layout)
  |
  v
Video playback request (YouTube streaming URL)
  |
  v
Cobalt video decoder -> Android AudioTrack + SurfaceView
```

### Authentication Flow
```
User selects Sign In
  |
  v
Google Device Flow initiated
  |
  v
Display: code + google.com/device URL
  |
  v
User enters code on phone/computer
  |
  v
Google OAuth2 server sends token to Cobalt
  |
  v
YouTube API authenticated requests enabled
  |
  v
Personalized content loads (subscriptions, history, recommendations)
```

---

## Resource Architecture

### Screen Densities Supported
```
ldpi  (120 dpi) - not used
mdpi  (160 dpi) - baseline
hdpi  (240 dpi)
xhdpi (320 dpi)
xxhdpi(480 dpi)
xxxhdpi(640dpi) - TV, highest quality
```

### Font Architecture (from fonts.xml)
Primary font: Roboto (sans-serif family)
```
Roboto-Thin (100)
Roboto-Light (300)
Roboto-Regular (400)    <- default
Roboto-Medium (500)
Roboto-Bold (700)
Roboto-Black (900)
+ Italic variants for each weight
+ Condensed variants
```

Fallback fonts:
- Noto Serif (serif)
- DroidSansMono (monospace)
- Noto Sans [Language-specific] (CJK, Arabic, Hebrew, etc.)
- NotoColorEmoji.ttf (emoji)

### Splash Screen Architecture
Three splash variants (for different YouTube brand sub-products):
1. `youtube_splash_screen.html` - Standard YouTube TV
2. `ytv_splash_screen.html` - YouTube TV streaming service
3. `ytkids_splash_screen.html` - YouTube Kids

All are self-contained HTML with base64-embedded images (no network needed).

---

## Security Architecture

### SSL/TLS
- Bundled CA certificates in `assets/app/cobalt/content/ssl/certs/`
- 150+ certificate files (standard root CAs)
- Pinning: Not observed (standard OS trust store + bundled CAs)

### Content Security Policy (from splash screen)
```
default-src 'none';
script-src 'sha256-...' (inline script hash allowlist)
style-src 'sha256-...'
img-src 'self' data:
```

---

## Recreation Architecture Recommendation

### For Fully Native Android TV App

```
app/
├── data/
│   ├── api/
│   │   ├── YouTubeApiService.kt      (Retrofit interface)
│   │   └── models/
│   │       ├── VideoResponse.kt
│   │       ├── SearchResponse.kt
│   │       └── SubscriptionResponse.kt
│   ├── repository/
│   │   ├── VideoRepository.kt
│   │   ├── SearchRepository.kt
│   │   └── AuthRepository.kt
│   └── local/
│       └── WatchHistoryDao.kt        (Room database)
│
├── domain/
│   ├── models/
│   │   ├── Video.kt
│   │   ├── Channel.kt
│   │   └── Playlist.kt
│   └── usecases/
│       ├── GetRecommendedVideosUseCase.kt
│       ├── SearchVideosUseCase.kt
│       └── GetSubscriptionsUseCase.kt
│
├── ui/
│   ├── splash/
│   │   └── SplashActivity.kt
│   ├── main/
│   │   ├── MainActivity.kt
│   │   └── MainFragment.kt          (hosts nav + content)
│   ├── home/
│   │   ├── HomeFragment.kt
│   │   ├── HomeViewModel.kt
│   │   └── adapters/
│   │       ├── VideoShelfAdapter.kt
│   │       └── VideoCardPresenter.kt (Leanback Presenter)
│   ├── search/
│   │   ├── SearchFragment.kt
│   │   └── SearchViewModel.kt
│   ├── player/
│   │   ├── PlayerActivity.kt
│   │   └── PlayerViewModel.kt
│   ├── subscriptions/
│   │   └── SubscriptionsFragment.kt
│   ├── library/
│   │   └── LibraryFragment.kt
│   └── settings/
│       └── SettingsFragment.kt
│
├── service/
│   └── PlaybackService.kt            (MediaSession + ForegroundService)
│
└── di/
    └── AppModule.kt                  (Hilt dependency injection)
```

### Key Technology Decisions

| Concern | Recommendation | Alternative |
|---------|---------------|-------------|
| UI Framework | Leanback (stable, mature) | Compose TV (newer) |
| Video Playback | ExoPlayer / Media3 | no alternatives |
| Image Loading | Glide (fast) | Coil |
| Networking | Retrofit + OkHttp | Ktor |
| DI | Hilt | Koin |
| Local Storage | Room | DataStore |
| Auth | Google Sign-In SDK | Custom OAuth2 |
| Async | Coroutines + Flow | RxJava |

---

## API Endpoints Needed

### YouTube Data API v3
Base URL: https://www.googleapis.com/youtube/v3/

| Endpoint | Method | Purpose |
|----------|--------|---------|
| /videos | GET | Home feed, trending |
| /search | GET | Search results |
| /subscriptions | GET | User subscriptions |
| /channels | GET | Channel details |
| /playlists | GET | Playlists |
| /playlistItems | GET | Playlist videos |
| /activities | GET | Watch history proxy |
| /commentThreads | GET | Video comments |

### Authentication
- OAuth2 Device Flow: https://oauth2.googleapis.com/device/code
- Token Exchange: https://oauth2.googleapis.com/token
- Scopes needed:
  - https://www.googleapis.com/auth/youtube.readonly
  - https://www.googleapis.com/auth/youtube
