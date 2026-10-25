# OPERATIONS.md - Detailed Operations & Reverse Engineering Guide

## Overview
This file describes every UI operation, screen interaction, layout dimension, and feature behavior
observed and verified from live reverse engineering of `YouTube_TV.apk` (Cobalt runtime)
on a connected Android TV device (192.168.1.5:5555, 1920x1080 Full HD).

---

## Screen 0: Profile Picker ("Who's watching?")

### Visual Layout (1920x1080)
```
+---------------------------------------------------------------------------------+
| [PRAVIN KUMAR R]                                                                |
|                                                                                 |
|  Search                         Who's watching?                                 |
|  Home                                                                           |
|  Shorts                                                                         |
|  Subscriptions         (Profile 1)   (Profile 2)   (Add Acc)  (Add Child)       |
|  Library                 [Photo]       [Photo]       [ + ]       [ + ]          |
|  -----------------                                                              |
|  News                   PRAVIN K       Ramya V      Add acc    Child acc        |
|  Gaming                                                                         |
|  Live                                                                           |
|  Music                                 [ Watch as guest ]                       |
|  Podcasts                                                                       |
|  Sport                                                                          |
+---------------------------------------------------------------------------------+
```

### Components & Focus Behavior
1. **Sidebar State**:
   - Expanded with labels: Search, Home, Shorts, Subscriptions, Library, News, Gaming, Live, Music, Podcasts, Sport.
   - Profile badge at top left: Capsule pill containing user avatar photo + Name.
2. **Profile Circle Avatars**:
   - Size: 220dp diameter circular items.
   - Spacing: 32dp gap.
   - Text below: 18sp white text, centered.
3. **Guest Button**:
   - Dark pill `[ Watch as guest ]` (`#222222`, 14sp white text, rounded 20dp).
4. **D-pad Operations**:
   - Left: Moves to expanded sidebar.
   - Right/Down: Moves focus between profile circles and "Watch as guest".
   - Select: Authenticates selected profile, transitions to Home screen with fade transition (300ms).

---

## Screen 1: Home (Default Landing Feed)

### Layout Coordinates & Wireframe (1920x1080)
```
+---------------------------------------------------------------------------------+
| [Avatar] [  Search (Pill)  ]                                       [▶ YouTube]  |
|                                                                                 |
| (Q)  +-----------------------------------------------------------------------+  |
|      |                                     |                                 |  |
| (H)  |  (Channel Avatar)                   |       PREVIEW / TRAILER         |  |
|      |  Love From Hubby                    |            VIDEO                |  |
| (S)  |  Sponsored • Heera Hai Sada Ke Liye |       (16:9 Thumbnail)          |  |
|      |                                     |                                 |  |
| (Sub)|  [ Watch ]  ( ⋮ )                   |                                 |  |
|      +-----------------------------------------------------------------------+  |
| (Lib)                                                                           |
|      Recommended                                                                |
| (···)|  +--------------+  +--------------+  +--------------+  +--------------+  |
|      |  THUMBNAIL 1  |  |  THUMBNAIL 2  |  |  THUMBNAIL 3  |  |  THUMBNAIL 4  |  |
| (Set)|  | [46:15]    |  |  | [3:09:52]  |  |  | [14:48]    |  |  | [12:00]    |  |
|      |  ==============|  +--------------+  +--------------+  +--------------+  |
|      |  Card Title 1  |  Card Title 2       Card Title 3       Card Title 4     |
|      |  Channel Name  |  Channel Name       Channel Name       Channel Name     |
|      |  Views • Time  |  Views • Time       Views • Time       Views • Time     |
|      +--------------+                                                           |
+---------------------------------------------------------------------------------+
```

### Top Header Bar
- **User Avatar**: 40x40dp circular avatar at left (x: 32dp, y: 32dp).
- **Search Capsule**: Dark capsule `[ 🔍 Search ]` (width: 420dp, height: 44dp, bg: `#222222`, corner radius: 22dp, text: `#AAAAAA`).
- **YouTube Logo**: Top right (x: 1720dp, y: 36dp), Red play lozenge `#FF0000` + White YouTube wordmark.

### Featured Hero Banner (Split Card)
- **Container**: Rounded rect (bg: `#1E1E1E`, corner radius: 20dp, padding: 32dp).
- **Left Column**:
  - Channel Avatar: 48x48dp circular icon.
  - Title: 28sp Roboto Bold, `#FFFFFF`.
  - Subtitle / Sponsored Tag: 14sp `#AAAAAA`.
  - Actions:
    - `[ Watch ]`: White pill button (`#FFFFFF`, text: `#000000`, 16sp Bold, corner radius: 24dp).
    - `( ⋮ )`: Dark circular overflow button (`#2A2A2A`, 44x44dp).
- **Right Column**: 16:9 Video Preview / trailer player with rounded corners (12dp).

