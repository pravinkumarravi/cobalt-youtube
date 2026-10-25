.class public abstract Le1/h;
.super Le1/c;
.source "SourceFile"

# interfaces
.implements Lc1/a$f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Le1/c<",
        "TT;>;",
        "Lc1/a$f;"
    }
.end annotation


# instance fields
.field private final D:Le1/d;

.field private final E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILe1/d;Lc1/f$a;Lc1/f$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p6}, Le1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILe1/d;Ld1/d;Ld1/i;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILe1/d;Ld1/d;Ld1/i;)V
    .locals 9

    invoke-static {p1}, Le1/i;->a(Landroid/content/Context;)Le1/i;

    move-result-object v3

    invoke-static {}, Lb1/h;->k()Lb1/h;

    move-result-object v4

    invoke-static {p5}, Le1/r;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Ld1/d;

    invoke-static {p6}, Le1/r;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Ld1/i;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Le1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Le1/i;Lb1/h;ILe1/d;Ld1/d;Ld1/i;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Le1/i;Lb1/h;ILe1/d;Ld1/d;Ld1/i;)V
    .locals 10

    move-object v9, p0

    invoke-static/range {p7 .. p7}, Le1/h;->h0(Ld1/d;)Le1/c$a;

    move-result-object v6

    invoke-static/range {p8 .. p8}, Le1/h;->i0(Ld1/i;)Le1/c$b;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Le1/d;->g()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Le1/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Le1/i;Lb1/i;ILe1/c$a;Le1/c$b;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, v9, Le1/h;->D:Le1/d;

    invoke-virtual/range {p6 .. p6}, Le1/d;->a()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, Le1/h;->F:Landroid/accounts/Account;

    invoke-virtual/range {p6 .. p6}, Le1/d;->d()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Le1/h;->j0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Le1/h;->E:Ljava/util/Set;

    return-void
.end method

.method private static h0(Ld1/d;)Le1/c$a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Le1/w;

    invoke-direct {v0, p0}, Le1/w;-><init>(Ld1/d;)V

    return-object v0
.end method

.method private static i0(Ld1/i;)Le1/c$b;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Le1/x;

    invoke-direct {v0, p0}, Le1/x;-><init>(Ld1/i;)V

    return-object v0
.end method

.method private final j0(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le1/h;->g0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Le1/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le1/h;->E:Ljava/util/Set;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    invoke-super {p0}, Le1/c;->f()I

    move-result v0

    return v0
.end method

.method protected final f0()Le1/d;
    .locals 1

    iget-object v0, p0, Le1/h;->D:Le1/d;

    return-object v0
.end method

.method protected g0(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public final r()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Le1/h;->F:Landroid/accounts/Account;

    return-object v0
.end method

.method protected final x()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le1/h;->E:Ljava/util/Set;

    return-object v0
.end method
