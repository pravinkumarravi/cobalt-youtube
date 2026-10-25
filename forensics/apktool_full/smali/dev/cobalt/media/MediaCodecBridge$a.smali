.class Ldev/cobalt/media/MediaCodecBridge$a;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


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

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {v0}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v3

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result v4

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Ldev/cobalt/media/MediaCodecBridge;->c(Ldev/cobalt/media/MediaCodecBridge;JZZLjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Ldev/cobalt/media/MediaCodecBridge;->d(Ldev/cobalt/media/MediaCodecBridge;JI)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {v0}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide v1

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    move v3, p2

    invoke-static/range {v0 .. v8}, Ldev/cobalt/media/MediaCodecBridge;->e(Ldev/cobalt/media/MediaCodecBridge;JIIIJI)V

    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->f(Ldev/cobalt/media/MediaCodecBridge;)Ldev/cobalt/media/MediaCodecBridge$d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->f(Ldev/cobalt/media/MediaCodecBridge;)Ldev/cobalt/media/MediaCodecBridge$d;

    move-result-object p1

    iget-wide p2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, p2, p3}, Ldev/cobalt/media/MediaCodecBridge$d;->b(J)V

    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->f(Ldev/cobalt/media/MediaCodecBridge;)Ldev/cobalt/media/MediaCodecBridge$d;

    move-result-object p1

    invoke-virtual {p1}, Ldev/cobalt/media/MediaCodecBridge$d;->a()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p2}, Ldev/cobalt/media/MediaCodecBridge;->g(Ldev/cobalt/media/MediaCodecBridge;)I

    move-result p2

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p2, p1}, Ldev/cobalt/media/MediaCodecBridge;->h(Ldev/cobalt/media/MediaCodecBridge;I)I

    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->i(Ldev/cobalt/media/MediaCodecBridge;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->b(Ldev/cobalt/media/MediaCodecBridge;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ldev/cobalt/media/MediaCodecBridge;->j(Ldev/cobalt/media/MediaCodecBridge;J)V

    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->f(Ldev/cobalt/media/MediaCodecBridge;)Ldev/cobalt/media/MediaCodecBridge$d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$a;->a:Ldev/cobalt/media/MediaCodecBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaCodecBridge;->f(Ldev/cobalt/media/MediaCodecBridge;)Ldev/cobalt/media/MediaCodecBridge$d;

    move-result-object p1

    invoke-virtual {p1}, Ldev/cobalt/media/MediaCodecBridge$d;->c()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
