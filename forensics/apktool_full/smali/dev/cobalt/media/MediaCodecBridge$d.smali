.class Ldev/cobalt/media/MediaCodecBridge$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field final synthetic d:Ldev/cobalt/media/MediaCodecBridge;


# direct methods
.method private constructor <init>(Ldev/cobalt/media/MediaCodecBridge;)V
    .locals 2

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$d;->d:Ldev/cobalt/media/MediaCodecBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->b:J

    iput-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->c:J

    return-void
.end method

.method synthetic constructor <init>(Ldev/cobalt/media/MediaCodecBridge;Ldev/cobalt/media/MediaCodecBridge$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/media/MediaCodecBridge$d;-><init>(Ldev/cobalt/media/MediaCodecBridge;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    iget-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-wide v2, p0, Ldev/cobalt/media/MediaCodecBridge$d;->b:J

    const-wide/16 v4, 0x4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x49742400    # 1000000.0f

    mul-float/2addr v2, v3

    long-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public b(J)V
    .locals 4

    iget-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->b:J

    iget-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iput-wide p1, p0, Ldev/cobalt/media/MediaCodecBridge$d;->a:J

    return-void

    :cond_0
    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "starboard_media"

    const-string v0, "Invalid output presentation timestamp."

    invoke-static {p2, v0, p1}, Lv1/f;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_1
    iget-wide v2, p0, Ldev/cobalt/media/MediaCodecBridge$d;->c:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Ldev/cobalt/media/MediaCodecBridge$d;->c:J

    iput-wide p1, p0, Ldev/cobalt/media/MediaCodecBridge$d;->a:J

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->b:J

    iput-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$d;->c:J

    return-void
.end method
