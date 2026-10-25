.class Landroidx/recyclerview/widget/j$x;
.super Landroidx/recyclerview/widget/j$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "x"
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/j;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/j$x;->a:Landroidx/recyclerview/widget/j;

    invoke-direct {p0}, Landroidx/recyclerview/widget/j$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/j$x;->a:Landroidx/recyclerview/widget/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/j;->n(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/j$x;->a:Landroidx/recyclerview/widget/j;

    iget-object v1, v0, Landroidx/recyclerview/widget/j;->h0:Landroidx/recyclerview/widget/j$a0;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/j$a0;->g:Z

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/j;->Q0(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/j$x;->a:Landroidx/recyclerview/widget/j;

    iget-object v0, v0, Landroidx/recyclerview/widget/j;->e:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/j$x;->a:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    :cond_0
    return-void
.end method
