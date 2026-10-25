.class Landroidx/leanback/widget/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/leanback/widget/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/leanback/widget/f;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->x:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->C:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->K2(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->L2(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Object;IIII)V
    .locals 7

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    const/high16 p1, -0x80000000

    if-eq p5, p1, :cond_0

    const p1, 0x7fffffff

    if-ne p5, p1, :cond_2

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object p1, p1, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {p1}, Landroidx/leanback/widget/e;->u()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object p1, p1, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {p1}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/widget/a0$a;->g()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object p1, p1, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {p1}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/widget/a0$a;->i()I

    move-result p1

    iget-object p5, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object p5, p5, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {p5}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/leanback/widget/a0$a;->f()I

    move-result p5

    sub-int/2addr p1, p5

    :goto_0
    move p5, p1

    :cond_2
    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object p1, p1, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {p1}, Landroidx/leanback/widget/e;->u()Z

    move-result p1

    const/4 v6, 0x1

    xor-int/2addr p1, v6

    if-eqz p1, :cond_3

    add-int/2addr p3, p5

    move v4, p3

    move v3, p5

    goto :goto_1

    :cond_3
    sub-int p1, p5, p3

    move v3, p1

    move v4, p5

    :goto_1
    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-virtual {p1, p4}, Landroidx/leanback/widget/f;->v2(I)I

    move-result p1

    iget-object p3, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object p3, p3, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {p3}, Landroidx/leanback/widget/a0;->c()Landroidx/leanback/widget/a0$a;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/leanback/widget/a0$a;->g()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget p5, p3, Landroidx/leanback/widget/f;->L:I

    sub-int v5, p1, p5

    iget-object p1, p3, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {p1, v2, p2}, Landroidx/leanback/widget/z;->g(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    move v1, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/f;->a3(ILandroid/view/View;III)V

    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object p1, p1, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j$a0;->h()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-virtual {p1}, Landroidx/leanback/widget/f;->l4()V

    :cond_4
    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget p2, p1, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p2, p2, 0x3

    if-eq p2, v6, :cond_5

    iget-object p1, p1, Landroidx/leanback/widget/f;->H:Landroidx/leanback/widget/f$f;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/leanback/widget/f$f;->y()V

    :cond_5
    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget v0, v0, Landroidx/leanback/widget/f;->x:I

    return v0
.end method

.method public d(IZ[Ljava/lang/Object;Z)I
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->x:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->J2(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/f$e;

    iget-object v2, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object v2, v2, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/j;->e0(Landroid/view/View;)Landroidx/recyclerview/widget/j$d0;

    move-result-object v2

    iget-object v3, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    const-class v4, Landroidx/leanback/widget/j;

    invoke-virtual {v3, v2, v4}, Landroidx/leanback/widget/f;->j2(Landroidx/recyclerview/widget/j$d0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/j;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/f$e;->v(Landroidx/leanback/widget/j;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j$p;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    if-eqz p4, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/j$o;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-virtual {p2, v0, v2}, Landroidx/recyclerview/widget/j$o;->c(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/j$o;->d(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-virtual {p2, v0, v2}, Landroidx/recyclerview/widget/j$o;->e(Landroid/view/View;I)V

    :goto_0
    iget-object p2, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget p2, p2, Landroidx/leanback/widget/f;->K:I

    const/4 p4, -0x1

    if-eq p2, p4, :cond_3

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object p2, p2, Landroidx/leanback/widget/f;->H:Landroidx/leanback/widget/f$f;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/leanback/widget/f$f;->z()V

    :cond_4
    iget-object p2, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Landroidx/leanback/widget/f;->B2(Landroid/view/View;Landroid/view/View;)I

    move-result p2

    iget-object p4, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget v1, p4, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    iget v1, p4, Landroidx/leanback/widget/f;->E:I

    if-ne p1, v1, :cond_7

    iget p1, p4, Landroidx/leanback/widget/f;->F:I

    if-ne p2, p1, :cond_7

    iget-object p1, p4, Landroidx/leanback/widget/f;->H:Landroidx/leanback/widget/f$f;

    if-nez p1, :cond_7

    :goto_1
    invoke-virtual {p4}, Landroidx/leanback/widget/f;->S1()V

    goto :goto_2

    :cond_5
    and-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_7

    and-int/lit8 v3, v1, 0x10

    if-nez v3, :cond_6

    iget v3, p4, Landroidx/leanback/widget/f;->E:I

    if-ne p1, v3, :cond_6

    iget v3, p4, Landroidx/leanback/widget/f;->F:I

    if-ne p2, v3, :cond_6

    goto :goto_1

    :cond_6
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    iget p4, p4, Landroidx/leanback/widget/f;->E:I

    if-lt p1, p4, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p4, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iput p1, p4, Landroidx/leanback/widget/f;->E:I

    iput p2, p4, Landroidx/leanback/widget/f;->F:I

    iget p1, p4, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p4, Landroidx/leanback/widget/f;->C:I

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->d3(Landroid/view/View;)V

    :cond_8
    aput-object v0, p3, v2

    iget-object p1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget p2, p1, Landroidx/leanback/widget/f;->u:I

    if-nez p2, :cond_9

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->h2(Landroid/view/View;)I

    move-result p1

    goto :goto_3

    :cond_9
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->g2(Landroid/view/View;)I

    move-result p1

    :goto_3
    return p1
.end method

.method public e(I)I
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->x:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->M2(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget-object v0, v0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j$a0;->c()I

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget v1, v1, Landroidx/leanback/widget/f;->x:I

    add-int/2addr v0, v1

    return v0
.end method

.method public removeItem(I)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->x:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/leanback/widget/f$b;->a:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/j$o;->x(Landroid/view/View;Landroidx/recyclerview/widget/j$v;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/j$o;->o1(Landroid/view/View;Landroidx/recyclerview/widget/j$v;)V

    :goto_0
    return-void
.end method
