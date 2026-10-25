# UI_SPEC.md - YouTube TV UI/UX Specification

## Source
Captured via live reverse engineering on 2026-10-25
Device: Connected Android TV @ 192.168.1.5:5555
Resolution: 1920 x 1080 (Full HD, landscape)
App: com.amazon.firetv.youtube v25.50.r1.v182.0

---

## Design System

### Color Palette
```
Primary Background:     #282828   (Dark charcoal)
Secondary Background:   #1A1A1A   (Sidebar / cards)
Tertiary Background:    #121212   (Deepest layer)
Surface:                #303030   (Card hover)

Primary Text:           #FFFFFF   (Titles, nav labels)
Secondary Text:         #AAAAAA   (Metadata: views, date)
Disabled Text:          #666666

Accent Red:             #FF0000   (YouTube brand, progress bar)
Accent Blue:            #3EA6FF   (Focus ring, links)
Accent Gold:            #FFC200   (Premium badge)

Overlay Dark:           rgba(0,0,0,0.6)  (Video overlay)
Overlay Light:          rgba(255,255,255,0.1)  (Hover)
```

### Typography
```
Font Family: Roboto (sans-serif)
  Weights: 100, 300, 400, 500, 700, 900

Screen Title:       Roboto Bold, 28sp
Section Header:     Roboto Regular, 20sp, #FFFFFF
Card Title:         Roboto Medium, 16sp, #FFFFFF (2-line max)
Metadata:           Roboto Regular, 13sp, #AAAAAA
Nav Labels:         Roboto Regular, 14sp (hidden when sidebar collapsed)
Player Title:       Roboto Bold, 24sp
Duration Badge:     Roboto Bold, 12sp
```

### Spacing & Grid
```
Base Unit:          8dp
Screen Margin:      108dp (sidebar) + 48dp content padding
Card Gap:           16dp between cards
Shelf Gap:          32dp between shelves
Section Label Top:  24dp above shelf
Icon Size:          40dp (nav icons)
Card Border Radius: 4dp
```

---

## Component Specs

### Left Navigation Sidebar

#### Collapsed State (default when in content)
```
Width: 108dp
Background: #1A1A1A
Icons: 40x40dp, centered horizontally
Icon color: #AAAAAA (inactive)
Focused icon: #FFFFFF + scale 1.2x + white background circle
Active section: #FFFFFF icon (always white)
```

#### Expanded State (when sidebar focused)
```
Width: 260dp (animates in 200ms ease-out)
Shows: icon + label text
Label: Roboto 14sp, #FFFFFF
Animation: translate(-152dp, 0) on expand
```

#### Navigation Items (top to bottom)
| Position | Icon | Label | Verified in Live APK |
|----------|------|-------|----------------------|
| Top Pill | avatar + name | Profile Switcher | Yes (`00_profile_picker.png`) |
| 1 | search | Search | Yes |
| 2 | home | Home (Default focused) | Yes |
| 3 | shorts | Shorts | Yes |
| 4 | subscriptions | Subscriptions | Yes |
| 5 | video_library | Library | Yes |
| -- | (separator line) | -- | Yes |
| 6 | newspaper | News | Yes |
| 7 | sports_esports | Gaming | Yes |
| 8 | live_tv / broadcast | Live | Yes |
| 9 | music_note | Music | Yes |
| 10 | podcast | Podcasts | Yes |
| 11 | emoji_events | Sport | Yes |
| -- | (bottom pin) | -- | -- |
| 12 | settings | Settings | Yes |

### Top Header Bar

```
Height: 88dp
Background: transparent (matching screen #0F0F0F)
Layout: horizontal, items from left to right

User Avatar / Profile: 
  - Size: 40x40dp, circular
  - Position: left edge + 32dp
  - Y-center: 44dp

Search Capsule Pill:
  - Left: 96dp
  - Width: 460dp
  - Height: 44dp
  - Background: #222222
  - Border radius: 22dp (capsule pill)
  - Text: "Search" in #AAAAAA, 15sp
  - Left icon: magnifying glass (20x20dp)
  
YouTube Logo:
  - Position: right edge - 32dp
  - Width: 130dp
  - Color: #FFFFFF wordmark + #FF0000 lozenge (red play icon)
  - Y-center: 44dp
```

