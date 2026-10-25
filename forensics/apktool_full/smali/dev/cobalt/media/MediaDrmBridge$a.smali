.class Ldev/cobalt/media/MediaDrmBridge$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


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

    iput-object p1, p0, Ldev/cobalt/media/MediaDrmBridge$a;->a:Ldev/cobalt/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 3

    const-string p1, "starboard_media"

    const/4 p4, 0x0

    if-nez p2, :cond_0

    const-string p2, "EventListener: Null session."

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge$a;->a:Ldev/cobalt/media/MediaDrmBridge;

    invoke-static {v0, p2}, Ldev/cobalt/media/MediaDrmBridge;->a(Ldev/cobalt/media/MediaDrmBridge;[B)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ldev/cobalt/media/MediaDrmBridge;->b([B)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p4

    const-string p2, "EventListener: Invalid session %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    const-string p3, "MediaDrm.EVENT_KEY_REQUIRED"

    new-array v0, p4, [Ljava/lang/Object;

    invoke-static {p1, p3, v0}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p3, p0, Ldev/cobalt/media/MediaDrmBridge$a;->a:Ldev/cobalt/media/MediaDrmBridge;

    invoke-static {p3}, Ldev/cobalt/media/MediaDrmBridge;->c(Ldev/cobalt/media/MediaDrmBridge;)Ljava/util/HashMap;

    move-result-object p3

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge$a;->a:Ldev/cobalt/media/MediaDrmBridge;

    invoke-static {v0, p2, p5, p3}, Ldev/cobalt/media/MediaDrmBridge;->d(Ldev/cobalt/media/MediaDrmBridge;[B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p3
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, p4

    const-string v0, "Device not provisioned"

    invoke-static {p1, v0, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge$a;->a:Ldev/cobalt/media/MediaDrmBridge;

    invoke-static {v0}, Ldev/cobalt/media/MediaDrmBridge;->e(Ldev/cobalt/media/MediaDrmBridge;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "Failed to provision device when responding to EVENT_KEY_REQUIRED"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge$a;->a:Ldev/cobalt/media/MediaDrmBridge;

    invoke-static {v0, p2, p5, p3}, Ldev/cobalt/media/MediaDrmBridge;->d(Ldev/cobalt/media/MediaDrmBridge;[B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p3
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz p3, :cond_3

    iget-object p1, p0, Ldev/cobalt/media/MediaDrmBridge$a;->a:Ldev/cobalt/media/MediaDrmBridge;

    const/high16 p4, -0x80000000

    invoke-static {p1, p4, p2, p3}, Ldev/cobalt/media/MediaDrmBridge;->f(Ldev/cobalt/media/MediaDrmBridge;I[BLandroid/media/MediaDrm$KeyRequest;)V

    goto :goto_1

    :cond_3
    const-string p2, "EventListener: getKeyRequest failed."

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catch_1
    move-exception p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, p4

    const-string p2, "Device still not provisioned after supposedly successful provisioning"

    invoke-static {p1, p2, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_4
    const/4 p2, 0x3

    if-ne p3, p2, :cond_5

    const-string p2, "MediaDrm.EVENT_KEY_EXPIRED"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_5
    const/4 p2, 0x4

    if-ne p3, p2, :cond_6

    const-string p2, "MediaDrm.EVENT_VENDOR_DEFINED"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_6
    if-ne p3, v1, :cond_7

    const-string p2, "MediaDrm.EVENT_PROVISION_REQUIRED"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_7
    const/4 p2, 0x5

    if-ne p3, p2, :cond_8

    const-string p2, "MediaDrm.EVENT_SESSION_RECLAIMED"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid DRM event "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
