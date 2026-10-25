.class public Lp0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/d$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "d"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lr0/d;

.field private final c:Lu0/b;

.field private final d:Lp0/a;

.field private final e:Landroid/content/SharedPreferences;

.field private f:I

.field private g:Lr0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2}, Lr0/d;->e(Landroid/content/Context;Ljava/lang/String;)Lr0/d;

    move-result-object v4

    const-string v5, "https://arcus-uswest.amazon.com"

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lp0/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lr0/d;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lr0/d;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lp0/d;->f:I

    new-instance v1, Lr0/a;

    invoke-direct {v1}, Lr0/a;-><init>()V

    iput-object v1, p0, Lp0/d;->g:Lr0/a;

    const-string v1, "appContext cannot be null"

    invoke-static {p1, v1}, Ls0/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appConfigId cannot be null"

    invoke-static {p2, v1}, Ls0/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lp0/d;->l(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p2, p0, Lp0/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Lp0/d;->e()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p5

    iput-object p5, p0, Lp0/d;->e:Landroid/content/SharedPreferences;

    new-instance p5, Lr0/c;

    invoke-direct {p5, p1}, Lr0/c;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lp0/d;->d:Lp0/a;

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result p5

    iput p5, p0, Lp0/d;->f:I

    iput-object p4, p0, Lp0/d;->b:Lr0/d;

    new-instance p5, Lu0/a;

    invoke-direct {p5, p1, v1}, Lu0/a;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    iput-object p5, p0, Lp0/d;->c:Lu0/b;

    if-eqz p3, :cond_2

    invoke-virtual {p4, p2}, Lr0/d;->i(Ljava/lang/String;)Lt0/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lt0/a;->d()I

    move-result p1

    const/4 p5, 0x1

    if-ne p1, p5, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lp0/d;->h:Ljava/lang/String;

    const-string p2, "Skipping default configuration saving"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lp0/d;->h:Ljava/lang/String;

    const-string p5, "Saving default configuration"

    invoke-static {p1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lt0/b;

    new-instance v1, Lr0/e;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, p3, p5}, Lr0/e;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lt0/b;-><init>(Lp0/b;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {p4, p1}, Lr0/d;->l(Lt0/a;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid endpoint"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private constructor <init>(Lp0/d$b;)V
    .locals 2

    invoke-static {p1}, Lp0/d$b;->a(Lp0/d$b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lp0/d$b;->b(Lp0/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lp0/d$b;->c(Lp0/d$b;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lp0/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method synthetic constructor <init>(Lp0/d$b;Lp0/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lp0/d;-><init>(Lp0/d$b;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lp0/d;->l(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lp0/d;Lp0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lp0/d;->j(Lp0/c;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lp0/d$b;
    .locals 1

    new-instance v0, Lp0/d$b;

    invoke-direct {v0, p0, p1}, Lp0/d$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lp0/d;->e:Landroid/content/SharedPreferences;

    const-string v1, "localConfigurationInstanceId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls0/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lp0/d;->h(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lp0/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "configuration.prefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lp0/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "localConfigurationInstanceId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private declared-synchronized j(Lp0/c;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp0/d;->d:Lp0/a;

    invoke-interface {v0}, Lp0/a;->clone()Lp0/a;

    move-result-object v0

    iget-object v1, p0, Lp0/d;->g:Lr0/a;

    invoke-virtual {v1}, Lr0/a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lp0/d;->g:Lr0/a;

    invoke-virtual {v1}, Lr0/a;->a()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget v1, p0, Lp0/d;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lp0/d;->g:Lr0/a;

    invoke-virtual {v0}, Lr0/a;->d()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lp0/c;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lp0/d;->b:Lr0/d;

    iget-object v2, p0, Lp0/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr0/d;->i(Ljava/lang/String;)Lt0/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lt0/a;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Lp0/d;->d()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lp0/d;->c:Lu0/b;

    iget-object v5, p0, Lp0/d;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v2, v3}, Lu0/b;->a(Ljava/lang/String;Lp0/a;Ljava/lang/String;Ljava/lang/String;)Lt0/a;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lp0/d;->f:I

    iget-object v0, p0, Lp0/d;->g:Lr0/a;

    invoke-virtual {v0}, Lr0/a;->g()V

    invoke-interface {v2}, Lt0/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lp0/d;->b:Lr0/d;

    invoke-virtual {v0, v2}, Lr0/d;->l(Lt0/a;)V

    invoke-interface {v2}, Lt0/a;->b()Lp0/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lp0/c;->b(Lp0/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    invoke-interface {v1}, Lt0/a;->b()Lp0/b;

    move-result-object v0

    invoke-interface {v0}, Lp0/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lt0/b;

    new-instance v3, Lr0/e;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v3, v0, v2}, Lr0/e;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-interface {v1}, Lt0/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lt0/a;->d()I

    move-result v5

    invoke-interface {v1}, Lt0/a;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lt0/b;-><init>(Lp0/b;Ljava/lang/String;ILjava/lang/String;Z)V

    iget-object v0, p0, Lp0/d;->b:Lr0/d;

    invoke-virtual {v0, v8}, Lr0/d;->l(Lt0/a;)V

    invoke-interface {v8}, Lt0/a;->b()Lp0/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lp0/c;->c(Lp0/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lp0/d;->g:Lr0/a;

    invoke-virtual {v1}, Lr0/a;->f()V

    invoke-interface {p1, v0}, Lp0/c;->d(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private k(Lp0/c;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lp0/d$a;

    invoke-direct {v1, p0, p1}, Lp0/d$a;-><init>(Lp0/d;Lp0/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private static l(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lr0/b;->a(Ljava/lang/String;)Lr0/b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lq0/b;

    const-string v0, "Invalid appConfigId ARN."

    invoke-direct {p0, v0}, Lq0/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public f()Lp0/a;
    .locals 1

    iget-object v0, p0, Lp0/d;->d:Lp0/a;

    return-object v0
.end method

.method public g()Lp0/b;
    .locals 1

    iget-object v0, p0, Lp0/d;->b:Lr0/d;

    invoke-virtual {v0}, Lr0/d;->h()Lp0/b;

    move-result-object v0

    return-object v0
.end method

.method public i(Lp0/c;)V
    .locals 1

    const-string v0, "ConfigurationSyncCallback cannot be null"

    invoke-static {p1, v0}, Ls0/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lp0/d;->k(Lp0/c;)V

    return-void
.end method
