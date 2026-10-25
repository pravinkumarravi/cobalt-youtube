.class public Ldev/cobalt/media/VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/media/VideoSurfaceView$b;
    }
.end annotation


# static fields
.field private static b:Landroid/view/Surface; = null

.field public static c:Ljava/lang/String; = ""

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ldev/cobalt/media/VideoSurfaceView;->d:Ljava/util/Set;

    const-string v1, "Nexus Player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/cobalt/media/VideoSurfaceView;->nativeSetNeedResetSurface()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Ldev/cobalt/media/VideoSurfaceView;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a()Landroid/view/Surface;
    .locals 1

    sget-object v0, Ldev/cobalt/media/VideoSurfaceView;->b:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic b(Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    sput-object p0, Ldev/cobalt/media/VideoSurfaceView;->b:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic c(Landroid/view/Surface;)V
    .locals 0

    invoke-static {p0}, Ldev/cobalt/media/VideoSurfaceView;->nativeOnVideoSurfaceChanged(Landroid/view/Surface;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Ldev/cobalt/media/VideoSurfaceView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldev/cobalt/media/VideoSurfaceView$b;-><init>(Ldev/cobalt/media/VideoSurfaceView;Ldev/cobalt/media/VideoSurfaceView$a;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public static getCurrentSurface()Landroid/view/Surface;
    .locals 1

    sget-object v0, Ldev/cobalt/media/VideoSurfaceView;->b:Landroid/view/Surface;

    return-object v0
.end method

.method public static getSurfaceState()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-object v0, Ldev/cobalt/media/VideoSurfaceView;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static native nativeOnVideoSurfaceChanged(Landroid/view/Surface;)V
.end method

.method private static native nativeSetNeedResetSurface()V
.end method
