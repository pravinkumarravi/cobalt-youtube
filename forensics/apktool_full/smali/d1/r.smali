.class final Ld1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/c$a;


# instance fields
.field private final synthetic a:Ld1/e;


# direct methods
.method constructor <init>(Ld1/e;)V
    .locals 0

    iput-object p1, p0, Ld1/r;->a:Ld1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Ld1/r;->a:Ld1/e;

    invoke-static {v0}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ld1/r;->a:Ld1/e;

    invoke-static {v1}, Ld1/e;->b(Ld1/e;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
