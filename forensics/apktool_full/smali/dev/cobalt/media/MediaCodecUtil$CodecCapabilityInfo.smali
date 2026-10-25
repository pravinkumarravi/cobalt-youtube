.class public Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecCapabilityInfo"
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field public audioCapabilities:Landroid/media/MediaCodecInfo$AudioCapabilities;
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public codecCapabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public codecInfo:Landroid/media/MediaCodecInfo;
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public decoderName:Ljava/lang/String;
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->codecInfo:Landroid/media/MediaCodecInfo;

    iput-object p2, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->decoderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->codecCapabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->audioCapabilities:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iget-object p1, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->codecCapabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-void
.end method


# virtual methods
.method public isHdrCapable()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->codecCapabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v0, v1}, Ldev/cobalt/media/MediaCodecUtil;->c(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    return v0
.end method

.method public isSecureRequired()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->decoderName:Ljava/lang/String;

    const-string v1, ".secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->codecCapabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const-string v1, "secure-playback"

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSecureSupported()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->codecCapabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const-string v1, "secure-playback"

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSoftware()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->codecInfo:Landroid/media/MediaCodecInfo;

    invoke-static {v0}, Ldev/cobalt/media/MediaCodecUtil;->d(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0
.end method

.method public isTunnelModeRequired()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->codecCapabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const-string v1, "tunneled-playback"

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTunnelModeSupported()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecUtil$CodecCapabilityInfo;->codecCapabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const-string v1, "tunneled-playback"

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
