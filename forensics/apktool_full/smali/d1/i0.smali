.class public final Ld1/i0;
.super Ld1/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld1/h0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ld1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/h<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld1/h;Lr1/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/h<",
            "*>;",
            "Lr1/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Ld1/h0;-><init>(ILr1/b;)V

    iput-object p1, p0, Ld1/i0;->c:Ld1/h;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-super {p0, p1}, Ld1/h0;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic c(Ld1/l0;Z)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-super {p0, p1}, Ld1/h0;->d(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final g(Ld1/e$a;)[Lb1/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/e$a<",
            "*>;)[",
            "Lb1/c;"
        }
    .end annotation

    invoke-virtual {p1}, Ld1/e$a;->x()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Ld1/i0;->c:Ld1/h;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld1/z;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    throw v0
.end method

.method public final h(Ld1/e$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/e$a<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ld1/e$a;->x()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Ld1/i0;->c:Ld1/h;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld1/z;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final i(Ld1/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/e$a<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ld1/e$a;->x()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ld1/i0;->c:Ld1/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/z;

    if-nez v0, :cond_0

    iget-object p1, p0, Ld1/h0;->b:Lr1/b;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lr1/b;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Ld1/e$a;->o()Lc1/a$f;

    const/4 p1, 0x0

    throw p1
.end method
