.class Landroidx/appcompat/widget/a0$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/a0$e;-><init>(Landroidx/appcompat/widget/a0;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/a0;

.field final synthetic c:Landroidx/appcompat/widget/a0$e;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/a0$e;Landroidx/appcompat/widget/a0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/a0$e$a;->c:Landroidx/appcompat/widget/a0$e;

    iput-object p2, p0, Landroidx/appcompat/widget/a0$e$a;->b:Landroidx/appcompat/widget/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroidx/appcompat/widget/a0$e$a;->c:Landroidx/appcompat/widget/a0$e;

    iget-object p1, p1, Landroidx/appcompat/widget/a0$e;->N:Landroidx/appcompat/widget/a0;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/a0$e$a;->c:Landroidx/appcompat/widget/a0$e;

    iget-object p1, p1, Landroidx/appcompat/widget/a0$e;->N:Landroidx/appcompat/widget/a0;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/a0$e$a;->c:Landroidx/appcompat/widget/a0$e;

    iget-object p4, p1, Landroidx/appcompat/widget/a0$e;->N:Landroidx/appcompat/widget/a0;

    iget-object p1, p1, Landroidx/appcompat/widget/a0$e;->K:Landroid/widget/ListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/a0$e$a;->c:Landroidx/appcompat/widget/a0$e;

    invoke-virtual {p1}, Landroidx/appcompat/widget/y0;->dismiss()V

    return-void
.end method
