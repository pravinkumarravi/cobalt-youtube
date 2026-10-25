.class Lcom/amazon/firetv/youtube/AmazonAccessKeyManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;


# direct methods
.method constructor <init>(Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager$a;->a:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connected to key service"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager$a;->a:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-static {p2}, Li0/a$a;->c(Landroid/os/IBinder;)Li0/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->b(Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;Li0/a;)Li0/a;

    iget-object p1, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager$a;->a:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-static {p1}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->c(Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Key service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager$a;->a:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->b(Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;Li0/a;)Li0/a;

    iget-object p1, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager$a;->a:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-static {p1}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->d(Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;)Lm0/a;

    move-result-object p1

    invoke-interface {p1}, Lm0/a;->c()V

    return-void
.end method
