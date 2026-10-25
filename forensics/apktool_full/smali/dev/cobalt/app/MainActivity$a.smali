.class Ldev/cobalt/app/MainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/app/MainActivity;->X([Ljava/lang/String;Ljava/lang/String;)Ldev/cobalt/coat/StarboardBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ldev/cobalt/app/MainActivity;


# direct methods
.method constructor <init>(Ldev/cobalt/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/app/MainActivity$a;->b:Ldev/cobalt/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/app/MainActivity$a;->b:Ldev/cobalt/app/MainActivity;

    invoke-static {v0}, Ldev/cobalt/app/MainActivity;->l0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldev/cobalt/coat/StarboardBridge;->requestStop(I)V

    return-void
.end method
