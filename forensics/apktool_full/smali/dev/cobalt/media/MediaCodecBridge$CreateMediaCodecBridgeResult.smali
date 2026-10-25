.class Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateMediaCodecBridgeResult"
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field private a:Ldev/cobalt/media/MediaCodecBridge;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a:Ldev/cobalt/media/MediaCodecBridge;

    const-string v0, ""

    iput-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;Ldev/cobalt/media/MediaCodecBridge;)Ldev/cobalt/media/MediaCodecBridge;
    .locals 0

    iput-object p1, p0, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a:Ldev/cobalt/media/MediaCodecBridge;

    return-object p1
.end method

.method private errorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method private mediaCodecBridge()Ldev/cobalt/media/MediaCodecBridge;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaCodecBridge$CreateMediaCodecBridgeResult;->a:Ldev/cobalt/media/MediaCodecBridge;

    return-object v0
.end method
