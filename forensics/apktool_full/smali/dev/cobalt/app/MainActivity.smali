.class public Ldev/cobalt/app/MainActivity;
.super Ldev/cobalt/coat/CobaltActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/app/MainActivity$f;,
        Ldev/cobalt/app/MainActivity$d;,
        Ldev/cobalt/app/MainActivity$e;
    }
.end annotation


# static fields
.field private static final W:Ljava/lang/String; = "MainActivity"


# instance fields
.field private K:Z

.field private L:Z

.field private volatile M:Z

.field private N:Z

.field private O:Ldev/cobalt/app/c;

.field private P:Z

.field private Q:Landroid/os/CountDownTimer;

.field R:Lv1/b;

.field S:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

.field T:Ldev/cobalt/app/MainActivity$f;

.field final U:Lm0/a;

.field final V:Lt1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/app/MainActivity;->K:Z

    iput-boolean v0, p0, Ldev/cobalt/app/MainActivity;->L:Z

    iput-boolean v0, p0, Ldev/cobalt/app/MainActivity;->M:Z

    iput-boolean v0, p0, Ldev/cobalt/app/MainActivity;->N:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/app/MainActivity;->P:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/cobalt/app/MainActivity;->Q:Landroid/os/CountDownTimer;

    iput-object v0, p0, Ldev/cobalt/app/MainActivity;->S:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    iput-object v0, p0, Ldev/cobalt/app/MainActivity;->T:Ldev/cobalt/app/MainActivity$f;

    new-instance v0, Ldev/cobalt/app/MainActivity$c;

    invoke-direct {v0, p0}, Ldev/cobalt/app/MainActivity$c;-><init>(Ldev/cobalt/app/MainActivity;)V

    iput-object v0, p0, Ldev/cobalt/app/MainActivity;->U:Lm0/a;

    new-instance v0, Lt1/l;

    invoke-direct {v0, p0}, Lt1/l;-><init>(Ldev/cobalt/app/MainActivity;)V

    iput-object v0, p0, Ldev/cobalt/app/MainActivity;->V:Lt1/k;

    return-void
.end method

