.class public final synthetic Ldev/cobalt/media/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/media/AudioTrack;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartThresholdInFrames()I

    move-result p0

    return p0
.end method
