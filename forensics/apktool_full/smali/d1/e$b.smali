.class final Ld1/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/d0;
.implements Le1/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lc1/a$f;

.field private final b:Ld1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Le1/l;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field final synthetic f:Ld1/e;


# direct methods
.method public constructor <init>(Ld1/e;Lc1/a$f;Ld1/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/a$f;",
            "Ld1/b<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Ld1/e$b;->f:Ld1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ld1/e$b;->c:Le1/l;

    iput-object p1, p0, Ld1/e$b;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld1/e$b;->e:Z

    iput-object p2, p0, Ld1/e$b;->a:Lc1/a$f;

    iput-object p3, p0, Ld1/e$b;->b:Ld1/b;

    return-void
.end method

.method static synthetic d(Ld1/e$b;)Ld1/b;
    .locals 0

    iget-object p0, p0, Ld1/e$b;->b:Ld1/b;

    return-object p0
.end method

.method static synthetic e(Ld1/e$b;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld1/e$b;->e:Z

    return p1
.end method

.method static synthetic f(Ld1/e$b;)Lc1/a$f;
    .locals 0

    iget-object p0, p0, Ld1/e$b;->a:Lc1/a$f;

    return-object p0
.end method

.method private final g()V
    .locals 3

    iget-boolean v0, p0, Ld1/e$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld1/e$b;->c:Le1/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld1/e$b;->a:Lc1/a$f;

    iget-object v2, p0, Ld1/e$b;->d:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lc1/a$f;->c(Le1/l;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Ld1/e$b;)V
    .locals 0

    invoke-direct {p0}, Ld1/e$b;->g()V

    return-void
.end method


# virtual methods
.method public final a(Lb1/a;)V
    .locals 2

    iget-object v0, p0, Ld1/e$b;->f:Ld1/e;

    invoke-static {v0}, Ld1/e;->s(Ld1/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ld1/e$b;->b:Ld1/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e$a;

    invoke-virtual {v0, p1}, Ld1/e$a;->J(Lb1/a;)V

    return-void
.end method

.method public final b(Lb1/a;)V
    .locals 2

    iget-object v0, p0, Ld1/e$b;->f:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ld1/x;

    invoke-direct {v1, p0, p1}, Ld1/x;-><init>(Ld1/e$b;Lb1/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Le1/l;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/l;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ld1/e$b;->c:Le1/l;

    iput-object p2, p0, Ld1/e$b;->d:Ljava/util/Set;

    invoke-direct {p0}, Ld1/e$b;->g()V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lb1/a;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lb1/a;-><init>(I)V

    invoke-virtual {p0, p1}, Ld1/e$b;->a(Lb1/a;)V

    return-void
.end method
