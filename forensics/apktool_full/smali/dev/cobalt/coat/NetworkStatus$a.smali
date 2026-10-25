.class Ldev/cobalt/coat/NetworkStatus$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/NetworkStatus;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Ldev/cobalt/coat/NetworkStatus;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/NetworkStatus;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/NetworkStatus$a;->c:Ldev/cobalt/coat/NetworkStatus;

    iput-boolean p2, p0, Ldev/cobalt/coat/NetworkStatus$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkStatus is changed, online="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ldev/cobalt/coat/NetworkStatus$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "starboard"

    invoke-static {v2, v0, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/NetworkStatus$a;->c:Ldev/cobalt/coat/NetworkStatus;

    iget-boolean v1, p0, Ldev/cobalt/coat/NetworkStatus$a;->b:Z

    invoke-static {v0, v1}, Ldev/cobalt/coat/NetworkStatus;->a(Ldev/cobalt/coat/NetworkStatus;Z)V

    return-void
.end method
