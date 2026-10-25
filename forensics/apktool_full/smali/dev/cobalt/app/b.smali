.class public final Ldev/cobalt/app/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ldev/cobalt/app/b;

.field private static final e:Ldev/cobalt/app/b;

.field public static final f:Ldev/cobalt/app/b;


# instance fields
.field private final a:[I

.field private final b:I

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldev/cobalt/app/b;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    invoke-direct {v0, v2, v4, v1}, Ldev/cobalt/app/b;-><init>([IIZ)V

    sput-object v0, Ldev/cobalt/app/b;->d:Ldev/cobalt/app/b;

    new-instance v0, Ldev/cobalt/app/b;

    new-array v2, v1, [I

    aput v4, v2, v3

    invoke-direct {v0, v2, v4, v3}, Ldev/cobalt/app/b;-><init>([IIZ)V

    sput-object v0, Ldev/cobalt/app/b;->e:Ldev/cobalt/app/b;

    new-instance v0, Ldev/cobalt/app/b;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Ldev/cobalt/app/b;-><init>([IIZ)V

    sput-object v0, Ldev/cobalt/app/b;->f:Ldev/cobalt/app/b;

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x6
    .end array-data
.end method

.method constructor <init>([IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/app/b;->a:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput v0, p1, v0

    iput-object p1, p0, Ldev/cobalt/app/b;->a:[I

    :goto_0
    iput p2, p0, Ldev/cobalt/app/b;->b:I

    iput-boolean p3, p0, Ldev/cobalt/app/b;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ldev/cobalt/app/b;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/cobalt/app/b;->b(Landroid/content/Context;Landroid/content/Intent;)Ldev/cobalt/app/b;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;Landroid/content/Intent;)Ldev/cobalt/app/b;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Ldev/cobalt/app/b;->g(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-static {p0}, Ldev/cobalt/app/b;->e(Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    sget-object p0, Ldev/cobalt/app/b;->f:Ldev/cobalt/app/b;

    goto :goto_0

    :cond_0
    sget-object p0, Ldev/cobalt/app/b;->d:Ldev/cobalt/app/b;

    :goto_0
    return-object p0

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Ldev/cobalt/app/b;->d:Ldev/cobalt/app/b;

    return-object p0

    :cond_2
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Ldev/cobalt/app/b;->e:Ldev/cobalt/app/b;

    return-object p0

    :cond_3
    new-instance p0, Ldev/cobalt/app/b;

    const-string v1, "android.media.extra.ENCODINGS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, v0}, Ldev/cobalt/app/b;-><init>([IIZ)V

    return-object p0
.end method

.method public static e(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string v0, "external_surround_sound_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static g(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string v0, "use_external_surround_sound_flag"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Ldev/cobalt/app/b;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ldev/cobalt/app/b;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldev/cobalt/app/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldev/cobalt/app/b;

    iget-object v1, p0, Ldev/cobalt/app/b;->a:[I

    iget-object v3, p1, Ldev/cobalt/app/b;->a:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Ldev/cobalt/app/b;->b:I

    iget v3, p1, Ldev/cobalt/app/b;->b:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Ldev/cobalt/app/b;->c:Z

    iget-boolean p1, p1, Ldev/cobalt/app/b;->c:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f(I)Z
    .locals 1

    iget-object v0, p0, Ldev/cobalt/app/b;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ldev/cobalt/app/b;->b:I

    iget-object v1, p0, Ldev/cobalt/app/b;->a:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Ldev/cobalt/app/b;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/16 v1, 0x23b

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldev/cobalt/app/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldev/cobalt/app/b;->a:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sinkConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ldev/cobalt/app/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
