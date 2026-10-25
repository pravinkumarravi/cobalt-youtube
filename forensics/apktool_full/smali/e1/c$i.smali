.class public final Le1/c$i;
.super Le1/m$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field private a:Le1/c;

.field private final b:I


# direct methods
.method public constructor <init>(Le1/c;I)V
    .locals 0

    invoke-direct {p0}, Le1/m$a;-><init>()V

    iput-object p1, p0, Le1/c$i;->a:Le1/c;

    iput p2, p0, Le1/c$i;->b:I

    return-void
.end method


# virtual methods
.method public final D0(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Le1/c$i;->a:Le1/c;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le1/c$i;->a:Le1/c;

    iget v1, p0, Le1/c$i;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Le1/c;->G(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Le1/c$i;->a:Le1/c;

    return-void
.end method

.method public final d0(ILandroid/os/IBinder;Le1/d0;)V
    .locals 2

    iget-object v0, p0, Le1/c$i;->a:Le1/c;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Le1/r;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le1/c$i;->a:Le1/c;

    invoke-static {v0, p3}, Le1/c;->R(Le1/c;Le1/d0;)V

    iget-object p3, p3, Le1/d0;->b:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Le1/c$i;->D0(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public final v0(ILandroid/os/Bundle;)V
    .locals 1

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
