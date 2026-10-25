.class public Ln0/b;
.super Ln0/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Ln0/d;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "c"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PrimaryChannelBrowseUrl"

    const-string v0, "Received intent to be handled as deep-link to channel."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic e(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Ln0/d;->e(Landroid/content/Context;)V

    return-void
.end method

.method g(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
