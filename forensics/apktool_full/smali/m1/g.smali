.class public final Lm1/g;
.super Le1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le1/h<",
        "Lm1/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final G:Lv0/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Le1/d;Lv0/a$a;Lc1/f$a;Lc1/f$b;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Le1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILe1/d;Lc1/f$a;Lc1/f$b;)V

    new-instance p1, Lv0/a$a$a;

    if-nez p4, :cond_0

    sget-object p4, Lv0/a$a;->e:Lv0/a$a;

    :cond_0
    invoke-direct {p1, p4}, Lv0/a$a$a;-><init>(Lv0/a$a;)V

    invoke-static {}, Lm1/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lv0/a$a$a;->a(Ljava/lang/String;)Lv0/a$a$a;

    move-result-object p1

    invoke-virtual {p1}, Lv0/a$a$a;->b()Lv0/a$a;

    move-result-object p1

    iput-object p1, p0, Lm1/g;->G:Lv0/a$a;

    return-void
.end method


# virtual methods
.method protected final A()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method public final f()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method protected final synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lm1/i;

    if-eqz v1, :cond_1

    check-cast v0, Lm1/i;

    return-object v0

    :cond_1
    new-instance v0, Lm1/h;

    invoke-direct {v0, p1}, Lm1/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final v()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lm1/g;->G:Lv0/a$a;

    invoke-virtual {v0}, Lv0/a$a;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final z()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method
