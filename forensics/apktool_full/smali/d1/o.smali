.class final Ld1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ld1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lr1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Ld1/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld1/b<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ld1/o;->a:Ld1/b;

    return-object v0
.end method

.method public final b()Lr1/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr1/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld1/o;->b:Lr1/b;

    return-object v0
.end method
