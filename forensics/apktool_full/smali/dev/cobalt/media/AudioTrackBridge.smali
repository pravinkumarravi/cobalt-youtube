.class public Ldev/cobalt/media/AudioTrackBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field private a:Landroid/media/AudioTrack;

.field private b:Landroid/media/AudioTimestamp;

.field private c:J

.field private final d:Z

.field private e:Ljava/nio/ByteBuffer;

.field private f:I


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, v1, Ldev/cobalt/media/AudioTrackBridge;->b:Landroid/media/AudioTimestamp;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Ldev/cobalt/media/AudioTrackBridge;->c:J

    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v6, p5

    if-eq v6, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    iput-boolean v0, v1, Ldev/cobalt/media/AudioTrackBridge;->d:Z

    invoke-static/range {p3 .. p3}, Ldev/cobalt/media/AudioTrackBridge;->a(I)I

    move-result v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v10, "starboard_media"

    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v13, 0x2

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    const/16 v15, 0x10

    if-ge v0, v14, :cond_2

    invoke-static/range {p1 .. p1}, Ldev/cobalt/media/AudioTrackBridge;->c(I)I

    move-result v0

    mul-int v0, v0, p3

    rem-int v0, v15, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object v9, v1, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v13

    const-string v2, "Enable tunnel mode when frame size is unaligned, sampleType: %d, channel: %d, sync header size: %d."

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_9

    :cond_3
    if-eqz p6, :cond_4

    move v0, v12

    goto :goto_3

    :cond_4
    move v0, v4

    :goto_3
    if-eq v2, v12, :cond_6

    if-ne v2, v8, :cond_5

    goto :goto_4

    :cond_5
    move v14, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v14, v4

    :goto_5
    if-nez v14, :cond_8

    if-nez p6, :cond_7

    goto :goto_6

    :cond_7
    move v14, v5

    goto :goto_7

    :cond_8
    :goto_6
    move v14, v4

    :goto_7
    new-instance v15, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v15}, Landroid/media/AudioAttributes$Builder;-><init>()V

    if-eqz v14, :cond_9

    move v14, v11

    goto :goto_8

    :cond_9
    move v14, v13

    :goto_8
    invoke-virtual {v15, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v14

    invoke-virtual {v14, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    goto :goto_2

    :goto_9
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v21

    const/16 v0, 0xa

    move/from16 v22, p4

    :goto_a
    if-lez v22, :cond_10

    :try_start_0
    new-instance v15, Landroid/media/AudioTrack;

    const/16 v18, 0x1

    iget-boolean v14, v1, Ldev/cobalt/media/AudioTrackBridge;->d:Z

    if-eqz v14, :cond_a

    move/from16 v19, v6

    goto :goto_b

    :cond_a
    move/from16 v19, v5

    :goto_b
    move-object v14, v15

    move-object v11, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    move/from16 v17, v22

    invoke-direct/range {v14 .. v19}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v11, v1, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    iput-object v9, v1, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    :goto_c
    iget-object v11, v1, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getState()I

    move-result v11

    if-ne v11, v4, :cond_b

    goto :goto_10

    :cond_b
    iput-object v9, v1, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    :cond_c
    if-eq v2, v12, :cond_e

    if-ne v2, v8, :cond_d

    goto :goto_d

    :cond_d
    move v11, v5

    goto :goto_e

    :cond_e
    :goto_d
    move v11, v4

    :goto_e
    if-eqz v11, :cond_f

    const/16 v11, 0x190

    if-ge v0, v11, :cond_f

    iget-object v11, v1, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getState()I

    move-result v11

    if-nez v11, :cond_f

    mul-int/lit8 v11, v0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Audio Track creation failed. Retry logic kicking in after "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "ms sleep time."

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v10, v0, v14}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    int-to-long v14, v11

    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v11

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v11

    :cond_f
    div-int/lit8 v22, v22, 0x2

    :goto_f
    const/4 v11, 0x3

    goto :goto_a

    :cond_10
    :goto_10
    invoke-virtual/range {p0 .. p0}, Ldev/cobalt/media/AudioTrackBridge;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v6, 0x4

    const-string v9, "ENCODING_INVALID"

    if-eqz v0, :cond_15

    iget-object v0, v1, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v22

    if-eq v2, v13, :cond_14

    if-eq v2, v6, :cond_13

    if-eq v2, v12, :cond_12

    if-eq v2, v8, :cond_11

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v5

    const-string v11, "Unknown AudioFormat %d."

    invoke-static {v0, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v10, v0, v8}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_11

    :cond_11
    const-string v9, "ENCODING_E_AC3"

    goto :goto_11

    :cond_12
    const-string v9, "ENCODING_AC3"

    goto :goto_11

    :cond_13
    invoke-static/range {p1 .. p1}, Ldev/cobalt/media/AudioTrackBridge;->c(I)I

    move-result v0

    mul-int v0, v0, p3

    mul-int v22, v22, v0

    const-string v9, "ENCODING_PCM_FLOAT"

    goto :goto_11

    :cond_14
    invoke-static/range {p1 .. p1}, Ldev/cobalt/media/AudioTrackBridge;->c(I)I

    move-result v0

    mul-int v0, v0, p3

    mul-int v22, v22, v0

    const-string v9, "ENCODING_PCM_16BIT"

    :cond_15
    :goto_11
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v9, v0, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v13

    invoke-static {v3, v7, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "AudioTrack created with AudioFormat %s and buffer size %d (preferred: %d). The minimum buffer size is %d."

    invoke-static {v10, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private static a(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/16 p0, 0xfc

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0xc

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private static b(JI)I
    .locals 2

    int-to-long v0, p2

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static c(I)I
    .locals 3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method private d()I
    .locals 4

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    const-string v0, "Unable to call getStartThresholdInFrames() with NULL audio track."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "starboard_media"

    invoke-static {v3, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    invoke-static {v0}, Ldev/cobalt/media/a;->a(Landroid/media/AudioTrack;)I

    move-result v0

    return v0
.end method

.method private flush()V
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "starboard_media"

    const-string v2, "Unable to flush with NULL audio track."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->e:Ljava/nio/ByteBuffer;

    iput v1, p0, Ldev/cobalt/media/AudioTrackBridge;->f:I

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Ldev/cobalt/media/AudioTrackBridge;->c:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static g(I)I
    .locals 3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported sample type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method private getAudioTimestamp()Landroid/media/AudioTimestamp;
    .locals 6
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    const-string v0, "starboard_media"

    const-string v1, "Unable to getAudioTimestamp with NULL audio track."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->b:Landroid/media/AudioTimestamp;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Ldev/cobalt/media/AudioTrackBridge;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->b:Landroid/media/AudioTimestamp;

    iget-wide v1, v0, Landroid/media/AudioTimestamp;->framePosition:J

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/AudioTimestamp;->framePosition:J

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->b:Landroid/media/AudioTimestamp;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->b:Landroid/media/AudioTimestamp;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/AudioTimestamp;->framePosition:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->b:Landroid/media/AudioTimestamp;

    iget-wide v1, v0, Landroid/media/AudioTimestamp;->framePosition:J

    iget-wide v3, p0, Ldev/cobalt/media/AudioTrackBridge;->c:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    iput-wide v1, p0, Ldev/cobalt/media/AudioTrackBridge;->c:J

    goto :goto_2

    :cond_3
    iput-wide v3, v0, Landroid/media/AudioTimestamp;->framePosition:J

    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getMinBufferSizeInFrames(III)I
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {p0}, Ldev/cobalt/media/AudioTrackBridge;->a(I)I

    move-result v0

    invoke-static {p2, v0, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Ldev/cobalt/media/AudioTrackBridge;->g(I)I

    move-result p1

    mul-int/2addr p1, p0

    div-int/2addr v0, p1

    mul-int/lit8 p0, v0, 0x4

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->k()I

    move-result p1

    if-lez p1, :cond_1

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->k()I

    move-result p1

    int-to-long v1, p1

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x77a10

    :goto_0
    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->j()I

    move-result p1

    if-lez p1, :cond_2

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->j()I

    move-result p1

    int-to-long v3, p1

    goto :goto_1

    :cond_2
    const-wide/32 v3, 0xb71b0

    :goto_1
    invoke-static {v1, v2, p2}, Ldev/cobalt/media/AudioTrackBridge;->b(JI)I

    move-result p1

    invoke-static {v3, v4, p2}, Ldev/cobalt/media/AudioTrackBridge;->b(JI)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    :goto_2
    return v1
.end method

.method private getStartThresholdInFrames()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Ldev/cobalt/media/AudioTrackBridge;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getUnderrunCount()I
    .locals 4
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    const-string v0, "Unable to call getUnderrunCount() with NULL audio track."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "starboard_media"

    invoke-static {v3, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v0

    return v0
.end method

.method private h([BIJ)I
    .locals 8

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldev/cobalt/media/AudioTrackBridge;->d:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long v6, p3, v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v2, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    const/4 v5, 0x1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "writeWithAvSync() is called when tunnelModeEnabled is false."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "writeWithAvSync() is called when audioTrack is null."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pause()V
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    const-string v1, "starboard_media"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Unable to pause with NULL audio track."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Unable to pause audio track, error: %s"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private play()V
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    const-string v1, "starboard_media"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Unable to play with NULL audio track."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Unable to play audio track, error: %s"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private stop()V
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    const-string v1, "starboard_media"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Unable to stop with NULL audio track."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Unable to stop audio track, error: %s"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private write([BIJ)I
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Unable to write with NULL audio track."

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "starboard_media"

    invoke-static {p3, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    iget-boolean v2, p0, Ldev/cobalt/media/AudioTrackBridge;->d:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/cobalt/media/AudioTrackBridge;->h([BIJ)I

    move-result p1

    return p1

    :cond_1
    const/4 p3, 0x1

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/media/AudioTrack;->write([BIII)I

    move-result p1

    return p1
.end method

.method private write([FI)I
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Unable to write with NULL audio track."

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "starboard_media"

    invoke-static {v0, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    iget-boolean v2, p0, Ldev/cobalt/media/AudioTrackBridge;->d:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/media/AudioTrack;->write([FIII)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Float sample is not supported under tunnel mode."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public e()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    iput-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->e:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Ldev/cobalt/media/AudioTrackBridge;->f:I

    return-void
.end method

.method public setVolume(F)I
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioTrackBridge;->a:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    const-string p1, "Unable to setVolume with NULL audio track."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard_media"

    invoke-static {v2, p1, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    move-result p1

    return p1
.end method
