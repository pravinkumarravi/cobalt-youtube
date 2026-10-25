.class public final Ld1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/f$a;
.implements Lc1/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc1/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lc1/f$a;",
        "Lc1/f$b;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ld1/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc1/a$f;

.field private final c:Lc1/a$b;

.field private final d:Ld1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final e:Ld1/l0;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ld1/j0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ld1/h<",
            "*>;",
            "Ld1/z;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:Ld1/c0;

.field private j:Z

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lb1/a;

.field final synthetic m:Ld1/e;


# direct methods
.method public constructor <init>(Ld1/e;Lc1/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/e<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ld1/e$a;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ld1/e$a;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld1/e$a;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld1/e$a;->k:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Ld1/e$a;->l:Lb1/a;

    invoke-static {p1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lc1/e;->h(Landroid/os/Looper;Ld1/e$a;)Lc1/a$f;

    move-result-object v1

    iput-object v1, p0, Ld1/e$a;->b:Lc1/a$f;

    instance-of v2, v1, Le1/u;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le1/u;

    invoke-virtual {v2}, Le1/u;->k0()Lc1/a$h;

    iput-object v0, p0, Ld1/e$a;->c:Lc1/a$b;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Ld1/e$a;->c:Lc1/a$b;

    :goto_0
    invoke-virtual {p2}, Lc1/e;->d()Ld1/b;

    move-result-object v2

    iput-object v2, p0, Ld1/e$a;->d:Ld1/b;

    new-instance v2, Ld1/l0;

    invoke-direct {v2}, Ld1/l0;-><init>()V

    iput-object v2, p0, Ld1/e$a;->e:Ld1/l0;

    invoke-virtual {p2}, Lc1/e;->f()I

    move-result v2

    iput v2, p0, Ld1/e$a;->h:I

    invoke-interface {v1}, Lc1/a$f;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ld1/e;->f(Ld1/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lc1/e;->j(Landroid/content/Context;Landroid/os/Handler;)Ld1/c0;

    move-result-object p1

    iput-object p1, p0, Ld1/e$a;->i:Ld1/c0;

    return-void

    :cond_1
    iput-object v0, p0, Ld1/e$a;->i:Ld1/c0;

    return-void
.end method

.method private final A()V
    .locals 3

    iget-boolean v0, p0, Ld1/e$a;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Ld1/e$a;->d:Ld1/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Ld1/e$a;->d:Ld1/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld1/e$a;->j:Z

    :cond_0
    return-void
.end method

.method private final B()V
    .locals 4

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ld1/e$a;->d:Ld1/b;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Ld1/e$a;->d:Ld1/b;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v2}, Ld1/e;->r(Ld1/e;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private final E(Ld1/a0;)V
    .locals 2

    iget-object v0, p0, Ld1/e$a;->e:Ld1/l0;

    invoke-virtual {p0}, Ld1/e$a;->e()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Ld1/a0;->c(Ld1/l0;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Ld1/a0;->f(Ld1/e$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ld1/e$a;->f(I)V

    iget-object p1, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {p1}, Lc1/a$f;->k()V

    return-void
.end method

.method private final F(Z)Z
    .locals 2

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v0}, Lc1/a$f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld1/e$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld1/e$a;->e:Ld1/l0;

    invoke-virtual {v0}, Ld1/l0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ld1/e$a;->B()V

    :cond_0
    return v1

    :cond_1
    iget-object p1, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {p1}, Lc1/a$f;->k()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method static synthetic G(Ld1/e$a;)V
    .locals 0

    invoke-direct {p0}, Ld1/e$a;->t()V

    return-void
.end method

.method static synthetic H(Ld1/e$a;)V
    .locals 0

    invoke-direct {p0}, Ld1/e$a;->u()V

    return-void
.end method

.method static synthetic I(Ld1/e$a;)Lc1/a$f;
    .locals 0

    iget-object p0, p0, Ld1/e$a;->b:Lc1/a$f;

    return-object p0
.end method

.method private final K(Lb1/a;)Z
    .locals 1

    invoke-static {}, Ld1/e;->j()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->p(Ld1/e;)Ld1/n;

    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final L(Lb1/a;)V
    .locals 4

    iget-object v0, p0, Ld1/e$a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/j0;

    sget-object v2, Lb1/a;->f:Lb1/a;

    invoke-static {p1, v2}, Le1/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v2}, Lc1/a$f;->i()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Ld1/e$a;->d:Ld1/b;

    invoke-virtual {v1, v3, p1, v2}, Ld1/j0;->a(Ld1/b;Lb1/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ld1/e$a;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final h([Lb1/c;)Lb1/c;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v1}, Lc1/a$f;->h()[Lb1/c;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Lb1/c;

    :cond_1
    new-instance v3, Lm/a;

    array-length v4, v1

    invoke-direct {v3, v4}, Lm/a;-><init>(I)V

    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lb1/c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lb1/c;->e()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lb1/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lb1/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lb1/c;->e()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    :goto_3
    return-object v0
.end method

.method static synthetic i(Ld1/e$a;Ld1/e$c;)V
    .locals 0

    invoke-direct {p0, p1}, Ld1/e$a;->k(Ld1/e$c;)V

    return-void
.end method

.method private final k(Ld1/e$c;)V
    .locals 1

    iget-object v0, p0, Ld1/e$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Ld1/e$a;->j:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {p1}, Lc1/a$f;->a()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ld1/e$a;->a()V

    return-void

    :cond_1
    invoke-direct {p0}, Ld1/e$a;->v()V

    :cond_2
    return-void
.end method

.method static synthetic n(Ld1/e$a;Z)Z
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld1/e$a;->F(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic q(Ld1/e$a;Ld1/e$c;)V
    .locals 0

    invoke-direct {p0, p1}, Ld1/e$a;->r(Ld1/e$c;)V

    return-void
.end method

.method private final r(Ld1/e$c;)V
    .locals 5

    iget-object v0, p0, Ld1/e$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {p1}, Ld1/e$c;->b(Ld1/e$c;)Lb1/c;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/a0;

    instance-of v3, v2, Ld1/q;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ld1/q;

    invoke-virtual {v3, p0}, Ld1/q;->g(Ld1/e$a;)[Lb1/c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, p1}, Li1/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ld1/a0;

    iget-object v4, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lc1/m;

    invoke-direct {v4, p1}, Lc1/m;-><init>(Lb1/c;)V

    invoke-virtual {v3, v4}, Ld1/a0;->d(Ljava/lang/RuntimeException;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final s(Ld1/a0;)Z
    .locals 5

    instance-of v0, p1, Ld1/q;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ld1/e$a;->E(Ld1/a0;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ld1/q;

    invoke-virtual {v0, p0}, Ld1/q;->g(Ld1/e$a;)[Lb1/c;

    move-result-object v2

    invoke-direct {p0, v2}, Ld1/e$a;->h([Lb1/c;)Lb1/c;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Ld1/e$a;->E(Ld1/a0;)V

    return v1

    :cond_1
    invoke-virtual {v0, p0}, Ld1/q;->h(Ld1/e$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ld1/e$c;

    iget-object v0, p0, Ld1/e$a;->d:Ld1/b;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Ld1/e$c;-><init>(Ld1/b;Lb1/c;Ld1/r;)V

    iget-object v0, p0, Ld1/e$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Ld1/e$a;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld1/e$c;

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v1}, Ld1/e;->l(Ld1/e;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ld1/e$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v3}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v3}, Ld1/e;->l(Ld1/e;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v2}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v2}, Ld1/e;->n(Ld1/e;)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lb1/a;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lb1/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Ld1/e$a;->K(Lb1/a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    iget v1, p0, Ld1/e$a;->h:I

    invoke-virtual {v0, p1, v1}, Ld1/e;->m(Lb1/a;I)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lc1/m;

    invoke-direct {p1, v2}, Lc1/m;-><init>(Lb1/c;)V

    invoke-virtual {v0, p1}, Ld1/a0;->d(Ljava/lang/RuntimeException;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final t()V
    .locals 2

    invoke-virtual {p0}, Ld1/e$a;->y()V

    sget-object v0, Lb1/a;->f:Lb1/a;

    invoke-direct {p0, v0}, Ld1/e$a;->L(Lb1/a;)V

    invoke-direct {p0}, Ld1/e$a;->A()V

    iget-object v0, p0, Ld1/e$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Ld1/e$a;->v()V

    invoke-direct {p0}, Ld1/e$a;->B()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
.end method

.method private final u()V
    .locals 4

    invoke-virtual {p0}, Ld1/e$a;->y()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld1/e$a;->j:Z

    iget-object v0, p0, Ld1/e$a;->e:Ld1/l0;

    invoke-virtual {v0}, Ld1/l0;->f()V

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Ld1/e$a;->d:Ld1/b;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v2}, Ld1/e;->l(Ld1/e;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    iget-object v3, p0, Ld1/e$a;->d:Ld1/b;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v2}, Ld1/e;->n(Ld1/e;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->o(Ld1/e;)Le1/k;

    move-result-object v0

    invoke-virtual {v0}, Le1/k;->a()V

    return-void
.end method

.method private final v()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ld1/a0;

    iget-object v4, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v4}, Lc1/a$f;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Ld1/e$a;->s(Ld1/a0;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld1/e$a;->F(Z)Z

    move-result v0

    return v0
.end method

.method public final D(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/a0;

    invoke-virtual {v1, p1}, Ld1/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final J(Lb1/a;)V
    .locals 1

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v0}, Lc1/a$f;->k()V

    invoke-virtual {p0, p1}, Ld1/e$a;->c(Lb1/a;)V

    return-void
.end method

.method public final a()V
    .locals 4

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v0}, Lc1/a$f;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v0}, Lc1/a$f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->o(Ld1/e;)Le1/k;

    move-result-object v0

    iget-object v1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v1}, Ld1/e;->f(Ld1/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-virtual {v0, v1, v2}, Le1/k;->b(Landroid/content/Context;Lc1/a$f;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lb1/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lb1/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Ld1/e$a;->c(Lb1/a;)V

    return-void

    :cond_1
    new-instance v0, Ld1/e$b;

    iget-object v1, p0, Ld1/e$a;->m:Ld1/e;

    iget-object v2, p0, Ld1/e$a;->b:Lc1/a$f;

    iget-object v3, p0, Ld1/e$a;->d:Ld1/b;

    invoke-direct {v0, v1, v2, v3}, Ld1/e$b;-><init>(Ld1/e;Lc1/a$f;Ld1/b;)V

    iget-object v1, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v1}, Lc1/a$f;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ld1/e$a;->i:Ld1/c0;

    invoke-virtual {v1, v0}, Ld1/c0;->J0(Ld1/d0;)V

    :cond_2
    iget-object v1, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v1, v0}, Lc1/a$f;->e(Le1/c$c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ld1/e$a;->h:I

    return v0
.end method

.method public final c(Lb1/a;)V
    .locals 4

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Ld1/e$a;->i:Ld1/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld1/c0;->K0()V

    :cond_0
    invoke-virtual {p0}, Ld1/e$a;->y()V

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->o(Ld1/e;)Le1/k;

    move-result-object v0

    invoke-virtual {v0}, Le1/k;->a()V

    invoke-direct {p0, p1}, Ld1/e$a;->L(Lb1/a;)V

    invoke-virtual {p1}, Lb1/a;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Ld1/e;->k()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld1/e$a;->D(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_1
    iget-object v0, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Ld1/e$a;->l:Lb1/a;

    return-void

    :cond_2
    invoke-direct {p0, p1}, Ld1/e$a;->K(Lb1/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    iget v1, p0, Ld1/e$a;->h:I

    invoke-virtual {v0, p1, v1}, Ld1/e;->m(Lb1/a;I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lb1/a;->c()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld1/e$a;->j:Z

    :cond_4
    iget-boolean v0, p0, Ld1/e$a;->j:Z

    if-eqz v0, :cond_5

    iget-object p1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {p1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Ld1/e$a;->d:Ld1/b;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v1}, Ld1/e;->l(Ld1/e;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_5
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Ld1/e$a;->d:Ld1/b;

    invoke-virtual {v1}, Ld1/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available on this device. Connection failed with: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ld1/e$a;->D(Lcom/google/android/gms/common/api/Status;)V

    :cond_6
    return-void
.end method

.method final d()Z
    .locals 1

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v0}, Lc1/a$f;->a()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v0}, Lc1/a$f;->m()Z

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Ld1/e$a;->u()V

    return-void

    :cond_0
    iget-object p1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {p1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Ld1/t;

    invoke-direct {v0, p0}, Ld1/t;-><init>(Ld1/e$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-boolean v0, p0, Ld1/e$a;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld1/e$a;->a()V

    :cond_0
    return-void
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Ld1/e$a;->t()V

    return-void

    :cond_0
    iget-object p1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {p1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Ld1/s;

    invoke-direct {v0, p0}, Ld1/s;-><init>(Ld1/e$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l(Ld1/a0;)V
    .locals 1

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v0}, Lc1/a$f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Ld1/e$a;->s(Ld1/a0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld1/e$a;->B()V

    return-void

    :cond_0
    iget-object v0, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Ld1/e$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ld1/e$a;->l:Lb1/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lb1/a;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ld1/e$a;->l:Lb1/a;

    invoke-virtual {p0, p1}, Ld1/e$a;->c(Lb1/a;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Ld1/e$a;->a()V

    return-void
.end method

.method public final m(Ld1/j0;)V
    .locals 1

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Ld1/e$a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o()Lc1/a$f;
    .locals 1

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    return-object v0
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-boolean v0, p0, Ld1/e$a;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ld1/e$a;->A()V

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->q(Ld1/e;)Lb1/h;

    move-result-object v0

    iget-object v1, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v1}, Ld1/e;->f(Ld1/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb1/h;->e(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Ld1/e$a;->D(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v0}, Lc1/a$f;->k()V

    :cond_1
    return-void
.end method

.method public final w()V
    .locals 6

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    sget-object v0, Ld1/e;->m:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Ld1/e$a;->D(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Ld1/e$a;->e:Ld1/l0;

    invoke-virtual {v0}, Ld1/l0;->e()V

    iget-object v0, p0, Ld1/e$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ld1/e$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ld1/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld1/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Ld1/i0;

    new-instance v5, Lr1/b;

    invoke-direct {v5}, Lr1/b;-><init>()V

    invoke-direct {v4, v3, v5}, Ld1/i0;-><init>(Ld1/h;Lr1/b;)V

    invoke-virtual {p0, v4}, Ld1/e$a;->l(Ld1/a0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lb1/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lb1/a;-><init>(I)V

    invoke-direct {p0, v0}, Ld1/e$a;->L(Lb1/a;)V

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    invoke-interface {v0}, Lc1/a$f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld1/e$a;->b:Lc1/a$f;

    new-instance v1, Ld1/v;

    invoke-direct {v1, p0}, Ld1/v;-><init>(Ld1/e$a;)V

    invoke-interface {v0, v1}, Lc1/a$f;->n(Le1/c$e;)V

    :cond_1
    return-void
.end method

.method public final x()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ld1/h<",
            "*>;",
            "Ld1/z;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld1/e$a;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld1/e$a;->l:Lb1/a;

    return-void
.end method

.method public final z()Lb1/a;
    .locals 1

    iget-object v0, p0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Le1/r;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Ld1/e$a;->l:Lb1/a;

    return-object v0
.end method
