.class Ldev/cobalt/media/MediaCodecBridge$ColorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorInfo"
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(IIIFFFFFFFFFFIIZ)V
    .locals 7
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Ldev/cobalt/media/MediaCodecBridge$ColorInfo;->a:I

    move v1, p2

    iput v1, v0, Ldev/cobalt/media/MediaCodecBridge$ColorInfo;->b:I

    move v1, p3

    iput v1, v0, Ldev/cobalt/media/MediaCodecBridge$ColorInfo;->c:I

    if-gtz p14, :cond_0

    const/16 v1, 0x3e8

    goto :goto_0

    :cond_0
    move/from16 v1, p14

    :goto_0
    if-gtz p15, :cond_1

    const/16 v2, 0xc8

    goto :goto_1

    :cond_1
    move/from16 v2, p15

    :goto_1
    const/16 v3, 0x19

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz p16, :cond_2

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_2

    :cond_2
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_2
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const v4, 0x47435000    # 50000.0f

    mul-float v5, p4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    mul-float v5, p5, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    mul-float v5, p6, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    mul-float v5, p7, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    mul-float v5, p8, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    mul-float v5, p9, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    mul-float v5, p10, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    mul-float v4, v4, p11

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-float v4, p12, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-float v4, p13, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v1, v2

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput-object v3, v0, Ldev/cobalt/media/MediaCodecBridge$ColorInfo;->d:Ljava/nio/ByteBuffer;

    return-void
.end method
