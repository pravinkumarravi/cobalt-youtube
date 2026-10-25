.class public Ldev/cobalt/app/AmazonDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/app/AmazonDeviceInfo$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "AmazonDeviceInfo"

.field private static c:Ldev/cobalt/app/AmazonDeviceInfo;

.field private static final d:Z

.field private static e:Ldev/cobalt/app/a;

.field private static final f:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final g:Ljava/util/concurrent/locks/Condition;

.field private static h:Z


# instance fields
.field private final a:Lt1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->g:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    sput-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo;->h:Z

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo;->d:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lt1/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Ldev/cobalt/app/AmazonDeviceInfo;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Ldev/cobalt/app/AmazonDeviceInfo;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Ldev/cobalt/app/AmazonDeviceInfo;->n(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->w(Z)Z

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceInfo.manufacturer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/cobalt/app/AmazonDeviceInfo$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; DeviceInfo.oemModel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/cobalt/app/AmazonDeviceInfo$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; DeviceInfo.isTeeSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->u()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lt1/a;

    sget-object v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->b:Ljava/lang/String;

    sget-object v2, Ldev/cobalt/app/AmazonDeviceInfo$a;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lt1/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lt1/k;)V

    iput-object v0, p0, Ldev/cobalt/app/AmazonDeviceInfo;->a:Lt1/a;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ldev/cobalt/app/AmazonDeviceInfo;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "AFTTI43"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AFTTIFF43"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-string v2, "_"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_0
    aget-object v4, v2, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v2, v3

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object p0, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    if-eqz p1, :cond_4

    sget-object p1, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong brand name in system property oemmodel string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    sget-object p1, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong OEM model in system property oemmodel string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p0
.end method

.method private static d()Z
    .locals 2

    const-string v0, "AEOAT"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Amazon"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldev/cobalt/app/AmazonDeviceInfo;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "_"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v0, v2

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object p0, v0, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object v1

    :catch_0
    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong brand name in system property oemmodel string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static f()Z
    .locals 1

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->e()Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->g()Z

    move-result v0

    return v0
.end method

.method public static getBufferReadyThresholdMs()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->m()I

    move-result v0

    return v0
.end method

.method public static getDeviceDisplayOrientationDegree()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->A()I

    move-result v0

    return v0
.end method

.method public static getDeviceInfoCertificationScope()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInfoCertificationYear()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->F()I

    move-result v0

    return v0
.end method

.method public static getDeviceInfoChipset()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInfoDeviceType()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInfoManufacturer()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceInfoMaxVerticalResolution()I
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->J()I

    move-result v0

    return v0
.end method

.method public static getDeviceInfoModel()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceInfoNeedsAsyncFrameWorkaround()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->c()Z

    move-result v0

    return v0
.end method

.method public static getDeviceInfoNeedsBackButton()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->k()Z

    move-result v0

    return v0
.end method

.method public static getDeviceInfoNeedsDoubleExponentWorkaround()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->a()Z

    move-result v0

    return v0
.end method

.method public static getDeviceInfoNeedsDualVideoHwDecoderWorkaround()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->i()Z

    move-result v0

    return v0
.end method

.method public static getDeviceInfoNeedsHdmiModeSwitch()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->L()Z

    move-result v0

    return v0
.end method

.method public static getDeviceInfoOemModel()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceInfoSupportsOnlyWidevineL3()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->N()Z

    move-result v0

    return v0
.end method

.method public static getDeviceInfoTeeSupport()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->u()Z

    move-result v0

    return v0
.end method

.method public static getHasYouTubeRemoteButton()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->y()Z

    move-result v0

    return v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ldev/cobalt/app/AmazonDeviceInfo;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    const-string v1, "_"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v1, v2

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object p1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    return-object v0

    :catch_0
    sget-object v1, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong oem model in system property oemmodel string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static i()I
    .locals 1

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->o()I

    move-result v0

    return v0
.end method

.method public static isCodecSupported(Ljava/lang/String;ZIIIIZZ)Z
    .locals 0
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-boolean p1, Ldev/cobalt/app/AmazonDeviceInfo;->d:Z

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p1, Ldev/cobalt/app/AmazonDeviceInfo;->e:Ldev/cobalt/app/a;

    invoke-virtual {p1, p0, p3, p5, p7}, Ldev/cobalt/app/a;->e(Ljava/lang/String;IIZ)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p2, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Blocking mime type "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with resolution "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "p fps "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and sphericalVideo = "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method public static j()I
    .locals 1

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->s()I

    move-result v0

    return v0
.end method

.method public static k()I
    .locals 1

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->q()I

    move-result v0

    return v0
.end method

