.class Ldev/cobalt/app/MainActivity$b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/app/MainActivity;->x0(Ldev/cobalt/app/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/cobalt/app/b;

.field final synthetic b:Ldev/cobalt/app/MainActivity;


# direct methods
.method constructor <init>(Ldev/cobalt/app/MainActivity;JJLdev/cobalt/app/b;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/app/MainActivity$b;->b:Ldev/cobalt/app/MainActivity;

    iput-object p6, p0, Ldev/cobalt/app/MainActivity$b;->a:Ldev/cobalt/app/b;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/app/MainActivity$b;->a:Ldev/cobalt/app/b;

    invoke-virtual {v0}, Ldev/cobalt/app/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/app/MainActivity$b;->b:Ldev/cobalt/app/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/cobalt/app/MainActivity;->q0(Ldev/cobalt/app/MainActivity;Z)Z

    iget-object v0, p0, Ldev/cobalt/app/MainActivity$b;->b:Ldev/cobalt/app/MainActivity;

    invoke-static {v0}, Ldev/cobalt/app/MainActivity;->r0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldev/cobalt/coat/StarboardBridge;->j(Z)V

    invoke-static {}, Ldev/cobalt/app/MainActivity;->s0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Audio Capabilities changed, HDMI is connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldev/cobalt/app/MainActivity$b;->b:Ldev/cobalt/app/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/cobalt/app/MainActivity;->t0(Ldev/cobalt/app/MainActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
