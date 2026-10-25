.class abstract Ln0/u;
.super Ln0/p;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Landroid/content/Intent;)Z
.end method

.method public final c(Landroid/content/Intent;)Ljava/net/URL;
    .locals 3

    invoke-virtual {p0, p1}, Ln0/u;->b(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Ln0/u;->i(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ln0/u;->g(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ln0/u;->h(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Ln0/p;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "VoiceUtteranceUrlBase"

    const-string v2, "Error when attempting to build a voice utterance deep-link URL"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public e(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method abstract g(Landroid/content/Intent;)Landroid/net/Uri;
.end method

.method abstract h(Landroid/content/Intent;)Landroid/net/Uri;
.end method

.method abstract i(Landroid/content/Intent;)Z
.end method
