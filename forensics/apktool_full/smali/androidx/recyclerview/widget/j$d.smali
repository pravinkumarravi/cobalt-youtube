.class Landroidx/recyclerview/widget/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/j;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/j$d;->a:Landroidx/recyclerview/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/j$d0;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/j$d;->a:Landroidx/recyclerview/widget/j;

    iget-object v1, v0, Landroidx/recyclerview/widget/j;->n:Landroidx/recyclerview/widget/j$o;

    iget-object p1, p1, Landroidx/recyclerview/widget/j$d0;->a:Landroid/view/View;

    iget-object v0, v0, Landroidx/recyclerview/widget/j;->c:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/j$o;->o1(Landroid/view/View;Landroidx/recyclerview/widget/j$v;)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/j$d0;Landroidx/recyclerview/widget/j$l$c;Landroidx/recyclerview/widget/j$l$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/j$d;->a:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/j;->k(Landroidx/recyclerview/widget/j$d0;Landroidx/recyclerview/widget/j$l$c;Landroidx/recyclerview/widget/j$l$c;)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/j$d0;Landroidx/recyclerview/widget/j$l$c;Landroidx/recyclerview/widget/j$l$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/j$d;->a:Landroidx/recyclerview/widget/j;

    iget-object v0, v0, Landroidx/recyclerview/widget/j;->c:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j$v;->J(Landroidx/recyclerview/widget/j$d0;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/j$d;->a:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/j;->m(Landroidx/recyclerview/widget/j$d0;Landroidx/recyclerview/widget/j$l$c;Landroidx/recyclerview/widget/j$l$c;)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/j$d0;Landroidx/recyclerview/widget/j$l$c;Landroidx/recyclerview/widget/j$l$c;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/j$d0;->F(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/j$d;->a:Landroidx/recyclerview/widget/j;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/j;->E:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/j;->N:Landroidx/recyclerview/widget/j$l;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroidx/recyclerview/widget/j$l;->b(Landroidx/recyclerview/widget/j$d0;Landroidx/recyclerview/widget/j$d0;Landroidx/recyclerview/widget/j$l$c;Landroidx/recyclerview/widget/j$l$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/j$l;->d(Landroidx/recyclerview/widget/j$d0;Landroidx/recyclerview/widget/j$l$c;Landroidx/recyclerview/widget/j$l$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/j$d;->a:Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->N0()V

    :cond_1
    return-void
.end method
