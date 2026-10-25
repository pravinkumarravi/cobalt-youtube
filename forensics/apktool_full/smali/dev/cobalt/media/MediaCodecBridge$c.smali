.class public final enum Ldev/cobalt/media/MediaCodecBridge$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/cobalt/media/MediaCodecBridge$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ldev/cobalt/media/MediaCodecBridge$c;

.field public static final enum c:Ldev/cobalt/media/MediaCodecBridge$c;

.field private static final synthetic d:[Ldev/cobalt/media/MediaCodecBridge$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldev/cobalt/media/MediaCodecBridge$c;

    const-string v1, "NO_ADJUSTMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/cobalt/media/MediaCodecBridge$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/cobalt/media/MediaCodecBridge$c;->b:Ldev/cobalt/media/MediaCodecBridge$c;

    new-instance v0, Ldev/cobalt/media/MediaCodecBridge$c;

    const-string v1, "FRAMERATE_ADJUSTMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/cobalt/media/MediaCodecBridge$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/cobalt/media/MediaCodecBridge$c;->c:Ldev/cobalt/media/MediaCodecBridge$c;

    invoke-static {}, Ldev/cobalt/media/MediaCodecBridge$c;->a()[Ldev/cobalt/media/MediaCodecBridge$c;

    move-result-object v0

    sput-object v0, Ldev/cobalt/media/MediaCodecBridge$c;->d:[Ldev/cobalt/media/MediaCodecBridge$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Ldev/cobalt/media/MediaCodecBridge$c;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ldev/cobalt/media/MediaCodecBridge$c;

    const/4 v1, 0x0

    sget-object v2, Ldev/cobalt/media/MediaCodecBridge$c;->b:Ldev/cobalt/media/MediaCodecBridge$c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ldev/cobalt/media/MediaCodecBridge$c;->c:Ldev/cobalt/media/MediaCodecBridge$c;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/cobalt/media/MediaCodecBridge$c;
    .locals 1

    const-class v0, Ldev/cobalt/media/MediaCodecBridge$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/cobalt/media/MediaCodecBridge$c;

    return-object p0
.end method

.method public static values()[Ldev/cobalt/media/MediaCodecBridge$c;
    .locals 1

    sget-object v0, Ldev/cobalt/media/MediaCodecBridge$c;->d:[Ldev/cobalt/media/MediaCodecBridge$c;

    invoke-virtual {v0}, [Ldev/cobalt/media/MediaCodecBridge$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/cobalt/media/MediaCodecBridge$c;

    return-object v0
.end method
