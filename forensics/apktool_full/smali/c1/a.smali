.class public final Lc1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/a$h;,
        Lc1/a$f;,
        Lc1/a$b;,
        Lc1/a$g;,
        Lc1/a$c;,
        Lc1/a$d;,
        Lc1/a$a;,
        Lc1/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc1/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lc1/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private final b:Lc1/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$g<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc1/a$a;Lc1/a$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lc1/a$f;",
            ">(",
            "Ljava/lang/String;",
            "Lc1/a$a<",
            "TC;TO;>;",
            "Lc1/a$g<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc1/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lc1/a;->a:Lc1/a$a;

    iput-object p3, p0, Lc1/a;->b:Lc1/a$g;

    return-void
.end method


# virtual methods
.method public final a()Lc1/a$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc1/a$c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc1/a;->b:Lc1/a$g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API was constructed with null client keys. This should not be possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc1/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lc1/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc1/a$a<",
            "*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lc1/a;->a:Lc1/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Le1/r;->l(ZLjava/lang/Object;)V

    iget-object v0, p0, Lc1/a;->a:Lc1/a$a;

    return-object v0
.end method
