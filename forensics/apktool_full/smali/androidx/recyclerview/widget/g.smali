.class public Landroidx/recyclerview/widget/g;
.super Landroidx/recyclerview/widget/j$z;
.source "SourceFile"


# instance fields
.field protected final i:Landroid/view/animation/LinearInterpolator;

.field protected final j:Landroid/view/animation/DecelerateInterpolator;

.field protected k:Landroid/graphics/PointF;

.field private final l:F

.field protected m:I

.field protected n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/j$z;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/g;->i:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/g;->j:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/g;->m:I

    iput v0, p0, Landroidx/recyclerview/widget/g;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->s(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->l:F

    return-void
.end method

.method private v(II)I
    .locals 0

    sub-int p2, p1, p2

    mul-int/2addr p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method


# virtual methods
.method protected l(IILandroidx/recyclerview/widget/j$a0;Landroidx/recyclerview/widget/j$z$a;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$z;->c()I

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$z;->r()V

    return-void

    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/g;->m:I

    invoke-direct {p0, p3, p1}, Landroidx/recyclerview/widget/g;->v(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->m:I

    iget p1, p0, Landroidx/recyclerview/widget/g;->n:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/g;->v(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->n:I

    iget p2, p0, Landroidx/recyclerview/widget/g;->m:I

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/g;->w(Landroidx/recyclerview/widget/j$z$a;)V

    :cond_1
    return-void
.end method

.method protected m()V
    .locals 0

    return-void
.end method

.method protected n()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/g;->n:I

    iput v0, p0, Landroidx/recyclerview/widget/g;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/g;->k:Landroid/graphics/PointF;

    return-void
.end method

.method protected s(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected t(I)I
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->u(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected u(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Landroidx/recyclerview/widget/g;->l:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected w(Landroidx/recyclerview/widget/j$z$a;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$z;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$z;->a(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$z;->i(Landroid/graphics/PointF;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/g;->k:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/g;->m:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/g;->n:I

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/g;->u(I)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/g;->m:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Landroidx/recyclerview/widget/g;->n:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/g;->i:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroidx/recyclerview/widget/j$z$a;->d(IIILandroid/view/animation/Interpolator;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$z;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/j$z$a;->b(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$z;->r()V

    return-void
.end method