### Shelves & Video Cards
- **Shelf Header**: 22sp Roboto Bold, `#FFFFFF`, margin-bottom: 16dp ("Recommended", "Recently uploaded").
- **Card Focus State**:
  - Scale: 1.05x.
  - Border: 3.5dp solid `#FFFFFF` (clean white focus border).
  - Watch Progress: Red horizontal line (`#FF0000`, 3dp height) across bottom of thumbnail.
  - Duration Badge: Pill at bottom-right (`background: rgba(0,0,0,0.8)`, text: 12sp Bold white).
  - Title: Max 2 lines, Roboto Medium 16sp `#FFFFFF`.
  - Channel & Metadata: Roboto Regular 13sp `#AAAAAA`.


## Screen 2: Video Player & OSD Controls

### Live Player OSD Layout (from `03_player_controls.png`)
```
+---------------------------------------------------------------------------------+
|                                                                                 |
|  I Built an Engine From Scratch                                   (Mute)        |
|  Design to Steel • 5.8 lakh views • 2 mo ago                                    |
|                                                                                 |
|                                                                                 |
|                                                                                 |
|                                                                                 |
|  37:26 • Final engine assembly                                            46:14 |
|  [===]--[===========]--[========|========]--[============]--[=========]--[====] |
|                                                                                 |
|  (Avatar) [Description] [Subscribe]   (|<)  (( || ))  (>|)   (👍) (👎) (💬) (✨) (🔖) (CC) (⚙)|
|                                                                                 |
|  +--------------------+  +--------------------+  +--------------------+         |
|  | Peeking Related 1  |  | Peeking Related 2  |  | Peeking Related 3  |         |
|  +--------------------+  +--------------------+  +--------------------+         |
+---------------------------------------------------------------------------------+
```

### Player OSD Components
1. **Top Header**:
   - Title: 28sp Roboto Bold `#FFFFFF` (top-left: x=48dp, y=48dp).
   - Channel & Metadata: 14sp `#AAAAAA` ("Design to Steel • 5.8 lakh views • 2 mo ago").
2. **Timeline Scrubber with Chapters**:
   - Chapter segments: segmented white bar with 2dp gaps between chapters.
   - Chapter text indicator: "37:26 • Final engine assembly" (left aligned above scrubber).
   - Total duration: "46:14" (right aligned above scrubber).
   - Ad markers: Yellow highlight ticks along the progress line.
3. **Control Row Action Items (Left to Right)**:
   - `(Channel Avatar)`: 40dp circular channel badge.
   - `[Description]`: Dark translucent capsule pill (`rgba(255,255,255,0.15)`), 14sp white text.
   - `[Subscribe]`: Dark translucent capsule pill, 14sp white text.
   - `(|<)`: Circular button: Previous chapter/video.
   - `(( || ))`: **PRIMARY FOCUSED CONTROL**: 64dp white circular button with black pause/play icon.
   - `(>|)`: Circular button: Next chapter/video.
   - `(👍)`: Thumbs Up (Like).
   - `(👎)`: Thumbs Down (Dislike).
   - `(💬)`: Comments overlay button.
   - `(✨)`: AI / Summary features.
   - `(🔖)`: Save to playlist / Watch Later.
   - `(CC)`: Closed Captions toggle.
   - `(⚙)`: Quality / Playback speed settings gear.
4. **Bottom Shelf Peek**:
   - Peeking cards of recommended/related videos when controls are active. Pressing DPAD_DOWN moves focus to this shelf.

---

## Screen 3: TV Search & Alphabet Keyboard

### Live Search Layout (from `02_search_actual.png`)
```
+---------------------------------------------------------------------------------+
| [Avatar] [ Search                                            ]      [▶ YouTube]  |
|                                                                                 |
|  (Q) [🔥 psg vs barcelona        ]   A  B  C  D  E  F  G  [⌫]                   |
|      🔥 lakers vs warriors           H  I  J  K  L  M  N  &123                  |
|  (H) 🔥 john anderson                O  P  Q  R  S  T  U  🌐                    |
|      🔥 brooklyn and bailey          V  W  X  Y  Z  -  '                        |
|  (S) 🔥 tornillo                                                                |
|                                     [ SPACE ] [ CLEAR ] [ SEARCH ]              |
|  (Sub)                                                                          |
|                                                                                 |
|  From recommended searches                                                      |
|  +--------------------+  +--------------------+  +--------------------+         |
|  | Card 1             |  | Card 2             |  | Card 3             |         |
|  | [4:50]             |  | [5:12]             |  | [14:48]            |         |
|  +--------------------+  +--------------------+  +--------------------+         |
+---------------------------------------------------------------------------------+
```

### Search UI Architecture
1. **Left Suggestions Column**:
   - Focused item: High-contrast white capsule `[🔥 psg vs barcelona]` with black text.
   - Unfocused items: Translucent row with flame/search icon + query string.