.method private l(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "ro.nrdp.oemmodel"

    const-string v1, ""

    invoke-static {v0, v1}, Ldev/cobalt/app/AmazonDeviceInfo;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Avocet_A2WV8TTM37P2CB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ll0/a;

    invoke-direct {v2, p1}, Ll0/a;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "system"

    invoke-virtual {v2, v3, p1}, Ll0/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "ro.product.oemmodel"

    invoke-static {p1, v1}, Ldev/cobalt/app/AmazonDeviceInfo;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    const-string v1, "Error in getSystemProperty"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private n(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.amazon.feature.no_starboard_enabled"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    return p1

    :catch_0
    move-exception p1

    sget-object v1, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    const-string v2, "Error checking TEE support from platform system feature"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static o(Landroid/content/Context;Lt1/k;)Ldev/cobalt/app/AmazonDeviceInfo;
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->c:Ldev/cobalt/app/AmazonDeviceInfo;

    if-nez v0, :cond_0

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    const-string v1, "initAmazonDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldev/cobalt/app/AmazonDeviceInfo;

    invoke-direct {v0, p0, p1}, Ldev/cobalt/app/AmazonDeviceInfo;-><init>(Landroid/content/Context;Lt1/k;)V

    sput-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->c:Ldev/cobalt/app/AmazonDeviceInfo;

    :cond_0
    sget-object p0, Ldev/cobalt/app/AmazonDeviceInfo;->c:Ldev/cobalt/app/AmazonDeviceInfo;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "initAmazonDeviceInfo parameter missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "chipset"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->C(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "certificationScope"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->E(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "certificationYear"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->F()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->G(I)I

    const-string v0, "deviceType"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->I(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "maxVerticalResolution"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->J()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->K(I)I

    const-string v0, "needsHdmiModeSwitch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->M(Z)Z

    const-string v0, "supportsOnlyWidevineL3"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->O(Z)Z

    const-string v0, "needsDoubleExponentWorkaround"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->b(Z)Z

    const-string v0, "needsAsyncAudioFrameWorkaround"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->d(Z)Z

    const-string v0, "needs120OperatingRateWorkaround"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->f(Z)Z

    const-string v0, "needsRebufferWorkaround"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->h(Z)Z

    const-string v0, "needsDualVideoHwDecoderWorkaround"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->j(Z)Z

    const-string v0, "isTeeSupported"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->u()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->w(Z)Z

    const-string v0, "needsBackButton"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->d()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->l(Z)Z

    const-string v0, "bufferReadyThresholdMs"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->m()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->n(I)I

    const-string v0, "HDMIStateChangeDelayMs"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->o()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->p(I)I

    const-string v0, "min_audio_buffer_duration_us_workaround"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->q()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->r(I)I

    const-string v0, "max_audio_buffer_duration_us_workaround"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->s()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->t(I)I

    new-instance v0, Ldev/cobalt/app/a;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ldev/cobalt/app/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->e:Ldev/cobalt/app/a;

    const-string v0, "mediaCodecStartForceCrashedProbabilityTenThousands"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->v(I)I

    const-string v0, "mediaCodecOnErrorCallbackForceCrashedProbabilityTenThousands"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->x(I)I

    const-string v0, "hasYouTubeRemoteButton"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ldev/cobalt/app/AmazonDeviceInfo$a;->z(Z)Z

    sget-object p0, Ldev/cobalt/app/AmazonDeviceInfo;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo;->h:Z

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public static q()V
    .locals 2

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    const-string v1, "Initializing video capability with default configuration."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldev/cobalt/app/a;

    const-string v1, "{\"VP9REG\":\"1080p60\",\"AVCREG\":\"1080p60\",\"AV1REG\":\"\",\"VP9SPH\":\"1080p30\",\"AVCSPH\":\"1080p30\",\"AV1SPH\":\"\"}"

    invoke-direct {v0, v1}, Ldev/cobalt/app/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->e:Ldev/cobalt/app/a;

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Ldev/cobalt/app/AmazonDeviceInfo;->h:Z

    sget-object v1, Ldev/cobalt/app/AmazonDeviceInfo;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Ldev/cobalt/app/AmazonDeviceInfo;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static r()Z
    .locals 5

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-boolean v1, Ldev/cobalt/app/AmazonDeviceInfo;->h:Z

    if-nez v1, :cond_0

    sget-object v1, Ldev/cobalt/app/AmazonDeviceInfo;->g:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo;->h:Z

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Ldev/cobalt/app/AmazonDeviceInfo;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device info init error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return v0

    :goto_0
    sget-object v1, Ldev/cobalt/app/AmazonDeviceInfo;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