### Featured Hero Banner (Split Card)

```
Location: Top of Home feed below Header
Width: match_parent minus margins (approx 1740dp)
Height: 380dp
Background: #1E1E1E with 20dp corner radius
Layout: Row(Split 50% left info / 50% right trailer)

Left Column:
  - Channel Avatar: 48dp circular
  - Title: Roboto Bold 28sp, #FFFFFF
  - Subtitle / Sponsored Tag: Roboto Regular 14sp, #AAAAAA
  - Button Row:
      - Watch Button: White capsule pill (#FFFFFF, text #000000, 16sp Bold, height 44dp)
      - More Menu: Circular button (44x44dp, #2A2A2A, three dots icon)

Right Column:
  - 16:9 Trailer Video / Thumbnail (preview player)
  - Border radius: 12dp
```

### Video Card (Standard)

```
Aspect Ratio: 16:9 thumbnail
Thumbnail area:
  - Width: 380dp (1080p scale)
  - Height: 214dp
  - Border radius: 12dp
  - Duration badge: 
      Position: bottom-right corner of thumbnail (offset 8dp)
      Padding: 4dp vertical, 8dp horizontal
      Background: rgba(0,0,0,0.85)
      Corner radius: 4dp
      Text: Roboto Bold 12sp, #FFFFFF
  - Watch progress:
      Position: bottom edge of thumbnail
      Height: 3dp
      Color: #FF0000 (red)

Below thumbnail:
  - Title: Roboto Medium 16sp, max 2 lines, #FFFFFF (margin-top: 10dp)
  - Channel: Roboto Regular 13sp, #AAAAAA
  - Views + Date: Roboto Regular 13sp, #AAAAAA
    Format: "5.8 lakh views • 2 months ago"
  
Card height total: ~330dp
Gap between cards: 18dp

Focus State:
  - Scale: 1.05x (smooth 150ms spring/ease-out)
  - Border: 3.5dp solid #FFFFFF (high-contrast clean white border)
  - Corner radius on border: 14dp
  - Elevation/Shadow: 0 12dp 32dp rgba(0,0,0,0.6)
```

### Video Card (Featured/Large)

```
Used for: first card in "Recommended" shelf
Aspect Ratio: 16:9 (larger)
Width: ~536dp (vs 420dp standard)
Same structure as standard card but scaled up
Focus: larger blue border (4dp)
```

### Section Header
```
Text: Roboto Regular, 20sp, #FFFFFF
Margin top: 24dp above shelf
Margin bottom: 16dp below (before first card)
Margin left: aligns with card left edge
```

---

## Screen Layouts

### Home Screen (1920x1080)
```
[0,0] to [108,1080]:   Navigation Sidebar
[108,0] to [1920,108]: Top Header Bar  
[108,108] to [1920,1080]: Content Area
  - padding-left: 48dp from sidebar edge
  - padding-top: 40dp from header
  - Shelf rows stacked vertically
  - Each shelf: label + horizontal card scroll
```

### Player Screen (1920x1080)
```
[0,0] to [1920,1080]: Video frame (full screen)

Overlay (shown on input):
  [0,900] to [1920,1080]: Controls bar
    Background: gradient bottom to top rgba(0,0,0,0) to rgba(0,0,0,0.8)
    
    Progress bar:
      - Full width minus 48dp padding each side
      - Height: 4dp (8dp on focus)
      - Played: #FF0000
      - Buffered: rgba(255,255,255,0.3)
      - Remaining: rgba(255,255,255,0.2)
      
    Time display: "0:20 / 46:15" Roboto 14sp #FFFFFF
    
    Control buttons (bottom row):
      - Rewind 10s, Play/Pause, Forward 10s
      - CC (captions), Quality, Volume, Fullscreen
      - Each: 48x48dp touch target, #FFFFFF icons
      - Gap between: 16dp
      
  [0,0] to [1920,120]: Title overlay
    Background: gradient top to bottom rgba(0,0,0,0) to rgba(0,0,0,0.7)
    Title: Roboto Bold 24sp, #FFFFFF
    Channel: Roboto Regular 16sp, #AAAAAA
    Position: 48dp from left, 24dp from top
```