.method private declared-synchronized A0()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldev/cobalt/app/MainActivity;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ldev/cobalt/app/MainActivity;->L:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldev/cobalt/app/MainActivity;->N:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/app/MainActivity;->M:Z

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/coat/StarboardBridge;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private B0()V
    .locals 3

    new-instance v0, Ldev/cobalt/app/MainActivity$f;

    invoke-direct {v0, p0}, Ldev/cobalt/app/MainActivity$f;-><init>(Ldev/cobalt/app/MainActivity;)V

    iput-object v0, p0, Ldev/cobalt/app/MainActivity;->T:Ldev/cobalt/app/MainActivity$f;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.amazon.firetv.youtube.STOP_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Ldev/cobalt/app/MainActivity;->T:Ldev/cobalt/app/MainActivity$f;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic j0(Ldev/cobalt/app/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/app/MainActivity;->y0()V

    return-void
.end method

.method public static synthetic k0(Ldev/cobalt/app/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/app/MainActivity;->z0()V

    return-void
.end method

.method static synthetic l0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;
    .locals 0

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;
    .locals 0

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;
    .locals 0

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;
    .locals 0

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p0(Ldev/cobalt/app/MainActivity;Ldev/cobalt/app/b;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/app/MainActivity;->x0(Ldev/cobalt/app/b;)V

    return-void
.end method

.method static synthetic q0(Ldev/cobalt/app/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldev/cobalt/app/MainActivity;->P:Z

    return p1
.end method

.method static synthetic r0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;
    .locals 0

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s0()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldev/cobalt/app/MainActivity;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t0(Ldev/cobalt/app/MainActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Ldev/cobalt/app/MainActivity;->Q:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic u0(Ldev/cobalt/app/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldev/cobalt/app/MainActivity;->N:Z

    return p1
.end method

.method static synthetic v0(Ldev/cobalt/app/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/app/MainActivity;->A0()V

    return-void
.end method

.method private w0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mode"

    const-string v2, "hospitality"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    sget-object v1, Ldev/cobalt/app/MainActivity;->W:Ljava/lang/String;

    const-string v2, "Failed to append hotel mode parameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private x0(Ldev/cobalt/app/b;)V
    .locals 8

    invoke-virtual {p1}, Ldev/cobalt/app/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/cobalt/app/MainActivity;->P:Z

    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->Q:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ldev/cobalt/app/MainActivity;->W:Ljava/lang/String;

    const-string v1, "Event: HDMI is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldev/cobalt/coat/StarboardBridge;->j(Z)V

    return-void

    :cond_1
    iget-boolean v0, p0, Ldev/cobalt/app/MainActivity;->P:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->Q:Landroid/os/CountDownTimer;

    if-nez v0, :cond_2

    new-instance v0, Ldev/cobalt/app/MainActivity$b;

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->i()I

    move-result v1

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Ldev/cobalt/app/MainActivity$b;-><init>(Ldev/cobalt/app/MainActivity;JJLdev/cobalt/app/b;)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/app/MainActivity;->Q:Landroid/os/CountDownTimer;

    :cond_2
    return-void
.end method

.method private synthetic y0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/app/MainActivity;->L:Z

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->getHasYouTubeRemoteButton()Z

    move-result v0

    invoke-static {v0}, Ln0/v;->c(Z)V

    invoke-direct {p0}, Ldev/cobalt/app/MainActivity;->A0()V

    return-void
.end method

.method private synthetic z0()V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->S:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-virtual {v0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e()V

    return-void
.end method


# virtual methods
.method protected X([Ljava/lang/String;Ljava/lang/String;)Ldev/cobalt/coat/StarboardBridge;
    .locals 8

    new-instance v2, Lv1/d;

    invoke-direct {v2}, Lv1/d;-><init>()V

    new-instance v3, Lv1/d;

    invoke-direct {v3}, Lv1/d;-><init>()V

    new-instance v0, Ldev/cobalt/app/MainActivity$a;

    invoke-direct {v0, p0}, Ldev/cobalt/app/MainActivity$a;-><init>(Ldev/cobalt/app/MainActivity;)V

    new-instance v7, Ldev/cobalt/coat/StarboardBridge;

    new-instance v4, Ldev/cobalt/coat/d;

    invoke-direct {v4}, Ldev/cobalt/coat/d;-><init>()V

    move-object v0, v7

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ldev/cobalt/coat/StarboardBridge;-><init>(Landroid/content/Context;Lv1/d;Lv1/d;Ldev/cobalt/coat/c;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lu1/b;

    invoke-direct {p1}, Lu1/b;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu1/b;->a(Landroid/content/Context;)Ldev/cobalt/coat/CobaltService$a;

    move-result-object p1

    invoke-virtual {v7, p1}, Ldev/cobalt/coat/StarboardBridge;->m(Ldev/cobalt/coat/CobaltService$a;)V

    new-instance p1, Lm0/b;

    invoke-direct {p1}, Lm0/b;-><init>()V

    invoke-virtual {p1, p0, v7}, Lm0/b;->a(Landroid/content/Context;Ldev/cobalt/coat/StarboardBridge;)V

    return-object v7
.end method

.method protected b0()[Ljava/lang/String;
    .locals 6

    invoke-super {p0}, Ldev/cobalt/coat/CobaltActivity;->b0()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->r()Z

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->getHasYouTubeRemoteButton()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    const-string v3, "--url="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "utm_medium="

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "utm_medium"

    const-string v5, "ytb"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected c0(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Ldev/cobalt/app/MainActivity;->K:Z

    invoke-static {p1, v0, p0}, Ln0/v;->b(Landroid/content/Intent;ZLandroid/content/Context;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p1, Ldev/cobalt/app/MainActivity;->W:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launched with deep-link URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Ldev/cobalt/app/MainActivity;->W:Ljava/lang/String;

    const-string v1, "Launched with standard navigation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Ldev/cobalt/coat/CobaltActivity;->c0(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lo0/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Ldev/cobalt/app/MainActivity;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ldev/cobalt/app/MainActivity;->W:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hotel mode detected, URL modified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Lt1/f;->q()Lt1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lt1/f;->A(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/google/androidgamesdk/GameActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->V:Lt1/k;

    invoke-static {p0, v0}, Ldev/cobalt/app/AmazonDeviceInfo;->o(Landroid/content/Context;Lt1/k;)Ldev/cobalt/app/AmazonDeviceInfo;

    invoke-super {p0, p1}, Ldev/cobalt/coat/CobaltActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Ldev/cobalt/app/MainActivity;->U:Lm0/a;

    invoke-static {p0, p1}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->k(Landroid/content/Context;Lm0/a;)Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/app/MainActivity;->S:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lt1/m;

    invoke-direct {v0, p0}, Lt1/m;-><init>(Ldev/cobalt/app/MainActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    new-instance p1, Ldev/cobalt/app/MainActivity$d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ldev/cobalt/app/MainActivity$d;-><init>(Ldev/cobalt/app/MainActivity;Ldev/cobalt/app/MainActivity$a;)V

    new-instance v1, Ldev/cobalt/app/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ldev/cobalt/app/c;-><init>(Landroid/content/Context;Ldev/cobalt/app/c$c;)V

    iput-object v1, p0, Ldev/cobalt/app/MainActivity;->O:Ldev/cobalt/app/c;

    new-instance p1, Lv1/b;

    invoke-direct {p1, p0}, Lv1/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ldev/cobalt/app/MainActivity;->R:Lv1/b;

    new-instance v1, Ldev/cobalt/app/MainActivity$e;

    invoke-direct {v1, p0, v0}, Ldev/cobalt/app/MainActivity$e;-><init>(Ldev/cobalt/app/MainActivity;Ldev/cobalt/app/MainActivity$a;)V

    invoke-virtual {p1, v1}, Lv1/b;->d(Lv1/b$c;)V

    invoke-direct {p0}, Ldev/cobalt/app/MainActivity;->B0()V

    sget-object p1, Ldev/cobalt/app/MainActivity;->W:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Youtube "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "primary"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " application version is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "25.50.r1.v182.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->R:Lv1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv1/b;->h()V

    iput-object v1, p0, Ldev/cobalt/app/MainActivity;->R:Lv1/b;

    :cond_0
    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->T:Ldev/cobalt/app/MainActivity$f;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Ldev/cobalt/app/MainActivity;->T:Ldev/cobalt/app/MainActivity$f;

    :cond_1
    invoke-super {p0}, Ldev/cobalt/coat/CobaltActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/app/MainActivity;->K:Z

    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Ldev/cobalt/coat/CobaltActivity;->onStart()V

    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->O:Ldev/cobalt/app/c;

    invoke-virtual {v0}, Ldev/cobalt/app/c;->f()Ldev/cobalt/app/b;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/cobalt/app/MainActivity;->x0(Ldev/cobalt/app/b;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Ldev/cobalt/coat/CobaltActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/app/MainActivity;->K:Z

    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->S:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->S:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-virtual {v0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->h()V

    :cond_0
    iget-object v0, p0, Ldev/cobalt/app/MainActivity;->O:Ldev/cobalt/app/c;

    invoke-virtual {v0}, Ldev/cobalt/app/c;->g()V

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->getDeviceInfoNeedsBackButton()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lt1/f;->q()Lt1/f;

    move-result-object v0

    invoke-virtual {v0}, Lt1/f;->x()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->getDeviceInfoNeedsBackButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lt1/f;->q()Lt1/f;

    move-result-object v0

    invoke-virtual {v0}, Lt1/f;->z()V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/androidgamesdk/GameActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
