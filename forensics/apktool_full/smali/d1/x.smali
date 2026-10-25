.class final Ld1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lb1/a;

.field private final synthetic c:Ld1/e$b;


# direct methods
.method constructor <init>(Ld1/e$b;Lb1/a;)V
    .locals 0

    iput-object p1, p0, Ld1/x;->c:Ld1/e$b;

    iput-object p2, p0, Ld1/x;->b:Lb1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ld1/x;->c:Ld1/e$b;

    iget-object v0, v0, Ld1/e$b;->f:Ld1/e;

    invoke-static {v0}, Ld1/e;->s(Ld1/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ld1/x;->c:Ld1/e$b;

    invoke-static {v1}, Ld1/e$b;->d(Ld1/e$b;)Ld1/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ld1/x;->b:Lb1/a;

    invoke-virtual {v1}, Lb1/a;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ld1/x;->c:Ld1/e$b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ld1/e$b;->e(Ld1/e$b;Z)Z

    iget-object v1, p0, Ld1/x;->c:Ld1/e$b;

    invoke-static {v1}, Ld1/e$b;->f(Ld1/e$b;)Lc1/a$f;

    move-result-object v1

    invoke-interface {v1}, Lc1/a$f;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ld1/x;->c:Ld1/e$b;

    invoke-static {v0}, Ld1/e$b;->h(Ld1/e$b;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Ld1/x;->c:Ld1/e$b;

    invoke-static {v1}, Ld1/e$b;->f(Ld1/e$b;)Lc1/a$f;

    move-result-object v1

    iget-object v2, p0, Ld1/x;->c:Ld1/e$b;

    invoke-static {v2}, Ld1/e$b;->f(Ld1/e$b;)Lc1/a$f;

    move-result-object v2

    invoke-interface {v2}, Lc1/a$f;->b()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lc1/a$f;->c(Le1/l;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lb1/a;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lb1/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ld1/e$a;->c(Lb1/a;)V

    return-void

    :cond_2
    iget-object v1, p0, Ld1/x;->b:Lb1/a;

    invoke-virtual {v0, v1}, Ld1/e$a;->c(Lb1/a;)V

    return-void
.end method
