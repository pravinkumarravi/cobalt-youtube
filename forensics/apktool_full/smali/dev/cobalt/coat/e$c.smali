.class Ldev/cobalt/coat/e$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/coat/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ldev/cobalt/coat/e;

.field final synthetic d:Ldev/cobalt/coat/e;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/e;Ljava/lang/String;Ldev/cobalt/coat/e;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/e$c;->d:Ldev/cobalt/coat/e;

    const-string p1, "ArtworkLoader"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ldev/cobalt/coat/e$c;->b:Ljava/lang/String;

    iput-object p3, p0, Ldev/cobalt/coat/e$c;->c:Ldev/cobalt/coat/e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldev/cobalt/coat/e$c;->d:Ldev/cobalt/coat/e;

    invoke-static {v0}, Ldev/cobalt/coat/e;->b(Ldev/cobalt/coat/e;)Ldev/cobalt/coat/c;

    move-result-object v0

    iget-object v1, p0, Ldev/cobalt/coat/e$c;->b:Ljava/lang/String;

    iget-object v2, p0, Ldev/cobalt/coat/e$c;->c:Ldev/cobalt/coat/e;

    invoke-interface {v0, v1, v2}, Ldev/cobalt/coat/c;->a(Ljava/lang/String;Ldev/cobalt/coat/e;)V

    return-void
.end method