2. **7x4 Grid TV Keyboard**:
   - Row 1: A B C D E F G [⌫ Backspace]
   - Row 2: H I J K L M N [&123 Numbers/Symbols]
   - Row 3: O P Q R S T U [🌐 Language]
   - Row 4: V W X Y Z - '
   - Row 5: Action buttons `[ SPACE ]`, `[ CLEAR ]`, `[ SEARCH ]`
3. **Bottom Results Shelf**:
   - Title: "From recommended searches" (or results for query).
   - Cards: 16:9 thumbnails with duration badge, title, channel name.


### Search API Operation
1. User types -> debounce 300ms -> call suggestions API
2. User presses Search -> call YouTube Data API search endpoint
3. Results display in grid with 4 columns
4. Focus starts at keyboard, D-pad DOWN moves to results

---

## Screen: Subscriptions

### Layout
- Grid of channel thumbnails (2 rows)
- Latest video from each channel below channel icon
- "All" filter + category filters at top

---

## Screen: Settings

### Settings Hierarchy
```
Settings
├── Account
│   ├── Sign In / Sign Out
│   ├── Google Account info
│   └── Purchases
├── Playback
│   ├── Default video quality
│   ├── Autoplay (on/off)
│   └── Stats for nerds (debug)
├── Notifications
│   └── Push notification preferences
├── Accessibility  
│   ├── Captions (size, color, background)
│   └── Audio description
└── About
    └── App version, licenses
```

---

## Feature: Video Cards

### Card Data Model
```kotlin
data class VideoCard(
    val videoId: String,
    val title: String,           // max 2 lines, ellipsize at end
    val channelName: String,     
    val thumbnailUrl: String,    // 16:9 ratio
    val duration: String,        // "46:15" format
    val viewCount: String,       // "5.8M views"
    val uploadedAgo: String,     // "2 months ago"
    val isWatched: Boolean,      // shows watch progress bar
    val watchedPercent: Int      // 0-100
)
```

### Card Visual States
| State | Visual |
|-------|--------|
| Default | Normal thumbnail + info below |
| Focused | Scale 1.05x + blue outline (3dp) + shadow |
| Selected (playing) | Subtle red tint on border |
| Watched | Red progress bar at bottom of thumbnail |

---

## Feature: Splash Screen Animation

Extracted from youtube_splash_screen.html (Apache 2.0 licensed):

### Phase 1 (0-1000ms): Lozenge only
- Background: #282828 (full screen)
- YouTube lozenge centered vertically at 50% Y, 25% X

### Phase 2 (1000-1333ms): Both animate
- Lozenge: moves left (transform: translate(-51%, -50%))
- Wordmark: slides in from right (transform: translate(54%, -50%))
- Animation: cubic-bezier(0.4, 0, 0.2, 1) 333ms

### Phase 3 (1333ms+): Loading
- Logo stays centered
- Spinner appears at position: top=71.5%, left=50%
- Spinner size: 166x166px, opacity 0.2
- Animation: rotate 360deg in 5s linear infinite

---

## Feature: D-pad Focus Management

### Focus Priority Rules (TV requirement)
1. There must ALWAYS be a focused element
2. On launch: first content card in first shelf gets focus
3. Focus memory per screen (return to last position)
4. Sidebar collapses when content has focus
5. Sidebar expands on LEFT press from content

### Focus Animation
- Duration: 150ms ease-out
- Scale: 1.0 -> 1.05 (selected)
- Border: 3dp #3EA6FF (YouTube blue)
- Elevation: 0dp -> 8dp (shadow)

---

## Feature: Video Thumbnails

### Thumbnail URL Format (YouTube CDN)
- Default (120x90): https://i.ytimg.com/vi/{VIDEO_ID}/default.jpg
- Medium (320x180): https://i.ytimg.com/vi/{VIDEO_ID}/mqdefault.jpg
- High (480x360):   https://i.ytimg.com/vi/{VIDEO_ID}/hqdefault.jpg
- Standard (640x480): https://i.ytimg.com/vi/{VIDEO_ID}/sddefault.jpg
- Max (1280x720):   https://i.ytimg.com/vi/{VIDEO_ID}/maxresdefault.jpg

Recommended for TV: maxresdefault.jpg (1280x720)

---

## Feature: Deep Linking

From AndroidManifest.xml analysis, the app handles:

| URL Pattern | Action |
|-------------|--------|
| youtube://play?v={ID} | Play specific video |
| youtube://search?q={QUERY} | Open search |
| https://youtu.be/{ID} | Play specific video |
| https://youtube.com/watch?v={ID} | Play specific video |
| android.media.action.MEDIA_PLAY_FROM_SEARCH | Voice search play |

---

## Feature: Background Playback

### Foreground Service
The app declares foreground service for media playback:
- android:foregroundServiceType="mediaPlayback"
- Shows persistent notification with controls
- Continues audio when app is backgrounded

### Media Session
```kotlin
// Required for Android TV media controls
mediaSession = MediaSessionCompat(this, "YouTubeTVSession")
mediaSession.setCallback(mediaSessionCallback)
mediaSession.isActive = true
```
