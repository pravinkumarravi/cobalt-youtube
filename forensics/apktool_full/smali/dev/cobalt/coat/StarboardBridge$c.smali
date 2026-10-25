.class Ldev/cobalt/coat/StarboardBridge$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/StarboardBridge;->createBackButtonUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ldev/cobalt/coat/StarboardBridge;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/StarboardBridge;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/StarboardBridge$c;->c:Ldev/cobalt/coat/StarboardBridge;

    iput-object p2, p0, Ldev/cobalt/coat/StarboardBridge$c;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lt1/f;->q()Lt1/f;

    move-result-object v0

    iget-object v1, p0, Ldev/cobalt/coat/StarboardBridge$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lt1/f;->o(Landroid/content/Context;)V

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge$c;->c:Ldev/cobalt/coat/StarboardBridge;

    invoke-static {v0}, Ldev/cobalt/coat/StarboardBridge;->a(Ldev/cobalt/coat/StarboardBridge;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge$c;->b:Landroid/app/Activity;

    invoke-static {v0}, Lt1/j;->g(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method
