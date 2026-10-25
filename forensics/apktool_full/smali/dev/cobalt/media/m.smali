.class public final synthetic Ldev/cobalt/media/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/media/MediaDrm;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDrm;->getConnectedHdcpLevel()I

    move-result p0

    return p0
.end method
