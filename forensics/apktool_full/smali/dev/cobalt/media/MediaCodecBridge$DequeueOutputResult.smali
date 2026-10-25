.class Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DequeueOutputResult"
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->a:I

    const/4 v0, -0x1

    iput v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->b:I

    const/4 v0, 0x0

    iput v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->c:I

    iput v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->d:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->e:J

    iput v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->f:I

    return-void
.end method

.method private constructor <init>(IIIIJI)V
    .locals 0
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->a:I

    iput p2, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->b:I

    iput p3, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->c:I

    iput p4, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->d:I

    iput-wide p5, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->e:J

    iput p7, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->f:I

    return-void
.end method

.method private flags()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->c:I

    return v0
.end method

.method private index()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->b:I

    return v0
.end method

.method private numBytes()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->f:I

    return v0
.end method

.method private offset()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->d:I

    return v0
.end method

.method private presentationTimeMicroseconds()J
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->e:J

    return-wide v0
.end method

.method private status()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;->a:I

    return v0
.end method
