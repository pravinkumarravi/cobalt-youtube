# TEST.md - YouTube TV Clone Test Plan

## Overview
This file defines all test journeys and validation criteria for the YouTube TV
clone project. Tests are organized by feature area and follow the Android TV
D-pad interaction model.

---

## Test Environment Setup

### Required Hardware/Emulator
- Android TV emulator (API 34) OR
- Physical Android TV / Fire TV device
- Connected via ADB: adb connect <device-ip>:5555

### Verification Command
```bash
adb devices
# Expected: <device-serial>  device
```

---

## JOURNEY 0: Profile Picker ("Who's watching?")

### Test 0.1 - Profile Picker Display
**Action**: Launch app or switch account
**Expected**:
1. "Who's watching?" centered title in 32sp Roboto Regular.
2. Expanded Left Sidebar showing all 11 navigation destinations with full text labels.
3. User profile avatar circle (220dp) focused with high contrast.
4. "Add account", "Add a child account", and "Watch as guest" pill button visible.

**Validation**:
```bash
android screen capture -o profile_picker_test.png
# Check: Who's watching? title and profile circles visible
```

### Test 0.2 - Select Profile
**Action**: Press `KEYCODE_DPAD_CENTER` on user profile
**Expected**: Fade transition into Home Feed (300ms cubic-bezier).

---

## JOURNEY 1: App Launch and Splash Screen

