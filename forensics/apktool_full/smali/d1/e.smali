.class public Ld1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/e$c;,
        Ld1/e$b;,
        Ld1/e$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/google/android/gms/common/api/Status;

.field private static final n:Lcom/google/android/gms/common/api/Status;

.field private static final o:Ljava/lang/Object;

.field private static p:Ld1/e;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private final d:Landroid/content/Context;

.field private final e:Lb1/h;

.field private final f:Le1/k;

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ld1/b<",
            "*>;",
            "Ld1/e$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ld1/b<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ld1/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Ld1/e;->m:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Ld1/e;->n:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld1/e;->o:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lb1/h;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Ld1/e;->a:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Ld1/e;->b:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ld1/e;->c:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ld1/e;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ld1/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    iput-object v0, p0, Ld1/e;->j:Ljava/util/Set;

    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    iput-object v0, p0, Ld1/e;->k:Ljava/util/Set;

    iput-object p1, p0, Ld1/e;->d:Landroid/content/Context;

    new-instance p1, Ln1/d;

    invoke-direct {p1, p2, p0}, Ln1/d;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Ld1/e;->l:Landroid/os/Handler;

    iput-object p3, p0, Ld1/e;->e:Lb1/h;

    new-instance p2, Le1/k;

    invoke-direct {p2, p3}, Le1/k;-><init>(Lb1/i;)V

    iput-object p2, p0, Ld1/e;->f:Le1/k;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Ld1/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld1/e;->p:Ld1/e;

    if-eqz v1, :cond_0

    iget-object v2, v1, Ld1/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, v1, Ld1/e;->l:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Ld1/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ld1/e;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Ld1/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ld1/e;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ld1/e;
    .locals 4

    sget-object v0, Ld1/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld1/e;->p:Ld1/e;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Ld1/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lb1/h;->k()Lb1/h;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Ld1/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lb1/h;)V

    sput-object v2, Ld1/e;->p:Ld1/e;

    :cond_0
    sget-object p0, Ld1/e;->p:Ld1/e;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final h(Lc1/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/e<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lc1/e;->d()Ld1/b;

    move-result-object v0

    iget-object v1, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/e$a;

    if-nez v1, :cond_0

    new-instance v1, Ld1/e$a;

    invoke-direct {v1, p0, p1}, Ld1/e$a;-><init>(Ld1/e;Lc1/e;)V

    iget-object p1, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Ld1/e$a;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld1/e;->k:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ld1/e$a;->a()V

    return-void
.end method

.method static synthetic j()Ljava/lang/Object;
    .locals 1

    sget-object v0, Ld1/e;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Ld1/e;->n:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic l(Ld1/e;)J
    .locals 2

    iget-wide v0, p0, Ld1/e;->a:J

    return-wide v0
.end method

.method static synthetic n(Ld1/e;)J
    .locals 2

    iget-wide v0, p0, Ld1/e;->b:J

    return-wide v0
.end method

.method static synthetic o(Ld1/e;)Le1/k;
    .locals 0

    iget-object p0, p0, Ld1/e;->f:Le1/k;

    return-object p0
.end method

.method static synthetic p(Ld1/e;)Ld1/n;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic q(Ld1/e;)Lb1/h;
    .locals 0

    iget-object p0, p0, Ld1/e;->e:Lb1/h;

    return-object p0
.end method

.method static synthetic r(Ld1/e;)J
    .locals 2

    iget-wide v0, p0, Ld1/e;->c:J

    return-wide v0
.end method

.method static synthetic s(Ld1/e;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ld1/e;->i:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final c(Lb1/a;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Ld1/e;->m(Lb1/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld1/e;->l:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final d(Lc1/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/e<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Ld1/e;->l:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final e(Lc1/e;ILcom/google/android/gms/common/api/internal/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lc1/a$d;",
            ">(",
            "Lc1/e<",
            "TO;>;I",
            "Lcom/google/android/gms/common/api/internal/a<",
            "+",
            "Lc1/k;",
            "Lc1/a$b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ld1/g0;

    invoke-direct {v0, p2, p3}, Ld1/g0;-><init>(ILcom/google/android/gms/common/api/internal/a;)V

    iget-object p2, p0, Ld1/e;->l:Landroid/os/Handler;

    new-instance p3, Ld1/y;

    iget-object v1, p0, Ld1/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p3, v0, v1, p1}, Ld1/y;-><init>(Ld1/a0;ILc1/e;)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    const-string v5, "GoogleApiManager"

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ld1/e$c;

    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-static {p1}, Ld1/e$c;->a(Ld1/e$c;)Ld1/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-static {p1}, Ld1/e$c;->a(Ld1/e$c;)Ld1/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e$a;

    invoke-static {v0, p1}, Ld1/e$a;->q(Ld1/e$a;Ld1/e$c;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ld1/e$c;

    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-static {p1}, Ld1/e$c;->a(Ld1/e$c;)Ld1/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-static {p1}, Ld1/e$c;->a(Ld1/e$c;)Ld1/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e$a;

    invoke-static {v0, p1}, Ld1/e$a;->i(Ld1/e$a;Ld1/e$c;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ld1/o;

    invoke-virtual {p1}, Ld1/o;->a()Ld1/b;

    move-result-object v0

    iget-object v2, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ld1/o;->b()Lr1/b;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e$a;

    invoke-static {v0, v4}, Ld1/e$a;->n(Ld1/e$a;Z)Z

    move-result v0

    invoke-virtual {p1}, Ld1/o;->b()Lr1/b;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lr1/b;->c(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld1/e$a;

    invoke-virtual {p1}, Ld1/e$a;->C()Z

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld1/e$a;

    invoke-virtual {p1}, Ld1/e$a;->p()V

    goto/16 :goto_5

    :pswitch_5
    iget-object p1, p0, Ld1/e;->k:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/b;

    iget-object v2, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e$a;

    invoke-virtual {v0}, Ld1/e$a;->w()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ld1/e;->k:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld1/e$a;

    invoke-virtual {p1}, Ld1/e$a;->g()V

    goto/16 :goto_5

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc1/e;

    invoke-direct {p0, p1}, Ld1/e;->h(Lc1/e;)V

    goto/16 :goto_5

    :pswitch_8
    invoke-static {}, Li1/f;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Ld1/e;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_b

    iget-object p1, p0, Ld1/e;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Ld1/c;->c(Landroid/app/Application;)V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p1

    new-instance v0, Ld1/r;

    invoke-direct {v0, p0}, Ld1/r;-><init>(Ld1/e;)V

    invoke-virtual {p1, v0}, Ld1/c;->a(Ld1/c$a;)V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Ld1/c;->f(Z)Z

    move-result p1

    if-nez p1, :cond_b

    iput-wide v2, p0, Ld1/e;->c:J

    goto/16 :goto_5

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb1/a;

    iget-object v2, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/e$a;

    invoke-virtual {v3}, Ld1/e$a;->b()I

    move-result v4

    if-ne v4, v0, :cond_2

    move-object v6, v3

    :cond_3
    if-eqz v6, :cond_4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Ld1/e;->e:Lb1/h;

    invoke-virtual {p1}, Lb1/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lb1/h;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lb1/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x11

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ld1/e$a;->D(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_5

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4c

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not find API instance "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ld1/y;

    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    iget-object v2, p1, Ld1/y;->c:Lc1/e;

    invoke-virtual {v2}, Lc1/e;->d()Ld1/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e$a;

    if-nez v0, :cond_5

    iget-object v0, p1, Ld1/y;->c:Lc1/e;

    invoke-direct {p0, v0}, Ld1/e;->h(Lc1/e;)V

    iget-object v0, p0, Ld1/e;->i:Ljava/util/Map;

    iget-object v2, p1, Ld1/y;->c:Lc1/e;

    invoke-virtual {v2}, Lc1/e;->d()Ld1/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e$a;

    :cond_5
    invoke-virtual {v0}, Ld1/e$a;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Ld1/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p1, Ld1/y;->b:I

    if-eq v2, v3, :cond_6

    iget-object p1, p1, Ld1/y;->a:Ld1/a0;

    sget-object v2, Ld1/e;->m:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v2}, Ld1/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Ld1/e$a;->w()V

    goto/16 :goto_5

    :cond_6
    iget-object p1, p1, Ld1/y;->a:Ld1/a0;

    invoke-virtual {v0, p1}, Ld1/e$a;->l(Ld1/a0;)V

    goto/16 :goto_5

    :pswitch_b
    iget-object p1, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e$a;

    invoke-virtual {v0}, Ld1/e$a;->y()V

    invoke-virtual {v0}, Ld1/e$a;->a()V

    goto :goto_2

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ld1/j0;

    invoke-virtual {p1}, Ld1/j0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/b;

    iget-object v3, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/e$a;

    if-nez v3, :cond_7

    new-instance v0, Lb1/a;

    const/16 v3, 0xd

    invoke-direct {v0, v3}, Lb1/a;-><init>(I)V

    invoke-virtual {p1, v2, v0, v6}, Ld1/j0;->a(Ld1/b;Lb1/a;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ld1/e$a;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lb1/a;->f:Lb1/a;

    invoke-virtual {v3}, Ld1/e$a;->o()Lc1/a$f;

    move-result-object v3

    invoke-interface {v3}, Lc1/a$f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v4, v3}, Ld1/j0;->a(Ld1/b;Lb1/a;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Ld1/e$a;->z()Lb1/a;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ld1/e$a;->z()Lb1/a;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v6}, Ld1/j0;->a(Ld1/b;Lb1/a;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v3, p1}, Ld1/e$a;->m(Ld1/j0;)V

    invoke-virtual {v3}, Ld1/e$a;->a()V

    goto :goto_3

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    const-wide/16 v2, 0x2710

    :cond_a
    iput-wide v2, p0, Ld1/e;->c:J

    iget-object p1, p0, Ld1/e;->l:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Ld1/e;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/b;

    iget-object v3, p0, Ld1/e;->l:Landroid/os/Handler;

    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v4, p0, Ld1/e;->c:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_b
    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Ld1/e;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method final m(Lb1/a;I)Z
    .locals 2

    iget-object v0, p0, Ld1/e;->e:Lb1/h;

    iget-object v1, p0, Ld1/e;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lb1/h;->r(Landroid/content/Context;Lb1/a;I)Z

    move-result p1

    return p1
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Ld1/e;->l:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
