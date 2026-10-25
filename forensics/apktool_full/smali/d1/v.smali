.class final Ld1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/c$e;


# instance fields
.field final synthetic a:Ld1/e$a;


# direct methods
.method constructor <init>(Ld1/e$a;)V
    .locals 0

    iput-object p1, p0, Ld1/v;->a:Ld1/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ld1/v;->a:Ld1/e$a;

    iget-object v0, v0, Ld1/e$a;->m:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ld1/u;

    invoke-direct {v1, p0}, Ld1/u;-><init>(Ld1/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
