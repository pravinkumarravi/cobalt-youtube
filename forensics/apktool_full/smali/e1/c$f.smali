.class abstract Le1/c$f;
.super Le1/c$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le1/c$g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:I

.field private final e:Landroid/os/Bundle;

.field private final synthetic f:Le1/c;


# direct methods
.method protected constructor <init>(Le1/c;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Le1/c$f;->f:Le1/c;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Le1/c$g;-><init>(Le1/c;Ljava/lang/Object;)V

    iput p2, p0, Le1/c$f;->d:I

    iput-object p3, p0, Le1/c$f;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final synthetic c(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Le1/c$f;->f:Le1/c;

    invoke-static {p1, v0, v1}, Le1/c;->Q(Le1/c;ILandroid/os/IInterface;)V

    return-void

    :cond_0
    iget p1, p0, Le1/c$f;->d:I

    if-eqz p1, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Le1/c$f;->f:Le1/c;

    invoke-static {p1, v0, v1}, Le1/c;->Q(Le1/c;ILandroid/os/IInterface;)V

    iget-object p1, p0, Le1/c$f;->e:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_1
    new-instance p1, Lb1/a;

    iget v0, p0, Le1/c$f;->d:I

    invoke-direct {p1, v0, v1}, Lb1/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Le1/c$f;->f(Lb1/a;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Le1/c$f;->f:Le1/c;

    invoke-static {p1, v0, v1}, Le1/c;->Q(Le1/c;ILandroid/os/IInterface;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Le1/c$f;->f:Le1/c;

    invoke-virtual {v2}, Le1/c;->A()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v0, p0, Le1/c$f;->f:Le1/c;

    invoke-virtual {v0}, Le1/c;->z()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. "

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Le1/c$f;->g()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Le1/c$f;->f:Le1/c;

    invoke-static {p1, v0, v1}, Le1/c;->Q(Le1/c;ILandroid/os/IInterface;)V

    new-instance p1, Lb1/a;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v1}, Lb1/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Le1/c$f;->f(Lb1/a;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected final d()V
    .locals 0

    return-void
.end method

.method protected abstract f(Lb1/a;)V
.end method

.method protected abstract g()Z
.end method
