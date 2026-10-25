.class final Landroidx/leanback/widget/f$f;
.super Landroidx/leanback/widget/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field private final q:Z

.field private r:I

.field final synthetic s:Landroidx/leanback/widget/f;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/f;IZ)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f$d;-><init>(Landroidx/leanback/widget/f;)V

    iput p2, p0, Landroidx/leanback/widget/f$f;->r:I

    iput-boolean p3, p0, Landroidx/leanback/widget/f$f;->q:Z

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$z;->p(I)V

    return-void
.end method


# virtual methods
.method A()V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f$f;->r:I

    iget-object v1, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v1, v1, Landroidx/leanback/widget/f;->s:I

    neg-int v1, v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/f$f;->r:I

    :cond_0
    return-void
.end method

.method B()V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f$f;->r:I

    iget-object v1, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v1, v1, Landroidx/leanback/widget/f;->s:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/leanback/widget/f$f;->r:I

    :cond_0
    return-void
.end method

.method public a(I)Landroid/graphics/PointF;
    .locals 3

    iget p1, p0, Landroidx/leanback/widget/f$f;->r:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->C:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    iget v0, v0, Landroidx/leanback/widget/f;->u:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected w(Landroidx/recyclerview/widget/j$z$a;)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f$f;->r:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/g;->w(Landroidx/recyclerview/widget/j$z$a;)V

    return-void
.end method

.method protected x()V
    .locals 3

    invoke-super {p0}, Landroidx/leanback/widget/f$d;->x()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/f$f;->r:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$z;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$z;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/f;->y3(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method y()V
    .locals 3

    iget-boolean v0, p0, Landroidx/leanback/widget/f$f;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/f$f;->r:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/f;->o3(ZI)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/f$f;->r:I

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f$f;->r:I

    if-eqz v0, :cond_2

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->U2()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/f$f;->r:I

    if-gez v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->T2()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v0, v0, Landroidx/leanback/widget/f;->E:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$z;->p(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$z;->r()V

    :cond_3
    return-void
.end method

.method z()V
    .locals 4

    iget-boolean v0, p0, Landroidx/leanback/widget/f$f;->q:Z

    if-nez v0, :cond_7

    iget v0, p0, Landroidx/leanback/widget/f$f;->r:I

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->E:I

    iget v0, v0, Landroidx/leanback/widget/f;->V:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->E:I

    iget v0, v0, Landroidx/leanback/widget/f;->V:I

    sub-int/2addr v1, v0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroidx/leanback/widget/f$f;->r:I

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j$z;->b(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    iget-object v3, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/f;->Q1(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iput v1, v0, Landroidx/leanback/widget/f;->E:I

    const/4 v3, 0x0

    iput v3, v0, Landroidx/leanback/widget/f;->F:I

    iget v0, p0, Landroidx/leanback/widget/f$f;->r:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :goto_2
    iput v0, p0, Landroidx/leanback/widget/f$f;->r:I

    move-object v0, v2

    :goto_3
    iget v2, p0, Landroidx/leanback/widget/f$f;->r:I

    if-lez v2, :cond_5

    iget-object v2, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v2, v2, Landroidx/leanback/widget/f;->V:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v2, v2, Landroidx/leanback/widget/f;->V:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j$o;->s0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v2, v1, Landroidx/leanback/widget/f;->C:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroidx/leanback/widget/f;->C:I

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroidx/leanback/widget/f$f;->s:Landroidx/leanback/widget/f;

    iget v1, v0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroidx/leanback/widget/f;->C:I

    :cond_7
    :goto_5
    return-void
.end method
