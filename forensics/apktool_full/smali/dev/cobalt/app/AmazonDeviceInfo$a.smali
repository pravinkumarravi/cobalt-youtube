.class Ldev/cobalt/app/AmazonDeviceInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/app/AmazonDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "Amazon"

.field public static final b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:I

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z

.field private static o:I

.field private static p:Z

.field private static q:Z

.field private static r:I

.field private static s:Z

.field private static t:Z

.field private static u:I

.field private static v:I

.field private static w:Z

.field private static x:I

.field private static y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->b:Ljava/lang/String;

    sput-object v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->c:Ljava/lang/String;

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->P()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->d:Ljava/lang/String;

    const-string v1, "ro.board.platform"

    const-string v2, "chipset"

    invoke-static {v1, v2}, Ldev/cobalt/app/AmazonDeviceInfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->e:Ljava/lang/String;

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo$a;->Q()I

    move-result v1

    sput v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->f:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amazon-2024-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->g:Ljava/lang/String;

    const/16 v1, 0x7e8

    sput v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->h:I

    const/16 v1, 0x438

    sput v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->i:I

    const-string v1, "AFTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->j:Z

    const-string v1, "AFTB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AFTM"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    sput-boolean v2, Ldev/cobalt/app/AmazonDeviceInfo$a;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Ldev/cobalt/app/AmazonDeviceInfo$a;->l:Z

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->m:Z

    sput-boolean v5, Ldev/cobalt/app/AmazonDeviceInfo$a;->n:Z

    const/16 v0, 0xbb8

    sput v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->o:I

    sput-boolean v5, Ldev/cobalt/app/AmazonDeviceInfo$a;->p:Z

    sput-boolean v5, Ldev/cobalt/app/AmazonDeviceInfo$a;->q:Z

    const/16 v0, 0x32

    sput v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->r:I

    sput-boolean v4, Ldev/cobalt/app/AmazonDeviceInfo$a;->s:Z

    sput-boolean v5, Ldev/cobalt/app/AmazonDeviceInfo$a;->t:Z

    const/4 v0, -0x1

    sput v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->u:I

    sput v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->v:I

    sput-boolean v5, Ldev/cobalt/app/AmazonDeviceInfo$a;->w:Z

    sput v5, Ldev/cobalt/app/AmazonDeviceInfo$a;->x:I

    sput v5, Ldev/cobalt/app/AmazonDeviceInfo$a;->y:I

    return-void
.end method

.method static synthetic A()I
    .locals 1

    sget v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->f:I

    return v0
.end method

.method static synthetic B()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F()I
    .locals 1

    sget v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->h:I

    return v0
.end method

.method static synthetic G(I)I
    .locals 0

    sput p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->h:I

    return p0
.end method

.method static synthetic H()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic J()I
    .locals 1

    sget v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->i:I

    return v0
.end method

.method static synthetic K(I)I
    .locals 0

    sput p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->i:I

    return p0
.end method

.method static synthetic L()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->j:Z

    return v0
.end method

.method static synthetic M(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->j:Z

    return p0
.end method

.method static synthetic N()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->k:Z

    return v0
.end method

.method static synthetic O(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->k:Z

    return p0
.end method

.method private static P()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "TV"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "AEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "MMD"

    return-object v0

    :cond_1
    const-string v2, "AFTB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTKA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTSS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTSSS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTMM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTKRT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTKM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTMA08C15"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AFTGAZL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const-string v0, "OTT"

    return-object v0
.end method

.method private static Q()I
    .locals 2

    :try_start_0
    const-string v0, "ro.sf.display.orientation"

    const-string v1, "0"

    invoke-static {v0, v1}, Ldev/cobalt/app/AmazonDeviceInfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error parsing the ro.sf.display.orientation value. Defaulting the display orientation degree to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->l:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->l:Z

    return p0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->m:Z

    return v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->m:Z

    return p0
.end method

.method static synthetic e()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->n:Z

    return v0
.end method

.method static synthetic f(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->n:Z

    return p0
.end method

.method static synthetic g()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->q:Z

    return v0
.end method

.method static synthetic h(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->q:Z

    return p0
.end method

.method static synthetic i()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->t:Z

    return v0
.end method

.method static synthetic j(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->t:Z

    return p0
.end method

.method static synthetic k()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->p:Z

    return v0
.end method

.method static synthetic l(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->p:Z

    return p0
.end method

.method static synthetic m()I
    .locals 1

    sget v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->r:I

    return v0
.end method

.method static synthetic n(I)I
    .locals 0

    sput p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->r:I

    return p0
.end method

.method static synthetic o()I
    .locals 1

    sget v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->o:I

    return v0
.end method

.method static synthetic p(I)I
    .locals 0

    sput p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->o:I

    return p0
.end method

.method static synthetic q()I
    .locals 1

    sget v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->u:I

    return v0
.end method

.method static synthetic r(I)I
    .locals 0

    sput p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->u:I

    return p0
.end method

.method static synthetic s()I
    .locals 1

    sget v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->v:I

    return v0
.end method

.method static synthetic t(I)I
    .locals 0

    sput p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->v:I

    return p0
.end method

.method static synthetic u()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->s:Z

    return v0
.end method

.method static synthetic v(I)I
    .locals 0

    sput p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->x:I

    return p0
.end method

.method static synthetic w(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->s:Z

    return p0
.end method

.method static synthetic x(I)I
    .locals 0

    sput p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->y:I

    return p0
.end method

.method static synthetic y()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/app/AmazonDeviceInfo$a;->w:Z

    return v0
.end method

.method static synthetic z(Z)Z
    .locals 0

    sput-boolean p0, Ldev/cobalt/app/AmazonDeviceInfo$a;->w:Z

    return p0
.end method
