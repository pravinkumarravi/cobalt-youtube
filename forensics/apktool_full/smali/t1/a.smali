.class public Lt1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String; = "arn:aws:remote-config:us-west-2:644465845181:appConfig:aidxguz3"


# instance fields
.field private a:Z

.field private final b:Lt1/k;

.field private final c:Landroid/content/Context;

.field private d:Lp0/d;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:I

.field private h:Lp0/d;

.field private i:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lt1/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt1/a;->a:Z

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lt1/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lt1/a;->e:Ljava/lang/String;

    iput-object p3, p0, Lt1/a;->f:Ljava/lang/String;

    iput-object p4, p0, Lt1/a;->b:Lt1/k;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lt1/a$a;

    invoke-direct {p2, p0}, Lt1/a$a;-><init>(Lt1/a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AmazonCloud9Manager parameter missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lt1/a;Lp0/d;)Lp0/d;
    .locals 0

    iput-object p1, p0, Lt1/a;->d:Lp0/d;

    return-object p1
.end method

.method static synthetic b(Lt1/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lt1/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lt1/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lt1/a;)Z
    .locals 0

    iget-boolean p0, p0, Lt1/a;->a:Z

    return p0
.end method

.method static synthetic e(Lt1/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lt1/a;->i:Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public f(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lt1/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt1/a;->j()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt1/a;->h:Lp0/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Lt1/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lt1/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lp0/d;->c(Landroid/content/Context;Ljava/lang/String;)Lp0/d$b;

    move-result-object p1

    invoke-virtual {p1}, Lp0/d$b;->d()Lp0/d;

    move-result-object p1

    iput-object p1, p0, Lt1/a;->h:Lp0/d;

    :cond_1
    iget-object p1, p0, Lt1/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lt1/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lt1/a;->h:Lp0/d;

    invoke-virtual {p1}, Lp0/d;->f()Lp0/a;

    move-result-object p1

    const-string v0, "oemmodel"

    iget-object v1, p0, Lt1/a;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lp0/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lt1/a;->h:Lp0/d;

    new-instance v0, Lt1/a$d;

    invoke-direct {v0, p0}, Lt1/a$d;-><init>(Lt1/a;)V

    invoke-virtual {p1, v0}, Lp0/d;->i(Lp0/c;)V

    :goto_0
    return-void
.end method

.method public g()Z
    .locals 5

    iget-object v0, p0, Lt1/a;->d:Lp0/d;

    invoke-virtual {v0}, Lp0/d;->g()Lp0/b;

    move-result-object v0

    invoke-interface {v0}, Lp0/b;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lt1/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "resyncThreshold"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lt1/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5a0

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lt1/a;->g:I

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lt1/a;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lp0/d;->c(Landroid/content/Context;Ljava/lang/String;)Lp0/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lp0/d$b;->d()Lp0/d;

    move-result-object v0

    iput-object v0, p0, Lt1/a;->h:Lp0/d;

    invoke-virtual {v0}, Lp0/d;->g()Lp0/b;

    move-result-object v0

    invoke-interface {v0}, Lp0/b;->b()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lt1/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public h()V
    .locals 6

    const-string v0, "Using cached Arcus Configuration"

    const-string v1, "YouTubeCloud9Mgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lt1/a;->i()V

    iget-object v0, p0, Lt1/a;->h:Lp0/d;

    invoke-virtual {v0}, Lp0/d;->g()Lp0/b;

    move-result-object v0

    invoke-interface {v0}, Lp0/b;->c()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration Age in Minutes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lt1/a;->g:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lt1/a$b;

    invoke-direct {v1, p0}, Lt1/a$b;-><init>(Lt1/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-boolean v0, p0, Lt1/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lt1/a;->a:Z

    iget-object v0, p0, Lt1/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "YouTubeCloud9Mgr"

    const-string v1, "Got empty Configuration on Arcus, initializing with defaults"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->q()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lt1/a;->i:Lorg/json/JSONObject;

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo;->p(Lorg/json/JSONObject;)V

    :goto_0
    iget-object v0, p0, Lt1/a;->b:Lt1/k;

    invoke-interface {v0}, Lt1/k;->a()V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "YouTubeCloud9Mgr"

    const-string v1, "init With Defaults!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lt1/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lt1/a;->a:Z

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->q()V

    iget-object v0, p0, Lt1/a;->b:Lt1/k;

    invoke-interface {v0}, Lt1/k;->a()V

    return-void
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lt1/a;->d:Lp0/d;

    invoke-virtual {v0}, Lp0/d;->f()Lp0/a;

    move-result-object v0

    const-string v1, "model"

    iget-object v2, p0, Lt1/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lp0/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lt1/a;->d:Lp0/d;

    new-instance v1, Lt1/a$c;

    invoke-direct {v1, p0}, Lt1/a$c;-><init>(Lt1/a;)V

    invoke-virtual {v0, v1}, Lp0/d;->i(Lp0/c;)V

    return-void
.end method
