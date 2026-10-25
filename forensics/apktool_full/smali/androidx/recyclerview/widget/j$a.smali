.class Landroidx/recyclerview/widget/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/recyclerview/widget/j;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/j$a;->b:Landroidx/recyclerview/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/j$a;->b:Landroidx/recyclerview/widget/j;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/j;->v:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/j$a;->b:Landroidx/recyclerview/widget/j;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/j;->s:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void

    :cond_1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/j;->y:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/j;->x:Z

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->t()V

    :cond_3
    :goto_0
    return-void
.end method
