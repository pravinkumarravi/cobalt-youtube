.class Ldev/cobalt/media/MediaCodecBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/media/MediaCodecBridge$d;,
        Ldev/cobalt/media/MediaCodecBridge$c;,
        Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;,
        Ldev/cobalt/media/MediaCodecBridge$ColorInfo;,
        Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;,
        Ldev/cobalt/media/MediaCodecBridge$DequeueOutputResult;,
        Ldev/cobalt/media/MediaCodecBridge$DequeueInputResult;
    }
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# static fields
.field private static final n:Z

.field private static o:Ljava/lang/String;


# instance fields
.field private a:J

.field private final b:Lv1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/g<",
            "Landroid/media/MediaCodec;",
            "Ljava/lang/IllegalStateException;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/media/MediaCodec$Callback;

.field private d:Z

.field private e:J

.field private final f:Ljava/lang/String;

.field private g:D

.field private h:I

.field private i:Landroid/media/MediaCodec$OnFrameRenderedListener;

.field private final j:Landroid/media/MediaCodec$BufferInfo;

.field private k:Landroid/view/Surface;

.field private l:Ldev/cobalt/media/MediaCodecBridge$d;

.field private m:Ldev/cobalt/media/MediaCodecBridge$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->f()Z

    move-result v0

    sput-boolean v0, Ldev/cobalt/media/MediaCodecBridge;->n:Z

    const-string v0, "No Exception Data"

    sput-object v0, Ldev/cobalt/media/MediaCodecBridge;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLandroid/media/MediaCodec;Ljava/lang/String;Ldev/cobalt/media/MediaCodecBridge$c;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/g;

    new-instance v1, Ldev/cobalt/media/c;

    invoke-direct {v1}, Ldev/cobalt/media/c;-><init>()V

    invoke-direct {v0, v1}, Lv1/g;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Ldev/cobalt/media/MediaCodecBridge;->g:D

    const/4 v1, -0x1

    iput v1, p0, Ldev/cobalt/media/MediaCodecBridge;->h:I

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, p0, Ldev/cobalt/media/MediaCodecBridge;->j:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    iput-object v2, p0, Ldev/cobalt/media/MediaCodecBridge;->l:Ldev/cobalt/media/MediaCodecBridge$d;

    sget-object v3, Ldev/cobalt/media/MediaCodecBridge$c;->b:Ldev/cobalt/media/MediaCodecBridge$c;

    iput-object v3, p0, Ldev/cobalt/media/MediaCodecBridge;->m:Ldev/cobalt/media/MediaCodecBridge$c;

    if-eqz p3, :cond_2

    iput-wide p1, p0, Ldev/cobalt/media/MediaCodecBridge;->a:J

    invoke-virtual {v0, p3}, Lv1/g;->b(Ljava/lang/Object;)V

    iput-object p4, p0, Ldev/cobalt/media/MediaCodecBridge;->f:Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ldev/cobalt/media/MediaCodecBridge;->e:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/cobalt/media/MediaCodecBridge;->d:Z

    iput-object p5, p0, Ldev/cobalt/media/MediaCodecBridge;->m:Ldev/cobalt/media/MediaCodecBridge$c;

    new-instance p1, Ldev/cobalt/media/MediaCodecBridge$a;

    invoke-direct {p1, p0}, Ldev/cobalt/media/MediaCodecBridge$a;-><init>(Ldev/cobalt/media/MediaCodecBridge;)V

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecBridge;->c:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v0}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCodec;

    iget-object p2, p0, Ldev/cobalt/media/MediaCodecBridge;->c:Landroid/media/MediaCodec$Callback;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    invoke-static {}, Ldev/cobalt/media/MediaCodecBridge;->isFrameRenderedCallbackEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    if-eq p6, v1, :cond_1

    :cond_0
    new-instance p1, Ldev/cobalt/media/MediaCodecBridge$b;

    invoke-direct {p1, p0}, Ldev/cobalt/media/MediaCodecBridge$b;-><init>(Ldev/cobalt/media/MediaCodecBridge;)V

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecBridge;->i:Landroid/media/MediaCodec$OnFrameRenderedListener;

    invoke-virtual {v0}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCodec;

    iget-object p2, p0, Ldev/cobalt/media/MediaCodecBridge;->i:Landroid/media/MediaCodec$OnFrameRenderedListener;

    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static synthetic a()Ljava/lang/IllegalStateException;
    .locals 1

    invoke-static {}, Ldev/cobalt/media/MediaCodecBridge;->o()Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ldev/cobalt/media/MediaCodecBridge;)J
    .locals 2

    iget-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge;->a:J

    return-wide v0
