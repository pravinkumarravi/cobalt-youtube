.class public final Ld1/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/a<",
            "Ld1/b<",
            "*>;",
            "Lb1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lm/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/a<",
            "Ld1/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lr1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/b<",
            "Ljava/util/Map<",
            "Ld1/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# virtual methods
.method public final a(Ld1/b;Lb1/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/b<",
            "*>;",
            "Lb1/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ld1/j0;->a:Lm/a;

    invoke-virtual {v0, p1, p2}, Lm/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld1/j0;->b:Lm/a;

    invoke-virtual {v0, p1, p3}, Lm/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Ld1/j0;->d:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Ld1/j0;->d:I

    invoke-virtual {p2}, Lb1/a;->h()Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean p3, p0, Ld1/j0;->e:Z

    :cond_0
    iget p1, p0, Ld1/j0;->d:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Ld1/j0;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, Lc1/c;

    iget-object p2, p0, Ld1/j0;->a:Lm/a;

    invoke-direct {p1, p2}, Lc1/c;-><init>(Lm/a;)V

    iget-object p2, p0, Ld1/j0;->c:Lr1/b;

    invoke-virtual {p2, p1}, Lr1/b;->b(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Ld1/j0;->c:Lr1/b;

    iget-object p2, p0, Ld1/j0;->b:Lm/a;

    invoke-virtual {p1, p2}, Lr1/b;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ld1/b<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Ld1/j0;->a:Lm/a;

    invoke-virtual {v0}, Lm/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
