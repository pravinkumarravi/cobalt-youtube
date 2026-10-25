.class public abstract Le1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/c$i;,
        Le1/c$f;,
        Le1/c$l;,
        Le1/c$k;,
        Le1/c$d;,
        Le1/c$g;,
        Le1/c$h;,
        Le1/c$e;,
        Le1/c$c;,
        Le1/c$b;,
        Le1/c$a;,
        Le1/c$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final B:[Lb1/c;

.field public static final C:[Ljava/lang/String;


# instance fields
.field protected A:Ljava/util/concurrent/atomic/AtomicInteger;

.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:J

.field private f:Le1/j0;

.field private final g:Landroid/content/Context;

.field private final h:Landroid/os/Looper;

.field private final i:Le1/i;

.field private final j:Lb1/i;

.field final k:Landroid/os/Handler;

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Object;

.field private n:Le1/o;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mServiceBrokerLock"
    .end annotation
.end field

.field protected o:Le1/c$c;

.field private p:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le1/c$g<",
            "*>;>;"
        }
    .end annotation
.end field

.field private r:Le1/c$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le1/c$j;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private s:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final t:Le1/c$a;

.field private final u:Le1/c$b;

.field private final v:I

.field private final w:Ljava/lang/String;

.field private x:Lb1/a;

.field private y:Z

.field private volatile z:Le1/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lb1/c;

    sput-object v0, Le1/c;->B:[Lb1/c;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le1/c;->C:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Le1/i;Lb1/i;ILe1/c$a;Le1/c$b;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le1/c;->l:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le1/c;->m:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le1/c;->q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Le1/c;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Le1/c;->x:Lb1/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Le1/c;->y:Z

    iput-object v0, p0, Le1/c;->z:Le1/d0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Le1/c;->g:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Le1/c;->h:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le1/i;

    iput-object p1, p0, Le1/c;->i:Le1/i;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb1/i;

    iput-object p1, p0, Le1/c;->j:Lb1/i;

    new-instance p1, Le1/c$h;

    invoke-direct {p1, p0, p2}, Le1/c$h;-><init>(Le1/c;Landroid/os/Looper;)V

    iput-object p1, p0, Le1/c;->k:Landroid/os/Handler;

    iput p5, p0, Le1/c;->v:I

    iput-object p6, p0, Le1/c;->t:Le1/c$a;

    iput-object p7, p0, Le1/c;->u:Le1/c$b;

    iput-object p8, p0, Le1/c;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic K(Le1/c;Lb1/a;)Lb1/a;
    .locals 0

    iput-object p1, p0, Le1/c;->x:Lb1/a;

    return-object p1
.end method

.method static synthetic L(Le1/c;Le1/o;)Le1/o;
    .locals 0

    iput-object p1, p0, Le1/c;->n:Le1/o;

    return-object p1
.end method

.method static synthetic M(Le1/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le1/c;->m:Ljava/lang/Object;

    return-object p0
.end method

.method private final O(ILandroid/os/IInterface;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Le1/r;->a(Z)V

    iget-object v0, p0, Le1/c;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Le1/c;->s:I

    iput-object p2, p0, Le1/c;->p:Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Le1/c;->H(ILandroid/os/IInterface;)V

    const/4 v3, 0x0

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0, p2}, Le1/c;->D(Landroid/os/IInterface;)V

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Le1/c;->r:Le1/c$j;

    if-eqz p1, :cond_5

    iget-object p1, p0, Le1/c;->f:Le1/j0;

    if-eqz p1, :cond_5

    const-string p2, "GmsClient"

    invoke-virtual {p1}, Le1/j0;->d()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {v1}, Le1/j0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Le1/c;->i:Le1/i;

    iget-object p1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p1}, Le1/j0;->d()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p1}, Le1/j0;->a()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p1}, Le1/j0;->c()I

    move-result v8

    iget-object v9, p0, Le1/c;->r:Le1/c$j;

    invoke-direct {p0}, Le1/c;->c0()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p1}, Le1/j0;->b()Z

    move-result v11

    invoke-virtual/range {v5 .. v11}, Le1/i;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iget-object p1, p0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    new-instance p1, Le1/c$j;

    iget-object p2, p0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Le1/c$j;-><init>(Le1/c;I)V

    iput-object p1, p0, Le1/c;->r:Le1/c$j;

    iget p1, p0, Le1/c;->s:I

    if-ne p1, v4, :cond_6

    invoke-virtual {p0}, Le1/c;->w()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p1, Le1/j0;

    invoke-virtual {p0}, Le1/c;->u()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Le1/c;->w()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/16 v8, 0x81

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Le1/j0;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_2

    :cond_6
    new-instance p1, Le1/j0;

    invoke-virtual {p0}, Le1/c;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Le1/c;->A()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x81

    invoke-virtual {p0}, Le1/c;->C()Z

    move-result v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Le1/j0;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    :goto_2
    iput-object p1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p1}, Le1/j0;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Le1/c;->f()I

    move-result p1

    const p2, 0x1110e58

    if-ge p1, p2, :cond_8

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object v1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {v1}, Le1/j0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_3
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-object p1, p0, Le1/c;->i:Le1/i;

    iget-object p2, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p2}, Le1/j0;->d()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {v1}, Le1/j0;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {v2}, Le1/j0;->c()I

    move-result v2

    iget-object v4, p0, Le1/c;->r:Le1/c$j;

    invoke-direct {p0}, Le1/c;->c0()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {v6}, Le1/j0;->b()Z

    move-result v6

    new-instance v7, Le1/i$a;

    invoke-direct {v7, p2, v1, v2, v6}, Le1/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p1, v7, v4, v5}, Le1/i;->c(Le1/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "GmsClient"

    iget-object p2, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p2}, Le1/j0;->d()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {v1}, Le1/j0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 p2, 0x10

    invoke-virtual {p0, p2, v3, p1}, Le1/c;->N(ILandroid/os/Bundle;I)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Le1/c;->r:Le1/c$j;

    if-eqz p1, :cond_a

    iget-object v4, p0, Le1/c;->i:Le1/i;

    iget-object p1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p1}, Le1/j0;->d()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p1}, Le1/j0;->a()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p1}, Le1/j0;->c()I

    move-result v7

    iget-object v8, p0, Le1/c;->r:Le1/c$j;

    invoke-direct {p0}, Le1/c;->c0()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Le1/c;->f:Le1/j0;

    invoke-virtual {p1}, Le1/j0;->b()Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Le1/i;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iput-object v3, p0, Le1/c;->r:Le1/c$j;

    :cond_a
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic P(Le1/c;I)V
    .locals 0

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Le1/c;->V(I)V

    return-void
