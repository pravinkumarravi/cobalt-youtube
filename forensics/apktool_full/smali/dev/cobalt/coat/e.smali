.class public Ldev/cobalt/coat/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/coat/e$b;,
        Ldev/cobalt/coat/e$c;
    }
.end annotation


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:Ljava/lang/String;

.field private volatile c:Landroid/graphics/Bitmap;

.field private final d:Landroid/os/Handler;

.field private final e:Ldev/cobalt/coat/c;

.field private final f:Ldev/cobalt/coat/e$b;


# direct methods
.method public constructor <init>(Ldev/cobalt/coat/e$b;Ldev/cobalt/coat/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ldev/cobalt/coat/e;->a:Ljava/lang/String;

    iput-object v0, p0, Ldev/cobalt/coat/e;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/cobalt/coat/e;->c:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/cobalt/coat/e;->d:Landroid/os/Handler;

    iput-object p1, p0, Ldev/cobalt/coat/e;->f:Ldev/cobalt/coat/e$b;

    iput-object p2, p0, Ldev/cobalt/coat/e;->e:Ldev/cobalt/coat/c;

    return-void
.end method

.method static synthetic a(Ldev/cobalt/coat/e;)Ldev/cobalt/coat/e$b;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/e;->f:Ldev/cobalt/coat/e$b;

    return-object p0
.end method

.method static synthetic b(Ldev/cobalt/coat/e;)Ldev/cobalt/coat/c;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/e;->e:Ldev/cobalt/coat/c;

    return-object p0
.end method

.method private d([Ldev/cobalt/coat/MediaImage;Landroid/util/Size;)Ldev/cobalt/coat/MediaImage;
    .locals 8

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v2, p1

    const v3, 0x7fffffff

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, p1, v0

    invoke-direct {p0, v4}, Ldev/cobalt/coat/e;->g(Ldev/cobalt/coat/MediaImage;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int/2addr v7, v5

    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    if-ge v6, v3, :cond_1

    move-object v1, v4

    move v3, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Ldev/cobalt/coat/MediaImage;)Landroid/util/Size;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p1, p1, Ldev/cobalt/coat/MediaImage;->b:Ljava/lang/String;

    const-string v1, "\\s+"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p1, v2, v1, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public declared-synchronized e([Ldev/cobalt/coat/MediaImage;)Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->k()Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldev/cobalt/coat/e;->d([Ldev/cobalt/coat/MediaImage;Landroid/util/Size;)Ldev/cobalt/coat/MediaImage;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ldev/cobalt/coat/MediaImage;->a:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Ldev/cobalt/coat/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ldev/cobalt/coat/e;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget-object v0, p0, Ldev/cobalt/coat/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_2
    iput-object p1, p0, Ldev/cobalt/coat/e;->a:Ljava/lang/String;

    new-instance v0, Ldev/cobalt/coat/e$c;

    invoke-direct {v0, p0, p1, p0}, Ldev/cobalt/coat/e$c;-><init>(Ldev/cobalt/coat/e;Ljava/lang/String;Ldev/cobalt/coat/e;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v1, p0, Ldev/cobalt/coat/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iput-object v1, p0, Ldev/cobalt/coat/e;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object v0, p0, Ldev/cobalt/coat/e;->b:Ljava/lang/String;

    iput-object p1, p0, Ldev/cobalt/coat/e;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Ldev/cobalt/coat/e;->d:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/e$a;

    invoke-direct {v1, p0, p1}, Ldev/cobalt/coat/e$a;-><init>(Ldev/cobalt/coat/e;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
