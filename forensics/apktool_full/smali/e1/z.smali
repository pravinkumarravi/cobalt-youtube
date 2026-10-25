.class final Le1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g$a;


# instance fields
.field private final synthetic a:Lc1/g;

.field private final synthetic b:Lr1/b;

.field private final synthetic c:Le1/q$a;

.field private final synthetic d:Le1/q$b;


# direct methods
.method constructor <init>(Lc1/g;Lr1/b;Le1/q$a;Le1/q$b;)V
    .locals 0

    iput-object p1, p0, Le1/z;->a:Lc1/g;

    iput-object p2, p0, Le1/z;->b:Lr1/b;

    iput-object p3, p0, Le1/z;->c:Le1/q$a;

    iput-object p4, p0, Le1/z;->d:Le1/q$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le1/z;->a:Lc1/g;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lc1/g;->b(JLjava/util/concurrent/TimeUnit;)Lc1/k;

    move-result-object p1

    iget-object v0, p0, Le1/z;->b:Lr1/b;

    iget-object v1, p0, Le1/z;->c:Le1/q$a;

    invoke-interface {v1, p1}, Le1/q$a;->a(Lc1/k;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr1/b;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Le1/z;->b:Lr1/b;

    iget-object v1, p0, Le1/z;->d:Le1/q$b;

    invoke-interface {v1, p1}, Le1/q$b;->a(Lcom/google/android/gms/common/api/Status;)Lc1/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr1/b;->b(Ljava/lang/Exception;)V

    return-void
.end method
