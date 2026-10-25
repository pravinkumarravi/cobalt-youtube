.class final Ldev/cobalt/app/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/app/c$d;,
        Ldev/cobalt/app/c$c;,
        Ldev/cobalt/app/c$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private final c:Ldev/cobalt/app/c$c;

.field private final d:Landroid/content/BroadcastReceiver;

.field private final e:Landroid/content/ContentResolver;

.field private final f:Ldev/cobalt/app/c$d;

.field private g:Ldev/cobalt/app/b;

.field private h:Ldev/cobalt/app/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldev/cobalt/app/c$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/app/c;->e:Landroid/content/ContentResolver;

    new-instance v1, Ldev/cobalt/app/c$d;

    invoke-direct {v1, p0}, Ldev/cobalt/app/c$d;-><init>(Ldev/cobalt/app/c;)V

    iput-object v1, p0, Ldev/cobalt/app/c;->f:Ldev/cobalt/app/c$d;

    invoke-static {v0}, Ldev/cobalt/app/b;->g(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-object p1, p0, Ldev/cobalt/app/c;->b:Landroid/content/Context;

    iput-object p2, p0, Ldev/cobalt/app/c;->c:Ldev/cobalt/app/c$c;

    const/4 p1, 0x0

    if-nez v0, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-ge p2, v0, :cond_0

    new-instance p2, Ldev/cobalt/app/c$b;

    invoke-direct {p2, p0, p1}, Ldev/cobalt/app/c$b;-><init>(Ldev/cobalt/app/c;Ldev/cobalt/app/c$a;)V

    iput-object p2, p0, Ldev/cobalt/app/c;->d:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ldev/cobalt/app/c;->d:Landroid/content/BroadcastReceiver;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "All AudioDeviceEventReceiver parameters must be valid"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Ldev/cobalt/app/c;)Ldev/cobalt/app/b;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/app/c;->g:Ldev/cobalt/app/b;

    return-object p0
.end method

.method static synthetic b(Ldev/cobalt/app/c;Ldev/cobalt/app/b;)Ldev/cobalt/app/b;
    .locals 0

    iput-object p1, p0, Ldev/cobalt/app/c;->g:Ldev/cobalt/app/b;

    return-object p1
.end method

.method static synthetic c(Ldev/cobalt/app/c;Ldev/cobalt/app/b;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/app/c;->e(Ldev/cobalt/app/b;)V

    return-void
.end method

.method static synthetic d(Ldev/cobalt/app/c;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/app/c;->e:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private e(Ldev/cobalt/app/b;)V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/app/c;->h:Ldev/cobalt/app/b;

    invoke-virtual {p1, v0}, Ldev/cobalt/app/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Ldev/cobalt/app/c;->h:Ldev/cobalt/app/b;

    iget-object v0, p0, Ldev/cobalt/app/c;->c:Ldev/cobalt/app/c$c;

    invoke-interface {v0, p1}, Ldev/cobalt/app/c$c;->a(Ldev/cobalt/app/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public f()Ldev/cobalt/app/b;
    .locals 5

    iget-boolean v0, p0, Ldev/cobalt/app/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/app/c;->h:Ldev/cobalt/app/b;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/app/c;->a:Z

    iget-object v1, p0, Ldev/cobalt/app/c;->b:Landroid/content/Context;

    iget-object v2, p0, Ldev/cobalt/app/c;->d:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Ldev/cobalt/app/c;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Ldev/cobalt/app/b;->b(Landroid/content/Context;Landroid/content/Intent;)Ldev/cobalt/app/b;

    move-result-object v1

    iput-object v1, p0, Ldev/cobalt/app/c;->h:Ldev/cobalt/app/b;

    iput-object v1, p0, Ldev/cobalt/app/c;->g:Ldev/cobalt/app/b;

    iget-object v1, p0, Ldev/cobalt/app/c;->e:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldev/cobalt/app/c;->f:Ldev/cobalt/app/c$d;

    if-eqz v1, :cond_1

    const-string v1, "external_surround_sound_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Ldev/cobalt/app/c;->e:Landroid/content/ContentResolver;

    iget-object v3, p0, Ldev/cobalt/app/c;->f:Ldev/cobalt/app/c$d;

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Ldev/cobalt/app/c;->h:Ldev/cobalt/app/b;

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-boolean v0, p0, Ldev/cobalt/app/c;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/app/c;->a:Z

    iget-object v0, p0, Ldev/cobalt/app/c;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ldev/cobalt/app/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Ldev/cobalt/app/c;->e:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    iget-object v1, p0, Ldev/cobalt/app/c;->f:Ldev/cobalt/app/c$d;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method
