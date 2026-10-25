.class public abstract Landroidx/leanback/widget/a;
.super Landroidx/recyclerview/widget/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/a$e;,
        Landroidx/leanback/widget/a$b;,
        Landroidx/leanback/widget/a$c;,
        Landroidx/leanback/widget/a$d;
    }
.end annotation


# instance fields
.field final I0:Landroidx/leanback/widget/f;

.field private J0:Z

.field private K0:Z

.field private L0:Landroidx/recyclerview/widget/j$l;

.field M0:Landroidx/recyclerview/widget/j$w;

.field N0:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/leanback/widget/a;->J0:Z

    iput-boolean p1, p0, Landroidx/leanback/widget/a;->K0:Z

    const/4 p2, 0x4

    iput p2, p0, Landroidx/leanback/widget/a;->N0:I

    new-instance p2, Landroidx/leanback/widget/f;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/f;-><init>(Landroidx/leanback/widget/a;)V

    iput-object p2, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/j;->setLayoutManager(Landroidx/recyclerview/widget/j$o;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/j;->setPreserveFocusAfterLayout(Z)V

    const/high16 p3, 0x40000

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j;->setHasFixedSize(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getItemAnimator()Landroidx/recyclerview/widget/j$l;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/m;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m;->Q(Z)V

    new-instance p1, Landroidx/leanback/widget/a$a;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/a$a;-><init>(Landroidx/leanback/widget/a;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/j;->setRecyclerListener(Landroidx/recyclerview/widget/j$w;)V

    return-void
.end method


# virtual methods
.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->y2()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/j;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/leanback/widget/f;->f2(Landroidx/recyclerview/widget/j;II)I

    move-result p1

    return p1
.end method

.method public getExtraLayoutSpace()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->i2()I

    move-result v0

    return v0
.end method

.method public getFocusScrollStrategy()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->k2()I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->l2()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->l2()I

    move-result v0

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/a;->N0:I

    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->m2()I

    move-result v0

    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->n2()F

    move-result v0

    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->o2()I

    move-result v0

    return v0
.end method

.method public getOnUnhandledKeyListener()Landroidx/leanback/widget/a$e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    iget-object v0, v0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {v0}, Landroidx/leanback/widget/z;->c()I

    move-result v0

    return v0
.end method

.method public final getSaveChildrenPolicy()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    iget-object v0, v0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {v0}, Landroidx/leanback/widget/z;->d()I

    move-result v0

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->y2()I

    move-result v0

    return v0
.end method

.method public getSelectedSubPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->C2()I

    move-result v0

    return v0
.end method

.method public getVerticalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->E2()I

    move-result v0

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->E2()I

    move-result v0

    return v0
.end method

.method public getWindowAlignment()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->N2()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->O2()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroidx/leanback/widget/f;->P2()F

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/a;->K0:Z

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/leanback/widget/f;->i3(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/leanback/widget/f;->Q2(Landroidx/recyclerview/widget/j;ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->j3(I)V

    return-void
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/a;->J0:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/leanback/widget/a;->J0:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getItemAnimator()Landroidx/recyclerview/widget/j$l;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/a;->L0:Landroidx/recyclerview/widget/j$l;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/a;->L0:Landroidx/recyclerview/widget/j$l;

    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/j;->setItemAnimator(Landroidx/recyclerview/widget/j$l;)V

    :cond_1
    return-void
.end method

.method public setChildrenVisibility(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->A3(I)V

    return-void
.end method

.method public setExtraLayoutSpace(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->B3(I)V

    return-void
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid scrollStrategy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->E3(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->F3(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->G3(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/a;->K0:Z

    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/a;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->H3(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/a;->N0:I

    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->I3(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->J3(F)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->K3(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->L3(I)V

    return-void
.end method

.method public setItemMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/a;->setItemSpacing(I)V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->M3(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->N3(Z)V

    return-void
.end method

.method public setOnChildLaidOutListener(Landroidx/leanback/widget/m;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->P3(Landroidx/leanback/widget/m;)V

    return-void
.end method

.method public setOnChildSelectedListener(Landroidx/leanback/widget/n;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->Q3(Landroidx/leanback/widget/n;)V

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/o;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->R3(Landroidx/leanback/widget/o;)V

    return-void
.end method

.method public setOnKeyInterceptListener(Landroidx/leanback/widget/a$b;)V
    .locals 0

    return-void
.end method

.method public setOnMotionInterceptListener(Landroidx/leanback/widget/a$c;)V
    .locals 0

    return-void
.end method

.method public setOnTouchInterceptListener(Landroidx/leanback/widget/a$d;)V
    .locals 0

    return-void
.end method

.method public setOnUnhandledKeyListener(Landroidx/leanback/widget/a$e;)V
    .locals 0

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->T3(Z)V

    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/j$w;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/a;->M0:Landroidx/recyclerview/widget/j$w;

    return-void
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    iget-object v0, v0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/z;->m(I)V

    return-void
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    iget-object v0, v0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/z;->n(I)V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->V3(Z)V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/f;->W3(II)V

    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->Y3(I)V

    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/a;->setVerticalSpacing(I)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->Z3(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->a4(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->b4(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->c4(F)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverHighEdge(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    iget-object v0, v0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a0$a;->u(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverLowEdge(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    iget-object v0, v0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a0$a;->v(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method u1(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Ly/l;->w:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Ly/l;->B:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget v1, Ly/l;->A:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iget-object v2, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v2, p2, v1}, Landroidx/leanback/widget/f;->C3(ZZ)V

    sget p2, Ly/l;->D:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget v2, Ly/l;->C:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iget-object v2, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    invoke-virtual {v2, p2, v1}, Landroidx/leanback/widget/f;->D3(ZZ)V

    iget-object p2, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    sget v1, Ly/l;->z:I

    sget v2, Ly/l;->F:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/leanback/widget/f;->Z3(I)V

    iget-object p2, p0, Landroidx/leanback/widget/a;->I0:Landroidx/leanback/widget/f;

    sget v1, Ly/l;->y:I

    sget v2, Ly/l;->E:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/leanback/widget/f;->H3(I)V

    sget p2, Ly/l;->x:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/a;->setGravity(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method final v1()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    return v0
.end method
