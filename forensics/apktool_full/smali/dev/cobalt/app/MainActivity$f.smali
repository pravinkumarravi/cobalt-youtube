.class Ldev/cobalt/app/MainActivity$f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Ldev/cobalt/app/MainActivity;


# direct methods
.method constructor <init>(Ldev/cobalt/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/app/MainActivity$f;->a:Ldev/cobalt/app/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.amazon.firetv.youtube.STOP_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ldev/cobalt/app/MainActivity;->s0()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Stop action received from DIAL service"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldev/cobalt/app/MainActivity$f;->a:Ldev/cobalt/app/MainActivity;

    invoke-static {p1}, Ldev/cobalt/app/MainActivity;->o0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ldev/cobalt/coat/StarboardBridge;->requestStop(I)V

    :cond_0
    return-void
.end method
