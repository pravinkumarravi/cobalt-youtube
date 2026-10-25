.class public Landroidx/recyclerview/widget/k;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/k$a;
    }
.end annotation


# instance fields
.field final d:Landroidx/recyclerview/widget/j;

.field final e:Landroidx/core/view/a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/j;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/j;

    new-instance p1, Landroidx/recyclerview/widget/k$a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/k$a;-><init>(Landroidx/recyclerview/widget/k;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/core/view/a;

    return-void
.end method


# virtual methods
.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroidx/recyclerview/widget/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->o()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->getLayoutManager()Landroidx/recyclerview/widget/j$o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->getLayoutManager()Landroidx/recyclerview/widget/j$o;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/j$o;->M0(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/accessibility/p;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/accessibility/p;)V

    const-class p1, Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/p;->S(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->o()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->getLayoutManager()Landroidx/recyclerview/widget/j$o;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->getLayoutManager()Landroidx/recyclerview/widget/j$o;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/j$o;->O0(Landroidx/core/view/accessibility/p;)V

    :cond_0
    return-void
.end method

.method public j(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->o()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->getLayoutManager()Landroidx/recyclerview/widget/j$o;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->getLayoutManager()Landroidx/recyclerview/widget/j$o;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/j$o;->i1(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public n()Landroidx/core/view/a;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/core/view/a;

    return-object v0
.end method

.method o()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->n0()Z

    move-result v0

    return v0
.end method
