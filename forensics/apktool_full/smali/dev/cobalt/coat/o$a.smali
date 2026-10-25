.class Ldev/cobalt/coat/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/o;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ldev/cobalt/coat/o;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/o$a;->c:Ldev/cobalt/coat/o;

    iput p2, p0, Ldev/cobalt/coat/o$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Ldev/cobalt/coat/o$a;->c:Ldev/cobalt/coat/o;

    invoke-static {p1}, Ldev/cobalt/coat/o;->a(Ldev/cobalt/coat/o;)Ldev/cobalt/coat/o$c;

    move-result-object p1

    invoke-static {p1}, Ldev/cobalt/coat/o$c;->g(Ldev/cobalt/coat/o$c;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Ldev/cobalt/coat/o$a;->c:Ldev/cobalt/coat/o;

    iget v1, p0, Ldev/cobalt/coat/o$a;->b:I

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