.end method

.method static synthetic Q(Le1/c;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Le1/c;->O(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic R(Le1/c;Le1/d0;)V
    .locals 0

    invoke-direct {p0, p1}, Le1/c;->S(Le1/d0;)V

    return-void
.end method

.method private final S(Le1/d0;)V
    .locals 0

    iput-object p1, p0, Le1/c;->z:Le1/d0;

    return-void
.end method

.method private final T(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v0, p0, Le1/c;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Le1/c;->s:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p2, p3}, Le1/c;->O(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic U(Le1/c;IILandroid/os/IInterface;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le1/c;->T(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method private final V(I)V
    .locals 3

    invoke-direct {p0}, Le1/c;->d0()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Le1/c;->y:Z

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Le1/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic W(Le1/c;)Z
    .locals 0

    invoke-direct {p0}, Le1/c;->e0()Z

    move-result p0

    return p0
.end method

.method static synthetic X(Le1/c;)Z
    .locals 0

    iget-boolean p0, p0, Le1/c;->y:Z

    return p0
.end method

.method static synthetic Y(Le1/c;)Lb1/a;
    .locals 0

    iget-object p0, p0, Le1/c;->x:Lb1/a;

    return-object p0
.end method

.method static synthetic Z(Le1/c;)Le1/c$a;
    .locals 0

    iget-object p0, p0, Le1/c;->t:Le1/c$a;

    return-object p0
.end method

.method static synthetic a0(Le1/c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Le1/c;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b0(Le1/c;)Le1/c$b;
    .locals 0

    iget-object p0, p0, Le1/c;->u:Le1/c$b;

    return-object p0
.end method

.method private final c0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le1/c;->w:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Le1/c;->g:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final d0()Z
    .locals 3

    iget-object v0, p0, Le1/c;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Le1/c;->s:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final e0()Z
    .locals 2

    iget-boolean v0, p0, Le1/c;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Le1/c;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Le1/c;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Le1/c;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method protected abstract A()Ljava/lang/String;
.end method

.method protected B()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method protected C()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected D(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le1/c;->c:J

    return-void
.end method

.method protected E(Lb1/a;)V
    .locals 2

    invoke-virtual {p1}, Lb1/a;->c()I

    move-result p1

    iput p1, p0, Le1/c;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le1/c;->e:J

    return-void
.end method

.method protected F(I)V
    .locals 2

    iput p1, p0, Le1/c;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le1/c;->b:J

    return-void
.end method

.method protected G(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Le1/c;->k:Landroid/os/Handler;

    new-instance v1, Le1/c$l;

    invoke-direct {v1, p0, p1, p2, p3}, Le1/c$l;-><init>(Le1/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method H(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public I()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J(I)V
    .locals 3

    iget-object v0, p0, Le1/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final N(ILandroid/os/Bundle;I)V
    .locals 2

    iget-object p2, p0, Le1/c;->k:Landroid/os/Handler;

    new-instance v0, Le1/c$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le1/c$k;-><init>(Le1/c;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v1, -0x1

    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Le1/c;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Le1/c;->s:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Le1/l;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/l;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Le1/c;->v()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Le1/g;

    iget v2, p0, Le1/c;->v:I

    invoke-direct {v1, v2}, Le1/g;-><init>(I)V

    iget-object v2, p0, Le1/c;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Le1/g;->e:Ljava/lang/String;

    iput-object v0, v1, Le1/g;->h:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Le1/g;->g:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual {p0}, Le1/c;->m()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Le1/c;->r()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Le1/c;->r()Landroid/accounts/Account;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p2, v1, Le1/g;->i:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Le1/g;->f:Landroid/os/IBinder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Le1/c;->I()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Le1/c;->r()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, v1, Le1/g;->i:Landroid/accounts/Account;

    :cond_3
    :goto_1
    sget-object p1, Le1/c;->B:[Lb1/c;

    iput-object p1, v1, Le1/g;->j:[Lb1/c;

    invoke-virtual {p0}, Le1/c;->s()[Lb1/c;

    move-result-object p1

    iput-object p1, v1, Le1/g;->k:[Lb1/c;

    :try_start_0
    iget-object p1, p0, Le1/c;->m:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Le1/c;->n:Le1/o;

    if-eqz p2, :cond_4

    new-instance v0, Le1/c$i;

    iget-object v2, p0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Le1/c$i;-><init>(Le1/c;I)V

    invoke-interface {p2, v0, v1}, Le1/o;->B(Le1/m;Le1/g;)V

    goto :goto_2

    :cond_4
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 p2, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0, p1}, Le1/c;->G(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_2
    move-exception p1

    throw p1

    :catch_3
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Le1/c;->J(I)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Le1/c$c;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le1/c$c;

    iput-object p1, p0, Le1/c;->o:Le1/c$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le1/c;->O(ILandroid/os/IInterface;)V

    return-void
.end method

.method public f()I
    .locals 1

    sget v0, Lb1/i;->a:I

    return v0
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Le1/c;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Le1/c;->s:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()[Lb1/c;
    .locals 1

    iget-object v0, p0, Le1/c;->z:Le1/d0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Le1/d0;->c:[Lb1/c;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Le1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le1/c;->f:Le1/j0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le1/j0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Le1/c;->q:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le1/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Le1/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le1/c$g;

    invoke-virtual {v3}, Le1/c$g;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le1/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Le1/c;->m:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Le1/c;->n:Le1/o;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Le1/c;->O(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n(Le1/c$e;)V
    .locals 0

    invoke-interface {p1}, Le1/c$e;->a()V

    return-void
.end method

.method protected final o()V
    .locals 2

    invoke-virtual {p0}, Le1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract r()Landroid/accounts/Account;
.end method

.method public s()[Lb1/c;
    .locals 1

    sget-object v0, Le1/c;->B:[Lb1/c;

    return-object v0
.end method

.method public t()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final u()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Le1/c;->g:Landroid/content/Context;

    return-object v0
.end method

.method protected v()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract x()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end method

.method public final y()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Le1/c;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Le1/c;->s:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Le1/c;->o()V

    iget-object v1, p0, Le1/c;->p:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Le1/r;->l(ZLjava/lang/Object;)V

    iget-object v1, p0, Le1/c;->p:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract z()Ljava/lang/String;
.end method
