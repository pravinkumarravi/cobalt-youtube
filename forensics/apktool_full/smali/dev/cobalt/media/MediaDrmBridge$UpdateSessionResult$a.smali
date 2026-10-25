.class public final enum Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

.field public static final enum c:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

.field private static final synthetic d:[Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->b:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    new-instance v0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    const-string v1, "FAILURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->c:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    invoke-static {}, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->a()[Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    move-result-object v0

    sput-object v0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->d:[Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

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

.method private static synthetic a()[Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    const/4 v1, 0x0

    sget-object v2, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->b:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->c:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;
    .locals 1

    const-class v0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    return-object p0
.end method

.method public static values()[Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;
    .locals 1

    sget-object v0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->d:[Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    invoke-virtual {v0}, [Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    return-object v0
.end method
