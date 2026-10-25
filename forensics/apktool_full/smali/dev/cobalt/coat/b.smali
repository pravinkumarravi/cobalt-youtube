.class public Ldev/cobalt/coat/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Landroid/content/ContentResolver;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/coat/b;->c:Z

    const-string v0, ""

    iput-object v0, p0, Ldev/cobalt/coat/b;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/coat/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/coat/b;->b:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Ldev/cobalt/coat/b;->e()V

    return-void
.end method

.method public static synthetic a(Ldev/cobalt/coat/b;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/b;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    invoke-virtual {p0}, Ldev/cobalt/coat/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/coat/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldev/cobalt/coat/b;->b:Landroid/content/ContentResolver;

    const-string v1, "advertising_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/coat/b;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ldev/cobalt/coat/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "starboard"

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/cobalt/coat/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Successfully retrieved Advertising ID (IfA)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/b;->d:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Failed to retrieve Advertising ID (IfA)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, ""

    return-object v0
.end method

.method public c()Z
    .locals 5

    const-string v0, "starboard"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ldev/cobalt/coat/b;->b:Landroid/content/ContentResolver;

    const-string v4, "limit_ad_tracking"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Ldev/cobalt/coat/b;->c:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning IfA LimitedAdTrackingEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ldev/cobalt/coat/b;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-boolean v0, p0, Ldev/cobalt/coat/b;->c:Z

    return v0

    :catch_0
    const-string v3, "Failed to retrieve IfA Limited Ads Tracking property."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/cobalt/coat/a;

    invoke-direct {v1, p0}, Ldev/cobalt/coat/a;-><init>(Ldev/cobalt/coat/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
