.class public Ldev/cobalt/media/VideoSurfaceTexture;
.super Landroid/graphics/SurfaceTexture;
.source "SourceFile"


# annotations
.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    return-void
.end method

.method static synthetic a(Ldev/cobalt/media/VideoSurfaceTexture;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/cobalt/media/VideoSurfaceTexture;->nativeOnFrameAvailable(J)V

    return-void
.end method

.method private native nativeOnFrameAvailable(J)V
.end method


# virtual methods
.method removeOnFrameAvailableListener()V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method setOnFrameAvailableListener(J)V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    new-instance v0, Ldev/cobalt/media/VideoSurfaceTexture$a;

    invoke-direct {v0, p0, p1, p2}, Ldev/cobalt/media/VideoSurfaceTexture$a;-><init>(Ldev/cobalt/media/VideoSurfaceTexture;J)V

    invoke-super {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method