.end method

.method static synthetic c(Ldev/cobalt/media/MediaCodecBridge;JZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/cobalt/media/MediaCodecBridge;->nativeOnMediaCodecError(JZZLjava/lang/String;)V

    return-void
.end method

.method private configureVideo(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IIIZLdev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;)Z
    .locals 6
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-string p7, "starboard_media"

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1c

    const-string v4, "max-height"

    const-string v5, "max-width"

    if-le v2, v3, :cond_0

    const/16 v2, 0x1e00

    :try_start_1
    invoke-static {v2, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    invoke-virtual {p1, v5, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p5, 0x10e0

    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p5

    :goto_0
    invoke-virtual {p1, v4, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const/16 v2, 0xf00

    invoke-static {v2, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    invoke-virtual {p1, v5, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p5, 0x870

    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto :goto_0

    :goto_1
    sget-boolean p5, Ldev/cobalt/media/MediaCodecBridge;->n:Z

    if-eqz p5, :cond_1

    const-string p5, "operating-rate"

    const/high16 p6, 0x42f00000    # 120.0f

    invoke-virtual {p1, p5, p6}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    const-string p5, "Setting decoder operating rate to 120"

    new-array p6, v1, [Ljava/lang/Object;

    invoke-static {p7, p5, p6}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    invoke-direct {p0, p1, p3}, Ldev/cobalt/media/MediaCodecBridge;->p(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    iget-object p5, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {p5}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/media/MediaCodec;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object p2, p0, Ldev/cobalt/media/MediaCodecBridge;->k:Landroid/view/Surface;

    new-instance p1, Ldev/cobalt/media/MediaCodecBridge$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ldev/cobalt/media/MediaCodecBridge$d;-><init>(Ldev/cobalt/media/MediaCodecBridge;Ldev/cobalt/media/MediaCodecBridge$a;)V

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecBridge;->l:Ldev/cobalt/media/MediaCodecBridge$d;

    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge;->k:Landroid/view/Surface;

    iget p2, p0, Ldev/cobalt/media/MediaCodecBridge;->h:I

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Ldev/cobalt/media/MediaCodecBridge;->r(Landroid/view/Surface;F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p3, "Cannot configure the video codec with Exception: "

    invoke-static {p7, p3, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_1
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p3, "Cannot configure the video codec with CryptoException: "

    invoke-static {p7, p3, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_2
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p3, "Cannot configure the video codec with IllegalStateException: "

    invoke-static {p7, p3, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_3
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p3, "Cannot configure the video codec with IllegalArgumentException: "

    invoke-static {p7, p3, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p8, p1}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ljava/lang/String;)Ljava/lang/String;

    return v1
.end method

.method public static createVideoMediaCodecBridge(JLjava/lang/String;Ljava/lang/String;IIIIILandroid/view/Surface;Landroid/media/MediaCrypto;Ldev/cobalt/media/MediaCodecBridge$ColorInfo;IIZLdev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;)V
    .locals 18
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    move-object/from16 v8, p2

    move-object/from16 v1, p3

    move/from16 v0, p6

    move-object/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move-object/from16 v12, p15

    const/4 v2, 0x0

    invoke-static {v12, v2}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->b(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ldev/cobalt/media/MediaCodecBridge;)Ldev/cobalt/media/MediaCodecBridge;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "starboard_media"

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    new-array v0, v14, [Ljava/lang/Object;

    const-string v1, "Invalid decoder name."

    invoke-static {v13, v1, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v12, v1}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    const/4 v7, 0x2

    const/4 v6, 0x1

    :try_start_0
    const-string v2, "Creating \"%s\" decoder."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v14

    invoke-static {v13, v2, v3}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static/range {p3 .. p3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_1

    const-string v0, "mediaCodec is null"

    invoke-static {v12, v0}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "codecInfo is null"

    invoke-static {v12, v0}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {v1, v8}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v0, "codecCapabilities is null"

    invoke-static {v12, v0}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_3
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "videoCapabilities is null"

    invoke-static {v12, v0}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_4
    new-instance v3, Ldev/cobalt/media/MediaCodecBridge;

    sget-object v16, Ldev/cobalt/media/MediaCodecBridge$c;->b:Ldev/cobalt/media/MediaCodecBridge$c;

    move-object v1, v3

    move-object v15, v2

    move-object/from16 v17, v3

    move-wide/from16 v2, p0

    move-object v14, v5

    move-object/from16 v5, p2

    move v12, v6

    move-object/from16 v6, v16

    move/from16 v7, p12

    invoke-direct/range {v1 .. v7}, Ldev/cobalt/media/MediaCodecBridge;-><init>(JLandroid/media/MediaCodec;Ljava/lang/String;Ldev/cobalt/media/MediaCodecBridge$c;I)V

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v8, v1, v2, v15}, Ldev/cobalt/media/MediaCodecBridge;->m(Ljava/lang/String;IILandroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/media/MediaFormat;

    move-result-object v1

    if-eqz v9, :cond_5

    invoke-static {v8, v14}, Ldev/cobalt/media/MediaCodecUtil;->c(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v12

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_7

    const-string v2, "Setting HDR info."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v13, v2, v4}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget v2, v9, Ldev/cobalt/media/MediaCodecBridge$ColorInfo;->c:I

    const-string v3, "color-transfer"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "color-standard"

    iget v3, v9, Ldev/cobalt/media/MediaCodecBridge$ColorInfo;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v2, v9, Ldev/cobalt/media/MediaCodecBridge$ColorInfo;->a:I

    if-eqz v2, :cond_6

    const-string v3, "color-range"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_6
    const-string v2, "hdr-static-info"

    iget-object v3, v9, Ldev/cobalt/media/MediaCodecBridge$ColorInfo;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_7
    const/4 v2, -0x1

    if-eq v10, v2, :cond_8

    const-string v2, "tunneled-playback"

    invoke-virtual {v1, v2, v12}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v2, "audio-session-id"

    invoke-virtual {v1, v2, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled tunnel mode playback on audio session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v13, v2, v4}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    if-lez p7, :cond_9

    if-lez p8, :cond_9

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v12

    const-string v3, "Evaluate maxWidth and maxHeight (%d, %d) passed in"

    invoke-static {v13, v3, v4}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move/from16 v3, p7

    move/from16 v4, p8

    goto :goto_2

    :cond_9
    const/4 v2, 0x2

    invoke-virtual {v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const-string v6, "maxWidth and maxHeight not passed in, using result of getSupportedWidths()/Heights() (%d, %d)"

    invoke-static {v13, v6, v5}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    const-string v5, "Failed to find a compatible resolution"

    const/16 v8, 0x870

    if-lez v0, :cond_e

    int-to-double v9, v0

    invoke-virtual {v15, v3, v4, v9, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v14

    const-string v7, "Set maxWidth and maxHeight to (%d, %d)@%d per `areSizeAndRateSupported()`"

    if-eqz v14, :cond_a

    const/4 v14, 0x3

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v5, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v13, v7, v5}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    move-object/from16 v6, v17

    goto/16 :goto_6

    :cond_a
    const/4 v14, 0x3

    const/16 v16, 0x0

    new-array v6, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v12

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const-string v3, "maxWidth and maxHeight (%d, %d)@%d not supported per `areSizeAndRateSupported()`, continue searching"

    invoke-static {v13, v3, v6}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 v3, 0x10e0

    if-lt v4, v3, :cond_b

    const/16 v6, 0x1e00

    invoke-virtual {v15, v6, v3, v9, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v14

    if-eqz v14, :cond_b

    move v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x3

    goto :goto_5

    :cond_b
    if-lt v4, v8, :cond_c

    const/16 v3, 0xf00

    invoke-virtual {v15, v3, v8, v9, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v6

    if-eqz v6, :cond_c

    move v4, v8

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/16 v6, 0xf00

    goto :goto_5

    :cond_c
    const/16 v3, 0x438

    if-lt v4, v3, :cond_d

    const/16 v4, 0x780

    invoke-virtual {v15, v4, v3, v9, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v13, v5, v4}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_4
    const/16 v4, 0x438

    const/4 v5, 0x3

    const/16 v6, 0x780

    :goto_5
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v12

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v13, v7, v5}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v6

    goto :goto_3

    :goto_6
    invoke-direct {v6, v0}, Ldev/cobalt/media/MediaCodecBridge;->setVideoFps(I)V

    goto :goto_9

    :cond_e
    move-object/from16 v6, v17

    const/16 v0, 0x1e0

    const-string v7, "Set maxWidth and maxHeight to (%d, %d) per `isSizeSupported()`"

    if-lt v4, v0, :cond_f

    invoke-virtual {v15, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    if-eqz v0, :cond_f

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v12

    invoke-static {v13, v7, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_9

    :cond_f
    if-lt v4, v8, :cond_10

    const/16 v0, 0xf00

    invoke-virtual {v15, v0, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v0

    :goto_7
    const/4 v4, 0x0

    goto :goto_8

    :cond_10
    const/16 v0, 0x438

    const/16 v3, 0x780

    if-lt v4, v0, :cond_11

    invoke-virtual {v15, v3, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v4

    if-eqz v4, :cond_11

    move v8, v0

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v13, v5, v8}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v8, v0

    :goto_8
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v12

    invoke-static {v13, v7, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v8

    :goto_9
    if-lez v11, :cond_12

    const-string v0, "max-input-size"

    invoke-virtual {v1, v0, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set KEY_MAX_INPUT_SIZE to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (actual: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v13, v0, v5}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    new-array v2, v12, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const-string v0, "MediaFormat.getInteger(KEY_MAX_INPUT_SIZE) failed with exception: "

    invoke-static {v13, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_12
    :goto_a
    const/4 v0, 0x0

    move-object/from16 p0, v6

    move-object/from16 p1, v1

    move-object/from16 p2, p9

    move-object/from16 p3, p10

    move/from16 p4, v0

    move/from16 p5, v3

    move/from16 p6, v4

    move/from16 p7, p14

    move-object/from16 p8, p15

    invoke-direct/range {p0 .. p8}, Ldev/cobalt/media/MediaCodecBridge;->configureVideo(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IIIZLdev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "Failed to configure video codec."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v6}, Ldev/cobalt/media/MediaCodecBridge;->release()V

    return-void

    :cond_13
    move-object/from16 v3, p15

    const/4 v1, 0x0

    invoke-virtual {v6, v3}, Ldev/cobalt/media/MediaCodecBridge;->t(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "Failed to start video codec."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v6}, Ldev/cobalt/media/MediaCodecBridge;->release()V

    return-void

    :cond_14
    invoke-static {v3, v6}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->b(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ldev/cobalt/media/MediaCodecBridge;)Ldev/cobalt/media/MediaCodecBridge;

    return-void

    :catch_1
    move-exception v0

    move v4, v6

    move v2, v7

    move-object v3, v12

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    if-eqz p10, :cond_15

    move v7, v4

    goto :goto_b

    :cond_15
    const/4 v7, 0x0

    :goto_b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v1, v6, v2

    const-string v1, "Failed to create MediaCodec: %s, mustSupportSecure: %s, DecoderName: %s"

    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v3, v0}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Ldev/cobalt/media/MediaCodecBridge;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/cobalt/media/MediaCodecBridge;->nativeOnMediaCodecInputBufferAvailable(JI)V

    return-void
.end method

.method static synthetic e(Ldev/cobalt/media/MediaCodecBridge;JIIIJI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Ldev/cobalt/media/MediaCodecBridge;->nativeOnMediaCodecOutputBufferAvailable(JIIIJI)V

    return-void
.end method

.method static synthetic f(Ldev/cobalt/media/MediaCodecBridge;)Ldev/cobalt/media/MediaCodecBridge$d;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/media/MediaCodecBridge;->l:Ldev/cobalt/media/MediaCodecBridge$d;

    return-object p0
.end method

.method private flush()I
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ldev/cobalt/media/MediaCodecBridge;->d:Z

    iget-object v2, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v2}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "starboard_media"

    const-string v2, "Failed to flush MediaCodec"

    invoke-static {v0, v2, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic g(Ldev/cobalt/media/MediaCodecBridge;)I
    .locals 0

    iget p0, p0, Ldev/cobalt/media/MediaCodecBridge;->h:I

    return p0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v0}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "starboard_media"

    const-string v1, "Failed to get input buffer"

    invoke-static {p1, v1, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getName()Ljava/lang/String;
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v0}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "starboard_media"

    const-string v2, "Cannot get codec name"

    invoke-static {v0, v2, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v0}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "starboard_media"

    const-string v1, "Failed to get output buffer"

    invoke-static {p1, v1, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getOutputFormat(Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;)V
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "starboard_media"

    const-string v1, "Failed to get output format"

    invoke-static {v0, v1, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    const/16 v0, 0xa

    :goto_0
    invoke-static {p1, v0}, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->a(Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;I)I

    invoke-static {p1, v1}, Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;->b(Ldev/cobalt/media/MediaCodecBridge$GetOutputFormatResult;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    return-void
.end method

.method static synthetic h(Ldev/cobalt/media/MediaCodecBridge;I)I
    .locals 0

    iput p1, p0, Ldev/cobalt/media/MediaCodecBridge;->h:I

    return p1
.end method

.method static synthetic i(Ldev/cobalt/media/MediaCodecBridge;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/media/MediaCodecBridge;->u()V

    return-void
.end method

.method public static isFrameRenderedCallbackEnabled()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic j(Ldev/cobalt/media/MediaCodecBridge;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/cobalt/media/MediaCodecBridge;->nativeOnMediaCodecOutputFormatChanged(J)V

    return-void
.end method

.method static synthetic k(Ldev/cobalt/media/MediaCodecBridge;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ldev/cobalt/media/MediaCodecBridge;->nativeOnMediaCodecFrameRendered(JJJ)V

    return-void
.end method

.method private static l(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    return p0
.end method

.method private static m(Ljava/lang/String;IILandroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/media/MediaFormat;
    .locals 1

    invoke-virtual {p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    invoke-static {p1, v0}, Ldev/cobalt/media/MediaCodecBridge;->l(II)I

    move-result p1

    invoke-virtual {p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p3

    invoke-static {p2, p3}, Ldev/cobalt/media/MediaCodecBridge;->l(II)I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method private static n(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p1, p1, 0x2

    div-int/2addr p0, p1

    return p0
.end method

.method private native nativeOnMediaCodecError(JZZLjava/lang/String;)V
.end method

.method private native nativeOnMediaCodecFrameRendered(JJJ)V
.end method

.method private native nativeOnMediaCodecInputBufferAvailable(JI)V
.end method

.method private native nativeOnMediaCodecOutputBufferAvailable(JIIIJI)V
.end method

.method private native nativeOnMediaCodecOutputFormatChanged(J)V
.end method

.method private static synthetic o()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaCodec was destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private p(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 12

    const-string v0, "max-input-size"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MediaFormat.getInteger(KEY_MAX_INPUT_SIZE) failed with exception: "

    const/4 v3, 0x1

    const-string v4, "starboard_media"

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use default value for KEY_MAX_INPUT_SIZE: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {v4, p1, p2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v5

    invoke-static {v4, v2, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v6, "max-height"

    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    const-string v6, "width"

    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    const-string v7, "max-width"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_2
    const-string v7, "mime"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "video/x-vnd.on2.vp9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move v11, v9

    goto :goto_1

    :sswitch_1
    const-string v8, "video/x-vnd.on2.vp8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x3

    goto :goto_1

    :sswitch_2
    const-string v8, "video/avc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    move v11, v10

    goto :goto_1

    :sswitch_3
    const-string v8, "video/hevc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    move v11, v3

    goto :goto_1

    :sswitch_4
    const-string v8, "video/av01"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    move v11, v5

    :goto_1
    packed-switch v11, :pswitch_data_0

    return-void

    :pswitch_0
    mul-int/2addr v6, v1

    goto :goto_4

    :pswitch_1
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "BRAVIA 4K 2015"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "Amazon"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "KFSOWI"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "AFTS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    const/16 p2, 0x10

    invoke-static {v6, p2}, Ldev/cobalt/media/MediaCodecBridge;->l(II)I

    move-result v6

    invoke-static {v1, p2}, Ldev/cobalt/media/MediaCodecBridge;->l(II)I

    move-result p2

    mul-int/2addr v6, p2

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    :pswitch_2
    mul-int/2addr v6, v1

    :goto_3
    move v9, v10

    :goto_4
    invoke-static {v6, v9}, Ldev/cobalt/media/MediaCodecBridge;->n(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set KEY_MAX_INPUT_SIZE to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (actual: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {v4, p1, p2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v5

    invoke-static {v4, v2, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_4
        -0x63185e82 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private q(J)V
    .locals 2

    iget-boolean v0, p0, Ldev/cobalt/media/MediaCodecBridge;->d:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x186a0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Ldev/cobalt/media/MediaCodecBridge;->e:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/cobalt/media/MediaCodecBridge;->d:Z

    :cond_0
    return-void
.end method

.method private queueInputBuffer(IIIJI)I
    .locals 9
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0, p4, p5}, Ldev/cobalt/media/MediaCodecBridge;->q(J)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/media/MediaCodec;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    aput-object p1, p3, v0

    const-string p4, "starboard_media"

    const-string p5, "Failed to queue input buffer"

    invoke-static {p4, p5, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_1
    iget-wide p5, p0, Ldev/cobalt/media/MediaCodecBridge;->a:J

    const-wide/16 v1, 0x0

    cmp-long p3, p5, v1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    instance-of p5, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p5, :cond_0

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p3

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result p5

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    move v4, p3

    move v5, p5

    goto :goto_0

    :cond_0
    move-object v6, p3

    move v4, v0

    move v5, v4

    :goto_0
    iget-wide v2, p0, Ldev/cobalt/media/MediaCodecBridge;->a:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ldev/cobalt/media/MediaCodecBridge;->nativeOnMediaCodecError(JZZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "Failed to report MediaCodec error to native"

    invoke-static {p4, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_1
    const/16 p1, 0xa

    return p1
.end method

.method private queueSecureInputBuffer(II[B[B[I[IIIIIJ)I
    .locals 19
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p9

    move/from16 v2, p10

    const-string v3, "Failed to report MediaCodec error to native"

    const-string v4, "starboard_media"

    move-wide/from16 v5, p11

    invoke-direct {v1, v5, v6}, Ldev/cobalt/media/MediaCodecBridge;->q(J)V

    const-wide/16 v7, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    :try_start_0
    new-instance v15, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    move-object v12, v15

    move/from16 v13, p7

    move-object/from16 v14, p5

    move-object v9, v15

    move-object/from16 v15, p6

    move-object/from16 v16, p4

    move-object/from16 v17, p3

    move/from16 v18, p8

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    const/4 v12, 0x2

    move/from16 v13, p8

    if-ne v13, v12, :cond_0

    new-instance v12, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v12, v0, v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    invoke-virtual {v9, v12}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v1, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v0}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move-object/from16 p3, v0

    move/from16 p4, p1

    move/from16 p5, p2

    move-object/from16 p6, v9

    move-wide/from16 p7, p11

    move/from16 p9, v2

    invoke-virtual/range {p3 .. p9}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return v11

    :cond_2
    :goto_1
    const-string v0, "Pattern encryption only supported for \'cbcs\' scheme (CBC mode)."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v10

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to queue secure input buffer, IllegalStateException "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_1
    iget-wide v5, v1, Ldev/cobalt/media/MediaCodecBridge;->a:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p1, p0

    move-wide/from16 p2, v5

    move/from16 p4, v2

    move/from16 p5, v7

    move-object/from16 p6, v0

    invoke-direct/range {p1 .. p6}, Ldev/cobalt/media/MediaCodecBridge;->nativeOnMediaCodecError(JZZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v11

    invoke-static {v4, v3, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_2
    return v10

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to queue secure input buffer, IllegalArgumentException "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_2
    iget-wide v5, v1, Ldev/cobalt/media/MediaCodecBridge;->a:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p1, p0

    move-wide/from16 p2, v5

    move/from16 p4, v2

    move/from16 p5, v7

    move-object/from16 p6, v0

    invoke-direct/range {p1 .. p6}, Ldev/cobalt/media/MediaCodecBridge;->nativeOnMediaCodecError(JZZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v11

    invoke-static {v4, v3, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    :goto_3
    return v10

    :catch_4
    move-exception v0

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    if-ne v3, v2, :cond_5

    const-string v0, "Failed to queue secure input buffer: CryptoException.ERROR_NO_KEY"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x7

    return v0

    :cond_5
    const/4 v2, 0x4

    if-ne v3, v2, :cond_6

    const-string v0, "Failed to queue secure input buffer: CryptoException.ERROR_INSUFFICIENT_OUTPUT_PROTECTION"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 v0, 0x8

    return v0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to queue secure input buffer, CryptoException with error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v10
.end method

.method private r(Landroid/view/Surface;F)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    const/high16 v2, 0x42740000    # 61.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v0, v1, :cond_2

    cmpl-float v0, p2, v5

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    rem-float v0, p2, v4

    cmpg-float v0, v0, v3

    const/4 v1, 0x0

    const-string v2, "starboard_media"

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set surface 50fps base on frameRate "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p1, p2, v6}, Ldev/cobalt/media/b;->a(Landroid/view/Surface;FI)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set surface 60fps base on frameRate "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p1, p2, v6}, Ldev/cobalt/media/b;->a(Landroid/view/Surface;FI)V

    goto :goto_0

    :cond_2
    cmpl-float v0, p2, v5

    if-lez v0, :cond_3

    rem-float v0, p2, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    cmpg-float v0, p2, v2

    if-gez v0, :cond_3

    invoke-static {p1, p2, v6}, Ldev/cobalt/media/b;->a(Landroid/view/Surface;FI)V

    goto :goto_0

    :cond_3
    invoke-static {p1, v5, v6}, Ldev/cobalt/media/b;->a(Landroid/view/Surface;FI)V

    :cond_4
    :goto_0
    return-void
.end method

.method private releaseOutputBuffer(IJ)V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v0}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "starboard_media"

    const-string p3, "Failed to release output buffer"

    invoke-static {p1, p3, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private releaseOutputBuffer(IZ)V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v0}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "starboard_media"

    const-string v0, "Failed to release output buffer"

    invoke-static {p1, v0, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private requestKeyFrameSoon()V
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v1, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "starboard_media"

    const-string v2, "Failed to set MediaCodec parameters"

    invoke-static {v0, v2, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private resetNativeMediaCodecBridge()V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge;->a:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restart()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldev/cobalt/media/MediaCodecBridge;->t(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;)Z

    move-result v0

    return v0
.end method

.method private setPlaybackRate(D)V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge;->g:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Ldev/cobalt/media/MediaCodecBridge;->g:D

    iget-object p1, p0, Ldev/cobalt/media/MediaCodecBridge;->l:Ldev/cobalt/media/MediaCodecBridge$d;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Ldev/cobalt/media/MediaCodecBridge;->u()V

    :cond_1
    return-void
.end method

.method private setVideoBitrate(II)V
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-string v0, "starboard_media"

    iget-object v1, p0, Ldev/cobalt/media/MediaCodecBridge;->m:Ldev/cobalt/media/MediaCodecBridge$c;

    sget-object v2, Ldev/cobalt/media/MediaCodecBridge$c;->c:Ldev/cobalt/media/MediaCodecBridge$c;

    if-ne v1, v2, :cond_0

    if-lez p2, :cond_0

    mul-int/lit8 v1, p1, 0x1e

    div-int/2addr v1, p2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "video-bitrate"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v4}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "Failed to set MediaCodec parameters"

    invoke-static {v0, v2, v4}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideoBitrate: input "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "bps@"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", targetBps "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lv1/f;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private setVideoFps(I)V
    .locals 0
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iput p1, p0, Ldev/cobalt/media/MediaCodecBridge;->h:I

    return-void
.end method

.method private stop()V
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ldev/cobalt/media/MediaCodecBridge;->resetNativeMediaCodecBridge()V

    :try_start_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v0}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "starboard_media"

    const-string v2, "Failed to stop MediaCodec"

    invoke-static {v0, v2, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private u()V
    .locals 7

    iget-wide v0, p0, Ldev/cobalt/media/MediaCodecBridge;->g:D

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ldev/cobalt/media/MediaCodecBridge;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const-string v2, "starboard_media"

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set operating rate with invalid fps "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ldev/cobalt/media/MediaCodecBridge;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_2
    sget-boolean v3, Ldev/cobalt/media/MediaCodecBridge;->n:Z

    if-eqz v3, :cond_3

    const-wide/high16 v3, 0x405e000000000000L    # 120.0

    goto :goto_0

    :cond_3
    iget-wide v3, p0, Ldev/cobalt/media/MediaCodecBridge;->g:D

    int-to-double v5, v0

    mul-double/2addr v3, v5

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    double-to-float v3, v3

    const-string v4, "operating-rate"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :try_start_0
    iget-object v4, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v4}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v0, "Failed to set MediaCodec operating rate"

    invoke-static {v2, v0, v4}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge;->k:Landroid/view/Surface;

    invoke-direct {p0, v0, v3}, Ldev/cobalt/media/MediaCodecBridge;->r(Landroid/view/Surface;F)V

    return-void
.end method


# virtual methods
.method public configureAudio(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;I)Z
    .locals 6
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-string v0, "Cannot configure the audio codec"

    const-string v1, "starboard_media"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v4}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {v1, v0, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :catch_1
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Cannot configure the audio codec: DRM error"

    invoke-static {v1, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {v1, v0, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return v2
.end method

.method public release()V
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-string v0, "starboard_media"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v2}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling MediaCodec.release() on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v2}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "Cannot release media codec"

    invoke-static {v0, v1, v3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv1/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldev/cobalt/media/MediaCodecBridge;->t(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;)Z

    move-result v0

    return v0
.end method

.method public t(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Ldev/cobalt/media/MediaCodecBridge;->b:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "starboard_media"

    const-string v4, "Failed to start the media codec"

    invoke-static {v3, v4, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start media codec "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return v2
.end method
