.class Ldev/cobalt/media/AudioOutputManager$a;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/media/AudioOutputManager;->createAudioTrackBridge(IIIIIZ)Ldev/cobalt/media/AudioTrackBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Ldev/cobalt/media/AudioOutputManager;


# direct methods
.method constructor <init>(Ldev/cobalt/media/AudioOutputManager;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/media/AudioOutputManager$a;->b:Ldev/cobalt/media/AudioOutputManager;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/cobalt/media/AudioOutputManager$a;->a:Z

    return-void
.end method

.method private a([Landroid/media/AudioDeviceInfo;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ldev/cobalt/media/AudioOutputManager;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "starboard_media"

    const-string v2, "Setting |hasAudioDeviceChanged| to true for audio device %s, %s."

    invoke-static {v0, v2, p1}, Lv1/f;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Ldev/cobalt/media/AudioOutputManager$a;->b:Ldev/cobalt/media/AudioOutputManager;

    iget-object p1, p1, Ldev/cobalt/media/AudioOutputManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-boolean v2, p0, Ldev/cobalt/media/AudioOutputManager$a;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "starboard_media"

    const-string v3, "onAudioDevicesAdded() called, |initialDevicesAdded| is: %b."

    invoke-static {v2, v3, v1}, Lv1/f;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-boolean v1, p0, Ldev/cobalt/media/AudioOutputManager$a;->a:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Ldev/cobalt/media/AudioOutputManager$a;->a([Landroid/media/AudioDeviceInfo;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Ldev/cobalt/media/AudioOutputManager$a;->a:Z

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starboard_media"

    const-string v2, "onAudioDevicesRemoved() called."

    invoke-static {v1, v2, v0}, Lv1/f;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0, p1}, Ldev/cobalt/media/AudioOutputManager$a;->a([Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
