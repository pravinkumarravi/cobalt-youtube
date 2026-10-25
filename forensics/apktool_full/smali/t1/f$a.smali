.class Lt1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/f;->o(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field b:F

.field final synthetic c:Lt1/f;


# direct methods
.method constructor <init>(Lt1/f;)V
    .locals 0

    iput-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1}, Lt1/f;->e(Lt1/f;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/high16 v2, -0x3ee00000    # -10.0f

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    const v0, 0x7f07006f

    const/4 v4, 0x0

    if-eq p2, v3, :cond_2

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    return v4

    :cond_0
    iget p2, p0, Lt1/f$a;->b:F

    cmpl-float p2, p2, v2

    if-lez p2, :cond_5

    const/high16 p2, 0x41a80000    # 21.0f

    cmpl-float p2, v1, p2

    if-lez p2, :cond_5

    const/high16 p2, 0x43480000    # 200.0f

    cmpg-float p2, v1, p2

    if-gez p2, :cond_5

    iget-object p2, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p2}, Lt1/f;->h(Lt1/f;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/16 v2, 0x46

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p2, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p2}, Lt1/f;->j(Lt1/f;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v2, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {v2}, Lt1/f;->i(Lt1/f;)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {v5}, Lt1/f;->h(Lt1/f;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    float-to-double v1, v1

    const-wide/high16 v5, 0x4027000000000000L    # 11.5

    sub-double/2addr v1, v5

    const-wide/16 v5, 0x0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v5, 0x3fd1eb851eb851ecL    # 0.28

    div-double/2addr v1, v5

    const-wide/high16 v5, 0x4035000000000000L    # 21.0

    add-double/2addr v1, v5

    double-to-int p2, v1

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {v1}, Lt1/f;->e(Lt1/f;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x2d

    if-lt p2, p1, :cond_1

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1, v3}, Lt1/f;->l(Lt1/f;Z)Z

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1}, Lt1/f;->m(Lt1/f;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f070070

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1}, Lt1/f;->m(Lt1/f;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1, v4}, Lt1/f;->l(Lt1/f;Z)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p2}, Lt1/f;->k(Lt1/f;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p2}, Lt1/f;->m(Lt1/f;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lt1/f;->n()V

    :cond_3
    iget-object p2, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p2, v4}, Lt1/f;->l(Lt1/f;Z)Z

    iget-object p2, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p2, v4}, Lt1/f;->f(Lt1/f;Z)Z

    const/16 p2, 0x15

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v0, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {v0}, Lt1/f;->e(Lt1/f;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1}, Lt1/f;->e(Lt1/f;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1}, Lt1/f;->h(Lt1/f;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1}, Lt1/f;->j(Lt1/f;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p2}, Lt1/f;->i(Lt1/f;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {v0}, Lt1/f;->h(Lt1/f;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-virtual {p1}, Lt1/f;->z()V

    goto :goto_0

    :cond_4
    sub-float/2addr v0, v1

    iput v0, p0, Lt1/f$a;->b:F

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1, v3}, Lt1/f;->f(Lt1/f;Z)Z

    iget p1, p0, Lt1/f$a;->b:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1}, Lt1/f;->e(Lt1/f;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    sget-boolean p1, Lt1/f;->k:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lt1/f$a;->c:Lt1/f;

    invoke-static {p1}, Lt1/f;->g(Lt1/f;)V

    :cond_5
    :goto_0
    return v3
.end method
