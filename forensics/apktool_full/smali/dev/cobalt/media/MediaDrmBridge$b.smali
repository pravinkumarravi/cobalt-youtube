.class Ldev/cobalt/media/MediaDrmBridge$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/media/MediaDrmBridge;-><init>(Ljava/lang/String;Ljava/util/UUID;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/cobalt/media/MediaDrmBridge;


# direct methods
.method constructor <init>(Ldev/cobalt/media/MediaDrmBridge;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/media/MediaDrmBridge$b;->a:Ldev/cobalt/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm;",
            "[B",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    iget-object p1, p0, Ldev/cobalt/media/MediaDrmBridge$b;->a:Ldev/cobalt/media/MediaDrmBridge;

    invoke-static {p1}, Ldev/cobalt/media/MediaDrmBridge;->g(Ldev/cobalt/media/MediaDrmBridge;)J

    move-result-wide v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [Landroid/media/MediaDrm$KeyStatus;

    invoke-interface {p3, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/media/MediaDrm$KeyStatus;

    invoke-static {p1, v0, v1, p2, p3}, Ldev/cobalt/media/MediaDrmBridge;->h(Ldev/cobalt/media/MediaDrmBridge;J[B[Landroid/media/MediaDrm$KeyStatus;)V

    return-void
.end method
