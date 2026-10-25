.class public final Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "AmazonAccessKeyManager"

.field private static f:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Li0/a;

.field private c:Lm0/a;

.field d:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lm0/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->b:Li0/a;

    iput-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->c:Lm0/a;

    new-instance v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager$a;

    invoke-direct {v0, p0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager$a;-><init>(Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;)V

    iput-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->d:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->c:Lm0/a;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;Li0/a;)Li0/a;
    .locals 0

    iput-object p1, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->b:Li0/a;

    return-object p1
.end method

.method static synthetic c(Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->g()V

    return-void
.end method

.method static synthetic d(Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;)Lm0/a;
    .locals 0

    iget-object p0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->c:Lm0/a;

    return-object p0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->c:Lm0/a;

    invoke-interface {v0}, Lm0/a;->b()V

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->c:Lm0/a;

    invoke-interface {v0}, Lm0/a;->a()V

    return-void
.end method

.method public static getAccessKeyStatic()Ljava/lang/String;
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->f:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->m()Z

    move-result v0

    const-string v1, "AccessKeyManager is not initialized correctly!"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->i()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->f:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-virtual {v1}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->h()V

    return-object v0
.end method

.method public static getTeeKeyStatic([B)[B
    .locals 4
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-string v0, "Message is empty. Skipping TEE key signing."

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Problem in creating message String. Skipping TEE key signing."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->f:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    if-nez p0, :cond_4

    invoke-static {}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->m()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    const-string v0, "AccessKeyManager is not initialized correctly. Skipping TEE key signing."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AccessKeyManager is not initialized correctly!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->j(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->f:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-virtual {v0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->h()V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    const-string v2, "getTeeKeyStatic: unexpected error during TEE key signing"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_5
    :goto_0
    invoke-static {}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->m()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Landroid/content/Context;Lm0/a;)Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->f:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    invoke-direct {v0, p0, p1}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;-><init>(Landroid/content/Context;Lm0/a;)V

    sput-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->f:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    :cond_0
    sget-object p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->f:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener not provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public e()V
    .locals 5

    invoke-virtual {p0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->l()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    const-string v1, "Connecting to key service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.appaccesskeyproviderservice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.amazon.appaccesskeyprovider"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->d:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Key service is not present on this platform"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind to key service - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->f()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->g()V

    :goto_1
    return-void
.end method

.method public h()V
    .locals 4

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    const-string v1, "Disconnecting from key service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v1, "Key service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->b:Li0/a;

    iget-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->c:Lm0/a;

    invoke-interface {v0}, Lm0/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to disconnect key service - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Key service has already been disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->b:Li0/a;

    invoke-interface {v0}, Li0/a;->L()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    const-string v2, "getAccessKey: No key returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccessKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public j(Ljava/lang/String;)[B
    .locals 3

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->f:Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->m()Z

    move-result p1

    const-string v0, "AmazonAccessKeyManager.getSignedDigest is called before init"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->b:Li0/a;

    if-nez v0, :cond_3

    sget-object p1, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    const-string v0, "getTeeSignedDigest: key service is not connected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :try_start_0
    invoke-interface {v0, p1}, Li0/a;->x0(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    const-string v2, "getTeeSignedDigest failed"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_4
    :goto_0
    invoke-static {}, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->m()Z

    move-result p1

    const-string v0, "AmazonAccessKeyManager.getTeeSignedDigest is called with empty message"

    if-eqz p1, :cond_5

    sget-object p1, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/firetv/youtube/AmazonAccessKeyManager;->b:Li0/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
