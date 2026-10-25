.class public final Ll1/b;
.super Le1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le1/h<",
        "Ll1/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final G:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Le1/d;Lv0/c;Lc1/f$a;Lc1/f$b;)V
    .locals 7

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Le1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILe1/d;Lc1/f$a;Lc1/f$b;)V

    if-nez p4, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Ll1/b;->G:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final A()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method public final f()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final m()Z
    .locals 2

    invoke-virtual {p0}, Le1/h;->f0()Le1/d;

    move-result-object v0

    invoke-virtual {v0}, Le1/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lv0/b;->c:Lc1/a;

    invoke-virtual {v0, v1}, Le1/d;->e(Lc1/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ll1/c;

    if-eqz v1, :cond_1

    check-cast v0, Ll1/c;

    return-object v0

    :cond_1
    new-instance v0, Ll1/d;

    invoke-direct {v0, p1}, Ll1/d;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final v()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Ll1/b;->G:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final z()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method
