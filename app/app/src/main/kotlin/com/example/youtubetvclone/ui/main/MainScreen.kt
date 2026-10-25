package com.example.youtubetvclone.ui.main

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.focusable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation3.runtime.NavKey

data class VideoItem(
    val id: String,
    val title: String,
    val channel: String,
    val views: String,
    val duration: String,
    val progress: Float = 0f,
    val gradientColors: List<Color>
)

val sampleRecommended = listOf(
    VideoItem(
        id = "1",
        title = "I Built an Engine From Scratch",
        channel = "Design to Steel",
        views = "5.8 lakh views • 2 months ago",
        duration = "46:15",
        progress = 0.82f,
        gradientColors = listOf(Color(0xFF2C3E50), Color(0xFF4CA1AF))
    ),
    VideoItem(
        id = "2",
        title = "A Modern Science Genius Reborn as a Farmer",
        channel = "Heroic Tales Drama",
        views = "70K views • 1 month ago",
        duration = "3:09:52",
        progress = 0f,
        gradientColors = listOf(Color(0xFF1F4037), Color(0xFF99F2C8))
    ),
    VideoItem(
        id = "3",
        title = "Why 3D Games Look Better Than Ever",
        channel = "Coding Quests",
        views = "1 lakh views • 1 day ago",
        duration = "14:48",
        progress = 0.35f,
        gradientColors = listOf(Color(0xFF232526), Color(0xFF414345))
    ),
    VideoItem(
        id = "4",
        title = "Inside an Advanced Automation Factory",
        channel = "Tech Insights",
        views = "2.4 lakh views • 3 weeks ago",
        duration = "22:15",
        progress = 0f,
        gradientColors = listOf(Color(0xFF3A6073), Color(0xFF3A7BD5))
    )
)

val sampleRecent = listOf(
    VideoItem(
        id = "5",
        title = "Switching from Fusion 360 to SolidCraft?",
        channel = "SolidCraft Tutorial and 2 more",
        views = "45K views • 2 days ago",
        duration = "4:50",
        progress = 0.5f,
        gradientColors = listOf(Color(0xFF0F2027), Color(0xFF2C5364))
    ),
    VideoItem(
        id = "6",
        title = "SolidCraft Beginner Tutorial #5 | Shell Features",
        channel = "SolidCraft Tutorial",
        views = "18K views • 3 days ago",
        duration = "5:12",
        progress = 0f,
        gradientColors = listOf(Color(0xFF1E3C72), Color(0xFF2A5298))
    ),
    VideoItem(
        id = "7",
        title = "Research based | 200 Cr Micro to 1 Lakh Crs",
        channel = "Madurai Veeran Money Coach",
        views = "14K views • 4 hours ago",
        duration = "14:48",
        progress = 0f,
        gradientColors = listOf(Color(0xFF373B44), Color(0xFF4286F4))
    )
)

@Composable
fun MainScreen(
    onItemClick: (NavKey) -> Unit = {},
    modifier: Modifier = Modifier
) {
    var selectedVideo by remember { mutableStateOf<VideoItem?>(null) }
    var activeNavIndex by remember { mutableIntStateOf(1) } // 1 is Home

    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color(0xFF0F0F0F))
    ) {
        Row(modifier = Modifier.fillMaxSize()) {
            // Left Navigation Sidebar
            YouTubeSidebar(
                activeIndex = activeNavIndex,
                onNavigate = { activeNavIndex = it }
            )

            // Main Content Area
            Column(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight()
                    .padding(start = 24.dp, end = 40.dp, top = 20.dp)
            ) {
                // Top Header Bar
                YouTubeTopBar()

                Spacer(modifier = Modifier.height(18.dp))

                // Scrollable Shelves Feed
                LazyColumn(
                    modifier = Modifier.fillMaxSize(),
                    verticalArrangement = Arrangement.spacedBy(28.dp),
                    contentPadding = PaddingValues(bottom = 60.dp)
                ) {
                    // Hero Featured Banner
                    item {
                        HeroBanner(
                            onWatchClick = {
                                selectedVideo = sampleRecommended[0]
                            }
                        )
                    }

                    // Shelf 1: Recommended
                    item {
                        VideoShelf(
                            title = "Recommended",
                            videos = sampleRecommended,
                            onVideoClick = { video -> selectedVideo = video }
                        )
                    }

                    // Shelf 2: Recently uploaded
                    item {
                        VideoShelf(
                            title = "Recently uploaded",
                            videos = sampleRecent,
                            onVideoClick = { video -> selectedVideo = video }
                        )
                    }
                }
            }
        }

        // Full Screen Video Player Overlay
        AnimatedVisibility(
            visible = selectedVideo != null,
            enter = fadeIn(tween(300)),
            exit = fadeOut(tween(250))
        ) {
            selectedVideo?.let { video ->
                PlayerOverlay(
                    video = video,
                    onClose = { selectedVideo = null }
                )
            }
        }
    }
}

