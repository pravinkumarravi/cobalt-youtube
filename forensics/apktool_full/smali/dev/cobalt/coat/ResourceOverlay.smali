.class public Ldev/cobalt/coat/ResourceOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final buffer_garbage_collection_duration_threshold:I
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final max_video_buffer_budget:I
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final min_audio_sink_buffer_size_in_frames:I
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final supports_spherical_videos:Z
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ldev/cobalt/coat/ResourceOverlay;->supports_spherical_videos:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ldev/cobalt/coat/ResourceOverlay;->max_video_buffer_budget:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ldev/cobalt/coat/ResourceOverlay;->min_audio_sink_buffer_size_in_frames:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Ldev/cobalt/coat/ResourceOverlay;->buffer_garbage_collection_duration_threshold:I

    return-void
.end method
