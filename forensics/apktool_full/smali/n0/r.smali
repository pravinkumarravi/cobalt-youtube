.class Ln0/r;
.super Ln0/s;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln0/s;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Intent;)Z
    .locals 2

    invoke-super {p0, p1}, Ln0/s;->b(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "PrimaryVoiceLaunchUrl"

    const-string v1, "Received intent is to be handled as a voice launch intent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method
