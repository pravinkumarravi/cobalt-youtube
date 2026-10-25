.class Ldev/cobalt/media/VideoSurfaceView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/VideoSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field b:Z

.field final synthetic c:Ldev/cobalt/media/VideoSurfaceView;


# direct methods
.method private constructor <init>(Ldev/cobalt/media/VideoSurfaceView;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/media/VideoSurfaceView$b;->c:Ldev/cobalt/media/VideoSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/cobalt/media/VideoSurfaceView$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Ldev/cobalt/media/VideoSurfaceView;Ldev/cobalt/media/VideoSurfaceView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/media/VideoSurfaceView$b;-><init>(Ldev/cobalt/media/VideoSurfaceView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-boolean p1, p0, Ldev/cobalt/media/VideoSurfaceView$b;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "starboard_media"

    const-string p3, "Video surface changed; decoding may break"

    invoke-static {p2, p3, p1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/cobalt/media/VideoSurfaceView$b;->b:Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Ldev/cobalt/media/VideoSurfaceView;->b(Landroid/view/Surface;)Landroid/view/Surface;

    invoke-static {}, Ldev/cobalt/media/VideoSurfaceView;->a()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Ldev/cobalt/media/VideoSurfaceView;->c(Landroid/view/Surface;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Surface created at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ldev/cobalt/media/VideoSurfaceView;->c:Ljava/lang/String;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, Ldev/cobalt/media/VideoSurfaceView;->b(Landroid/view/Surface;)Landroid/view/Surface;

    invoke-static {}, Ldev/cobalt/media/VideoSurfaceView;->a()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Ldev/cobalt/media/VideoSurfaceView;->c(Landroid/view/Surface;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Surface destroyed at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ldev/cobalt/media/VideoSurfaceView;->c:Ljava/lang/String;

    return-void
.end method
