.class Landroidx/core/view/accessibility/q$c;
.super Landroidx/core/view/accessibility/q$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/q;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/q$b;-><init>(Landroidx/core/view/accessibility/q;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/accessibility/q$a;->a:Landroidx/core/view/accessibility/q;

    invoke-static {p2}, Landroidx/core/view/accessibility/p;->k0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/p;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/accessibility/q;->a(ILandroidx/core/view/accessibility/p;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
