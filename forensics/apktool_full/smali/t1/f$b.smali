.class Lt1/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/f;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt1/f$b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lt1/f$b;->b:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lt1/f$b;->b:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    sget-boolean v0, Lt1/f;->j:Z

    if-eqz v0, :cond_0

    sget v0, Ldev/cobalt/coat/CobaltMediaSession;->t:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lt1/f$b;->b:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lt1/f$b;->b:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method
