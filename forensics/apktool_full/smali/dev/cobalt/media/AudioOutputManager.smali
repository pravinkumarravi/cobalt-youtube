.class public Ldev/cobalt/media/AudioOutputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldev/cobalt/coat/CobaltMediaSession$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;
    }
.end annotation


# static fields
.field private static e:Landroid/media/AudioDeviceCallback;

.field private static f:Z


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/cobalt/media/AudioTrackBridge;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldev/cobalt/media/AudioOutputManager$b;

    invoke-direct {v0}, Ldev/cobalt/media/AudioOutputManager$b;-><init>()V

    sput-object v0, Ldev/cobalt/media/AudioOutputManager;->e:Landroid/media/AudioDeviceCallback;

    const/4 v0, 0x0

    sput-boolean v0, Ldev/cobalt/media/AudioOutputManager;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldev/cobalt/media/AudioOutputManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Ldev/cobalt/media/AudioOutputManager;->d:Z

    iput-object p1, p0, Ldev/cobalt/media/AudioOutputManager;->b:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/cobalt/media/AudioOutputManager;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic b(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ldev/cobalt/media/AudioOutputManager;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Ldev/cobalt/media/AudioOutputManager;->nativeOnAudioDeviceChanged()V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Ldev/cobalt/media/AudioOutputManager;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sget-object v0, Ldev/cobalt/media/AudioOutputManager;->e:Landroid/media/AudioDeviceCallback;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    const/4 p0, 0x1

    sput-boolean p0, Ldev/cobalt/media/AudioOutputManager;->f:Z

    return-void
.end method

.method private static f(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "TYPE_UNKNOWN (%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "TYPE_BUS"

    return-object p0

    :pswitch_1
    const-string p0, "TYPE_IP"

    return-object p0

    :pswitch_2
    const-string p0, "TYPE_AUX_LINE"

    return-object p0

    :pswitch_3
    const-string p0, "TYPE_TELEPHONY"

    return-object p0

    :pswitch_4
    const-string p0, "TYPE_TV_TUNER"

    return-object p0

    :pswitch_5
    const-string p0, "TYPE_FM_TUNER"

    return-object p0

    :pswitch_6
    const-string p0, "TYPE_BUILTIN_MIC"

    return-object p0

    :pswitch_7
    const-string p0, "TYPE_FM"

    return-object p0

    :pswitch_8
    const-string p0, "TYPE_DOCK"

    return-object p0

    :pswitch_9
    const-string p0, "TYPE_USB_ACCESSORY"

    return-object p0

    :pswitch_a
    const-string p0, "TYPE_USB_DEVICE"

    return-object p0

    :pswitch_b
    const-string p0, "TYPE_HDMI_ARC"

    return-object p0

    :pswitch_c
    const-string p0, "TYPE_HDMI"

    return-object p0

    :pswitch_d
    const-string p0, "TYPE_BLUETOOTH_A2DP"

    return-object p0

    :pswitch_e
    const-string p0, "TYPE_BLUETOOTH_SCO"

    return-object p0

    :pswitch_f
    const-string p0, "TYPE_LINE_DIGITAL"

    return-object p0

    :pswitch_10
    const-string p0, "TYPE_LINE_ANALOG"

    return-object p0

    :pswitch_11
    const-string p0, "TYPE_WIRED_HEADPHONES"

    return-object p0

    :pswitch_12
    const-string p0, "TYPE_WIRED_HEADSET"

    return-object p0

    :pswitch_13
    const-string p0, "TYPE_BUILTIN_SPEAKER"

    return-object p0

    :pswitch_14
    const-string p0, "TYPE_BUILTIN_EARPIECE"

    return-object p0

    :pswitch_15
    const-string p0, "TYPE_UNKNOWN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static g([I)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget v3, p0, v2

    const/16 v4, 0xd

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "UNKNOWN (%d)"

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "DTS_HD"

    goto :goto_1

    :pswitch_1
    const-string v3, "DTS"

    goto :goto_1

    :pswitch_2
    const-string v3, "E_AC3"

    goto :goto_1

    :pswitch_3
    const-string v3, "AC3"

    goto :goto_1

    :pswitch_4
    const-string v3, "PCM_FLOAT"

    goto :goto_1

    :pswitch_5
    const-string v3, "PCM_8BIT"

    goto :goto_1

    :pswitch_6
    const-string v3, "PCM_16BIT"

    goto :goto_1

    :pswitch_7
    const-string v3, "DEFAULT"

    goto :goto_1

    :pswitch_8
    const-string v3, "INVALID"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    const-string v3, "IEC61937"

    goto :goto_1

    :goto_2
    array-length v3, p0

    sub-int/2addr v3, v5

    if-eq v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAndResetHasAudioDeviceChanged()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioOutputManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method private static native nativeOnAudioDeviceChanged()V
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/media/AudioOutputManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/cobalt/media/AudioTrackBridge;

    invoke-virtual {v1, p1}, Ldev/cobalt/media/AudioTrackBridge;->setVolume(F)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method createAudioTrackBridge(IIIIIZ)Ldev/cobalt/media/AudioTrackBridge;
    .locals 8
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    new-instance v7, Ldev/cobalt/media/AudioTrackBridge;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ldev/cobalt/media/AudioTrackBridge;-><init>(IIIIIZ)V

    invoke-virtual {v7}, Ldev/cobalt/media/AudioTrackBridge;->e()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const-string p1, "AudioTrackBridge has invalid audio track"

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "starboard_media"

    invoke-static {p4, p1, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p2

    :cond_0
    iget-object p1, p0, Ldev/cobalt/media/AudioOutputManager;->a:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ldev/cobalt/media/AudioOutputManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean p1, p0, Ldev/cobalt/media/AudioOutputManager;->d:Z

    if-nez p1, :cond_2

    if-eqz p6, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldev/cobalt/media/AudioOutputManager;->b:Landroid/content/Context;

    const-string p3, "audio"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    new-instance p3, Ldev/cobalt/media/AudioOutputManager$a;

    invoke-direct {p3, p0}, Ldev/cobalt/media/AudioOutputManager$a;-><init>(Ldev/cobalt/media/AudioOutputManager;)V

    invoke-virtual {p1, p3, p2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/cobalt/media/AudioOutputManager;->d:Z

    :cond_2
    :goto_0
    return-object v7
.end method

.method destroyAudioTrackBridge(Ldev/cobalt/media/AudioTrackBridge;)V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-virtual {p1}, Ldev/cobalt/media/AudioTrackBridge;->f()V

    iget-object v0, p0, Ldev/cobalt/media/AudioOutputManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()V
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard_media"

    const-string v3, "Dumping all audio output devices:"

    invoke-static {v2, v3, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/media/AudioOutputManager;->b:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    array-length v4, v1

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ldev/cobalt/media/AudioOutputManager;->f(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getChannelCounts()[I

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    move-result-object v6

    invoke-static {v6}, Ldev/cobalt/media/AudioOutputManager;->g([I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v7, v8

    const-string v6, "  Audio Device: %s, channels: %s, sample rates: %s, encodings: %s"

    invoke-static {v2, v6, v7}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method generateTunnelModeAudioSessionId(I)I
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    rem-int v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "starboard_media"

    const-string v1, "Disable tunnel mode due to sampleSizeInBytes (%d) * numberOfChannels (%d) isn\'t aligned to AV_SYNC_HEADER_V1_SIZE (%d)."

    invoke-static {p1, v1, v0}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object p1, p0, Ldev/cobalt/media/AudioOutputManager;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result p1

    return p1
.end method

.method getMaxChannels()I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MIBOX3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Ldev/cobalt/media/AudioOutputManager;->b:Landroid/content/Context;

    invoke-static {v0}, Ldev/cobalt/app/b;->a(Landroid/content/Context;)Ldev/cobalt/app/b;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/app/b;->c()I

    move-result v0

    return v0
.end method

.method getMinBufferSize(III)I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-ne p3, v0, :cond_0

    const/16 p3, 0xfc

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported channel count: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p3, 0xc

    goto :goto_0

    :cond_2
    const/4 p3, 0x4

    :goto_0
    invoke-static {p2, p3, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    return p1
.end method

.method getOutputDeviceInfo(ILdev/cobalt/media/AudioOutputManager$OutputDeviceInfo;)Z
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ldev/cobalt/media/AudioOutputManager;->b:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    if-ltz p1, :cond_5

    array-length v3, v1

    if-ge p1, v3, :cond_5

    aget-object v3, v1, p1

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    iput v3, p2, Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;->type:I

    iput v2, p2, Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;->channels:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_1

    const/16 v3, 0x1d

    iput v3, p2, Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;->type:I

    :cond_1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MIBOX3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_2

    return v4

    :cond_2
    aget-object p1, v1, p1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getChannelCounts()[I

    move-result-object p1

    array-length v1, p1

    if-nez v1, :cond_3

    const/16 p1, 0x8

    iput p1, p2, Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;->channels:I

    goto :goto_1

    :cond_3
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_4

    aget v2, p1, v0

    iget v3, p2, Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;->channels:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p2, Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;->channels:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v4

    :cond_5
    return v0
.end method

.method hasPassthroughSupportFor(I)Z
    .locals 4
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/AudioOutputManager;->b:Landroid/content/Context;

    invoke-static {v0}, Ldev/cobalt/app/b;->a(Landroid/content/Context;)Ldev/cobalt/app/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasPassthroughSupportFor() called on encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current audio capabilities "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ldev/cobalt/app/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "starboard_media"

    invoke-static {v3, v1, v2}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0, p1}, Ldev/cobalt/app/b;->f(I)Z

    move-result p1

    return p1
.end method
