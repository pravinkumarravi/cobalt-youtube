.class Ldev/cobalt/coat/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/e;->f(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Ldev/cobalt/coat/e;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/e;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/e$a;->c:Ldev/cobalt/coat/e;

    iput-object p2, p0, Ldev/cobalt/coat/e$a;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/e$a;->c:Ldev/cobalt/coat/e;

    invoke-static {v0}, Ldev/cobalt/coat/e;->a(Ldev/cobalt/coat/e;)Ldev/cobalt/coat/e$b;

    move-result-object v0

    iget-object v1, p0, Ldev/cobalt/coat/e$a;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Ldev/cobalt/coat/e$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
