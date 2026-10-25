.class public Ln0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z = false

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln0/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    new-array v1, v1, [Ln0/p;

    new-instance v2, Ln0/m;

    invoke-direct {v2}, Ln0/m;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ln0/j;

    invoke-direct {v2}, Ln0/j;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ln0/l;

    invoke-direct {v2}, Ln0/l;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ln0/r;

    invoke-direct {v2}, Ln0/r;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ln0/n;

    invoke-direct {v2}, Ln0/n;-><init>()V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Ln0/t;

    invoke-direct {v2}, Ln0/t;-><init>()V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Ln0/e;

    invoke-direct {v2}, Ln0/e;-><init>()V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Ln0/g;

    invoke-direct {v2}, Ln0/g;-><init>()V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Ln0/q;

    invoke-direct {v2}, Ln0/q;-><init>()V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Ln0/c;

    invoke-direct {v2}, Ln0/c;-><init>()V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Ln0/b;

    invoke-direct {v2}, Ln0/b;-><init>()V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Ln0/a;

    invoke-direct {v2}, Ln0/a;-><init>()V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Ln0/h;

    invoke-direct {v2}, Ln0/h;-><init>()V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ln0/v;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/net/URL;)Ljava/net/URL;
    .locals 3

    if-eqz p0, :cond_2

    sget-boolean v0, Ln0/v;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "utm_medium"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "ytb"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "YouTubeUrlGenerator"

    const-string v2, "Error appending utm_medium to URL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Intent;ZLandroid/content/Context;)Ljava/net/URL;
    .locals 3

    sget-boolean v0, Ln0/v;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->getHasYouTubeRemoteButton()Z

    move-result v0

    sput-boolean v0, Ln0/v;->a:Z

    :cond_0
    sget-object v0, Ln0/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/p;

    invoke-virtual {v1, p0}, Ln0/p;->b(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ln0/p;->f(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln0/p;->e(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Ln0/p;->c(Landroid/content/Intent;)Ljava/net/URL;

    move-result-object p0

    invoke-static {p0}, Ln0/v;->a(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Ln0/v;->a:Z

    return-void
.end method
