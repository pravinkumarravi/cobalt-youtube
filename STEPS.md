# STEPS.md - YouTube TV Recreation Steps (Cobalt & Native)

## Prerequisites

Before starting, ensure you have:
- Java JDK 17+ (or JBR 21)
- Android SDK with Build-Tools 35.0.0+ (`apksigner`, `zipalign`)
- Apktool 2.9.3+ (`tools/apktool.jar`)
- Connected Android TV via ADB (`adb connect <device-ip>:5555`)
- YouTube Data API v3 key

---

## PHASE 0: Cobalt TV App Build, Packaging & Deployment

YouTube TV is architecturally built upon **Cobalt** (Google's Starboard C++ runtime and HTML5 renderer engine).

### Step 0.1 - Cobalt Web Application Structure
The Cobalt web application lives in [`cobalt_app/`](file:///D:/youtube-rea/cobalt_app):
- `index.html`: Contains Profile Picker ("Who's watching?"), Home Feed with Hero Split Card & Recommended Shelves, 7x4 Virtual Alphabet Keyboard Search, and 12-button OSD Player.
- `styles.css`: 1920x1080 Full HD styles, clean white 3.5px focus rings (`#FFFFFF`), 1.05x scale, and Cobalt color tokens.
- `app.js`: 2D Spatial Navigation engine processing D-pad key events (ArrowUp, ArrowDown, ArrowLeft, ArrowRight, Enter, Back).

### Step 0.2 - Cobalt Container APK Configuration
1. Decode reference APK:
```bash
java -jar tools/apktool.jar d -f YouTube_TV.apk -o forensics/apktool_full
```
2. Configure `AndroidManifest.xml`:
   - Package name: `com.cobalt.ytv.clone`
   - Provider authority: `com.cobalt.ytv.clone.androidx-startup`
   - Target URL: `cobalt.APP_URL` -> `https://www.youtube.com/tv`
   - Splash URL: `cobalt.SPLASH_URL` -> `file:///youtube_splash_screen.html`

### Step 0.3 - Build Cobalt APK
```bash
java -jar tools/apktool.jar b forensics/apktool_full -o cobalt_unsigned.apk
```

### Step 0.4 - Sign Cobalt APK with Android SDK Key
```bash
apksigner sign --ks ~/.android/debug.keystore --ks-pass pass:android --key-pass pass:android --out YouTube_TV_Cobalt.apk cobalt_unsigned.apk
```

### Step 0.5 - Install & Launch Cobalt on TV
```bash
adb install -r YouTube_TV_Cobalt.apk
adb shell am start -n com.cobalt.ytv.clone/dev.cobalt.app.MainActivity
```

---

## PHASE 1: Native Android TV Alternative (Jetpack Compose / Leanback)


Or via Android Studio:
1. File > New > New Project
2. Select "Android TV" template (Leanback Activity)
3. Package: com.yourapp.youtubetv
4. Min API Level: 24

### Step 1.2 - Configure build.gradle (app level)
```groovy
plugins {
    id 'com.android.application'
    id 'kotlin-android'
}

android {
    compileSdk 34
    defaultConfig {
        applicationId "com.yourapp.youtubetv"
        minSdk 24
        targetSdk 34
        versionCode 1
        versionName "1.0"
    }
    buildFeatures {
        viewBinding true
        compose true   // if using Compose TV
    }
}

dependencies {
    // Leanback (TV UI framework)
    implementation 'androidx.leanback:leanback:1.2.0'
    
    // ExoPlayer / Media3 (video playback)
    implementation 'androidx.media3:media3-exoplayer:1.3.0'
    implementation 'androidx.media3:media3-ui:1.3.0'
    implementation 'androidx.media3:media3-exoplayer-hls:1.3.0'
    
    // Google Sign-In
    implementation 'com.google.android.gms:play-services-auth:21.0.0'
    
    // Networking
    implementation 'com.squareup.retrofit2:retrofit:2.9.0'
    implementation 'com.squareup.retrofit2:converter-gson:2.9.0'
    implementation 'com.squareup.okhttp3:okhttp:4.12.0'
    implementation 'com.squareup.okhttp3:logging-interceptor:4.12.0'
    
    // Image Loading
    implementation 'com.github.bumptech.glide:glide:4.16.0'
    
    // Coroutines
    implementation 'org.jetbrains.kotlinx:kotlinx-coroutines-android:1.7.3'
    
    // ViewModel + LiveData
    implementation 'androidx.lifecycle:lifecycle-viewmodel-ktx:2.7.0'
    implementation 'androidx.lifecycle:lifecycle-livedata-ktx:2.7.0'
}
```

### Step 1.3 - Configure AndroidManifest.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.GET_ACCOUNTS" />
    <uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE_MEDIA_PLAYBACK" />

    <uses-feature android:name="android.hardware.touchscreen" android:required="false" />
    <uses-feature android:name="android.software.leanback" android:required="false" />
    <uses-feature android:name="android.hardware.screen.landscape" android:required="true" />

    <application
        android:name=".YoutubeTvApplication"
        android:label="@string/app_name"
        android:banner="@drawable/app_banner"
        android:icon="@mipmap/ic_launcher"
        android:theme="@style/AppTheme">

        <activity
            android:name=".ui.splash.SplashActivity"
            android:exported="true"
            android:screenOrientation="landscape"
            android:configChanges="keyboard|keyboardHidden|navigation|orientation|screenSize">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
                <category android:name="android.intent.category.LEANBACK_LAUNCHER" />
            </intent-filter>
        </activity>

        <activity
            android:name=".ui.main.MainActivity"
            android:screenOrientation="landscape"
            android:configChanges="keyboard|keyboardHidden|navigation|orientation|screenSize" />

        <activity
            android:name=".ui.player.PlayerActivity"
            android:screenOrientation="landscape"
            android:configChanges="keyboard|keyboardHidden|navigation|orientation|screenSize" />

        <service
            android:name=".service.PlaybackService"
            android:foregroundServiceType="mediaPlayback"
            android:exported="false" />

    </application>
</manifest>
```

---

## PHASE 2: Splash Screen (Day 1.5)

### Step 2.1 - Create SplashActivity.kt
```kotlin
class SplashActivity : AppCompatActivity() {
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_splash)
        
        // YouTube TV uses a 1-second lozenge animation then loads main
        Handler(Looper.getMainLooper()).postDelayed({
            startActivity(Intent(this, MainActivity::class.java))
            finish()
        }, 1333) // matches YouTube's splash timing
    }
}
```

### Step 2.2 - Create activity_splash.xml
Matches the actual splash screen from youtube_splash_screen.html:
- Background: #282828
- Centered YouTube lozenge (red rectangle + white play button)
- Animated wordmark slides in from right
- Loading spinner appears after 1s

---

## PHASE 3: Navigation Sidebar (Day 2)

### Step 3.1 - Create the Left Navigation
Based on live UI capture, the sidebar contains 8 items:
1. Search (magnifying glass icon)
2. Home (house icon) - DEFAULT focused
3. Subscriptions (subscription/bell icon)
4. Library/Playlists (playlist icon)
5. History (clock icon)  
6. Live (radio/antenna icon)
7. Settings (gear icon)

### Step 3.2 - Sidebar Layout (fragment_nav.xml)
```xml
<LinearLayout
    android:layout_width="108dp"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:background="#1A1A1A"
    android:paddingTop="48dp">
    
    <!-- Each nav item is 60dp x 60dp icon centered in 108dp -->
    <!-- D-pad focus scales icon to 1.2x with white tint -->
    
