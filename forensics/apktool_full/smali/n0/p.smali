.class abstract Ln0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Z = false

.field protected static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://www.youtube.com/tv"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ln0/p;->b:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    sget-boolean v0, Ln0/p;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inApp"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->r()Z

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->getDeviceInfoCertificationScope()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static f(Z)V
    .locals 0

    sput-boolean p0, Ln0/p;->a:Z

    return-void
.end method


# virtual methods
.method protected abstract b(Landroid/content/Intent;)Z
.end method

.method protected abstract c(Landroid/content/Intent;)Ljava/net/URL;
.end method

.method protected abstract e(Landroid/content/Context;)V
.end method
