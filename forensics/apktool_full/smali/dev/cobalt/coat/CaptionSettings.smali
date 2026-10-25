.class public Ldev/cobalt/coat/CaptionSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final backgroundColor:I
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final edgeType:I
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final fontScale:F
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final foregroundColor:I
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final hasBackgroundColor:Z
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final hasEdgeType:Z
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final hasForegroundColor:Z
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final hasWindowColor:Z
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final isEnabled:Z
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public final windowColor:I
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/accessibility/CaptioningManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Ldev/cobalt/coat/CaptionSettings;->isEnabled:Z

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p1

    iput p1, p0, Ldev/cobalt/coat/CaptionSettings;->fontScale:F

    iget p1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput p1, p0, Ldev/cobalt/coat/CaptionSettings;->edgeType:I

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result p1

    iput-boolean p1, p0, Ldev/cobalt/coat/CaptionSettings;->hasEdgeType:Z

    iget p1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput p1, p0, Ldev/cobalt/coat/CaptionSettings;->foregroundColor:I

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result p1

    iput-boolean p1, p0, Ldev/cobalt/coat/CaptionSettings;->hasForegroundColor:Z

    iget p1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput p1, p0, Ldev/cobalt/coat/CaptionSettings;->backgroundColor:I

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result p1

    iput-boolean p1, p0, Ldev/cobalt/coat/CaptionSettings;->hasBackgroundColor:Z

    iget p1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    iput p1, p0, Ldev/cobalt/coat/CaptionSettings;->windowColor:I

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result p1

    iput-boolean p1, p0, Ldev/cobalt/coat/CaptionSettings;->hasWindowColor:Z

    return-void
.end method
