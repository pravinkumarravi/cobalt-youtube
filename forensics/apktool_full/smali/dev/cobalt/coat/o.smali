.class Ldev/cobalt/coat/o;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/coat/o$c;,
        Ldev/cobalt/coat/o$b;
    }
.end annotation


# instance fields
.field private final b:Ldev/cobalt/coat/o$c;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ldev/cobalt/coat/o$c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ldev/cobalt/coat/o;->b:Ldev/cobalt/coat/o$c;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ldev/cobalt/coat/o$c;Ldev/cobalt/coat/o$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/cobalt/coat/o;-><init>(Landroid/content/Context;Ldev/cobalt/coat/o$c;)V

    return-void
.end method

.method static synthetic a(Ldev/cobalt/coat/o;)Ldev/cobalt/coat/o$c;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/o;->b:Ldev/cobalt/coat/o$c;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f0900c8

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f07008d

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090108

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Ldev/cobalt/coat/o;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v0}, Ldev/cobalt/coat/o$c;->a(Ldev/cobalt/coat/o$c;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f090066

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Ldev/cobalt/coat/o;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v3}, Ldev/cobalt/coat/o$c;->c(Ldev/cobalt/coat/o$c;)I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Ldev/cobalt/coat/o;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v4}, Ldev/cobalt/coat/o$c;->f(Ldev/cobalt/coat/o$c;)[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Ldev/cobalt/coat/o;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v4}, Ldev/cobalt/coat/o$c;->e(Ldev/cobalt/coat/o$c;)[I

    move-result-object v4

    aget v4, v4, v2

    new-instance v5, Ldev/cobalt/coat/o$a;

    invoke-direct {v5, p0, v4}, Ldev/cobalt/coat/o$a;-><init>(Ldev/cobalt/coat/o;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/cobalt/coat/o;->b:Ldev/cobalt/coat/o$c;

    invoke-static {p1}, Ldev/cobalt/coat/o$c;->i(Ldev/cobalt/coat/o$c;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
