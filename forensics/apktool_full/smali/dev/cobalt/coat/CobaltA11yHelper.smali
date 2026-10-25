.class Ldev/cobalt/coat/CobaltA11yHelper;
.super Lu/a;
.source "SourceFile"


# instance fields
.field private final q:Ljava/util/BitSet;

.field private final r:Landroid/os/Handler;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lu/a;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltA11yHelper;->q:Ljava/util/BitSet;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltA11yHelper;->r:Landroid/os/Handler;

    invoke-static {p1, p0}, Landroidx/core/view/w0;->W(Landroid/view/View;Landroidx/core/view/a;)V

    return-void
.end method

.method private K()V
    .locals 4

    iget-object v0, p0, Ldev/cobalt/coat/CobaltA11yHelper;->r:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/CobaltA11yHelper$a;

    invoke-direct {v1, p0}, Ldev/cobalt/coat/CobaltA11yHelper$a;-><init>(Ldev/cobalt/coat/CobaltA11yHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ldev/cobalt/coat/CobaltA11yHelper;->r:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/CobaltA11yHelper$b;

    invoke-direct {v1, p0}, Ldev/cobalt/coat/CobaltA11yHelper$b;-><init>(Ldev/cobalt/coat/CobaltA11yHelper;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private L(I)V
    .locals 1

    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltA11yHelper;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x800d

    goto :goto_0

    :cond_2
    const p1, 0x800f

    goto :goto_0

    :cond_3
    const p1, 0x800e

    goto :goto_0

    :cond_4
    const p1, 0x800c

    :goto_0
    invoke-static {p1}, Ldev/cobalt/coat/CobaltA11yHelper;->nativeInjectKeyEvent(I)V

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/cobalt/coat/CobaltA11yHelper;->s:Z

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltA11yHelper;->K()V

    return-void
.end method

.method private static native nativeInjectKeyEvent(I)V
.end method


# virtual methods
.method protected C(ILandroidx/core/view/accessibility/p;)V
    .locals 8

    invoke-virtual {p0}, Lu/a;->u()I

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Ldev/cobalt/coat/CobaltA11yHelper;->L(I)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Ldev/cobalt/coat/CobaltA11yHelper;->s:Z

    :goto_0
    add-int/lit8 v0, p1, -0x1

    rem-int/lit8 v1, v0, 0x3

    div-int/lit8 v4, v0, 0x3

    new-instance v5, Landroid/graphics/Rect;

    mul-int/lit8 v1, v1, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v6, v1, 0xa

    add-int/lit8 v7, v4, 0xa

    invoke-direct {v5, v1, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/p;->Q(Landroid/graphics/Rect;)V

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/p;->h0(Ljava/lang/CharSequence;)V

    if-ge p1, v3, :cond_3

    if-gt p1, v2, :cond_4

    :cond_3
    iget-object p1, p0, Ldev/cobalt/coat/CobaltA11yHelper;->q:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_4
    iget-boolean p1, p0, Ldev/cobalt/coat/CobaltA11yHelper;->t:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Ldev/cobalt/coat/CobaltA11yHelper;->q:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result p1

    if-ne p1, v2, :cond_5

    iput-boolean v3, p0, Ldev/cobalt/coat/CobaltA11yHelper;->t:Z

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltA11yHelper;->K()V

    :cond_5
    return-void
.end method

.method protected v(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Expected empty list"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected y(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
