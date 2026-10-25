.class Ldev/cobalt/media/VideoSurfaceTexture$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/media/VideoSurfaceTexture;->setOnFrameAvailableListener(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldev/cobalt/media/VideoSurfaceTexture;


# direct methods
.method constructor <init>(Ldev/cobalt/media/VideoSurfaceTexture;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/media/VideoSurfaceTexture$a;->b:Ldev/cobalt/media/VideoSurfaceTexture;

    iput-wide p2, p0, Ldev/cobalt/media/VideoSurfaceTexture$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object p1, p0, Ldev/cobalt/media/VideoSurfaceTexture$a;->b:Ldev/cobalt/media/VideoSurfaceTexture;

    iget-wide v0, p0, Ldev/cobalt/media/VideoSurfaceTexture$a;->a:J

    invoke-static {p1, v0, v1}, Ldev/cobalt/media/VideoSurfaceTexture;->a(Ldev/cobalt/media/VideoSurfaceTexture;J)V

    return-void
.end method
