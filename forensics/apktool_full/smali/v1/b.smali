.class public Lv1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv1/b$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/hardware/display/DisplayManager;

.field private d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv1/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv1/b;->a:Z

    iput v0, p0, Lv1/b;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv1/b;->e:Ljava/util/List;

    iput-object p1, p0, Lv1/b;->b:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "vendor.intent.ACTION_SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "vendor.intent.ACTION_SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lv1/b$a;

    invoke-direct {v1, p0}, Lv1/b$a;-><init>(Lv1/b;)V

    iput-object v1, p0, Lv1/b;->g:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v2}, Lv1/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lv1/b;->c:Landroid/hardware/display/DisplayManager;

    new-instance p1, Lv1/b$b;

    invoke-direct {p1, p0}, Lv1/b$b;-><init>(Lv1/b;)V

    iput-object p1, p0, Lv1/b;->f:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v0, p0, Lv1/b;->c:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lv1/b;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lv1/b;->g(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lv1/b;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lv1/b;->c:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic c(Lv1/b;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0, p1}, Lv1/b;->e(Landroid/view/Display;)V

    return-void
.end method

.method private e(Landroid/view/Display;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lv1/b;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "DisplayStateMonitor"

    const-string v0, "Ignoring Display callback before receiving any broadcast"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const-string v0, "DisplayStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const-string v4, "ON"

    goto :goto_0

    :cond_1
    const-string v4, "OFF"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lv1/b;->f(I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private f(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lv1/b;->d:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lv1/b;->d:I

    const-string v0, "DisplayStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying listeners that display state changed, new state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "ON"

    goto :goto_0

    :cond_0
    const-string v2, "OFF"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lv1/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/b$c;

    invoke-interface {v1, p1}, Lv1/b$c;->a(I)V

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private g(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "DisplayStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBroadcastReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    const-string v0, "vendor.intent.ACTION_SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lv1/b;->a:Z

    goto :goto_0

    :cond_1
    const-string v0, "vendor.intent.ACTION_SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lv1/b;->a:Z

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "vendor.intent.ACTION_SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lv1/b;->f(I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public d(Lv1/b$c;)V
    .locals 2

    iget-object v0, p0, Lv1/b;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv1/b;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv1/b;->c:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lv1/b;->f:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/b;->c:Landroid/hardware/display/DisplayManager;

    :cond_0
    iget-object v0, p0, Lv1/b;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lv1/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "DisplayStateMonitor"

    const-string v3, "Error unregistering broadcast receiver"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lv1/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "DisplayStateMonitor"

    const-string v2, "DisplayStateMonitor released"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
