.class public final Lc1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/h$a;
    }
.end annotation


# direct methods
.method public static a(Lc1/k;Lc1/f;)Lc1/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lc1/k;",
            ">(TR;",
            "Lc1/f;",
            ")",
            "Lc1/g<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lc1/k;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Status code must not be SUCCESS"

    invoke-static {v0, v1}, Le1/r;->b(ZLjava/lang/Object;)V

    new-instance v0, Lc1/h$a;

    invoke-direct {v0, p1, p0}, Lc1/h$a;-><init>(Lc1/f;Lc1/k;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lc1/k;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/common/api/Status;Lc1/f;)Lc1/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Lc1/f;",
            ")",
            "Lc1/g<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ld1/l;

    invoke-direct {v0, p1}, Ld1/l;-><init>(Lc1/f;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lc1/k;)V

    return-object v0
.end method
