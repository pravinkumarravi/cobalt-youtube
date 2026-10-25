.class Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetOutputFormatResult"
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/media/MediaFormat;

.field private c:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->c:Ljava/util/Optional;

    const/16 v0, 0xa

    iput v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    return-void
.end method

.method static synthetic a(Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;I)I
    .locals 0

    iput p1, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->a:I

    return p1
.end method

.method static synthetic b(Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    return-object p1
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->c:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    const-string v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    const-string v1, "crop-left"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    const-string v1, "crop-bottom"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    const-string v1, "crop-top"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->c:Ljava/util/Optional;

    :cond_1
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->c:Ljava/util/Optional;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private channelCount()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private cropBottom()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    const-string v1, "crop-bottom"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private cropLeft()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    const-string v1, "crop-left"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private cropRight()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    const-string v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private cropTop()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    const-string v1, "crop-top"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private sampleRate()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private status()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->a:I

    return v0
.end method

.method private textureHeight()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private textureWidth()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
