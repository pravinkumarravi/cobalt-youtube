.class public Ldev/cobalt/media/MediaCodecBridge$DequeueInputResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DequeueInputResult"
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueInputResult;->a:I

    const/4 v0, -0x1

    iput v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueInputResult;->b:I

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueInputResult;->a:I

    iput p2, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueInputResult;->b:I

    return-void
.end method

.method private index()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueInputResult;->b:I

    return v0
.end method

.method private status()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/MediaCodecBridge$DequeueInputResult;->a:I

    return v0
.end method
