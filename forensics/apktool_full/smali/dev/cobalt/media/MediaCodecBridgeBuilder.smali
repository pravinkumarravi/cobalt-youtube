.class Ldev/cobalt/media/MediaCodecBridgeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAudioDecoder(JLjava/lang/String;Ljava/lang/String;IILandroid/media/MediaCrypto;[B)Ldev/cobalt/media/MediaCodecBridge;
    .locals 14
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    move-object/from16 v8, p2

    move-object/from16 v1, p3

    move/from16 v0, p4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "starboard_media"

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    const-string v0, "Invalid decoder name."

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v10

    :cond_0
    const/4 v12, 0x1

    :try_start_0
    const-string v2, "Creating \"%s\" decoder."

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v1, v3, v11

    invoke-static {v9, v2, v3}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static/range {p3 .. p3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    return-object v10

    :cond_1
    new-instance v13, Ldev/cobalt/media/MediaCodecBridge;

    sget-object v6, Ldev/cobalt/media/MediaCodecBridge$c;->b:Ldev/cobalt/media/MediaCodecBridge$c;

    const/4 v7, -0x1

    move-object v1, v13

    move-wide v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Ldev/cobalt/media/MediaCodecBridge;-><init>(JLandroid/media/MediaCodec;Ljava/lang/String;Ldev/cobalt/media/MediaCodecBridge$c;I)V

    new-array v1, v11, [[B

    const-string v2, "opus"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, p7

    invoke-static {v0, v2}, Ldev/cobalt/media/o;->c(I[B)[[B

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v13}, Ldev/cobalt/media/MediaCodecBridge;->release()V

    return-object v10

    :cond_2
    move/from16 v2, p5

    move v12, v11

    goto :goto_0

    :cond_3
    move/from16 v2, p5

    :goto_0
    invoke-static {v8, v0, v2, v1, v12}, Ldev/cobalt/media/o;->a(Ljava/lang/String;II[[BZ)Landroid/media/MediaFormat;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-virtual {v13, v0, v1, v11}, Ldev/cobalt/media/MediaCodecBridge;->configureAudio(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Failed to configure audio codec."

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v13}, Ldev/cobalt/media/MediaCodecBridge;->release()V

    return-object v10

    :cond_4
    invoke-virtual {v13}, Ldev/cobalt/media/MediaCodecBridge;->s()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Failed to start audio codec."

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v13}, Ldev/cobalt/media/MediaCodecBridge;->release()V

    return-object v10

    :cond_5
    return-object v13

    :catch_0
    move-exception v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v11

    aput-object v1, v2, v12

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "Failed to create MediaCodec: %s, DecoderName: %s"

    invoke-static {v9, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v10
.end method
