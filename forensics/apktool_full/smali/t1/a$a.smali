.class Lt1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lt1/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lt1/a;


# direct methods
.method constructor <init>(Lt1/a;)V
    .locals 0

    iput-object p1, p0, Lt1/a$a;->b:Lt1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lt1/a$a;->b:Lt1/a;

    invoke-static {v0}, Lt1/a;->b(Lt1/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lt1/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lp0/d;->c(Landroid/content/Context;Ljava/lang/String;)Lp0/d$b;

    move-result-object v1

    invoke-virtual {v1}, Lp0/d$b;->d()Lp0/d;

    move-result-object v1

    invoke-static {v0, v1}, Lt1/a;->a(Lt1/a;Lp0/d;)Lp0/d;

    iget-object v0, p0, Lt1/a$a;->b:Lt1/a;

    invoke-virtual {v0}, Lt1/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt1/a$a;->b:Lt1/a;

    invoke-virtual {v0}, Lt1/a;->h()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt1/a$a;->b:Lt1/a;

    invoke-virtual {v0}, Lt1/a;->k()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lt1/a$a$a;

    invoke-direct {v1, p0}, Lt1/a$a$a;-><init>(Lt1/a$a;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
