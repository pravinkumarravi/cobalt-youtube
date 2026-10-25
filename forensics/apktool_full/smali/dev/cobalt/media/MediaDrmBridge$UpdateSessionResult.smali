.class Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateSessionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;
    }
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->b:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;->a:Z

    iput-object p2, p0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-boolean v0, p0, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;->a:Z

    return v0
.end method
