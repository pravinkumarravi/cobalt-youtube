.class Landroidx/recyclerview/widget/j$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/j$l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/j;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/j$m;->a:Landroidx/recyclerview/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/j$d0;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/j$d0;->F(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/j$d0;->h:Landroidx/recyclerview/widget/j$d0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/j$d0;->i:Landroidx/recyclerview/widget/j$d0;

    if-nez v0, :cond_0

    iput-object v1, p1, Landroidx/recyclerview/widget/j$d0;->h:Landroidx/recyclerview/widget/j$d0;

    :cond_0
    iput-object v1, p1, Landroidx/recyclerview/widget/j$d0;->i:Landroidx/recyclerview/widget/j$d0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j$d0;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/j$m;->a:Landroidx/recyclerview/widget/j;

    iget-object v1, p1, Landroidx/recyclerview/widget/j$d0;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/j;->W0(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j$d0;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/j$m;->a:Landroidx/recyclerview/widget/j;

    iget-object p1, p1, Landroidx/recyclerview/widget/j$d0;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/j;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