@Composable
fun YouTubeSidebar(
    activeIndex: Int,
    onNavigate: (Int) -> Unit
) {
    val items = listOf(
        "🔍" to "Search",
        "🏠" to "Home",
        "⚡" to "Shorts",
        "📺" to "Subscriptions",
        "📂" to "Library",
        "📰" to "News",
        "🎮" to "Gaming",
        "📡" to "Live",
        "🎵" to "Music",
        "⚙️" to "Settings"
    )

    Column(
        modifier = Modifier
            .width(84.dp)
            .fillMaxHeight()
            .background(Color(0xFF0F0F0F))
            .padding(vertical = 24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // User Profile circle
        Box(
            modifier = Modifier
                .size(44.dp)
                .clip(CircleShape)
                .background(Color(0xFF8E24AA)),
            contentAlignment = Alignment.Center
        ) {
            Text("P", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 18.sp)
        }

        Spacer(modifier = Modifier.height(8.dp))

        items.forEachIndexed { index, (icon, _) ->
            SidebarIconItem(
                icon = icon,
                isSelected = index == activeIndex,
                onClick = { onNavigate(index) }
            )
        }
    }
}

@Composable
fun SidebarIconItem(
    icon: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    var isFocused by remember { mutableStateOf(false) }

    val bgModifier = if (isSelected) {
        Modifier.background(Color(0xFF282828), CircleShape)
    } else if (isFocused) {
        Modifier.background(Color.White, CircleShape)
    } else {
        Modifier
    }

    Box(
        modifier = Modifier
            .size(48.dp)
            .then(bgModifier)
            .focusable()
            .onFocusChanged { isFocused = it.isFocused }
            .clickable(onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        Text(
            text = icon,
            fontSize = 20.sp
        )
    }
}

@Composable
fun YouTubeTopBar() {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(52.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        // Search Pill
        var isSearchFocused by remember { mutableStateOf(false) }
        Box(
            modifier = Modifier
                .width(420.dp)
                .height(44.dp)
                .clip(RoundedCornerShape(22.dp))
                .background(if (isSearchFocused) Color(0xFF383838) else Color(0xFF222222))
                .border(
                    width = if (isSearchFocused) 2.dp else 0.dp,
                    color = if (isSearchFocused) Color.White else Color.Transparent,
                    shape = RoundedCornerShape(22.dp)
                )
                .focusable()
                .onFocusChanged { isSearchFocused = it.isFocused }
                .padding(horizontal = 18.dp),
            contentAlignment = Alignment.CenterStart
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text("🔍", fontSize = 14.sp)
                Spacer(modifier = Modifier.width(10.dp))
                Text("Search", color = Color(0xFFAAAAAA), fontSize = 15.sp)
            }
        }

        // YouTube Wordmark & Red Play Lozenge
        Row(verticalAlignment = Alignment.CenterVertically) {
            Box(
                modifier = Modifier
                    .size(width = 32.dp, height = 22.dp)
                    .clip(RoundedCornerShape(6.dp))
                    .background(Color(0xFFFF0000)),
                contentAlignment = Alignment.Center
            ) {
                Text("▶", color = Color.White, fontSize = 12.sp)
            }
            Spacer(modifier = Modifier.width(6.dp))
            Text(
                text = "YouTube",
                color = Color.White,
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold,
                letterSpacing = (-0.5).sp
            )
        }
    }
}

@Composable
fun HeroBanner(
    onWatchClick: () -> Unit
) {
    var isWatchFocused by remember { mutableStateOf(false) }

    Box(
        modifier = Modifier
            .fillMaxWidth()
            .height(300.dp)
            .clip(RoundedCornerShape(20.dp))
            .background(Color(0xFF1E1E1E))
            .padding(28.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxSize(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            // Left Column
            Column(
                modifier = Modifier
                    .weight(1.1f)
                    .fillMaxHeight(),
                verticalArrangement = Arrangement.Center
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Box(
                        modifier = Modifier
                            .size(36.dp)
                            .clip(CircleShape)
                            .background(Color(0xFF455A64)),
                        contentAlignment = Alignment.Center
                    ) {
                        Text("💎", fontSize = 16.sp)
                    }
                    Spacer(modifier = Modifier.width(12.dp))
                    Text(
                        text = "Heera Hai Sada Ke Liye",
                        color = Color(0xFFAAAAAA),
                        fontSize = 13.sp
                    )
                }

                Spacer(modifier = Modifier.height(10.dp))

                Text(
                    text = "Love From Hubby",
                    color = Color.White,
                    fontSize = 28.sp,
                    fontWeight = FontWeight.Bold
                )

                Spacer(modifier = Modifier.height(6.dp))

                Text(
                    text = "Sponsored • A natural diamond solitaire holds memories that last forever.",
                    color = Color(0xFFAAAAAA),
                    fontSize = 13.sp,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )

                Spacer(modifier = Modifier.height(20.dp))

                Row(verticalAlignment = Alignment.CenterVertically) {
                    // Watch button pill
                    Box(
                        modifier = Modifier
                            .height(44.dp)
                            .clip(RoundedCornerShape(22.dp))
                            .background(if (isWatchFocused) Color(0xFF3EA6FF) else Color.White)
                            .border(
                                width = if (isWatchFocused) 3.dp else 0.dp,
                                color = Color.White,
                                shape = RoundedCornerShape(22.dp)
                            )
                            .focusable()
                            .onFocusChanged { isWatchFocused = it.isFocused }
                            .clickable(onClick = onWatchClick)
                            .padding(horizontal = 24.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = "Watch",
                            color = Color.Black,
                            fontWeight = FontWeight.Bold,
                            fontSize = 15.sp
                        )
                    }

                    Spacer(modifier = Modifier.width(14.dp))

                    // Overflow Menu
                    Box(
                        modifier = Modifier
                            .size(44.dp)
                            .clip(CircleShape)
                            .background(Color(0xFF2A2A2A))
                            .focusable(),
                        contentAlignment = Alignment.Center
                    ) {
                        Text("⋮", color = Color.White, fontSize = 20.sp)
                    }
                }
            }

            Spacer(modifier = Modifier.width(24.dp))

            // Right Column: Preview Trailer Card
            Box(
                modifier = Modifier
                    .weight(0.9f)
                    .fillMaxHeight()
                    .clip(RoundedCornerShape(14.dp))
                    .background(
                        Brush.linearGradient(
                            listOf(Color(0xFF141E30), Color(0xFF243B55))
                        )
                    ),
                contentAlignment = Alignment.Center
            ) {
                Text("🎬 Trailer Preview", color = Color(0xFFE0E0E0), fontSize = 16.sp)
            }
        }
    }
}

@Composable
fun VideoShelf(
    title: String,
    videos: List<VideoItem>,
    onVideoClick: (VideoItem) -> Unit
) {
    Column(modifier = Modifier.fillMaxWidth()) {
        Text(
            text = title,
            color = Color.White,
            fontSize = 20.sp,
            fontWeight = FontWeight.Bold,
            modifier = Modifier.padding(bottom = 14.dp)
        )

        LazyRow(
            horizontalArrangement = Arrangement.spacedBy(18.dp),
            contentPadding = PaddingValues(end = 40.dp)
        ) {
            items(videos) { video ->
                VideoCard(video = video, onClick = { onVideoClick(video) })
            }
        }
    }
}

@Composable
fun VideoCard(
    video: VideoItem,
    onClick: () -> Unit
) {
    var isFocused by remember { mutableStateOf(false) }
    val scale by animateFloatAsState(
        targetValue = if (isFocused) 1.05f else 1.0f,
        animationSpec = tween(150),
        label = "scale"
    )

    Column(
        modifier = Modifier
            .width(360.dp)
            .scale(scale)
            .focusable()
            .onFocusChanged { isFocused = it.isFocused }
            .clickable(onClick = onClick)
    ) {
        // Thumbnail Container
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(202.dp)
                .clip(RoundedCornerShape(12.dp))
                .border(
                    width = if (isFocused) 3.5.dp else 0.dp,
                    color = if (isFocused) Color.White else Color.Transparent,
                    shape = RoundedCornerShape(12.dp)
                )
                .background(Brush.linearGradient(video.gradientColors))
        ) {
            // Duration Badge
            Box(
                modifier = Modifier
                    .align(Alignment.BottomEnd)
                    .padding(8.dp)
                    .clip(RoundedCornerShape(4.dp))
                    .background(Color(0xCC000000))
                    .padding(horizontal = 6.dp, vertical = 3.dp)
            ) {
                Text(
                    text = video.duration,
                    color = Color.White,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold
                )
            }

            // Red Watch Progress Bar
            if (video.progress > 0f) {
                Box(
                    modifier = Modifier
                        .align(Alignment.BottomStart)
                        .fillMaxWidth(video.progress)
                        .height(3.5.dp)
                        .background(Color(0xFFFF0000))
                )
            }
        }

        Spacer(modifier = Modifier.height(10.dp))

        // Title
        Text(
            text = video.title,
            color = Color.White,
            fontSize = 15.sp,
            fontWeight = FontWeight.Medium,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis
        )

        Spacer(modifier = Modifier.height(4.dp))

        // Channel
        Text(
            text = video.channel,
            color = Color(0xFFAAAAAA),
            fontSize = 12.sp
        )

        // Metadata
        Text(
            text = video.views,
            color = Color(0xFFAAAAAA),
            fontSize = 12.sp
        )
    }
}

