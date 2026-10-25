.class abstract Ld1/h0;
.super Ld1/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld1/q;"
    }
.end annotation


# instance fields
.field protected final b:Lr1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILr1/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lr1/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ld1/q;-><init>(I)V

    iput-object p2, p0, Ld1/h0;->b:Lr1/b;

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Ld1/h0;->b:Lr1/b;

    new-instance v1, Lc1/b;

    invoke-direct {v1, p1}, Lc1/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lr1/b;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public d(Ljava/lang/RuntimeException;)V
    .locals 1

    iget-object v0, p0, Ld1/h0;->b:Lr1/b;

    invoke-virtual {v0, p1}, Lr1/b;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final f(Ld1/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/e$a<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ld1/h0;->i(Ld1/e$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ld1/a0;->d(Ljava/lang/RuntimeException;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Ld1/a0;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld1/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Ld1/a0;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld1/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method protected abstract i(Ld1/e$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/e$a<",
            "*>;)V"
        }
    .end annotation
.end method
