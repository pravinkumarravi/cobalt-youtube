.class public abstract Ldev/cobalt/coat/CobaltService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/coat/CobaltService$ResponseToClient;,
        Ldev/cobalt/coat/CobaltService$a;
    }
.end annotation


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltService;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public e(Ldev/cobalt/coat/StarboardBridge;)V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltService;->a:Z

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltService;->d()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract receiveFromClient([B)Ldev/cobalt/coat/CobaltService$ResponseToClient;
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end method
