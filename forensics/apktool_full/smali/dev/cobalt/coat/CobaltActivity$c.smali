.class Ldev/cobalt/coat/CobaltActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltActivity;->h0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Ldev/cobalt/coat/CobaltActivity;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/CobaltActivity$c;->c:Ldev/cobalt/coat/CobaltActivity;

    iput-boolean p2, p0, Ldev/cobalt/coat/CobaltActivity$c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity$c;->c:Ldev/cobalt/coat/CobaltActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Ldev/cobalt/coat/f;->a(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity$c;->c:Ldev/cobalt/coat/CobaltActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Ldev/cobalt/coat/CobaltActivity$c;->b:Z

    invoke-static {v0, v1}, Ldev/cobalt/coat/g;->a(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method
