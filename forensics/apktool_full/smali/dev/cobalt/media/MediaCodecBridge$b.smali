.class Ldev/cobalt/media/MediaCodecBridge$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/media/MediaCodecBridge;-><init>(JLandroid/media/MediaCodec;Ljava/lang/String;Ldev/cobalt/media/MediaCodecBridge$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/cobalt/media/MediaCodecBridge;


# direct methods
.method constructor <init>(Ldev/cobalt/media/MediaCodecBridge;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$b;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$b;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$b;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {v0}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide v1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Ldev/cobalt/media/MediaCodecBridge;->k(Ldev/cobalt/media/MediaCodecBridge;JJJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