### Test 1.1 - Cold Start
**Action**: Launch app from home screen
**Expected**:
1. Dark background (#0F0F0F) appears immediately
2. YouTube lozenge appears centered
3. Wordmark slides in from right at 1000ms
4. Loading spinner appears at 1333ms
5. Main home screen loads within 3000ms total

**Validation**:
```bash
android screen capture -o splash_test.png
# Check: lozenge visible, animation running
```

### Test 1.2 - Warm Start
**Action**: Background app, reopen
**Expected**: Returns directly to home screen (no splash replay)

---

## JOURNEY 2: Home Screen Navigation & Hero Banner

### Test 2.1 - Initial Focus & Hero Banner
**Action**: App loads to home screen
**Expected**: 
1. Header displays user avatar, Search capsule pill `[ 🔍 Search ]`, and `[▶ YouTube]` logo at right.
2. Top Featured Hero Banner displays:
   - Channel avatar, Title, Subtitle.
   - White pill `[ Watch ]` button.
   - 16:9 trailer video preview.
3. First card in "Recommended" shelf has focus:
   - Scale: 1.05x.
   - Border: 3.5dp clean white (`#FFFFFF`) rounded border.
   - Watch progress red line at bottom of thumbnail.

**Validation**:
```bash
android layout --pretty | grep -i "focused"
# Expected: element with "focused": true in first card position
```

### Test 2.2 - Sidebar Navigation
**Action**: Press LEFT D-pad from content area
**Expected**: Navigation sidebar expands, "Home" icon highlighted

**Steps**:
1. Ensure focus is on a video card
2. Press DPAD_LEFT repeatedly until sidebar icon is focused
3. Verify sidebar icon is highlighted with white tint + scale

**Validation**:
```bash
adb shell input keyevent KEYCODE_DPAD_LEFT
android screen capture -o sidebar_focus.png
# Check: sidebar visible, Home icon highlighted
```

### Test 2.3 - Navigate to Search
**Action**: Navigate to Search icon in sidebar, press SELECT
**Expected**: Search screen opens with keyboard visible

**Steps**:
1. Focus on sidebar (DPAD_LEFT)
2. Press DPAD_UP to reach Search icon
3. Press DPAD_CENTER to select

### Test 2.4 - Scroll Content Shelves
**Action**: Navigate RIGHT through video cards
**Expected**: Shelf scrolls horizontally, new cards load

**Steps**:
1. Focus on a video card
2. Press DPAD_RIGHT multiple times
3. Verify smooth horizontal scroll
4. Verify new cards load (lazy loading)

### Test 2.5 - Navigate Between Shelves
**Action**: Press DPAD_DOWN from first shelf
**Expected**: Focus moves to first card in second shelf

---

## JOURNEY 3: Video Playback & OSD Controls

### Test 3.1 - Play a Video & Verify OSD Controls
**Action**: Select a video card from home screen
**Expected**:
1. Video opens and starts streaming playback via ExoPlayer.
2. Pressing `DPAD_DOWN` displays the live OSD overlay:
   - Top-left: Title ("I Built an Engine From Scratch") + Channel & Views.
   - Scrubber: Chapter markers with spacing, current chapter label ("37:26 • Final engine assembly"), and total duration ("46:14").
   - Control Cluster (Left to Right):
     - Channel Avatar circular badge.
     - `[Description]` capsule pill.
     - `[Subscribe]` capsule pill.
     - `[|<]` Previous chapter button.
     - `(( || ))` Large white circular focused Play/Pause button.
     - `[>|]` Next chapter button.
     - `[👍]`, `[👎]`, `[💬]`, `[✨]`, `[🔖]`, `[CC]`, `[⚙]` action icons.
   - Bottom: Peeking shelf of related video cards.

**Validation**:
```bash
adb shell input keyevent KEYCODE_DPAD_DOWN
android screen capture -o player_osd_test.png
# Check: OSD scrubber, controls cluster, and related cards visible
```

### Test 3.2 - Pause and Resume
**Action**: Press `DPAD_CENTER` on the focused white circular button
**Expected**: Video pauses, icon changes to Play `[▶]`; press again to resume `[||]`.

### Test 3.3 - Next/Previous Chapter Seek
**Action**: Move focus to `[>|]` or `[|<]` and press `DPAD_CENTER`
**Expected**: Playhead seeks to next/previous chapter timestamp immediately.

### Test 3.4 - Bottom Related Shelf Focus
**Action**: From control row, press `DPAD_DOWN`
**Expected**: Focus moves smoothly into the peeking related videos horizontal shelf.

### Test 3.5 - Controls Auto-fade
**Action**: Inactivity for 3 seconds
**Expected**: Entire OSD controls overlay fades out smoothly (250ms), video remains unobstructed.

### Test 3.6 - Exit Player
**Action**: Press `KEYCODE_BACK`
**Expected**: Returns cleanly to Home Feed without memory leak or audio stutter.

---

## JOURNEY 4: TV Search & Alphabet Keyboard

### Test 4.1 - Open Search Screen
**Action**: Navigate to Search icon in sidebar or top bar capsule, press `DPAD_CENTER`
**Expected**:
1. Top Search capsule pill `[ Search ]` and YouTube logo.
2. Left suggestions column with active focused white capsule `[🔥 psg vs barcelona]`.
3. Right side: 7x4 alphabet keyboard grid (A-G ⌫, H-N &123, O-U 🌐, V-Z - ', Space, Clear, Search).
4. Bottom: "From recommended searches" horizontal video shelf.

**Validation**:
```bash
android screen capture -o search_keyboard_test.png
# Check: 7x4 alphabet keyboard and suggestions column visible
```

### Test 4.2 - Virtual TV Keyboard Input
**Action**: Use D-pad to navigate keyboard grid and enter characters
**Expected**:
1. Focus moves between letters seamlessly (A -> B -> C ...).
2. Selecting a letter appends to the search input capsule.
3. Suggestions update dynamically with debounced query.
4. Pressing `DPAD_DOWN` from keyboard row 5 moves directly into results shelf.


### Test 4.3 - Select Search Suggestion
**Action**: DPAD_RIGHT to suggestions panel, select one
**Expected**: Search executes with suggested term

### Test 4.4 - View Search Results
**Action**: Complete search query and press Search button
**Expected**: Results grid shows relevant videos

### Test 4.5 - Play from Search
**Action**: Select a video in search results
**Expected**: Video plays (same as Test 3.1)

### Test 4.6 - Clear Search
**Action**: Navigate to Clear button, press SELECT
**Expected**: Search field clears, suggestions cleared

---

## JOURNEY 5: Authentication

### Test 5.1 - Sign In Flow
**Action**: Navigate to Settings > Account > Sign In
**Expected**: Google device flow shown (code + URL)

**Expected Screen**:
- 6-character code displayed prominently
- URL: google.com/device
- Instructions to visit on phone/computer

### Test 5.2 - Verify Signed-In State
**Action**: After sign in, check profile icon
**Expected**: User avatar shows in top-left of home screen

### Test 5.3 - Sign Out
**Action**: Settings > Account > Sign Out
**Expected**: Account removed, avatar replaced with generic icon

---

## JOURNEY 6: Subscriptions

### Test 6.1 - View Subscriptions
**Action**: Navigate to Subscriptions in sidebar
**Expected**: Grid of subscribed channels visible

### Test 6.2 - View Channel Feed
**Action**: Select a channel in subscriptions
**Expected**: Channel page opens showing latest videos

---

## JOURNEY 7: Library / History

### Test 7.1 - View Watch History
**Action**: Navigate to History in sidebar
**Expected**: List of recently watched videos

### Test 7.2 - Resume Video from History
**Action**: Select a video in history that was partially watched
**Expected**: Video resumes from last watched position

---

## JOURNEY 8: Settings Verification

### Test 8.1 - Settings Opens
**Action**: Navigate to Settings gear icon in sidebar
**Expected**: Settings screen opens with categories

### Test 8.2 - Playback Quality Setting
**Action**: Settings > Playback > Default Quality
**Expected**: Options dialog with quality levels

### Test 8.3 - Autoplay Toggle
**Action**: Settings > Playback > Autoplay
**Expected**: Toggle switches, persisted across app restarts

### Test 8.4 - Caption Settings
**Action**: Settings > Accessibility > Captions
**Expected**: Caption size/color/background options

---

## JOURNEY 9: Edge Cases

### Test 9.1 - No Network
**Action**: Disable network, launch app
**Expected**: Friendly error screen with retry button

### Test 9.2 - Network Recovery
**Action**: Restore network while error screen shown
**Expected**: Press retry, app loads content

### Test 9.3 - Low Memory
**Action**: Background app, open many other apps, return
**Expected**: App restores state (same screen as before)

### Test 9.4 - Back Navigation Stack
**Action**: Home -> Search -> Play Video -> Back -> Back -> Back
**Expected**: Video -> Search -> Home (never exits to launcher on 3rd back)

### Test 9.5 - Very Long Video Title
**Action**: Open video with title > 80 characters
**Expected**: Title truncates with ellipsis at 2 lines max

---

## AUTOMATED TEST COMMANDS

### Quick Smoke Test Script
```bash
#!/bin/bash
echo "=== YouTube TV Clone Smoke Test ==="

# 1. Launch app
adb shell am start -n "com.yourapp.youtubetv/.ui.splash.SplashActivity"
sleep 4

# 2. Capture home screen
android screen capture -o test_home.png
echo "Home screen captured: test_home.png"

# 3. Get layout
android layout --pretty > test_home_layout.json
echo "Layout saved: test_home_layout.json"

# 4. Navigate to search (sidebar)
adb shell input keyevent KEYCODE_DPAD_LEFT
sleep 1
adb shell input keyevent KEYCODE_DPAD_UP
sleep 1
adb shell input keyevent KEYCODE_DPAD_UP  
sleep 1
adb shell input keyevent KEYCODE_DPAD_CENTER
sleep 2

# 5. Capture search screen
android screen capture -o test_search.png
echo "Search screen captured: test_search.png"

# 6. Return home
adb shell input keyevent KEYCODE_BACK

echo "=== Smoke Test Complete ==="
```

---

## PASS/FAIL CRITERIA

### Critical (Must Pass)
- [ ] App launches without crash
- [ ] Splash animation plays correctly
- [ ] Home screen shows video content
- [ ] D-pad navigation works on all screens
- [ ] Video plays when card selected
- [ ] Search returns relevant results
- [ ] Back navigation is consistent

### Important (Should Pass)
- [ ] Authentication flow completes
- [ ] Subscription content loads
- [ ] History tracks watched videos
- [ ] Settings persist across restarts
- [ ] Quality selection changes playback quality
- [ ] Captions display when enabled

### Nice to Have (Could Pass)
- [ ] Voice search integration
- [ ] Picture-in-picture mode
- [ ] Offline downloads (if implementing)
- [ ] Parental controls
