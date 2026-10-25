.class public Lr1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lr1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/e<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr1/e;

    invoke-direct {v0}, Lr1/e;-><init>()V

    iput-object v0, p0, Lr1/b;->a:Lr1/e;

    return-void
.end method


# virtual methods
.method public a()Lr1/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr1/a<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lr1/b;->a:Lr1/e;

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lr1/b;->a:Lr1/e;

    invoke-virtual {v0, p1}, Lr1/e;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lr1/b;->a:Lr1/e;

    invoke-virtual {v0, p1}, Lr1/e;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lr1/b;->a:Lr1/e;

    invoke-virtual {v0, p1}, Lr1/e;->c(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lr1/b;->a:Lr1/e;

    invoke-virtual {v0, p1}, Lr1/e;->d(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
