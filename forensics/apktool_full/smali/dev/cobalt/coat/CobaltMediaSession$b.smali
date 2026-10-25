.class Ldev/cobalt/coat/CobaltMediaSession$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltMediaSession;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ldev/cobalt/coat/CobaltMediaSession;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltMediaSession;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$b;->b:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession$b;->b:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltMediaSession;->j(Ldev/cobalt/coat/CobaltMediaSession;)V

    return-void
.end method
