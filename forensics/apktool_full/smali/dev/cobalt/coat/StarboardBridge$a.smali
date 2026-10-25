.class Ldev/cobalt/coat/StarboardBridge$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/coat/StarboardBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ldev/cobalt/coat/StarboardBridge;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/StarboardBridge;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/StarboardBridge$a;->b:Ldev/cobalt/coat/StarboardBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge$a;->b:Ldev/cobalt/coat/StarboardBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldev/cobalt/coat/StarboardBridge;->requestStop(I)V

    return-void
.end method
