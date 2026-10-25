.class public Ldev/cobalt/coat/NetworkStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/coat/NetworkStatus$b;
    }
.end annotation


# instance fields
.field private a:Landroid/net/ConnectivityManager$NetworkCallback;

.field private b:Landroid/net/ConnectivityManager;

.field private final c:Landroid/os/Handler;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/cobalt/coat/NetworkStatus;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldev/cobalt/coat/NetworkStatus;->d:Z

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Ldev/cobalt/coat/NetworkStatus;->b:Landroid/net/ConnectivityManager;

    const-string p1, "Opening NetworkStatus"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "starboard"

    invoke-static {v2, p1, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Ldev/cobalt/coat/NetworkStatus$b;

    invoke-direct {p1, p0, v0}, Ldev/cobalt/coat/NetworkStatus$b;-><init>(Ldev/cobalt/coat/NetworkStatus;Landroid/os/Handler;)V

    iput-object p1, p0, Ldev/cobalt/coat/NetworkStatus;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v0, p0, Ldev/cobalt/coat/NetworkStatus;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/cobalt/coat/NetworkStatus;->d:Z

    return-void
.end method

.method static synthetic a(Ldev/cobalt/coat/NetworkStatus;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/coat/NetworkStatus;->f(Z)V

    return-void
.end method

.method private f(Z)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/coat/NetworkStatus;->nativeOnNetworkStatusChange(Z)V

    return-void
.end method

.method private native nativeOnNetworkStatusChange(Z)V
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/NetworkStatus;->b:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ldev/cobalt/coat/NetworkStatus;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ldev/cobalt/coat/NetworkStatus;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/NetworkStatus;->d:Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/NetworkStatus;->b:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ldev/cobalt/coat/NetworkStatus;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/cobalt/coat/NetworkStatus;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/coat/NetworkStatus;->d:Z

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 4

    iget-object v0, p0, Ldev/cobalt/coat/NetworkStatus;->b:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/NetworkStatus;->c:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/NetworkStatus$a;

    invoke-direct {v1, p0, p1}, Ldev/cobalt/coat/NetworkStatus$a;-><init>(Ldev/cobalt/coat/NetworkStatus;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
