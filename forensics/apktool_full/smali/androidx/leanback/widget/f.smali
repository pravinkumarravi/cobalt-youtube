.class final Landroidx/leanback/widget/f;
.super Landroidx/recyclerview/widget/j$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/f$g;,
        Landroidx/leanback/widget/f$f;,
        Landroidx/leanback/widget/f$d;,
        Landroidx/leanback/widget/f$e;
    }
.end annotation


# static fields
.field private static final i0:Landroid/graphics/Rect;

.field static j0:[I


# instance fields
.field A:[I

.field B:Landroidx/recyclerview/widget/j$v;

.field C:I

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/o;",
            ">;"
        }
    .end annotation
.end field

.field E:I

.field F:I

.field G:Landroidx/leanback/widget/f$d;

.field H:Landroidx/leanback/widget/f$f;

.field private I:I

.field private J:I

.field K:I

.field L:I

.field private M:I

.field private N:I

.field private O:[I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field V:I

.field private W:I

.field X:Landroidx/leanback/widget/e;

.field private Y:I

.field final Z:Landroidx/leanback/widget/a0;

.field private final a0:Landroidx/leanback/widget/i;

.field private b0:I

.field private c0:I

.field private d0:[I

.field final e0:Landroidx/leanback/widget/z;

.field private f0:Landroidx/leanback/widget/c;

.field private final g0:Ljava/lang/Runnable;

.field private h0:Landroidx/leanback/widget/e$b;

.field s:I

.field final t:Landroidx/leanback/widget/a;

.field u:I

.field private v:Landroidx/recyclerview/widget/i;

.field w:Landroidx/recyclerview/widget/j$a0;

.field x:I

.field y:I

.field final z:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/f;->i0:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/leanback/widget/f;->j0:[I

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/a;)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/j$o;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroidx/leanback/widget/f;->s:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/f;->u:I

    invoke-static {p0}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/j$o;)Landroidx/recyclerview/widget/i;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/f;->v:Landroidx/recyclerview/widget/i;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/f;->z:Landroid/util/SparseIntArray;

    const v1, 0x36200

    iput v1, p0, Landroidx/leanback/widget/f;->C:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/leanback/widget/f;->E:I

    iput v0, p0, Landroidx/leanback/widget/f;->F:I

    iput v0, p0, Landroidx/leanback/widget/f;->I:I

    const v2, 0x800033

    iput v2, p0, Landroidx/leanback/widget/f;->U:I

    const/4 v2, 0x1

    iput v2, p0, Landroidx/leanback/widget/f;->W:I

    iput v0, p0, Landroidx/leanback/widget/f;->Y:I

    new-instance v2, Landroidx/leanback/widget/a0;

    invoke-direct {v2}, Landroidx/leanback/widget/a0;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    new-instance v2, Landroidx/leanback/widget/i;

    invoke-direct {v2}, Landroidx/leanback/widget/i;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/f;->d0:[I

    new-instance v2, Landroidx/leanback/widget/z;

    invoke-direct {v2}, Landroidx/leanback/widget/z;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    new-instance v2, Landroidx/leanback/widget/f$a;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/f$a;-><init>(Landroidx/leanback/widget/f;)V

    iput-object v2, p0, Landroidx/leanback/widget/f;->g0:Ljava/lang/Runnable;

    new-instance v2, Landroidx/leanback/widget/f$b;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/f$b;-><init>(Landroidx/leanback/widget/f;)V

    iput-object v2, p0, Landroidx/leanback/widget/f;->h0:Landroidx/leanback/widget/e$b;

    iput-object p1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    iput v1, p0, Landroidx/leanback/widget/f;->K:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$o;->C1(Z)V

    return-void
.end method

.method private F2(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->H2(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->I2(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private G2(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->I2(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->H2(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private H2(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f$e;->m(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0}, Landroidx/leanback/widget/f$e;->i()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private I2(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f$e;->q(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0}, Landroidx/leanback/widget/f$e;->j()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private O1()Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->a()Z

    move-result v0

    return v0
.end method

.method private P1()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget v1, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/leanback/widget/f;->c0:I

    neg-int v1, v1

    iget v2, p0, Landroidx/leanback/widget/f;->y:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/f;->b0:I

    iget v2, p0, Landroidx/leanback/widget/f;->c0:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/leanback/widget/f;->y:I

    add-int/2addr v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/e;->b(I)V

    return-void
.end method

.method private R1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iput-object v0, p0, Landroidx/leanback/widget/f;->O:[I

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/leanback/widget/f;->C:I

    return-void
.end method

.method private R2(Landroidx/recyclerview/widget/j;ILandroid/graphics/Rect;)Z
    .locals 0

    iget p1, p0, Landroidx/leanback/widget/f;->E:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private S2(Landroidx/recyclerview/widget/j;ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result p1

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, p1

    move p1, v1

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    move v3, v0

    :goto_0
    iget-object v4, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v4}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/a0$a;->g()I

    move-result v4

    iget-object v5, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v5}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/leanback/widget/a0$a;->c()I

    move-result v5

    add-int/2addr v5, v4

    :goto_1
    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/f;->L2(Landroid/view/View;)I

    move-result v7

    if-lt v7, v4, :cond_1

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/f;->K2(Landroid/view/View;)I

    move-result v7

    if-gt v7, v5, :cond_1

    invoke-virtual {v6, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v2

    :cond_1
    add-int/2addr p1, v3

    goto :goto_1

    :cond_2
    return v1
.end method

.method private U1()V
    .locals 15

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v1}, Landroidx/leanback/widget/e;->m()I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Landroidx/leanback/widget/f;->C:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Landroidx/leanback/widget/f;->c2(Landroid/view/View;)I

    move-result v6

    if-eq v1, v6, :cond_0

    :goto_1
    move v2, v4

    goto :goto_3

    :cond_0
    iget-object v6, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v6, v1}, Landroidx/leanback/widget/e;->q(I)Landroidx/leanback/widget/e$a;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget v7, v6, Landroidx/leanback/widget/e$a;->a:I

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/f;->v2(I)I

    move-result v7

    iget-object v8, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v8}, Landroidx/leanback/widget/a0;->c()Landroidx/leanback/widget/a0$a;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/leanback/widget/a0$a;->g()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroidx/leanback/widget/f;->L:I

    sub-int v14, v7, v8

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/f;->L2(Landroid/view/View;)I

    move-result v12

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/f;->M2(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/f$e;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j$p;->f()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Landroidx/leanback/widget/f;->C:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Landroidx/leanback/widget/f;->C:I

    iget-object v8, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {p0, v5, v8}, Landroidx/recyclerview/widget/j$o;->x(Landroid/view/View;Landroidx/recyclerview/widget/j$v;)V

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/f;->J2(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Landroidx/recyclerview/widget/j$o;->e(Landroid/view/View;I)V

    :cond_2
    move-object v11, v5

    invoke-virtual {p0, v11}, Landroidx/leanback/widget/f;->d3(Landroid/view/View;)V

    iget v5, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v5, :cond_3

    invoke-virtual {p0, v11}, Landroidx/leanback/widget/f;->h2(Landroid/view/View;)I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v11}, Landroidx/leanback/widget/f;->g2(Landroid/view/View;)I

    move-result v5

    :goto_2
    add-int v8, v12, v5

    move v13, v8

    iget v10, v6, Landroidx/leanback/widget/e$a;->a:I

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Landroidx/leanback/widget/f;->a3(ILandroid/view/View;III)V

    if-eq v7, v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v2}, Landroidx/leanback/widget/e;->p()I

    move-result v2

    sub-int/2addr v0, v4

    :goto_4
    if-lt v0, v3, :cond_6

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/j$o;->x(Landroid/view/View;Landroidx/recyclerview/widget/j$v;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/e;->t(I)V

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/leanback/widget/f;->P1()V

    iget v0, p0, Landroidx/leanback/widget/f;->E:I

    if-ltz v0, :cond_8

    if-gt v0, v2, :cond_8

    :goto_5
    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->p()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/f;->E:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->a()Z

    goto :goto_5

    :cond_7
    :goto_6
    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->p()I

    move-result v0

    if-ge v0, v2, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Landroidx/leanback/widget/f;->l4()V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->m4()V

    return-void
.end method

.method private W1(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    if-eqz v0, :cond_1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$o;->C(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private X2()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->b()V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    iget-object v0, v0, Landroidx/leanback/widget/a0;->c:Landroidx/leanback/widget/a0$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->p0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/a0$a;->x(I)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    iget-object v0, v0, Landroidx/leanback/widget/a0;->b:Landroidx/leanback/widget/a0$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->X()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/a0$a;->x(I)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    iget-object v0, v0, Landroidx/leanback/widget/a0;->c:Landroidx/leanback/widget/a0$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->f0()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->g0()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/a0$a;->t(II)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    iget-object v0, v0, Landroidx/leanback/widget/a0;->b:Landroidx/leanback/widget/a0$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->h0()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->e0()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/a0$a;->t(II)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->i()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/f;->b0:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/f;->L:I

    return-void
.end method

.method private Z1(ZZII)V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/f;->E:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, v1, p3, p4}, Landroidx/leanback/widget/f;->z3(Landroid/view/View;ZII)V

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_1
    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result p1

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0, v1, p3, p4}, Landroidx/leanback/widget/f;->z3(Landroid/view/View;ZII)V

    :cond_5
    :goto_3
    return-void
.end method

.method private a2()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    iget-object v1, p0, Landroidx/leanback/widget/f;->g0:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/w0;->R(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private b2(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->c2(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method private b3()Z
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j$a0;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Landroidx/leanback/widget/f;->E:I

    :goto_0
    iput v3, p0, Landroidx/leanback/widget/f;->F:I

    goto :goto_1

    :cond_0
    iget v4, p0, Landroidx/leanback/widget/f;->E:I

    if-lt v4, v0, :cond_1

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/leanback/widget/f;->E:I

    goto :goto_0

    :cond_1
    if-ne v4, v1, :cond_2

    if-lez v0, :cond_2

    iput v3, p0, Landroidx/leanback/widget/f;->E:I

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j$a0;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->m()I

    move-result v0

    if-ltz v0, :cond_3

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->r()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/f;->V:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Landroidx/leanback/widget/f;->k4()V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->m4()V

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget v1, p0, Landroidx/leanback/widget/f;->S:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/e;->F(I)V

    return v2

    :cond_3
    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/leanback/widget/f;->C:I

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    const/high16 v1, 0x40000

    if-eqz v0, :cond_5

    iget v4, p0, Landroidx/leanback/widget/f;->V:I

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->r()I

    move-result v0

    if-ne v4, v0, :cond_5

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    iget-object v4, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v4}, Landroidx/leanback/widget/e;->u()Z

    move-result v4

    if-eq v0, v4, :cond_7

    :cond_5
    iget v0, p0, Landroidx/leanback/widget/f;->V:I

    invoke-static {v0}, Landroidx/leanback/widget/e;->g(I)Landroidx/leanback/widget/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget-object v4, p0, Landroidx/leanback/widget/f;->h0:Landroidx/leanback/widget/e$b;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/e;->D(Landroidx/leanback/widget/e$b;)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget v4, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/e;->E(Z)V

    :cond_7
    invoke-direct {p0}, Landroidx/leanback/widget/f;->X2()V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->m4()V

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget v1, p0, Landroidx/leanback/widget/f;->S:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/e;->F(I)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$o;->w(Landroidx/recyclerview/widget/j$v;)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->A()V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->n()V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->m()V

    return v3
.end method

.method private c2(Landroid/view/View;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/f$e;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j$p;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/j$p;->a()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private c3()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    iput-object v0, p0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/f;->x:I

    iput v0, p0, Landroidx/leanback/widget/f;->y:I

    return-void
.end method

.method private d2(ILandroid/view/View;Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/f;->B2(Landroid/view/View;Landroid/view/View;)I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/f$e;

    invoke-virtual {p2}, Landroidx/leanback/widget/f$e;->h()[I

    move-result-object v0

    aget p3, v0, p3

    invoke-virtual {p2}, Landroidx/leanback/widget/f$e;->h()[I

    move-result-object p2

    const/4 v0, 0x0

    aget p2, p2, v0

    sub-int/2addr p3, p2

    add-int/2addr p1, p3

    :cond_0
    return p1
.end method

.method private e2(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 2

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->t2(Landroid/view/View;)I

    move-result v0

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p1, p2}, Landroidx/leanback/widget/f;->d2(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->x2(Landroid/view/View;)I

    move-result p1

    iget p2, p0, Landroidx/leanback/widget/f;->J:I

    add-int/2addr v0, p2

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    aput v1, p3, v1

    aput v1, p3, p2

    return v1

    :cond_2
    :goto_0
    aput v0, p3, v1

    aput p1, p3, p2

    return p2
.end method

.method private e3(III[I)V
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j$v;->o(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    sget-object v1, Landroidx/leanback/widget/f;->i0:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/j$o;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->f0()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->g0()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->h0()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->e0()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->h2(Landroid/view/View;)I

    move-result p3

    aput p3, p4, p2

    const/4 p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->g2(Landroid/view/View;)I

    move-result p3

    aput p3, p4, p2

    iget-object p2, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/j$v;->B(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private f3(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/f;->u:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private f4()V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/leanback/widget/f;->g4(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g3(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/f;->u:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private g4(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    invoke-virtual {v0}, Landroidx/leanback/widget/f$e;->k()Landroidx/leanback/widget/j;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    iget-object v1, v1, Landroidx/leanback/widget/i;->c:Landroidx/leanback/widget/i$a;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/i$a;->j(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f$e;->t(I)V

    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    iget-object v1, v1, Landroidx/leanback/widget/i;->b:Landroidx/leanback/widget/i$a;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/i$a;->j(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f$e;->u(I)V

    goto :goto_1

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/f;->u:I

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/f$e;->g(ILandroid/view/View;)V

    iget v1, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    iget-object v1, v1, Landroidx/leanback/widget/i;->c:Landroidx/leanback/widget/i$a;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/i$a;->j(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f$e;->t(I)V

    :goto_1
    return-void
.end method

.method private j4()V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v0, v0, -0x401

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/leanback/widget/f;->n3(Z)Z

    move-result v2

    const/16 v3, 0x400

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/leanback/widget/f;->a2()V

    :cond_1
    return-void
.end method

.method private k3()Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->v()Z

    move-result v0

    return v0
.end method

.method private k4()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    iget-object v0, v0, Landroidx/leanback/widget/a0;->c:Landroidx/leanback/widget/a0$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->p0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/a0$a;->x(I)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    iget-object v0, v0, Landroidx/leanback/widget/a0;->b:Landroidx/leanback/widget/a0$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->X()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/a0$a;->x(I)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    iget-object v0, v0, Landroidx/leanback/widget/a0;->c:Landroidx/leanback/widget/a0$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->f0()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->g0()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/a0$a;->t(II)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    iget-object v0, v0, Landroidx/leanback/widget/a0;->b:Landroidx/leanback/widget/a0$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->h0()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->e0()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/a0$a;->t(II)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->i()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/f;->b0:I

    return-void
.end method

.method private l3()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget v1, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/leanback/widget/f;->b0:I

    iget v2, p0, Landroidx/leanback/widget/f;->c0:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/leanback/widget/f;->y:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/f;->c0:I

    neg-int v1, v1

    iget v2, p0, Landroidx/leanback/widget/f;->y:I

    sub-int/2addr v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/e;->w(I)V

    return-void
.end method

.method private m3(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->U2()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/f;->T2()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/f;->H:Landroidx/leanback/widget/f$f;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->r1()V

    new-instance v0, Landroidx/leanback/widget/f$f;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    iget v2, p0, Landroidx/leanback/widget/f;->V:I

    const/4 v3, 0x0

    if-le v2, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-direct {v0, p0, p1, v1}, Landroidx/leanback/widget/f$f;-><init>(Landroidx/leanback/widget/f;IZ)V

    iput v3, p0, Landroidx/leanback/widget/f;->I:I

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/f;->L1(Landroidx/recyclerview/widget/j$z;)V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroidx/leanback/widget/f$f;->B()V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroidx/leanback/widget/f$f;->A()V

    :goto_3
    return-void
.end method

.method private m4()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->c()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->g()I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/f;->L:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Landroidx/leanback/widget/f;->z2()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/leanback/widget/a0$a;->B(IIII)V

    return-void
.end method

.method private n3(Z)Z
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/leanback/widget/f;->N:I

    const/4 v2, 0x0

    if-nez v1, :cond_15

    iget-object v1, v0, Landroidx/leanback/widget/f;->O:[I

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/leanback/widget/e;->n()[Lm/d;

    move-result-object v1

    :goto_0
    const/4 v4, -0x1

    move v5, v2

    move v6, v5

    move v7, v4

    :goto_1
    iget v8, v0, Landroidx/leanback/widget/f;->V:I

    if-ge v5, v8, :cond_14

    if-nez v1, :cond_2

    move-object v8, v3

    goto :goto_2

    :cond_2
    aget-object v8, v1, v5

    :goto_2
    if-nez v8, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Lm/d;->g()I

    move-result v9

    :goto_3
    move v10, v2

    move v11, v4

    :goto_4
    if-ge v10, v9, :cond_9

    invoke-virtual {v8, v10}, Lm/d;->d(I)I

    move-result v12

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v8, v13}, Lm/d;->d(I)I

    move-result v13

    :goto_5
    if-gt v12, v13, :cond_8

    iget v14, v0, Landroidx/leanback/widget/f;->x:I

    sub-int v14, v12, v14

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_4

    goto :goto_7

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0, v14}, Landroidx/leanback/widget/f;->d3(Landroid/view/View;)V

    :cond_5
    iget v15, v0, Landroidx/leanback/widget/f;->u:I

    if-nez v15, :cond_6

    invoke-virtual {v0, v14}, Landroidx/leanback/widget/f;->g2(Landroid/view/View;)I

    move-result v14

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/f;->h2(Landroid/view/View;)I

    move-result v14

    :goto_6
    if-le v14, v11, :cond_7

    move v11, v14

    :cond_7
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    :cond_9
    iget-object v8, v0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j$a0;->c()I

    move-result v8

    iget-object v9, v0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/j;->l0()Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_11

    if-eqz p1, :cond_11

    if-gez v11, :cond_11

    if-lez v8, :cond_11

    if-gez v7, :cond_10

    iget v9, v0, Landroidx/leanback/widget/f;->E:I

    if-gez v9, :cond_a

    move v9, v2

    goto :goto_8

    :cond_a
    if-lt v9, v8, :cond_b

    add-int/lit8 v9, v8, -0x1

    :cond_b
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v12

    if-lez v12, :cond_e

    iget-object v12, v0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/j;->e0(Landroid/view/View;)Landroidx/recyclerview/widget/j$d0;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/recyclerview/widget/j$d0;->m()I

    move-result v12

    iget-object v13, v0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v14

    sub-int/2addr v14, v10

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/j;->e0(Landroid/view/View;)Landroidx/recyclerview/widget/j$d0;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/recyclerview/widget/j$d0;->m()I

    move-result v13

    if-lt v9, v12, :cond_e

    if-gt v9, v13, :cond_e

    sub-int v14, v9, v12

    sub-int v9, v13, v9

    if-gt v14, v9, :cond_c

    add-int/lit8 v9, v12, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v9, v13, 0x1

    :goto_9
    if-gez v9, :cond_d

    add-int/lit8 v14, v8, -0x1

    if-ge v13, v14, :cond_d

    add-int/lit8 v9, v13, 0x1

    goto :goto_a

    :cond_d
    if-lt v9, v8, :cond_e

    if-lez v12, :cond_e

    add-int/lit8 v9, v12, -0x1

    :cond_e
    :goto_a
    if-ltz v9, :cond_10

    if-ge v9, v8, :cond_10

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v12, v0, Landroidx/leanback/widget/f;->d0:[I

    invoke-direct {v0, v9, v7, v8, v12}, Landroidx/leanback/widget/f;->e3(III[I)V

    iget v7, v0, Landroidx/leanback/widget/f;->u:I

    if-nez v7, :cond_f

    iget-object v7, v0, Landroidx/leanback/widget/f;->d0:[I

    aget v7, v7, v10

    goto :goto_b

    :cond_f
    iget-object v7, v0, Landroidx/leanback/widget/f;->d0:[I

    aget v7, v7, v2

    :cond_10
    :goto_b
    if-ltz v7, :cond_11

    move v11, v7

    :cond_11
    if-gez v11, :cond_12

    move v11, v2

    :cond_12
    iget-object v8, v0, Landroidx/leanback/widget/f;->O:[I

    aget v9, v8, v5

    if-eq v9, v11, :cond_13

    aput v11, v8, v5

    move v6, v10

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_14
    return v6

    :cond_15
    :goto_c
    return v2
.end method

.method private p2(I)I
    .locals 9

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    const/16 v1, 0x82

    const/16 v2, 0x42

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x11

    if-nez v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p1, v8, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    move v4, v5

    goto :goto_4

    :cond_1
    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr p1, v0

    if-nez p1, :cond_9

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    goto :goto_4

    :cond_3
    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr p1, v0

    if-nez p1, :cond_5

    goto :goto_4

    :cond_4
    if-ne v0, v7, :cond_8

    const/high16 v0, 0x80000

    if-eq p1, v8, :cond_7

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v7

    goto :goto_4

    :cond_6
    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr p1, v0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_7
    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_8
    :goto_3
    move v4, v8

    :cond_9
    :goto_4
    return v4
.end method

.method private p3()V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget v2, p0, Landroidx/leanback/widget/f;->E:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/f;->c0:I

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->b0:I

    iget v3, p0, Landroidx/leanback/widget/f;->c0:I

    add-int/2addr v0, v3

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/e;->y(II)V

    :cond_1
    return-void
.end method

.method private q2(Landroid/view/View;[I)Z
    .locals 12

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->c2(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->L2(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->K2(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v3}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/leanback/widget/a0$a;->g()I

    move-result v3

    iget-object v4, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v4}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/a0$a;->c()I

    move-result v4

    iget-object v5, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v5, v0}, Landroidx/leanback/widget/e;->s(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ge v1, v3, :cond_5

    iget v1, p0, Landroidx/leanback/widget/f;->Y:I

    if-ne v1, v8, :cond_3

    move-object v1, p1

    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/f;->k3()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v1}, Landroidx/leanback/widget/e;->m()I

    move-result v10

    invoke-virtual {v1, v10, v0}, Landroidx/leanback/widget/e;->o(II)[Lm/d;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v7}, Lm/d;->d(I)I

    move-result v10

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroidx/leanback/widget/f;->L2(Landroid/view/View;)I

    move-result v11

    sub-int v11, v2, v11

    if-le v11, v4, :cond_1

    invoke-virtual {v1}, Lm/d;->g()I

    move-result v0

    if-le v0, v8, :cond_0

    invoke-virtual {v1, v8}, Lm/d;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v9

    move-object v9, v0

    goto :goto_2

    :cond_0
    move-object v2, v9

    move-object v9, v10

    goto :goto_2

    :cond_1
    move-object v1, v10

    goto :goto_0

    :cond_2
    move-object v2, v9

    move-object v9, v1

    goto :goto_2

    :cond_3
    move-object v2, v9

    :cond_4
    move-object v9, p1

    goto :goto_2

    :cond_5
    add-int v10, v4, v3

    if-le v2, v10, :cond_9

    iget v2, p0, Landroidx/leanback/widget/f;->Y:I

    if-ne v2, v8, :cond_8

    :cond_6
    iget-object v2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v2}, Landroidx/leanback/widget/e;->p()I

    move-result v8

    invoke-virtual {v2, v0, v8}, Landroidx/leanback/widget/e;->o(II)[Lm/d;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lm/d;->g()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v2, v8}, Lm/d;->d(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/f;->K2(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v8, v1

    if-le v8, v4, :cond_7

    move-object v2, v9

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Landroidx/leanback/widget/f;->O1()Z

    move-result v8

    if-nez v8, :cond_6

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_8
    move-object v2, p1

    goto :goto_2

    :cond_9
    move-object v2, v9

    :goto_2
    if-eqz v9, :cond_a

    invoke-virtual {p0, v9}, Landroidx/leanback/widget/f;->L2(Landroid/view/View;)I

    move-result v0

    :goto_3
    sub-int/2addr v0, v3

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/f;->K2(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v4

    goto :goto_3

    :cond_b
    move v0, v7

    :goto_4
    if-eqz v9, :cond_c

    move-object p1, v9

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_d

    move-object p1, v2

    :cond_d
    :goto_5
    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->x2(Landroid/view/View;)I

    move-result p1

    if-nez v0, :cond_f

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    return v7

    :cond_f
    :goto_6
    aput v0, p2, v7

    aput p1, p2, v6

    return v6
.end method

.method private q3()V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget v2, p0, Landroidx/leanback/widget/f;->E:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/f;->b0:I

    iget v3, p0, Landroidx/leanback/widget/f;->c0:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->c0:I

    neg-int v0, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/e;->z(II)V

    :cond_1
    return-void
.end method

.method private r3(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "GridLayoutManager"

    const-string v1, "Recycler information was not released, bug!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    iput-object p2, p0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/f;->x:I

    iput p1, p0, Landroidx/leanback/widget/f;->y:I

    return-void
.end method

.method private s3(I)I
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v2, :cond_1

    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->d()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->e()I

    move-result v0

    if-ge p1, v0, :cond_1

    :goto_0
    move p1, v0

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    :cond_2
    neg-int v1, p1

    invoke-direct {p0, v1}, Landroidx/leanback/widget/f;->f3(I)V

    iget v1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->l4()V

    return p1

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v1

    iget v3, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    if-lez p1, :cond_5

    goto :goto_1

    :cond_4
    if-gez p1, :cond_5

    :goto_1
    invoke-direct {p0}, Landroidx/leanback/widget/f;->l3()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Landroidx/leanback/widget/f;->P1()V

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v3

    if-le v3, v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v3

    iget v5, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    if-lez p1, :cond_8

    goto :goto_4

    :cond_7
    if-gez p1, :cond_8

    :goto_4
    invoke-direct {p0}, Landroidx/leanback/widget/f;->p3()V

    goto :goto_5

    :cond_8
    invoke-direct {p0}, Landroidx/leanback/widget/f;->q3()V

    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v4

    if-ge v4, v3, :cond_9

    goto :goto_6

    :cond_9
    move v2, v0

    :goto_6
    or-int v0, v1, v2

    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroidx/leanback/widget/f;->j4()V

    :cond_a
    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->l4()V

    return p1
.end method

.method private t2(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->F2(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a0$a;->h(I)I

    move-result p1

    return p1
.end method

.method private t3(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    neg-int v0, p1

    invoke-direct {p0, v0}, Landroidx/leanback/widget/f;->g3(I)V

    iget v0, p0, Landroidx/leanback/widget/f;->L:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/leanback/widget/f;->L:I

    invoke-direct {p0}, Landroidx/leanback/widget/f;->m4()V

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return p1
.end method

.method private u2(I)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->N:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/f;->O:[I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    aget p1, v0, p1

    return p1
.end method

.method private u3(IIZ)V
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->s3(I)I

    invoke-direct {p0, p2}, Landroidx/leanback/widget/f;->t3(I)I

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/j;->l1(II)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/j;->scrollBy(II)V

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->T1()V

    :goto_1
    return-void
.end method

.method private w3(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/f;->x3(Landroid/view/View;Landroid/view/View;ZII)V

    return-void
.end method

.method private x2(Landroid/view/View;)I
    .locals 1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->G2(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->c()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a0$a;->h(I)I

    move-result p1

    return p1
.end method

.method private x3(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->c2(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/f;->B2(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/f;->F:I

    if-eq v1, v2, :cond_3

    :cond_1
    iput v0, p0, Landroidx/leanback/widget/f;->E:I

    iput v1, p0, Landroidx/leanback/widget/f;->F:I

    iput v4, p0, Landroidx/leanback/widget/f;->I:I

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->S1()V

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroidx/leanback/widget/a;->v1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    return-void

    :cond_6
    sget-object v0, Landroidx/leanback/widget/f;->j0:[I

    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/f;->w2(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-nez p1, :cond_7

    if-nez p4, :cond_7

    if-eqz p5, :cond_8

    :cond_7
    sget-object p1, Landroidx/leanback/widget/f;->j0:[I

    aget p2, p1, v4

    add-int/2addr p2, p4

    aget p1, p1, v3

    add-int/2addr p1, p5

    invoke-direct {p0, p2, p1, p3}, Landroidx/leanback/widget/f;->u3(IIZ)V

    :cond_8
    return-void
.end method

.method private z2()I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->V:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/f;->v2(I)I

    move-result v1

    invoke-direct {p0, v0}, Landroidx/leanback/widget/f;->u2(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public A1(ILandroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->V2()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/leanback/widget/f;->C:I

    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/f;->r3(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)V

    iget p2, p0, Landroidx/leanback/widget/f;->u:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->s3(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->t3(I)I

    move-result p1

    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    iget p2, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/f;->C:I

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method A2()I
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->X()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_2

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->p0()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->p0()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gez v1, :cond_2

    :goto_0
    add-int/2addr v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method A3(I)V
    .locals 3

    iput p1, p0, Landroidx/leanback/widget/f;->K:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/leanback/widget/f;->K:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method B2(Landroid/view/View;Landroid/view/View;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/f$e;

    invoke-virtual {v1}, Landroidx/leanback/widget/f$e;->k()Landroidx/leanback/widget/j;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/leanback/widget/j;->a()[Landroidx/leanback/widget/j$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    :goto_0
    if-eq p2, p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    move v4, v3

    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroidx/leanback/widget/j$a;->a()I

    move-result v5

    if-ne v5, v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method B3(I)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->c0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_1

    iput p1, p0, Landroidx/leanback/widget/f;->c0:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->v1()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExtraLayoutSpace must >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C2()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->F:I

    return v0
.end method

.method public C3(ZZ)V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v0, v0, -0x1801

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x800

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    or-int/2addr p1, v0

    if-eqz p2, :cond_1

    const/16 v1, 0x1000

    :cond_1
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    return-void
.end method

.method D2()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D3(ZZ)V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v0, v0, -0x6001

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x2000

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    or-int/2addr p1, v0

    if-eqz p2, :cond_1

    const/16 v1, 0x4000

    :cond_1
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    return-void
.end method

.method public E()Landroidx/recyclerview/widget/j$p;
    .locals 2

    new-instance v0, Landroidx/leanback/widget/f$e;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/leanback/widget/f$e;-><init>(II)V

    return-object v0
.end method

.method public E2()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->R:I

    return v0
.end method

.method public E3(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/f;->Y:I

    return-void
.end method

.method public F(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/j$p;
    .locals 1

    new-instance v0, Landroidx/leanback/widget/f$e;

    invoke-direct {v0, p1, p2}, Landroidx/leanback/widget/f$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method F3(Z)V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const v1, -0x8001

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const p1, 0x8000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    return-void
.end method

.method public G(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/j$p;
    .locals 1

    instance-of v0, p1, Landroidx/leanback/widget/f$e;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/leanback/widget/f$e;

    check-cast p1, Landroidx/leanback/widget/f$e;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/f$e;-><init>(Landroidx/leanback/widget/f$e;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/j$p;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/leanback/widget/f$e;

    check-cast p1, Landroidx/recyclerview/widget/j$p;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/f$e;-><init>(Landroidx/recyclerview/widget/j$p;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/leanback/widget/f$e;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/f$e;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_2
    new-instance v0, Landroidx/leanback/widget/f$e;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/f$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public G0(Landroidx/recyclerview/widget/j$g;Landroidx/recyclerview/widget/j$g;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/leanback/widget/f;->R1()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/f;->I:I

    iget-object v0, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {v0}, Landroidx/leanback/widget/z;->b()V

    :cond_0
    instance-of v0, p2, Landroidx/leanback/widget/c;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroidx/leanback/widget/c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/leanback/widget/f;->f0:Landroidx/leanback/widget/c;

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/j$o;->G0(Landroidx/recyclerview/widget/j$g;Landroidx/recyclerview/widget/j$g;)V

    return-void
.end method

.method public G3(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/f;->U:I

    return-void
.end method

.method public H0(Landroidx/recyclerview/widget/j;Ljava/util/ArrayList;II)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/j;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget v4, v0, Landroidx/leanback/widget/f;->C:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v0, Landroidx/leanback/widget/f;->H:Landroidx/leanback/widget/f$f;

    if-eqz v4, :cond_1

    return v5

    :cond_1
    invoke-direct {v0, v2}, Landroidx/leanback/widget/f;->p2(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    invoke-direct {v0, v7}, Landroidx/leanback/widget/f;->W1(Landroid/view/View;)I

    move-result v7

    invoke-direct {v0, v7}, Landroidx/leanback/widget/f;->b2(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_3

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_3
    iget-object v11, v0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz v11, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_a

    :cond_4
    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v4, v12, :cond_5

    if-ne v4, v11, :cond_6

    :cond_5
    iget-object v13, v0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v13}, Landroidx/leanback/widget/e;->r()I

    move-result v13

    if-gt v13, v5, :cond_6

    return v5

    :cond_6
    iget-object v13, v0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz v13, :cond_7

    if-eqz v10, :cond_7

    invoke-virtual {v13, v8}, Landroidx/leanback/widget/e;->q(I)Landroidx/leanback/widget/e$a;

    move-result-object v13

    iget v13, v13, Landroidx/leanback/widget/e$a;->a:I

    goto :goto_1

    :cond_7
    move v13, v9

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eq v4, v5, :cond_9

    if-ne v4, v12, :cond_8

    goto :goto_2

    :cond_8
    move v15, v9

    goto :goto_3

    :cond_9
    :goto_2
    move v15, v5

    :goto_3
    if-lez v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v6, v16

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    if-ne v7, v9, :cond_c

    if-lez v15, :cond_b

    const/16 v16, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v7

    sub-int/2addr v7, v5

    move/from16 v16, v7

    goto :goto_5

    :cond_c
    add-int v16, v7, v15

    :goto_5
    move/from16 v7, v16

    :goto_6
    if-lez v15, :cond_d

    if-gt v7, v6, :cond_22

    goto :goto_7

    :cond_d
    if-lt v7, v6, :cond_22

    :goto_7
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_19

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_e

    goto/16 :goto_9

    :cond_e
    if-nez v10, :cond_f

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v14, :cond_19

    goto/16 :goto_d

    :cond_f
    invoke-direct {v0, v7}, Landroidx/leanback/widget/f;->b2(I)I

    move-result v11

    iget-object v12, v0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v12, v11}, Landroidx/leanback/widget/e;->q(I)Landroidx/leanback/widget/e$a;

    move-result-object v12

    if-nez v12, :cond_11

    :cond_10
    :goto_8
    const/4 v11, 0x2

    goto :goto_9

    :cond_11
    if-ne v4, v5, :cond_12

    iget v12, v12, Landroidx/leanback/widget/e$a;->a:I

    if-ne v12, v13, :cond_10

    if-le v11, v8, :cond_10

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v14, :cond_10

    goto/16 :goto_d

    :cond_12
    if-nez v4, :cond_13

    iget v12, v12, Landroidx/leanback/widget/e$a;->a:I

    if-ne v12, v13, :cond_10

    if-ge v11, v8, :cond_10

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v14, :cond_10

    goto/16 :goto_d

    :cond_13
    const/4 v11, 0x3

    if-ne v4, v11, :cond_16

    iget v12, v12, Landroidx/leanback/widget/e$a;->a:I

    if-ne v12, v13, :cond_14

    goto :goto_8

    :cond_14
    if-ge v12, v13, :cond_15

    goto/16 :goto_d

    :cond_15
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_8

    :cond_16
    const/4 v11, 0x2

    if-ne v4, v11, :cond_19

    iget v12, v12, Landroidx/leanback/widget/e$a;->a:I

    if-ne v12, v13, :cond_17

    goto :goto_9

    :cond_17
    if-le v12, v13, :cond_18

    goto/16 :goto_d

    :cond_18
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_19
    :goto_9
    add-int/2addr v7, v15

    const/4 v12, 0x3

    goto :goto_6

    :cond_1a
    :goto_a
    return v5

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v6, v0, Landroidx/leanback/widget/f;->Y:I

    if-eqz v6, :cond_1f

    iget-object v6, v0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v6}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/leanback/widget/a0$a;->g()I

    move-result v6

    iget-object v7, v0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v7}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/leanback/widget/a0$a;->c()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v8

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v8, :cond_1d

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1c

    invoke-virtual {v0, v10}, Landroidx/leanback/widget/f;->L2(Landroid/view/View;)I

    move-result v11

    if-lt v11, v6, :cond_1c

    invoke-virtual {v0, v10}, Landroidx/leanback/widget/f;->K2(Landroid/view/View;)I

    move-result v11

    if-gt v11, v7, :cond_1c

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_1d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v4, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v6

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_20

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {v8, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_1f
    iget v6, v0, Landroidx/leanback/widget/f;->E:I

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_20

    invoke-virtual {v6, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_21

    return v5

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_d
    return v5
.end method

.method public H3(I)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    iput p1, p0, Landroidx/leanback/widget/f;->Q:I

    if-nez v0, :cond_0

    iput p1, p0, Landroidx/leanback/widget/f;->S:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/f;->T:I

    :goto_0
    return-void
.end method

.method public I3(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    invoke-virtual {v0}, Landroidx/leanback/widget/i;->a()Landroidx/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/j$a;->f(I)V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->f4()V

    return-void
.end method

.method protected J2(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j$v;->o(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public J3(F)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    invoke-virtual {v0}, Landroidx/leanback/widget/i;->a()Landroidx/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/j$a;->g(F)V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->f4()V

    return-void
.end method

.method K2(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->v:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public K3(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    invoke-virtual {v0}, Landroidx/leanback/widget/i;->a()Landroidx/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/j$a;->h(Z)V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->f4()V

    return-void
.end method

.method public L1(Landroidx/recyclerview/widget/j$z;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->d4()V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/j$o;->L1(Landroidx/recyclerview/widget/j$z;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j$z;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/leanback/widget/f$d;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/leanback/widget/f$d;

    iput-object p1, p0, Landroidx/leanback/widget/f;->G:Landroidx/leanback/widget/f$d;

    instance-of v0, p1, Landroidx/leanback/widget/f$f;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/leanback/widget/f$f;

    iput-object p1, p0, Landroidx/leanback/widget/f;->H:Landroidx/leanback/widget/f$f;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/leanback/widget/f;->G:Landroidx/leanback/widget/f$d;

    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/f;->H:Landroidx/leanback/widget/f$f;

    :goto_0
    return-void
.end method

.method L2(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->v:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public L3(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    invoke-virtual {v0}, Landroidx/leanback/widget/i;->a()Landroidx/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/j$a;->i(I)V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->f4()V

    return-void
.end method

.method M2(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroidx/leanback/widget/f;->i0:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/f;->Q(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, p0, Landroidx/leanback/widget/f;->u:I

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_0
    return p1
.end method

.method public M3(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/f;->Q:I

    iput p1, p0, Landroidx/leanback/widget/f;->R:I

    iput p1, p0, Landroidx/leanback/widget/f;->T:I

    iput p1, p0, Landroidx/leanback/widget/f;->S:I

    return-void
.end method

.method public N1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public N2()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->j()I

    move-result v0

    return v0
.end method

.method public N3(Z)V
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, p1, :cond_2

    and-int/lit16 v0, v0, -0x201

    if-eqz p1, :cond_1

    const/16 v2, 0x200

    :cond_1
    or-int p1, v0, v2

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->v1()V

    :cond_2
    return-void
.end method

.method public O(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->r()I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/j$o;->O(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)I

    move-result p1

    return p1
.end method

.method public O2()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->k()I

    move-result v0

    return v0
.end method

.method public O3(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Landroidx/leanback/widget/f;->W:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public P(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/j$o;->P(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/f$e;

    iget p1, p1, Landroidx/leanback/widget/f$e;->h:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public P0(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;Landroidx/core/view/accessibility/p;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/f;->r3(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->c()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-le v0, v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/f;->Y2(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/core/view/accessibility/p$a;->E:Landroidx/core/view/accessibility/p$a;

    goto :goto_1

    :cond_1
    sget-object v2, Landroidx/core/view/accessibility/p$a;->C:Landroidx/core/view/accessibility/p$a;

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/core/view/accessibility/p$a;->B:Landroidx/core/view/accessibility/p$a;

    :goto_1
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/p;->b(Landroidx/core/view/accessibility/p$a;)V

    invoke-virtual {p3, v3}, Landroidx/core/view/accessibility/p;->e0(Z)V

    :cond_3
    if-le v0, v3, :cond_6

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/f;->Y2(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    sget-object v0, Landroidx/core/view/accessibility/p$a;->C:Landroidx/core/view/accessibility/p$a;

    goto :goto_2

    :cond_4
    sget-object v0, Landroidx/core/view/accessibility/p$a;->E:Landroidx/core/view/accessibility/p$a;

    goto :goto_2

    :cond_5
    sget-object v0, Landroidx/core/view/accessibility/p$a;->D:Landroidx/core/view/accessibility/p$a;

    :goto_2
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/p;->b(Landroidx/core/view/accessibility/p$a;)V

    invoke-virtual {p3, v3}, Landroidx/core/view/accessibility/p;->e0(Z)V

    :cond_6
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/f;->l0(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/f;->O(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/j$o;->x0(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/j$o;->m0(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroidx/core/view/accessibility/p$b;->a(IIZI)Landroidx/core/view/accessibility/p$b;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/core/view/accessibility/p;->T(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    return-void
.end method

.method public P2()F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/a0$a;->l()F

    move-result v0

    return v0
.end method

.method P3(Landroidx/leanback/widget/m;)V
    .locals 0

    return-void
.end method

.method public Q(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/j$o;->Q(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/f$e;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroidx/leanback/widget/f$e;->e:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroidx/leanback/widget/f$e;->f:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroidx/leanback/widget/f$e;->g:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroidx/leanback/widget/f$e;->h:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method Q1(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method Q2(Landroidx/recyclerview/widget/j;ILandroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->Y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/f;->R2(Landroidx/recyclerview/widget/j;ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/f;->S2(Landroidx/recyclerview/widget/j;ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public Q3(Landroidx/leanback/widget/n;)V
    .locals 0

    return-void
.end method

.method public R(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/j$o;->R(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/f$e;

    iget p1, p1, Landroidx/leanback/widget/f$e;->e:I

    add-int/2addr v0, p1

    return v0
.end method

.method public R0(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;Landroid/view/View;Landroidx/core/view/accessibility/p;)V
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz p2, :cond_4

    instance-of p2, p1, Landroidx/leanback/widget/f$e;

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    check-cast p1, Landroidx/leanback/widget/f$e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j$p;->a()I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/e;->s(I)I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    move v2, p2

    if-gez v2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {p2}, Landroidx/leanback/widget/e;->r()I

    move-result p2

    div-int/2addr p1, p2

    iget p2, p0, Landroidx/leanback/widget/f;->u:I

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_3

    move v0, v2

    move v2, p1

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/p$c;->a(IIIIZZ)Landroidx/core/view/accessibility/p$c;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/p;->U(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public R3(Landroidx/leanback/widget/o;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public S0(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0, v4, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/f;->l()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p2, v2, :cond_3

    const/16 v4, 0x82

    goto :goto_1

    :cond_3
    const/16 v4, 0x21

    :goto_1
    iget-object v5, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0, v5, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/f;->k()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->a0()I

    move-result v4

    if-ne v4, v3, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-ne p2, v2, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    move v5, v1

    :goto_4
    xor-int/2addr v4, v5

    if-eqz v4, :cond_7

    const/16 v4, 0x42

    goto :goto_5

    :cond_7
    const/16 v4, 0x11

    :goto_5
    iget-object v5, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0, v5, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v4

    :goto_6
    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object v4, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x60000

    if-ne v4, v5, :cond_a

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-direct {p0, p2}, Landroidx/leanback/widget/f;->p2(I)I

    move-result v4

    iget-object v5, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j;->getScrollState()I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v3

    goto :goto_7

    :cond_b
    move v5, v1

    :goto_7
    const/high16 v6, 0x20000

    if-ne v4, v3, :cond_e

    if-nez v5, :cond_c

    iget v1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_d

    :cond_c
    move-object v0, p1

    :cond_d
    iget v1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->U2()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0, v3}, Landroidx/leanback/widget/f;->m3(Z)V

    goto :goto_8

    :cond_e
    if-nez v4, :cond_11

    if-nez v5, :cond_f

    iget v2, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_10

    :cond_f
    move-object v0, p1

    :cond_10
    iget v2, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->T2()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-direct {p0, v1}, Landroidx/leanback/widget/f;->m3(Z)V

    goto :goto_8

    :cond_11
    const/4 v1, 0x3

    if-ne v4, v1, :cond_12

    if-nez v5, :cond_13

    iget v1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_14

    goto :goto_8

    :cond_12
    if-ne v4, v2, :cond_14

    if-nez v5, :cond_13

    iget v1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_14

    :cond_13
    :goto_8
    move-object v0, p1

    :cond_14
    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_16

    return-object p2

    :cond_16
    if-eqz p1, :cond_17

    goto :goto_9

    :cond_17
    iget-object p1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    :goto_9
    return-object p1
.end method

.method S1()V
    .locals 5

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->W2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/j;->e0(Landroid/view/View;)Landroidx/recyclerview/widget/j$d0;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    iget v2, p0, Landroidx/leanback/widget/f;->E:I

    iget v4, p0, Landroidx/leanback/widget/f;->F:I

    invoke-virtual {p0, v1, v0, v2, v4}, Landroidx/leanback/widget/f;->X1(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/j$d0;II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/leanback/widget/f;->X1(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/j$d0;II)V

    :goto_1
    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroidx/leanback/widget/f;->a2()V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public S3(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/f;->u:I

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/i;->b(Landroidx/recyclerview/widget/j$o;I)Landroidx/recyclerview/widget/i;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/f;->v:Landroidx/recyclerview/widget/i;

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a0;->d(I)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/i;->b(I)V

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    return-void
.end method

.method public T0(Landroidx/recyclerview/widget/j;II)V
    .locals 1

    iget p1, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/leanback/widget/e;->m()I

    move-result p1

    if-ltz p1, :cond_0

    iget p1, p0, Landroidx/leanback/widget/f;->I:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/f;->E:I

    add-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/leanback/widget/f;->I:I

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {p1}, Landroidx/leanback/widget/z;->b()V

    return-void
.end method

.method T1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->W2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/j;->e0(Landroid/view/View;)Landroidx/recyclerview/widget/j$d0;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    iget v2, p0, Landroidx/leanback/widget/f;->E:I

    iget v3, p0, Landroidx/leanback/widget/f;->F:I

    invoke-virtual {p0, v1, v0, v2, v3}, Landroidx/leanback/widget/f;->Y1(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/j$d0;II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/leanback/widget/f;->Y1(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/j$d0;II)V

    :goto_1
    return-void
.end method

.method T2()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->Z()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/j;->W(I)Landroidx/recyclerview/widget/j$d0;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public T3(Z)V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v1, 0x10000

    and-int v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eq v2, p1, :cond_2

    const v2, -0x10001

    and-int/2addr v0, v2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/f;->C:I

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->v1()V

    :cond_2
    return-void
.end method

.method public U(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/j$o;->U(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/f$e;

    iget p1, p1, Landroidx/leanback/widget/f$e;->g:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public U0(Landroidx/recyclerview/widget/j;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/f;->I:I

    iget-object p1, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {p1}, Landroidx/leanback/widget/z;->b()V

    return-void
.end method

.method U2()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->Z()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/j;->W(I)Landroidx/recyclerview/widget/j$d0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public U3(I)V
    .locals 3

    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid row height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/f;->M:I

    return-void
.end method

.method public V(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/j$o;->V(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/f$e;

    iget p1, p1, Landroidx/leanback/widget/f$e;->f:I

    add-int/2addr v0, p1

    return v0
.end method

.method public V0(Landroidx/recyclerview/widget/j;III)V
    .locals 2

    iget p1, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget v0, p0, Landroidx/leanback/widget/f;->I:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    add-int v1, p2, p4

    if-ge p1, v1, :cond_0

    sub-int/2addr p3, p2

    add-int/2addr v0, p3

    :goto_0
    iput v0, p0, Landroidx/leanback/widget/f;->I:I

    goto :goto_1

    :cond_0
    if-ge p2, p1, :cond_1

    sub-int v1, p1, p4

    if-le p3, v1, :cond_1

    sub-int/2addr v0, p4

    goto :goto_0

    :cond_1
    if-le p2, p1, :cond_2

    if-ge p3, p1, :cond_2

    add-int/2addr v0, p4

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {p1}, Landroidx/leanback/widget/z;->b()V

    return-void
.end method

.method V1()V
    .locals 8

    iget-object v0, p0, Landroidx/leanback/widget/f;->B:Landroidx/recyclerview/widget/j$v;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j$v;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroidx/leanback/widget/f;->A:[I

    if-eqz v2, :cond_1

    array-length v3, v2

    if-le v1, v3, :cond_4

    :cond_1
    if-nez v2, :cond_2

    const/16 v2, 0x10

    goto :goto_0

    :cond_2
    array-length v2, v2

    :goto_0
    if-ge v2, v1, :cond_3

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/f;->A:[I

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/j$d0;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j$d0;->j()I

    move-result v5

    if-ltz v5, :cond_5

    iget-object v6, p0, Landroidx/leanback/widget/f;->A:[I

    add-int/lit8 v7, v4, 0x1

    aput v5, v6, v4

    move v4, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-lez v4, :cond_7

    iget-object v0, p0, Landroidx/leanback/widget/f;->A:[I

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->sort([III)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget-object v1, p0, Landroidx/leanback/widget/f;->A:[I

    iget-object v2, p0, Landroidx/leanback/widget/f;->z:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v4, v2}, Landroidx/leanback/widget/e;->h([IILandroid/util/SparseIntArray;)V

    :cond_7
    iget-object v0, p0, Landroidx/leanback/widget/f;->z:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method protected V2()Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V3(Z)V
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v1, 0x20000

    and-int v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eq v2, p1, :cond_2

    const v2, -0x20001

    and-int/2addr v0, v2

    if-eqz p1, :cond_1

    move v4, v1

    :cond_1
    or-int p1, v0, v4

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/leanback/widget/f;->Y:I

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget v0, p0, Landroidx/leanback/widget/f;->F:I

    iget v1, p0, Landroidx/leanback/widget/f;->J:I

    invoke-virtual {p0, p1, v0, v3, v1}, Landroidx/leanback/widget/f;->v3(IIZI)V

    :cond_2
    return-void
.end method

.method public W0(Landroidx/recyclerview/widget/j;II)V
    .locals 4

    iget p1, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/e;->m()I

    move-result p1

    if-ltz p1, :cond_1

    iget p1, p0, Landroidx/leanback/widget/f;->I:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    iget v1, p0, Landroidx/leanback/widget/f;->E:I

    add-int v2, v1, p1

    if-gt p2, v2, :cond_1

    add-int v3, p2, p3

    if-le v3, v2, :cond_0

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/leanback/widget/f;->E:I

    iput v0, p0, Landroidx/leanback/widget/f;->I:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p3

    iput p1, p0, Landroidx/leanback/widget/f;->I:I

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {p1}, Landroidx/leanback/widget/z;->b()V

    return-void
.end method

.method W2()Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W3(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroidx/leanback/widget/f;->X3(IIZI)V

    return-void
.end method

.method public X0(Landroidx/recyclerview/widget/j;II)V
    .locals 0

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/z;->h(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method X1(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/j$d0;II)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/o;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/leanback/widget/o;->a(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/j$d0;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public X3(IIZI)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->E:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->F:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/f;->J:I

    if-eq p4, v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/leanback/widget/f;->v3(IIZI)V

    :cond_2
    return-void
.end method

.method Y1(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/j$d0;II)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/o;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/leanback/widget/o;->b(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/j$d0;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method Y2(I)Z
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j;->W(I)Landroidx/recyclerview/widget/j$d0;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/j$d0;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/j$d0;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/j$d0;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/j$d0;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public Y3(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/leanback/widget/f;->X3(IIZI)V

    return-void
.end method

.method public Z0(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)V
    .locals 12

    iget v0, p0, Landroidx/leanback/widget/f;->V:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->c()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    if-lez v0, :cond_2

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    return-void

    :cond_2
    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_3

    invoke-direct {p0}, Landroidx/leanback/widget/f;->R1()V

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->m1(Landroidx/recyclerview/widget/j$v;)V

    return-void

    :cond_3
    and-int/lit8 v0, v0, -0x4

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/f;->C:I

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/f;->r3(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->h()Z

    move-result p1

    const/high16 v0, -0x80000000

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->h4()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result p1

    iget-object p2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz p2, :cond_a

    if-lez p1, :cond_a

    iget-object p2, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/j;->e0(Landroid/view/View;)Landroidx/recyclerview/widget/j$d0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$d0;->n()I

    move-result p2

    iget-object v1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/j;->e0(Landroid/view/View;)Landroidx/recyclerview/widget/j$d0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j$d0;->n()I

    move-result v1

    const v3, 0x7fffffff

    :goto_0
    if-ge v2, p1, :cond_8

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/leanback/widget/f$e;

    iget-object v6, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/j;->c0(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j$p;->c()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j$p;->d()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, p0, Landroidx/leanback/widget/f;->E:I

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j$p;->a()I

    move-result v8

    if-eq v7, v8, :cond_6

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Landroidx/leanback/widget/f;->E:I

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j$p;->a()I

    move-result v5

    if-ne v7, v5, :cond_6

    :cond_5
    if-lt v6, p2, :cond_6

    if-le v6, v1, :cond_7

    :cond_6
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/f;->L2(Landroid/view/View;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v4}, Landroidx/leanback/widget/f;->K2(Landroid/view/View;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-le v0, v3, :cond_9

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/leanback/widget/f;->y:I

    :cond_9
    invoke-direct {p0}, Landroidx/leanback/widget/f;->P1()V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->l3()V

    :cond_a
    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p1, p1, -0x4

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    return-void

    :cond_b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->j()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->i4()V

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->z0()Z

    move-result p1

    if-nez p1, :cond_d

    iget p1, p0, Landroidx/leanback/widget/f;->Y:I

    if-nez p1, :cond_d

    goto :goto_1

    :cond_d
    move v1, v2

    :goto_1
    iget p1, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_e

    iget v4, p0, Landroidx/leanback/widget/f;->I:I

    if-eq v4, v0, :cond_e

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/leanback/widget/f;->E:I

    iput v2, p0, Landroidx/leanback/widget/f;->F:I

    :cond_e
    iput v2, p0, Landroidx/leanback/widget/f;->I:I

    iget p1, p0, Landroidx/leanback/widget/f;->E:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Landroidx/leanback/widget/f;->E:I

    iget v4, p0, Landroidx/leanback/widget/f;->F:I

    iget-object v5, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v5

    iget-object v6, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroidx/leanback/widget/e;->m()I

    move-result v6

    goto :goto_2

    :cond_f
    move v6, v3

    :goto_2
    iget-object v7, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroidx/leanback/widget/e;->p()I

    move-result v7

    goto :goto_3

    :cond_10
    move v7, v3

    :goto_3
    iget v8, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v8, :cond_11

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->d()I

    move-result v8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->e()I

    move-result v9

    goto :goto_4

    :cond_11
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->d()I

    move-result v9

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->e()I

    move-result v8

    :goto_4
    invoke-direct {p0}, Landroidx/leanback/widget/f;->b3()Z

    move-result v10

    const/16 v11, 0x10

    if-eqz v10, :cond_12

    iget v2, p0, Landroidx/leanback/widget/f;->C:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Landroidx/leanback/widget/f;->C:I

    iget-object v2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    iget v3, p0, Landroidx/leanback/widget/f;->E:I

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/e;->G(I)V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->U1()V

    goto :goto_6

    :cond_12
    iget v10, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v10, v10, -0x5

    iput v10, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 v10, v10, -0x11

    if-eqz v5, :cond_13

    move v2, v11

    :cond_13
    or-int/2addr v2, v10

    iput v2, p0, Landroidx/leanback/widget/f;->C:I

    if-eqz v1, :cond_15

    if-ltz v6, :cond_14

    iget v2, p0, Landroidx/leanback/widget/f;->E:I

    if-gt v2, v7, :cond_14

    if-ge v2, v6, :cond_15

    :cond_14
    iget v6, p0, Landroidx/leanback/widget/f;->E:I

    move v7, v6

    :cond_15
    iget-object v2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v2, v6}, Landroidx/leanback/widget/e;->G(I)V

    if-eq v7, v3, :cond_16

    :goto_5
    invoke-direct {p0}, Landroidx/leanback/widget/f;->O1()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_5

    :cond_16
    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/widget/f;->l4()V

    iget-object v2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v2}, Landroidx/leanback/widget/e;->m()I

    move-result v2

    iget-object v3, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v3}, Landroidx/leanback/widget/e;->p()I

    move-result v3

    neg-int v6, v8

    neg-int v7, v9

    invoke-direct {p0, v5, v1, v6, v7}, Landroidx/leanback/widget/f;->Z1(ZZII)V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->P1()V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->l3()V

    iget-object v6, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v6}, Landroidx/leanback/widget/e;->m()I

    move-result v6

    if-ne v6, v2, :cond_16

    iget-object v2, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v2}, Landroidx/leanback/widget/e;->p()I

    move-result v2

    if-ne v2, v3, :cond_16

    invoke-direct {p0}, Landroidx/leanback/widget/f;->q3()V

    invoke-direct {p0}, Landroidx/leanback/widget/f;->p3()V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->j()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->V1()V

    :cond_17
    iget p2, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v1, p2, 0x400

    if-eqz v1, :cond_18

    and-int/lit16 p2, p2, -0x401

    iput p2, p0, Landroidx/leanback/widget/f;->C:I

    goto :goto_7

    :cond_18
    invoke-direct {p0}, Landroidx/leanback/widget/f;->j4()V

    :goto_7
    iget p2, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_19

    iget p2, p0, Landroidx/leanback/widget/f;->E:I

    if-ne p2, v0, :cond_1a

    iget v0, p0, Landroidx/leanback/widget/f;->F:I

    if-ne v0, v4, :cond_1a

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_1a

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_19

    goto :goto_8

    :cond_19
    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p1, p1, 0x14

    if-ne p1, v11, :cond_1b

    :cond_1a
    :goto_8
    invoke-virtual {p0}, Landroidx/leanback/widget/f;->S1()V

    :cond_1b
    invoke-virtual {p0}, Landroidx/leanback/widget/f;->T1()V

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->A2()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->s3(I)I

    :cond_1c
    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p1, p1, -0x4

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    return-void
.end method

.method public Z2()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z3(I)V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    const/4 v1, 0x1

    iput p1, p0, Landroidx/leanback/widget/f;->R:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Landroidx/leanback/widget/f;->S:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/f;->T:I

    :goto_0
    return-void
.end method

.method public a1(Landroidx/recyclerview/widget/j$a0;)V
    .locals 0

    return-void
.end method

.method a3(ILandroid/view/View;III)V
    .locals 9

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/f;->g2(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/f;->h2(Landroid/view/View;)I

    move-result v0

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/f;->N:I

    if-lez v1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    iget v1, p0, Landroidx/leanback/widget/f;->U:I

    and-int/lit8 v2, v1, 0x70

    iget v3, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v4, 0xc0000

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const v3, 0x800007

    and-int/2addr v1, v3

    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7

    :goto_1
    iget v3, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v3, :cond_3

    const/16 v5, 0x30

    if-eq v2, v5, :cond_a

    :cond_3
    if-ne v3, v4, :cond_4

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    const/16 v5, 0x50

    if-eq v2, v5, :cond_6

    :cond_5
    if-ne v3, v4, :cond_7

    const/4 v5, 0x5

    if-ne v1, v5, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->u2(I)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_2
    add-int/2addr p5, p1

    goto :goto_3

    :cond_7
    if-nez v3, :cond_8

    const/16 v5, 0x10

    if-eq v2, v5, :cond_9

    :cond_8
    if-ne v3, v4, :cond_a

    if-ne v1, v4, :cond_a

    :cond_9
    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->u2(I)I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_a
    :goto_3
    iget p1, p0, Landroidx/leanback/widget/f;->u:I

    add-int/2addr v0, p5

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    move v7, p5

    move p5, p3

    move p3, v7

    move v8, v0

    move v0, p4

    move p4, v8

    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/f$e;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/j$o;->B0(Landroid/view/View;IIII)V

    sget-object v1, Landroidx/leanback/widget/f;->i0:Landroid/graphics/Rect;

    invoke-super {p0, p2, v1}, Landroidx/recyclerview/widget/j$o;->Q(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p4

    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    invoke-virtual {p1, p3, p5, v2, p4}, Landroidx/leanback/widget/f$e;->w(IIII)V

    invoke-direct {p0, p2}, Landroidx/leanback/widget/f;->g4(Landroid/view/View;)V

    return-void
.end method

.method public a4(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a0$a;->y(I)V

    return-void
.end method

.method public b1(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;II)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/f;->r3(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)V

    iget p1, p0, Landroidx/leanback/widget/f;->u:I

    if-nez p1, :cond_0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->h0()I

    move-result p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->e0()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->f0()I

    move-result p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->g0()I

    move-result v0

    :goto_0
    add-int/2addr p4, v0

    iput p2, p0, Landroidx/leanback/widget/f;->P:I

    iget v0, p0, Landroidx/leanback/widget/f;->M:I

    const/4 v1, -0x2

    const-string v2, "wrong spec"

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    if-ne v0, v1, :cond_8

    iget p2, p0, Landroidx/leanback/widget/f;->W:I

    if-nez p2, :cond_1

    move p2, v5

    :cond_1
    iput p2, p0, Landroidx/leanback/widget/f;->V:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/f;->N:I

    iget-object v0, p0, Landroidx/leanback/widget/f;->O:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-eq v0, p2, :cond_3

    :cond_2
    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/leanback/widget/f;->O:[I

    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j$a0;->h()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->h4()V

    :cond_4
    invoke-direct {p0, v5}, Landroidx/leanback/widget/f;->n3(Z)Z

    if-eq p3, v4, :cond_7

    if-eqz p3, :cond_6

    if-ne p3, v3, :cond_5

    iget p2, p0, Landroidx/leanback/widget/f;->P:I

    goto/16 :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-direct {p0}, Landroidx/leanback/widget/f;->z2()I

    move-result p2

    add-int/2addr p2, p4

    goto/16 :goto_4

    :cond_7
    invoke-direct {p0}, Landroidx/leanback/widget/f;->z2()I

    move-result p2

    add-int/2addr p2, p4

    iget p3, p0, Landroidx/leanback/widget/f;->P:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_4

    :cond_8
    if-eq p3, v4, :cond_d

    if-eqz p3, :cond_a

    if-ne p3, v3, :cond_9

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-nez v0, :cond_b

    sub-int v0, p2, p4

    :cond_b
    iput v0, p0, Landroidx/leanback/widget/f;->N:I

    iget p2, p0, Landroidx/leanback/widget/f;->W:I

    if-nez p2, :cond_c

    move p2, v5

    :cond_c
    iput p2, p0, Landroidx/leanback/widget/f;->V:I

    mul-int/2addr v0, p2

    iget p3, p0, Landroidx/leanback/widget/f;->T:I

    sub-int/2addr p2, v5

    mul-int/2addr p3, p2

    add-int/2addr v0, p3

    add-int p2, v0, p4

    goto :goto_4

    :cond_d
    :goto_1
    iget v1, p0, Landroidx/leanback/widget/f;->W:I

    if-nez v1, :cond_f

    if-nez v0, :cond_f

    iput v5, p0, Landroidx/leanback/widget/f;->V:I

    sub-int v0, p2, p4

    :cond_e
    :goto_2
    iput v0, p0, Landroidx/leanback/widget/f;->N:I

    goto :goto_3

    :cond_f
    if-nez v1, :cond_10

    iput v0, p0, Landroidx/leanback/widget/f;->N:I

    iget v1, p0, Landroidx/leanback/widget/f;->T:I

    add-int v2, p2, v1

    add-int/2addr v0, v1

    div-int/2addr v2, v0

    iput v2, p0, Landroidx/leanback/widget/f;->V:I

    goto :goto_3

    :cond_10
    iput v1, p0, Landroidx/leanback/widget/f;->V:I

    if-nez v0, :cond_e

    sub-int v0, p2, p4

    iget v2, p0, Landroidx/leanback/widget/f;->T:I

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    goto :goto_2

    :goto_3
    if-ne p3, v4, :cond_11

    iget p3, p0, Landroidx/leanback/widget/f;->N:I

    iget v0, p0, Landroidx/leanback/widget/f;->V:I

    mul-int/2addr p3, v0

    iget v1, p0, Landroidx/leanback/widget/f;->T:I

    sub-int/2addr v0, v5

    mul-int/2addr v1, v0

    add-int/2addr p3, v1

    add-int/2addr p3, p4

    if-ge p3, p2, :cond_11

    move p2, p3

    :cond_11
    :goto_4
    iget p3, p0, Landroidx/leanback/widget/f;->u:I

    if-nez p3, :cond_12

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/j$o;->E1(II)V

    goto :goto_5

    :cond_12
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/j$o;->E1(II)V

    :goto_5
    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    return-void
.end method

.method public b4(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a0$a;->z(I)V

    return-void
.end method

.method public c1(Landroidx/recyclerview/widget/j;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    const v0, 0x8000

    and-int/2addr p1, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Landroidx/leanback/widget/f;->c2(Landroid/view/View;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p1, p1, 0x23

    if-nez p1, :cond_2

    invoke-direct {p0, p2, p3, v0}, Landroidx/leanback/widget/f;->w3(Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    return v0
.end method

.method public c4(F)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v0}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a0$a;->A(F)V

    return-void
.end method

.method d3(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    sget-object v1, Landroidx/leanback/widget/f;->i0:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/j$o;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iget v1, p0, Landroidx/leanback/widget/f;->M:I

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/f;->N:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    iget v4, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v4, :cond_1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v4, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v4, v3, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    move v0, v3

    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method d4()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->G:Landroidx/leanback/widget/f$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/leanback/widget/f$d;->o:Z

    :cond_0
    return-void
.end method

.method public e1(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/leanback/widget/f$g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/leanback/widget/f$g;

    iget v0, p1, Landroidx/leanback/widget/f$g;->b:I

    iput v0, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/f;->I:I

    iget-object v0, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    iget-object p1, p1, Landroidx/leanback/widget/f$g;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/z;->f(Landroid/os/Bundle;)V

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->v1()V

    return-void
.end method

.method e4(I)I
    .locals 1

    new-instance v0, Landroidx/leanback/widget/f$c;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/f$c;-><init>(Landroidx/leanback/widget/f;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j$z;->p(I)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/f;->L1(Landroidx/recyclerview/widget/j$z;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j$z;->f()I

    move-result p1

    return p1
.end method

.method public f1()Landroid/os/Parcelable;
    .locals 7

    new-instance v0, Landroidx/leanback/widget/f$g;

    invoke-direct {v0}, Landroidx/leanback/widget/f$g;-><init>()V

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->y2()I

    move-result v1

    iput v1, v0, Landroidx/leanback/widget/f$g;->b:I

    iget-object v1, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {v1}, Landroidx/leanback/widget/z;->i()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/leanback/widget/f;->c2(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    invoke-virtual {v6, v1, v4, v5}, Landroidx/leanback/widget/z;->k(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, v0, Landroidx/leanback/widget/f$g;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method f2(Landroidx/recyclerview/widget/j;II)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->E:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ge p3, p1, :cond_1

    return p3

    :cond_1
    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p3

    :cond_2
    return p1
.end method

.method g2(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$o;->S(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method h2(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$o;->T(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method h3(Landroidx/recyclerview/widget/j$d0;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j$d0;->j()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/f;->e0:Landroidx/leanback/widget/z;

    iget-object p1, p1, Landroidx/recyclerview/widget/j$d0;->a:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroidx/leanback/widget/z;->j(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method h4()V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    iget-object v1, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v1}, Landroidx/leanback/widget/e;->m()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j$p;->b()I

    move-result v0

    sub-int/2addr v1, v0

    :cond_0
    iput v1, p0, Landroidx/leanback/widget/f;->x:I

    return-void
.end method

.method i2()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->c0:I

    return v0
.end method

.method i3(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/leanback/widget/f;->E:I

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->hasFocusable()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method i4()V
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/f;->z:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/j;->e0(Landroid/view/View;)Landroidx/recyclerview/widget/j$d0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/j$d0;->n()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/e;->q(I)Landroidx/leanback/widget/e$a;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/leanback/widget/f;->z:Landroid/util/SparseIntArray;

    iget v3, v3, Landroidx/leanback/widget/e$a;->a:I

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j1(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;ILandroid/os/Bundle;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->Z2()Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/f;->r3(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)V

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 p2, 0x40000

    and-int/2addr p1, p2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget p4, p0, Landroidx/leanback/widget/f;->u:I

    const/16 v1, 0x2000

    const/16 v2, 0x1000

    if-nez p4, :cond_5

    sget-object p4, Landroidx/core/view/accessibility/p$a;->C:Landroidx/core/view/accessibility/p$a;

    invoke-virtual {p4}, Landroidx/core/view/accessibility/p$a;->a()I

    move-result p4

    if-ne p3, p4, :cond_4

    if-eqz p1, :cond_3

    :cond_2
    :goto_1
    move p3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move p3, v1

    goto :goto_3

    :cond_4
    sget-object p4, Landroidx/core/view/accessibility/p$a;->E:Landroidx/core/view/accessibility/p$a;

    invoke-virtual {p4}, Landroidx/core/view/accessibility/p$a;->a()I

    move-result p4

    if-ne p3, p4, :cond_7

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_5
    sget-object p1, Landroidx/core/view/accessibility/p$a;->B:Landroidx/core/view/accessibility/p$a;

    invoke-virtual {p1}, Landroidx/core/view/accessibility/p$a;->a()I

    move-result p1

    if-ne p3, p1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p1, Landroidx/core/view/accessibility/p$a;->D:Landroidx/core/view/accessibility/p$a;

    invoke-virtual {p1}, Landroidx/core/view/accessibility/p$a;->a()I

    move-result p1

    if-ne p3, p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-direct {p0, p2}, Landroidx/leanback/widget/f;->m3(Z)V

    const/4 p1, -0x1

    invoke-virtual {p0, p2, p1}, Landroidx/leanback/widget/f;->o3(ZI)I

    goto :goto_4

    :cond_9
    invoke-direct {p0, v0}, Landroidx/leanback/widget/f;->m3(Z)V

    invoke-virtual {p0, p2, v0}, Landroidx/leanback/widget/f;->o3(ZI)I

    :goto_4
    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    return v0
.end method

.method j2(Landroidx/recyclerview/widget/j$d0;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/j$d0;",
            "Ljava/lang/Class<",
            "+TE;>;)TE;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/leanback/widget/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/b;

    invoke-interface {v0, p2}, Landroidx/leanback/widget/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/f;->f0:Landroidx/leanback/widget/c;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j$d0;->l()I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/leanback/widget/c;->a(I)Landroidx/leanback/widget/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Landroidx/leanback/widget/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public j3(I)V
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_0

    const/high16 v0, 0x40000

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_0

    const/high16 v0, 0x80000

    :goto_0
    iget v3, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v4, 0xc0000

    and-int/2addr v4, v3

    if-ne v4, v0, :cond_2

    return-void

    :cond_2
    const v4, -0xc0001

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroidx/leanback/widget/f;->C:I

    iget-object v0, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    iget-object v0, v0, Landroidx/leanback/widget/a0;->c:Landroidx/leanback/widget/a0$a;

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/a0$a;->w(Z)V

    return-void
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/f;->V:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public k2()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->Y:I

    return v0
.end method

.method public l()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/leanback/widget/f;->V:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public l0(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->u:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->r()I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/j$o;->l0(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)I

    move-result p1

    return p1
.end method

.method public l2()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->Q:I

    return v0
.end method

.method l4()V
    .locals 7

    iget-object v0, p0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j$a0;->c()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->p()I

    move-result v0

    iget-object v3, p0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j$a0;->c()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v4}, Landroidx/leanback/widget/e;->m()I

    move-result v4

    move v5, v4

    move v4, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v0}, Landroidx/leanback/widget/e;->m()I

    move-result v0

    iget-object v3, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v3}, Landroidx/leanback/widget/e;->p()I

    move-result v4

    iget-object v3, p0, Landroidx/leanback/widget/f;->w:Landroidx/recyclerview/widget/j$a0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j$a0;->c()I

    move-result v3

    sub-int/2addr v3, v2

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_0
    if-ltz v0, :cond_9

    if-gez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-ne v5, v4, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    if-nez v0, :cond_5

    iget-object v4, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v4}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/a0$a;->o()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    iget-object v4, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v4}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/a0$a;->p()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    sget-object v4, Landroidx/leanback/widget/f;->j0:[I

    invoke-virtual {v0, v2, v4}, Landroidx/leanback/widget/e;->j(Z[I)I

    move-result v0

    sget-object v4, Landroidx/leanback/widget/f;->j0:[I

    aget v4, v4, v2

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/leanback/widget/f;->F2(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/f$e;

    invoke-virtual {v4}, Landroidx/leanback/widget/f$e;->h()[I

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v6, v4

    if-lez v6, :cond_7

    array-length v6, v4

    sub-int/2addr v6, v2

    aget v6, v4, v6

    aget v4, v4, v1

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    goto :goto_3

    :cond_6
    const v0, 0x7fffffff

    move v5, v0

    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    iget-object v3, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    sget-object v4, Landroidx/leanback/widget/f;->j0:[I

    invoke-virtual {v3, v1, v4}, Landroidx/leanback/widget/e;->l(Z[I)I

    move-result v1

    sget-object v3, Landroidx/leanback/widget/f;->j0:[I

    aget v2, v3, v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/leanback/widget/f;->F2(Landroid/view/View;)I

    move-result v2

    goto :goto_4

    :cond_8
    const/high16 v1, -0x80000000

    move v2, v1

    :goto_4
    iget-object v3, p0, Landroidx/leanback/widget/f;->Z:Landroidx/leanback/widget/a0;

    invoke-virtual {v3}, Landroidx/leanback/widget/a0;->a()Landroidx/leanback/widget/a0$a;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2, v5}, Landroidx/leanback/widget/a0$a;->B(IIII)V

    :cond_9
    :goto_5
    return-void
.end method

.method public m1(Landroidx/recyclerview/widget/j$v;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/j$o;->p1(ILandroidx/recyclerview/widget/j$v;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m2()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    invoke-virtual {v0}, Landroidx/leanback/widget/i;->a()Landroidx/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/j$a;->b()I

    move-result v0

    return v0
.end method

.method public n2()F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    invoke-virtual {v0}, Landroidx/leanback/widget/i;->a()Landroidx/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/j$a;->c()F

    move-result v0

    return v0
.end method

.method public o(IILandroidx/recyclerview/widget/j$a0;Landroidx/recyclerview/widget/j$o$c;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p3}, Landroidx/leanback/widget/f;->r3(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)V

    iget p3, p0, Landroidx/leanback/widget/f;->u:I

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    if-gez p1, :cond_2

    iget p2, p0, Landroidx/leanback/widget/f;->c0:I

    neg-int p2, p2

    goto :goto_1

    :cond_2
    iget p2, p0, Landroidx/leanback/widget/f;->b0:I

    iget p3, p0, Landroidx/leanback/widget/f;->c0:I

    add-int/2addr p2, p3

    :goto_1
    iget-object p3, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {p3, p2, p1, p4}, Landroidx/leanback/widget/e;->f(IILandroidx/recyclerview/widget/j$o$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    return-void

    :cond_3
    :goto_2
    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    throw p1
.end method

.method public o2()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->a0:Landroidx/leanback/widget/i;

    invoke-virtual {v0}, Landroidx/leanback/widget/i;->a()Landroidx/leanback/widget/i$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/j$a;->d()I

    move-result v0

    return v0
.end method

.method o3(ZI)I
    .locals 10

    iget-object v0, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    if-nez v0, :cond_0

    return p2

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/f;->E:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/e;->s(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->K()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_9

    if-eqz p2, :cond_9

    if-lez p2, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v6

    :goto_2
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/j$o;->J(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroidx/leanback/widget/f;->Q1(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    invoke-direct {p0, v7}, Landroidx/leanback/widget/f;->b2(I)I

    move-result v7

    iget-object v9, p0, Landroidx/leanback/widget/f;->X:Landroidx/leanback/widget/e;

    invoke-virtual {v9, v7}, Landroidx/leanback/widget/e;->s(I)I

    move-result v9

    if-ne v0, v2, :cond_4

    move v1, v7

    move-object v5, v8

    move v0, v9

    goto :goto_4

    :cond_4
    if-ne v9, v0, :cond_8

    if-lez p2, :cond_5

    if-gt v7, v1, :cond_6

    :cond_5
    if-gez p2, :cond_8

    if-ge v7, v1, :cond_8

    :cond_6
    if-lez p2, :cond_7

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    :goto_3
    move v1, v7

    move-object v5, v8

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    if-eqz v5, :cond_c

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->s0()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    :cond_a
    iput v1, p0, Landroidx/leanback/widget/f;->E:I

    iput v4, p0, Landroidx/leanback/widget/f;->F:I

    goto :goto_5

    :cond_b
    const/4 p1, 0x1

    invoke-virtual {p0, v5, p1}, Landroidx/leanback/widget/f;->y3(Landroid/view/View;Z)V

    :cond_c
    :goto_5
    return p2
.end method

.method public p(ILandroidx/recyclerview/widget/j$o$c;)V
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    iget v0, v0, Landroidx/leanback/widget/a;->N0:I

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/leanback/widget/f;->E:I

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_0

    add-int v4, v1, v0

    if-ge v3, v4, :cond_0

    invoke-interface {p2, v3, v2}, Landroidx/recyclerview/widget/j$o$c;->a(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final r2(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f$e;->m(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method final s2(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/f$e;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f$e;->o(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public t1(Landroidx/recyclerview/widget/j;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method v2(I)I
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/f;->V:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p1, :cond_2

    invoke-direct {p0, v0}, Landroidx/leanback/widget/f;->u2(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/f;->T:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-direct {p0, v1}, Landroidx/leanback/widget/f;->u2(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/f;->T:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method v3(IIZI)V
    .locals 4

    iput p4, p0, Landroidx/leanback/widget/f;->J:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j$o;->D(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->z0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Landroidx/leanback/widget/f;->c2(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_0
    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    invoke-virtual {p0, p4, p3}, Landroidx/leanback/widget/f;->y3(Landroid/view/View;Z)V

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    goto :goto_1

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v2, v1, 0x200

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_7

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_3

    iput p1, p0, Landroidx/leanback/widget/f;->E:I

    iput p2, p0, Landroidx/leanback/widget/f;->F:I

    iput v3, p0, Landroidx/leanback/widget/f;->I:I

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->V2()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->D2()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->e4(I)I

    move-result p1

    iget p2, p0, Landroidx/leanback/widget/f;->E:I

    if-eq p1, p2, :cond_6

    iput p1, p0, Landroidx/leanback/widget/f;->E:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/f;->F:I

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->d4()V

    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->r1()V

    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/f;->t:Landroidx/leanback/widget/a;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_5

    invoke-direct {p0, p4}, Landroidx/leanback/widget/f;->c2(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_5

    goto :goto_0

    :cond_5
    iput p1, p0, Landroidx/leanback/widget/f;->E:I

    iput p2, p0, Landroidx/leanback/widget/f;->F:I

    iput v3, p0, Landroidx/leanback/widget/f;->I:I

    iget p1, p0, Landroidx/leanback/widget/f;->C:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/f;->C:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j$o;->v1()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    iput p1, p0, Landroidx/leanback/widget/f;->E:I

    iput p2, p0, Landroidx/leanback/widget/f;->F:I

    iput v3, p0, Landroidx/leanback/widget/f;->I:I

    return-void
.end method

.method w2(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/f;->Y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/f;->e2(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p3}, Landroidx/leanback/widget/f;->q2(Landroid/view/View;[I)Z

    move-result p1

    return p1
.end method

.method public y1(ILandroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->V2()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/f;->r3(Landroidx/recyclerview/widget/j$v;Landroidx/recyclerview/widget/j$a0;)V

    iget p2, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p2, p2, -0x4

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroidx/leanback/widget/f;->C:I

    iget p2, p0, Landroidx/leanback/widget/f;->u:I

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->s3(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/f;->t3(I)I

    move-result p1

    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/f;->c3()V

    iget p2, p0, Landroidx/leanback/widget/f;->C:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/f;->C:I

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public y2()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->E:I

    return v0
.end method

.method y3(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroidx/leanback/widget/f;->w3(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public z1(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroidx/leanback/widget/f;->X3(IIZI)V

    return-void
.end method

.method z3(Landroid/view/View;ZII)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/leanback/widget/f;->x3(Landroid/view/View;Landroid/view/View;ZII)V

    return-void
.end method
