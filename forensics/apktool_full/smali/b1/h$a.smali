.class final Lb1/h$a;
.super Ln1/d;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final synthetic b:Lb1/h;


# direct methods
.method public constructor <init>(Lb1/h;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lb1/h$a;->b:Lb1/h;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Ln1/d;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb1/h$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Don\'t know how to handle this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiAvailability"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb1/h$a;->b:Lb1/h;

    iget-object v0, p0, Lb1/h$a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lb1/h;->e(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lb1/h$a;->b:Lb1/h;

    invoke-virtual {v0, p1}, Lb1/h;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb1/h$a;->b:Lb1/h;

    iget-object v1, p0, Lb1/h$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lb1/h;->m(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method
