.class public Ldev/cobalt/media/MediaDrmBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;
    }
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# static fields
.field private static final i:[C

.field private static final j:Ljava/util/UUID;


# instance fields
.field private a:Landroid/media/MediaDrm;

.field private b:J

.field private c:Ljava/util/UUID;

.field private d:[B

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/media/MediaCrypto;

.field private final g:Ljava/lang/Object;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ldev/cobalt/media/MediaDrmBridge;->i:[C

    const-string v0, "edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ldev/cobalt/media/MediaDrmBridge;->j:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/UUID;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/media/MediaDrmBridge;->h:Z

    iput-object p2, p0, Ldev/cobalt/media/MediaDrmBridge;->c:Ljava/util/UUID;

    new-instance v1, Landroid/media/MediaDrm;

    invoke-direct {v1, p2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt p2, v2, :cond_0

    invoke-direct {p0, v1}, Ldev/cobalt/media/MediaDrmBridge;->m(Landroid/media/MediaDrm;)V

    :cond_0
    iput-wide p3, p0, Ldev/cobalt/media/MediaDrmBridge;->b:J

    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->o()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    new-instance p3, Ldev/cobalt/media/MediaDrmBridge$a;

    invoke-direct {p3, p0}, Ldev/cobalt/media/MediaDrmBridge$a;-><init>(Ldev/cobalt/media/MediaDrmBridge;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    iget-object p2, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    new-instance p3, Ldev/cobalt/media/MediaDrmBridge$b;

    invoke-direct {p3, p0}, Ldev/cobalt/media/MediaDrmBridge$b;-><init>(Ldev/cobalt/media/MediaDrmBridge;)V

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    iget-object p2, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string p3, "privacyMode"

    const-string p4, "disable"

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string p3, "sessionSharing"

    const-string p4, "enable"

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.youtube.widevine.l3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string p2, "securityLevel"

    invoke-virtual {p1, p2}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "L3"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Invalid nativeMediaDrmBridge value: |%d|."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Ldev/cobalt/media/MediaDrmBridge;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/media/MediaDrmBridge;->t([B)Z

    move-result p0

    return p0
.end method

.method static synthetic b([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ldev/cobalt/media/MediaDrmBridge;->j([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Ldev/cobalt/media/MediaDrmBridge;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/media/MediaDrmBridge;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method static create(Ljava/lang/String;J)Ldev/cobalt/media/MediaDrmBridge;
    .locals 7
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-string v0, "Failed to create MediaDrmBridge"

    const-string v1, "starboard_media"

    sget-object v2, Ldev/cobalt/media/MediaDrmBridge;->j:Ljava/util/UUID;

    invoke-static {v2}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ldev/cobalt/media/MediaDrmBridge;

    invoke-direct {v6, p0, v2, p1, p2}, Ldev/cobalt/media/MediaDrmBridge;-><init>(Ljava/lang/String;Ljava/util/UUID;J)V

    const-string p0, "MediaDrmBridge successfully created."

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v6}, Ldev/cobalt/media/MediaDrmBridge;->l()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v4

    :cond_1
    return-object v6

    :catch_0
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v1, v0, p1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4

    :catch_1
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v1, v0, p1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4

    :catch_2
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v5

    const-string p0, "Unsupported DRM scheme"

    invoke-static {v1, p0, p1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4
.end method

.method static synthetic d(Ldev/cobalt/media/MediaDrmBridge;[B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/cobalt/media/MediaDrmBridge;->n([B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Ldev/cobalt/media/MediaDrmBridge;)Z
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Ldev/cobalt/media/MediaDrmBridge;I[BLandroid/media/MediaDrm$KeyRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/cobalt/media/MediaDrmBridge;->p(I[BLandroid/media/MediaDrm$KeyRequest;)V

    return-void
.end method

.method static synthetic g(Ldev/cobalt/media/MediaDrmBridge;)J
    .locals 2

    iget-wide v0, p0, Ldev/cobalt/media/MediaDrmBridge;->b:J

    return-wide v0
.end method

.method static synthetic h(Ldev/cobalt/media/MediaDrmBridge;J[B[Landroid/media/MediaDrm$KeyStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/cobalt/media/MediaDrmBridge;->nativeOnKeyStatusChange(J[B[Landroid/media/MediaDrm$KeyStatus;)V

    return-void
.end method

.method private i()Z
    .locals 6

    const-string v0, "failed to provide provision response"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "starboard_media"

    const-string v4, "attemptProvisioning()"

    invoke-static {v3, v4, v2}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&signedRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ldev/cobalt/coat/h;

    invoke-direct {v4}, Ldev/cobalt/coat/h;-><init>()V

    invoke-virtual {v4, v2}, Ldev/cobalt/coat/h;->b(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v5, v2}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v3, v0, v4}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v3, v0, v4}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return v1
.end method

.method static isCbcsSchemeSupported()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isWidevineCryptoSchemeSupported()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-object v0, Ldev/cobalt/media/MediaDrmBridge;->j:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private static j([B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    sget-object v2, Ldev/cobalt/media/MediaDrmBridge;->i:[C

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private k(Landroid/media/MediaDrm;)V
    .locals 0

    invoke-static {p1}, Ldev/cobalt/media/n;->a(Landroid/media/MediaDrm;)V

    return-void
.end method

.method private l()Z
    .locals 6

    const-string v0, "starboard_media"

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ldev/cobalt/media/MediaDrmBridge;->c:Ljava/util/UUID;

    invoke-static {v3}, Landroid/media/MediaCrypto;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/media/MediaCrypto;

    iget-object v4, p0, Ldev/cobalt/media/MediaDrmBridge;->c:Ljava/util/UUID;

    new-array v5, v2, [B

    invoke-direct {v3, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    const-string v4, "MediaCrypto successfully created!"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iput-object v3, p0, Ldev/cobalt/media/MediaDrmBridge;->f:Landroid/media/MediaCrypto;

    return v1

    :cond_0
    const-string v3, "Cannot create MediaCrypto for unsupported scheme."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v3, "Cannot create MediaCrypto"

    invoke-static {v0, v3, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create media crypto with null mMediaDrm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m(Landroid/media/MediaDrm;)V
    .locals 4

    invoke-static {p1}, Ldev/cobalt/media/m;->a(Landroid/media/MediaDrm;)I

    move-result p1

    const v0, 0x7fffffff

    const-string v1, "starboard_media"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "Unknown MediaDrm HDCP level %d."

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_0
    const-string p1, "MediaDrm HDCP Level is HDCP_V2_3."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_1
    const-string p1, "MediaDrm HDCP Level is HDCP_V2_2."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_2
    const-string p1, "MediaDrm HDCP Level is HDCP_V2_1."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_3
    const-string p1, "MediaDrm HDCP Level is HDCP_V2."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_4
    const-string p1, "MediaDrm HDCP Level is HDCP_V1."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_5
    const-string p1, "MediaDrm HDCP Level is HDCP_NONE."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_6
    const-string p1, "MediaDrm HDCP Level is HDCP_LEVEL_UNKNOWN."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const-string p1, "MediaDrm HDCP Level is HDCP_NO_DIGITAL_OUTPUT."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private n([B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;
    .locals 9

    const-string v0, "starboard_media"

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B

    if-eqz v1, :cond_2

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "youtube_cert_scope"

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->getDeviceInfoCertificationScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget-object v2, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    instance-of p2, p1, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz p2, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v8

    const-string p1, "MediaDrmStateException fired during getKeyRequest()."

    invoke-static {v0, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p2, "succeeded"

    goto :goto_1

    :cond_1
    const-string p2, "failed"

    :goto_1
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v8

    const-string p2, "getKeyRequest %s!"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v8, [Ljava/lang/Object;

    invoke-static {v0, p2, p3}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mMediaCryptoSession cannot be null in getKeyRequest."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mMediaDrm cannot be null in getKeyRequest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeOnKeyStatusChange(J[B[Landroid/media/MediaDrm$KeyStatus;)V
.end method

.method private native nativeOnSessionMessage(JI[BI[B)V
.end method

.method private o()Z
    .locals 4

    iget-wide v0, p0, Ldev/cobalt/media/MediaDrmBridge;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p(I[BLandroid/media/MediaDrm$KeyRequest;)V
    .locals 8

    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result v6

    iget-wide v2, p0, Ldev/cobalt/media/MediaDrmBridge;->b:J

    invoke-virtual {p3}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Ldev/cobalt/media/MediaDrmBridge;->nativeOnSessionMessage(JI[BI[B)V

    return-void
.end method

.method private q()[B
    .locals 6

    const-string v0, "Cannot open a new session"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "starboard_media"

    const-string v4, "openSession()"

    invoke-static {v3, v4, v2}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v0, v5}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->r()V

    return-object v4

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v0, v5}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mMediaDrm cannot be null in openSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private r()V
    .locals 8

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "closeSession failed: "

    const/4 v3, 0x1

    const-string v4, "starboard_media"

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    :try_start_0
    iget-object v6, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v5

    const-string v6, "removeKeys failed: "

    invoke-static {v4, v6, v7}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    :try_start_1
    iget-object v6, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v5

    invoke-static {v4, v2, v7}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Ldev/cobalt/media/MediaDrmBridge;->j([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "Successfully closed session (%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v6, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v6, v0}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v4, v2, v3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    iput-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B

    :cond_1
    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-eqz v0, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    invoke-direct {p0, v0}, Ldev/cobalt/media/MediaDrmBridge;->k(Landroid/media/MediaDrm;)V

    goto :goto_4

    :cond_2
    invoke-direct {p0, v0}, Ldev/cobalt/media/MediaDrmBridge;->s(Landroid/media/MediaDrm;)V

    :goto_4
    iput-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called release with null mMediaDrm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private s(Landroid/media/MediaDrm;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    return-void
.end method

.method private t([B)Z
    .locals 3

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Ldev/cobalt/media/MediaDrmBridge;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Session doesn\'t exist because media crypto session is not created."

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "starboard_media"

    invoke-static {v2, p1, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "mSessionIds must be empty if crypto session does not exist."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method closeSession([B)V
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard_media"

    const-string v3, "closeSession()"

    invoke-static {v2, v3, v1}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-nez v1, :cond_0

    const-string p1, "closeSession() called when MediaDrm is null."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Ldev/cobalt/media/MediaDrmBridge;->t([B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid sessionId in closeSession(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldev/cobalt/media/MediaDrmBridge;->j([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v3, p1}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "removeKeys failed: "

    invoke-static {v2, v3, v4}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    :try_start_1
    iget-object v3, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v3, p1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "closeSession failed: "

    invoke-static {v2, v3, v4}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    iget-object v3, p0, Ldev/cobalt/media/MediaDrmBridge;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ldev/cobalt/media/MediaDrmBridge;->j([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Session %s closed"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method createMediaCryptoSession()Z
    .locals 7
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    const-string v1, "starboard_media"

    const-string v3, "MediaDrmBridge createMediaCryptoSession"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->f:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_3

    iput-boolean v4, p0, Ldev/cobalt/media/MediaDrmBridge;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->q()[B

    move-result-object v1

    iput-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "starboard_media"

    const-string v5, "Device not provisioned"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v3, v5, v6}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->i()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "starboard_media"

    const-string v3, "Failed to provision device during MediaCrypto creation."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v2, p0, Ldev/cobalt/media/MediaDrmBridge;->h:Z

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v4

    :cond_1
    :try_start_4
    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->q()[B

    move-result-object v1

    iput-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B
    :try_end_4
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B

    if-nez v1, :cond_2

    const-string v1, "starboard_media"

    const-string v3, "Cannot create MediaCrypto Session."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iput-boolean v2, p0, Ldev/cobalt/media/MediaDrmBridge;->h:Z

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v4

    :cond_2
    :try_start_7
    iget-object v3, p0, Ldev/cobalt/media/MediaDrmBridge;->f:Landroid/media/MediaCrypto;

    invoke-virtual {v3, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_7
    .catch Landroid/media/MediaCryptoException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string v1, "starboard_media"

    const-string v3, "MediaCrypto Session created: %s"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B

    invoke-static {v6}, Ldev/cobalt/media/MediaDrmBridge;->j([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iput-boolean v2, p0, Ldev/cobalt/media/MediaDrmBridge;->h:Z

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return v2

    :catch_1
    move-exception v1

    :try_start_a
    const-string v3, "starboard_media"

    const-string v5, "Unable to set media drm session"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v3, v5, v6}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    iget-object v3, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B

    invoke-virtual {v1, v3}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_c
    const-string v3, "starboard_media"

    const-string v5, "closeSession failed: "

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v3, v5, v6}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iput-boolean v2, p0, Ldev/cobalt/media/MediaDrmBridge;->h:Z

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    return v4

    :catch_3
    move-exception v1

    :try_start_e
    const-string v3, "starboard_media"

    const-string v5, "Device still not provisioned after supposedly successful provisioning"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v3, v5, v6}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iput-boolean v2, p0, Ldev/cobalt/media/MediaDrmBridge;->h:Z

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return v4

    :goto_2
    iput-boolean v2, p0, Ldev/cobalt/media/MediaDrmBridge;->h:Z

    iget-object v2, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create media crypto session with null mMediaCrypto."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v1
.end method

.method createSession(I[BLjava/lang/String;)V
    .locals 8
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-string v0, "closeSession failed"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "starboard_media"

    const-string v4, "createSession()"

    invoke-static {v3, v4, v2}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    const-string p1, "createSession() called when MediaDrm is null."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->q()[B

    move-result-object v4
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v4, :cond_1

    :try_start_1
    const-string p1, "Open session failed."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-direct {p0, v4}, Ldev/cobalt/media/MediaDrmBridge;->t([B)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p1, "Opened session that already exists."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_2
    invoke-direct {p0, v4, p2, p3}, Ldev/cobalt/media/MediaDrmBridge;->n([B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p2
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p2, :cond_3

    :try_start_3
    iget-object p1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {p1, v4}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_4
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v3, v0, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    const-string p1, "Generate request failed."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_3
    const-string v5, "createSession(): Session (%s) created."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ldev/cobalt/media/MediaDrmBridge;->j([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v5, p0, Ldev/cobalt/media/MediaDrmBridge;->e:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v4, p2}, Ldev/cobalt/media/MediaDrmBridge;->p(I[BLandroid/media/MediaDrm$KeyRequest;)V
    :try_end_4
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    move p2, v2

    goto :goto_2

    :catch_3
    move-exception p1

    const/4 v4, 0x0

    :goto_1
    move p2, v1

    :goto_2
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "Device not provisioned"

    invoke-static {v3, p1, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p2, :cond_4

    :try_start_5
    iget-object p1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {p1, v4}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v3, v0, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    :goto_3
    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->i()Z

    :goto_4
    return-void
.end method

.method destroy()V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldev/cobalt/media/MediaDrmBridge;->b:J

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->r()V

    :cond_0
    return-void
.end method

.method getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/media/MediaDrmBridge;->f:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method getMetricsInBase64()[B
    .locals 10
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    iget-object v5, p0, Ldev/cobalt/media/MediaDrmBridge;->d:[B

    if-nez v5, :cond_2

    iget-boolean v6, p0, Ldev/cobalt/media/MediaDrmBridge;->h:Z

    if-nez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x1388

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gtz v5, :cond_1

    const-string v3, "starboard_media"

    const-string v4, "Timeout waiting for MediaCrypto session creation."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :cond_1
    :try_start_2
    const-string v5, "starboard_media"

    const-string v6, "Waiting for MediaCrypto session before retrieving metrics."

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v5, v6, v9}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v5, p0, Ldev/cobalt/media/MediaDrmBridge;->g:Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "starboard_media"

    const-string v5, "Interrupted while waiting for MediaCrypto session."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v0

    invoke-static {v4, v5, v6}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    monitor-exit v1

    return-object v2

    :cond_2
    if-nez v5, :cond_3

    const-string v3, "starboard_media"

    const-string v4, "Cannot retrieve metrics: MediaCrypto session creation failed."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v1

    return-object v2

    :cond_3
    const-string v3, "starboard_media"

    const-string v4, "Retrieving DRM Metrics."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v3, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string v4, "metrics"

    invoke-virtual {v3, v4}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v4, v3

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v0, 0xb

    invoke-static {v3, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0

    :cond_5
    :goto_1
    :try_start_4
    new-array v3, v0, [B

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    const-string v1, "starboard_media"

    const-string v3, "Failed to retrieve DRM Metrics."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2
.end method

.method updateSession(I[B[B)Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-string p1, ""

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard_media"

    const-string v3, "updateSession()"

    invoke-static {v2, v3, v1}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-nez v1, :cond_0

    const-string p1, "updateSession() called when MediaDrm is null."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;

    sget-object p2, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->c:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Null MediaDrm object when calling updateSession(). StackTrace: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;-><init>(Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Ldev/cobalt/media/MediaDrmBridge;->t([B)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "updateSession tried to update a session that does not exist."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;

    sget-object p2, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->c:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to update session because it does not exist. StackTrace: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;-><init>(Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Ldev/cobalt/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v3, p2, p3}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto/16 :goto_3

    :catch_3
    move-exception p3

    :try_start_1
    const-string v3, "Exception intentionally caught when calling provideKeyResponse()"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p3, v4, v0

    invoke-static {v2, v3, v4}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    const-string p3, "Key successfully added for session %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ldev/cobalt/media/MediaDrmBridge;->j([B)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {v2, p2, p3}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p2, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;

    sget-object p3, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->b:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    invoke-direct {p2, p3, p1}, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;-><init>(Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :goto_1
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-static {v2, p1, p3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->r()V

    new-instance p1, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;

    sget-object p3, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->c:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update session failed. Caught exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " StackTrace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;-><init>(Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;Ljava/lang/String;)V

    return-object p1

    :goto_2
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p3, "Failed to provide key response."

    invoke-static {v2, p3, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->r()V

    new-instance p2, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;

    sget-object p3, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->c:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update session failed because we were denied by server. StackTrace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;-><init>(Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;Ljava/lang/String;)V

    return-object p2

    :goto_3
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p3, "Failed to provide key response"

    invoke-static {v2, p3, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Ldev/cobalt/media/MediaDrmBridge;->r()V

    new-instance p2, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;

    sget-object p3, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;->c:Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update session failed due to lack of provisioning. StackTrace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult;-><init>(Ldev/cobalt/media/MediaDrmBridge$UpdateSessionResult$a;Ljava/lang/String;)V

    return-object p2
.end method
