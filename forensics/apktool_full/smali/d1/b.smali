.class public final Ld1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc1/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final d:Lc1/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc1/a;Lc1/a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/a<",
            "TO;>;TO;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld1/b;->a:Z

    iput-object p1, p0, Ld1/b;->c:Lc1/a;

    iput-object p2, p0, Ld1/b;->d:Lc1/a$d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1}, Le1/p;->b([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Ld1/b;->b:I

    return-void
.end method

.method public static b(Lc1/a;Lc1/a$d;)Ld1/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lc1/a$d;",
            ">(",
            "Lc1/a<",
            "TO;>;TO;)",
            "Ld1/b<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Ld1/b;

    invoke-direct {v0, p0, p1}, Ld1/b;-><init>(Lc1/a;Lc1/a$d;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld1/b;->c:Lc1/a;

    invoke-virtual {v0}, Lc1/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ld1/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ld1/b;

    iget-boolean v1, p0, Ld1/b;->a:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Ld1/b;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ld1/b;->c:Lc1/a;

    iget-object v3, p1, Ld1/b;->c:Lc1/a;

    invoke-static {v1, v3}, Le1/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ld1/b;->d:Lc1/a$d;

    iget-object p1, p1, Ld1/b;->d:Lc1/a$d;

    invoke-static {v1, p1}, Le1/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Ld1/b;->b:I

    return v0
.end method
