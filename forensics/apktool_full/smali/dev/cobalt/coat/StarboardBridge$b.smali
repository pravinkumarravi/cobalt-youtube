.class Ldev/cobalt/coat/StarboardBridge$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/StarboardBridge;->reportFullyDrawn()V
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

    iput-object p1, p0, Ldev/cobalt/coat/StarboardBridge$b;->c:Ldev/cobalt/coat/StarboardBridge;

    iput-object p2, p0, Ldev/cobalt/coat/StarboardBridge$b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge$b;->b:Landroid/app/Activity;

    invoke-static {v0}, Lt1/j;->g(Landroid/content/Context;)Z

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge$b;->c:Ldev/cobalt/coat/StarboardBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/cobalt/coat/StarboardBridge;->b(Ldev/cobalt/coat/StarboardBridge;Z)Z

    return-void
.end method
