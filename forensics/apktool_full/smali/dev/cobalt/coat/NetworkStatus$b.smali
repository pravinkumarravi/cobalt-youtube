.class Ldev/cobalt/coat/NetworkStatus$b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/coat/NetworkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ldev/cobalt/coat/NetworkStatus;


# direct methods
.method public constructor <init>(Ldev/cobalt/coat/NetworkStatus;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p1, p0, Ldev/cobalt/coat/NetworkStatus$b;->a:Ldev/cobalt/coat/NetworkStatus;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    iget-object p1, p0, Ldev/cobalt/coat/NetworkStatus$b;->a:Ldev/cobalt/coat/NetworkStatus;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ldev/cobalt/coat/NetworkStatus;->e(Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p1, p0, Ldev/cobalt/coat/NetworkStatus$b;->a:Ldev/cobalt/coat/NetworkStatus;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ldev/cobalt/coat/NetworkStatus;->e(Z)V

    return-void
.end method