### Search Screen (1920x1080)
```
[0,0] to [1920,80]: Top bar with back button + search field
[0,80] to [1920,480]: Keyboard (QWERTY layout)
[0,480] to [1920,1080]: Results grid or suggestions panel
  - Grid: 4 columns
  - Card size: same as standard video card
```

---

## Animation Specifications

### Page Transitions
```
Screen enter: fade in + slide up 24dp
  - Duration: 300ms
  - Easing: cubic-bezier(0.4, 0, 0.2, 1)

Screen exit: fade out + slide down 24dp  
  - Duration: 250ms
  - Easing: cubic-bezier(0.4, 0, 1, 1)
```

### Focus Transitions
```
Focus gained:
  - Scale: 1.0 -> 1.05
  - Duration: 150ms ease-out
  - Border: opacity 0 -> 1

Focus lost:
  - Scale: 1.05 -> 1.0
  - Duration: 150ms ease-in
  - Border: opacity 1 -> 0
```

### Sidebar Expand/Collapse
```
Expand (LEFT pressed):
  - Width: 108 -> 240dp
  - Duration: 200ms ease-out
  - Content area: shifts right 132dp simultaneously

Collapse (focus returns to content):
  - Width: 240 -> 108dp
  - Duration: 150ms ease-in
  - Content area: shifts left 132dp
```

### Splash Screen
```
Phase 1 (0-1000ms): Static lozenge
Phase 2 (1000-1333ms): Lozenge + Wordmark animate
  - Lozenge: translateX(-51%) duration:333ms
  - Wordmark: translateX(54%) duration:333ms
  - Easing: cubic-bezier(0.4, 0, 0.2, 1)
Phase 3 (1333ms+): Loading spinner
  - Size: 166x166dp
  - Position: top:71.5%, left:50%
  - Opacity: 0.2
  - Rotate 360deg in 5s linear infinite
```

---

## Accessibility

### Focus Indicator
- Always visible (no hover-only focus states)
- High contrast: #3EA6FF on #282828 background
- Minimum 3:1 contrast ratio (WCAG AA for UI)

### Text Sizes
- All text >= 12sp (minimum readable on TV)
- Title text >= 16sp
- Distance-adjusted: TV viewed at ~3m, requires 3x mobile font sizes

### Screen Reader (TalkBack for TV)
- All icons have content descriptions
- Cards have: title + channel + duration announced
- Navigation items announce their role

---

## Asset Requirements

### Icons Needed
| Icon | Format | Sizes |
|------|--------|-------|
| app_icon | PNG | mdpi/hdpi/xhdpi/xxhdpi/xxxhdpi |
| app_banner | PNG | 320x180dp (TV banner) |
| ic_search | VectorDrawable | 24x24dp |
| ic_home | VectorDrawable | 24x24dp |
| ic_subscriptions | VectorDrawable | 24x24dp |
| ic_library | VectorDrawable | 24x24dp |
| ic_history | VectorDrawable | 24x24dp |
| ic_live | VectorDrawable | 24x24dp |
| ic_settings | VectorDrawable | 24x24dp |
| ic_play | VectorDrawable | 24x24dp |
| ic_pause | VectorDrawable | 24x24dp |
| ic_rewind | VectorDrawable | 24x24dp |
| ic_forward | VectorDrawable | 24x24dp |
| ic_captions | VectorDrawable | 24x24dp |
| ic_quality | VectorDrawable | 24x24dp |
| ic_volume | VectorDrawable | 24x24dp |
| ic_fullscreen | VectorDrawable | 24x24dp |
| youtube_logo | VectorDrawable | custom |

### YouTube TV Logo (from APK banner)
The app uses a custom YouTube banner (320x180dp) with:
- Dark background
- YouTube wordmark (white) + lozenge (red)
- Same styling as splash screen
