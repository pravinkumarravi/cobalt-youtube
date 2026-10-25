.class public final Ld1/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld1/a0;

.field public final b:I

.field public final c:Lc1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld1/a0;ILc1/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/a0;",
            "I",
            "Lc1/e<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/y;->a:Ld1/a0;

    iput p2, p0, Ld1/y;->b:I

    iput-object p3, p0, Ld1/y;->c:Lc1/e;

    return-void
.end method
