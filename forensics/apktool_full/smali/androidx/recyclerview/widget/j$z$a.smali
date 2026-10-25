.class public Landroidx/recyclerview/widget/j$z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/j$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/j$z$a;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/j$z$a;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/j$z$a;->f:Z

    iput v0, p0, Landroidx/recyclerview/widget/j$z$a;->g:I

    iput p1, p0, Landroidx/recyclerview/widget/j$z$a;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/j$z$a;->b:I

    iput p3, p0, Landroidx/recyclerview/widget/j$z$a;->c:I

    iput-object p4, p0, Landroidx/recyclerview/widget/j$z$a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/j$z$a;->e:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/j$z$a;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/j$z$a;->c:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/j$z$a;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/j$z$a;->d:I

    return-void
.end method

.method c(Landroidx/recyclerview/widget/j;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/j$z$a;->d:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Landroidx/recyclerview/widget/j$z$a;->d:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/j;->x0(I)V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/j$z$a;->f:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/j$z$a;->f:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroidx/recyclerview/widget/j$z$a;->e()V

    iget-object v0, p0, Landroidx/recyclerview/widget/j$z$a;->e:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/j$z$a;->c:I

    const/high16 v2, -0x80000000

    iget-object p1, p1, Landroidx/recyclerview/widget/j;->e0:Landroidx/recyclerview/widget/j$c0;

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/j$z$a;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/j$z$a;->b:I

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/j$c0;->g(II)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/j$z$a;->a:I

    iget v3, p0, Landroidx/recyclerview/widget/j$z$a;->b:I

    invoke-virtual {p1, v2, v3, v0}, Landroidx/recyclerview/widget/j$c0;->h(III)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/j;->e0:Landroidx/recyclerview/widget/j$c0;

    iget v2, p0, Landroidx/recyclerview/widget/j$z$a;->a:I

    iget v3, p0, Landroidx/recyclerview/widget/j$z$a;->b:I

    iget v4, p0, Landroidx/recyclerview/widget/j$z$a;->c:I

    invoke-virtual {p1, v2, v3, v4, v0}, Landroidx/recyclerview/widget/j$c0;->j(IIILandroid/view/animation/Interpolator;)V

    :goto_0
    iget p1, p0, Landroidx/recyclerview/widget/j$z$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/j$z$a;->g:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/j$z$a;->f:Z

    goto :goto_1

    :cond_4
    iput v1, p0, Landroidx/recyclerview/widget/j$z$a;->g:I

    :goto_1
    return-void
.end method

.method public d(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/j$z$a;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/j$z$a;->b:I

    iput p3, p0, Landroidx/recyclerview/widget/j$z$a;->c:I

    iput-object p4, p0, Landroidx/recyclerview/widget/j$z$a;->e:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/j$z$a;->f:Z

    return-void
.end method
