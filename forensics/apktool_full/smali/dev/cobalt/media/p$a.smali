.class public Ldev/cobalt/media/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/media/MediaCodecInfo;

.field public b:Ljava/lang/String;

.field public c:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public d:Landroid/media/MediaCodecInfo$VideoCapabilities;

.field public e:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/cobalt/media/p$a;->a:Landroid/media/MediaCodecInfo;

    iput-object p3, p0, Ldev/cobalt/media/p$a;->b:Ljava/lang/String;

    iput-object p2, p0, Ldev/cobalt/media/p$a;->c:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/media/p$a;->d:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/media/p$a;->e:Landroid/util/Range;

    iget-object p1, p0, Ldev/cobalt/media/p$a;->d:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/media/p$a;->f:Landroid/util/Range;

    iget-object p1, p0, Ldev/cobalt/media/p$a;->d:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/media/p$a;->g:Landroid/util/Range;

    return-void
.end method