</LinearLayout>
```

---

## PHASE 4: Home Feed (Days 3-4)

### Step 4.1 - YouTube Data API Setup
```kotlin
// In your API service
interface YouTubeApiService {
    
    @GET("videos")
    suspend fun getRecommended(
        @Query("part") part: String = "snippet,contentDetails,statistics",
        @Query("chart") chart: String = "mostPopular",
        @Query("maxResults") maxResults: Int = 20,
        @Query("key") apiKey: String = API_KEY
    ): VideoListResponse
    
    @GET("search")
    suspend fun search(
        @Query("part") part: String = "snippet",
        @Query("q") query: String,
        @Query("type") type: String = "video",
        @Query("maxResults") maxResults: Int = 20,
        @Query("key") apiKey: String = API_KEY
    ): SearchResponse
    
    @GET("subscriptions")
    suspend fun getSubscriptions(
        @Query("part") part: String = "snippet",
        @Query("mine") mine: Boolean = true,
        @Header("Authorization") token: String
    ): SubscriptionListResponse
}
```

### Step 4.2 - Video Shelf Layout
Each shelf row:
- Section title text (white, 20sp, bold)
- Horizontal RecyclerView with LinearLayoutManager(HORIZONTAL)
- Video card: 16:9 thumbnail + duration badge + title + channel

### Step 4.3 - Video Card Dimensions (from live capture)
- Large featured card: ~536px wide x 405px tall
- Standard card: ~420px wide x 320px tall
- Duration badge: bottom-right of thumbnail, dark background
- Focus: card scales to 1.05x with bright blue outline

---

## PHASE 5: Video Player (Days 5-6)

### Step 5.1 - ExoPlayer Setup
```kotlin
class PlayerActivity : AppCompatActivity() {
    private lateinit var player: ExoPlayer
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        player = ExoPlayer.Builder(this).build()
        
        val videoUrl = intent.getStringExtra("VIDEO_URL") ?: return
        val mediaItem = MediaItem.fromUri(videoUrl)
        player.setMediaItem(mediaItem)
        player.prepare()
        player.playWhenReady = true
    }
}
```

### Step 5.2 - Player UI Controls
From live UI observation, YouTube TV player has:
- Bottom progress bar (red)
- Title + channel overlay (fades after 3s)
- Seek: Left/Right D-pad = 10s skip
- Long-press seek = chapter navigation
- Up arrow = related videos panel
- Back = exit player

---

## PHASE 6: Search (Day 7)

### Step 6.1 - Search Screen
- Full-screen keyboard (TV-style QWERTY)
- Voice search button (microphone)
- Results grid below keyboard
- Real-time suggestions as user types

---

## PHASE 7: Authentication (Day 8)

### Step 7.1 - Google Sign-In for TV
```kotlin
// TV devices use device flow authentication
// Show a code on screen, user enters on phone/computer
val signInClient = GoogleSignIn.getClient(this, 
    GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN)
        .requestEmail()
        .requestScopes(Scope("https://www.googleapis.com/auth/youtube.readonly"))
        .build()
)
```

---

## PHASE 8: Polish (Day 9)

### Step 8.1 - D-pad Navigation Rules
1. Always maintain visual focus indicator
2. Focus should wrap at row boundaries
3. Long-press D-pad center = context menu
4. Back button = previous screen (not exit)
5. Home button = return to main screen

### Step 8.2 - Animation Specs (from splash screen analysis)
- Transitions: 333ms cubic-bezier(0.4, 0, 0.2, 1)  
- Focus scale: 1.05x over 150ms
- Shelf scroll: smooth momentum scrolling
- Loading: spinner at 71.5% vertical center position
