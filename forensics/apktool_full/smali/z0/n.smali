.class final Lz0/n;
.super Lz0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz0/p<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lc1/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lz0/p;-><init>(Lc1/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic c(Lcom/google/android/gms/common/api/Status;)Lc1/k;
    .locals 0

    return-object p1
.end method

.method protected final synthetic n(Lc1/a$b;)V
    .locals 2

    check-cast p1, Lz0/j;

    invoke-virtual {p1}, Le1/c;->y()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lz0/v;

    new-instance v1, Lz0/m;

    invoke-direct {v1, p0}, Lz0/m;-><init>(Lz0/n;)V

    invoke-virtual {p1}, Lz0/j;->k0()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lz0/v;->g0(Lz0/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
