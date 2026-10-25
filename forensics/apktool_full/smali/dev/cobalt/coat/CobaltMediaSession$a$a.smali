.class Ldev/cobalt/coat/CobaltMediaSession$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltMediaSession$a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ldev/cobalt/coat/CobaltMediaSession$a;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltMediaSession$a;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$a$a;->c:Ldev/cobalt/coat/CobaltMediaSession$a;

    iput-object p2, p0, Ldev/cobalt/coat/CobaltMediaSession$a$a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession$a$a;->b:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession$a$a;->b:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
