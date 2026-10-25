.class Ldev/cobalt/coat/CobaltActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltActivity;->i0(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Ldev/cobalt/coat/CobaltActivity;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltActivity;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/CobaltActivity$b;->f:Ldev/cobalt/coat/CobaltActivity;

    iput p2, p0, Ldev/cobalt/coat/CobaltActivity$b;->b:I

    iput p3, p0, Ldev/cobalt/coat/CobaltActivity$b;->c:I

    iput p4, p0, Ldev/cobalt/coat/CobaltActivity$b;->d:I

    iput p5, p0, Ldev/cobalt/coat/CobaltActivity$b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity$b;->f:Ldev/cobalt/coat/CobaltActivity;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltActivity;->T(Ldev/cobalt/coat/CobaltActivity;)Ldev/cobalt/media/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Ldev/cobalt/coat/CobaltActivity$b;->b:I

    iget v3, p0, Ldev/cobalt/coat/CobaltActivity$b;->c:I

    iget v4, p0, Ldev/cobalt/coat/CobaltActivity$b;->d:I

    add-int/2addr v4, v2

    iget v5, p0, Ldev/cobalt/coat/CobaltActivity$b;->e:I

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected video surface layout params class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "starboard"

    invoke-static {v3, v1, v2}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    iget v1, p0, Ldev/cobalt/coat/CobaltActivity$b;->d:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Ldev/cobalt/coat/CobaltActivity$b;->e:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Ldev/cobalt/coat/CobaltActivity$b;->f:Ldev/cobalt/coat/CobaltActivity;

    invoke-static {v1}, Ldev/cobalt/coat/CobaltActivity;->T(Ldev/cobalt/coat/CobaltActivity;)Ldev/cobalt/media/VideoSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
