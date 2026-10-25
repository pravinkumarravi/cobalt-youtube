.class public Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/media/AudioOutputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputDeviceInfo"
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field public channels:I
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field

.field public type:I
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannels()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;->channels:I

    return v0
.end method

.method public getType()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget v0, p0, Ldev/cobalt/media/AudioOutputManager$OutputDeviceInfo;->type:I

    return v0
.end method