@Composable
fun PlayerOverlay(
    video: VideoItem,
    onClose: () -> Unit
) {
    var isPlaying by remember { mutableStateOf(true) }
    var isPlayFocused by remember { mutableStateOf(true) }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        // Simulated video stream background
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Brush.radialGradient(listOf(Color(0xFF1A2A3A), Color(0xFF0A0E17)))),
            contentAlignment = Alignment.Center
        ) {
            Text(
                "Streaming: ${video.title}",
                color = Color(0xFF64B5F6),
                fontSize = 24.sp,
                fontWeight = FontWeight.Bold
            )
        }

        // Top-left Info
        Column(
            modifier = Modifier
                .align(Alignment.TopStart)
                .padding(start = 48.dp, top = 40.dp)
        ) {
            Text(
                text = video.title,
                color = Color.White,
                fontSize = 26.sp,
                fontWeight = FontWeight.Bold
            )
            Spacer(modifier = Modifier.height(6.dp))
            Text(
                text = "${video.channel} • ${video.views}",
                color = Color(0xFFAAAAAA),
                fontSize = 14.sp
            )
        }

        // Close button top right
        Box(
            modifier = Modifier
                .align(Alignment.TopEnd)
                .padding(40.dp)
                .clip(CircleShape)
                .background(Color(0x66000000))
                .clickable(onClick = onClose)
                .padding(12.dp)
        ) {
            Text("✕ Back to Feed", color = Color.White, fontSize = 14.sp)
        }

        // Bottom OSD Scrubber & Controls
        Column(
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .fillMaxWidth()
                .background(
                    Brush.verticalGradient(
                        listOf(Color.Transparent, Color(0xEE000000))
                    )
                )
                .padding(horizontal = 48.dp, vertical = 32.dp)
        ) {
            // Chapter info & Time
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text("37:26 • Final engine assembly", color = Color.White, fontSize = 13.sp)
                Text(video.duration, color = Color.White, fontSize = 13.sp)
            }

            Spacer(modifier = Modifier.height(10.dp))

            // Segmented Scrubber Bar
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(4.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Box(
                    modifier = Modifier
                        .weight(0.7f)
                        .fillMaxHeight()
                        .background(Color(0xFFFF0000))
                )
                Box(
                    modifier = Modifier
                        .weight(0.3f)
                        .fillMaxHeight()
                        .background(Color(0xFF555555))
                )
                Box(
                    modifier = Modifier
                        .weight(0.5f)
                        .fillMaxHeight()
                        .background(Color(0xFF555555))
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // Control Cluster Row
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Channel Avatar Badge
                Box(
                    modifier = Modifier
                        .size(40.dp)
                        .clip(CircleShape)
                        .background(Color(0xFF37474F)),
                    contentAlignment = Alignment.Center
                ) {
                    Text("⚙️", fontSize = 18.sp)
                }

                // Description Pill
                Box(
                    modifier = Modifier
                        .clip(RoundedCornerShape(20.dp))
                        .background(Color(0x33FFFFFF))
                        .padding(horizontal = 16.dp, vertical = 8.dp)
                ) {
                    Text("Description", color = Color.White, fontSize = 13.sp)
                }

                // Subscribe Pill
                Box(
                    modifier = Modifier
                        .clip(RoundedCornerShape(20.dp))
                        .background(Color(0x33FFFFFF))
                        .padding(horizontal = 16.dp, vertical = 8.dp)
                ) {
                    Text("Subscribe", color = Color.White, fontSize = 13.sp)
                }

                Spacer(modifier = Modifier.weight(1f))

                // Prev Chapter
                Box(
                    modifier = Modifier
                        .size(44.dp)
                        .clip(CircleShape)
                        .background(Color(0x33FFFFFF)),
                    contentAlignment = Alignment.Center
                ) {
                    Text("⏮", color = Color.White, fontSize = 16.sp)
                }

                // Focused Primary Play/Pause Button
                Box(
                    modifier = Modifier
                        .size(60.dp)
                        .clip(CircleShape)
                        .background(if (isPlayFocused) Color.White else Color(0x66FFFFFF))
                        .border(
                            width = if (isPlayFocused) 3.dp else 0.dp,
                            color = Color(0xFF3EA6FF),
                            shape = CircleShape
                        )
                        .focusable()
                        .onFocusChanged { isPlayFocused = it.isFocused }
                        .clickable { isPlaying = !isPlaying },
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = if (isPlaying) "⏸" else "▶",
                        color = Color.Black,
                        fontSize = 24.sp,
                        fontWeight = FontWeight.Bold
                    )
                }

                // Next Chapter
                Box(
                    modifier = Modifier
                        .size(44.dp)
                        .clip(CircleShape)
                        .background(Color(0x33FFFFFF)),
                    contentAlignment = Alignment.Center
                ) {
                    Text("⏭", color = Color.White, fontSize = 16.sp)
                }

                Spacer(modifier = Modifier.weight(1f))

                // Action Icons
                listOf("👍", "👎", "💬", "✨", "🔖", "CC", "⚙️").forEach { icon ->
                    Box(
                        modifier = Modifier
                            .size(38.dp)
                            .clip(CircleShape)
                            .background(Color(0x22FFFFFF)),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(icon, color = Color.White, fontSize = 14.sp)
                    }
                }
            }
        }
    }
}
