.class public Lc1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/e$a;
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
.field private final a:Landroid/content/Context;

.field private final b:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final c:Lc1/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final d:Ld1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Looper;

.field private final f:I

.field private final g:Lc1/f;

.field private final h:Ld1/k;

.field protected final i:Ld1/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc1/a;Lc1/a$d;Lc1/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc1/a<",
            "TO;>;TO;",
            "Lc1/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc1/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lc1/e;->b:Lc1/a;

    iput-object p3, p0, Lc1/e;->c:Lc1/a$d;

    iget-object v0, p4, Lc1/e$a;->b:Landroid/os/Looper;

    iput-object v0, p0, Lc1/e;->e:Landroid/os/Looper;

    invoke-static {p2, p3}, Ld1/b;->b(Lc1/a;Lc1/a$d;)Ld1/b;

    move-result-object p2

    iput-object p2, p0, Lc1/e;->d:Ld1/b;

    new-instance p2, Ld1/w;

    invoke-direct {p2, p0}, Ld1/w;-><init>(Lc1/e;)V

    iput-object p2, p0, Lc1/e;->g:Lc1/f;

    invoke-static {p1}, Ld1/e;->g(Landroid/content/Context;)Ld1/e;

    move-result-object p1

    iput-object p1, p0, Lc1/e;->i:Ld1/e;

    invoke-virtual {p1}, Ld1/e;->i()I

    move-result p2

    iput p2, p0, Lc1/e;->f:I

    iget-object p2, p4, Lc1/e$a;->a:Ld1/k;

    iput-object p2, p0, Lc1/e;->h:Ld1/k;

    invoke-virtual {p1, p0}, Ld1/e;->d(Lc1/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc1/a;Lc1/a$d;Ld1/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc1/a<",
            "TO;>;TO;",
            "Ld1/k;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lc1/e$a$a;

    invoke-direct {v0}, Lc1/e$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lc1/e$a$a;->b(Ld1/k;)Lc1/e$a$a;

    move-result-object p4

    invoke-virtual {p4}, Lc1/e$a$a;->a()Lc1/e$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lc1/e;-><init>(Landroid/content/Context;Lc1/a;Lc1/a$d;Lc1/e$a;)V

    return-void
.end method

.method private final i(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc1/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/a<",
            "+",
            "Lc1/k;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->m()V

    iget-object v0, p0, Lc1/e;->i:Ld1/e;

    invoke-virtual {v0, p0, p1, p2}, Ld1/e;->e(Lc1/e;ILcom/google/android/gms/common/api/internal/a;)V

    return-object p2
.end method


# virtual methods
.method public a()Lc1/f;
    .locals 1

    iget-object v0, p0, Lc1/e;->g:Lc1/f;

    return-object v0
.end method

.method protected b()Le1/d$a;
    .locals 3

    new-instance v0, Le1/d$a;

    invoke-direct {v0}, Le1/d$a;-><init>()V

    iget-object v1, p0, Lc1/e;->c:Lc1/a$d;

    instance-of v2, v1, Lc1/a$d$b;

    if-eqz v2, :cond_0

    check-cast v1, Lc1/a$d$b;

    invoke-interface {v1}, Lc1/a$d$b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc1/e;->c:Lc1/a$d;

    instance-of v2, v1, Lc1/a$d$a;

    if-eqz v2, :cond_1

    check-cast v1, Lc1/a$d$a;

    invoke-interface {v1}, Lc1/a$d$a;->d()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Le1/d$a;->c(Landroid/accounts/Account;)Le1/d$a;

    move-result-object v0

    iget-object v1, p0, Lc1/e;->c:Lc1/a$d;

    instance-of v2, v1, Lc1/a$d$b;

    if-eqz v2, :cond_2

    check-cast v1, Lc1/a$d$b;

    invoke-interface {v1}, Lc1/a$d$b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->k()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Le1/d$a;->a(Ljava/util/Collection;)Le1/d$a;

    move-result-object v0

    iget-object v1, p0, Lc1/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le1/d$a;->d(Ljava/lang/String;)Le1/d$a;

    move-result-object v0

    iget-object v1, p0, Lc1/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le1/d$a;->e(Ljava/lang/String;)Le1/d$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc1/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/a<",
            "+",
            "Lc1/k;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lc1/e;->i(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public d()Ld1/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld1/b<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lc1/e;->d:Ld1/b;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc1/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lc1/e;->f:I

    return v0
.end method

.method public g()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lc1/e;->e:Landroid/os/Looper;

    return-object v0
.end method

.method public h(Landroid/os/Looper;Ld1/e$a;)Lc1/a$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ld1/e$a<",
            "TO;>;)",
            "Lc1/a$f;"
        }
    .end annotation

    invoke-virtual {p0}, Lc1/e;->b()Le1/d$a;

    move-result-object v0

    invoke-virtual {v0}, Le1/d$a;->b()Le1/d;

    move-result-object v4

    iget-object v0, p0, Lc1/e;->b:Lc1/a;

    invoke-virtual {v0}, Lc1/a;->c()Lc1/a$a;

    move-result-object v1

    iget-object v2, p0, Lc1/e;->a:Landroid/content/Context;

    iget-object v5, p0, Lc1/e;->c:Lc1/a$d;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lc1/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Le1/d;Ljava/lang/Object;Lc1/f$a;Lc1/f$b;)Lc1/a$f;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroid/content/Context;Landroid/os/Handler;)Ld1/c0;
    .locals 2

    new-instance v0, Ld1/c0;

    invoke-virtual {p0}, Lc1/e;->b()Le1/d$a;

    move-result-object v1

    invoke-virtual {v1}, Le1/d$a;->b()Le1/d;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ld1/c0;-><init>(Landroid/content/Context;Landroid/os/Handler;Le1/d;)V

    return-object v0
.end method
