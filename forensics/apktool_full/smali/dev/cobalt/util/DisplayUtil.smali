.class public Ldev/cobalt/util/DisplayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/view/Display;

.field private static b:Landroid/util/DisplayMetrics;

.field private static c:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldev/cobalt/util/DisplayUtil$a;

    invoke-direct {v0}, Ldev/cobalt/util/DisplayUtil$a;-><init>()V

    sput-object v0, Ldev/cobalt/util/DisplayUtil;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v0, 0x0

    sput-boolean v0, Ldev/cobalt/util/DisplayUtil;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->nativeOnDisplayChanged()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Ldev/cobalt/util/DisplayUtil;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    sget-object v0, Ldev/cobalt/util/DisplayUtil;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 p0, 0x1

    sput-boolean p0, Ldev/cobalt/util/DisplayUtil;->d:Z

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->nativeOnDisplayChanged()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Ldev/cobalt/util/DisplayUtil;->i(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    const-class v1, Ldev/cobalt/util/DisplayUtil;

    monitor-enter v1

    :try_start_0
    sput-object v0, Ldev/cobalt/util/DisplayUtil;->a:Landroid/view/Display;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Ldev/cobalt/util/DisplayUtil;->b:Landroid/util/DisplayMetrics;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d()Landroid/view/Display;
    .locals 2

    const-class v0, Ldev/cobalt/util/DisplayUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldev/cobalt/util/DisplayUtil;->a:Landroid/view/Display;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Ldev/cobalt/util/DisplayUtil;->a:Landroid/view/Display;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static e(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static f()D
    .locals 2

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->d()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0
.end method

.method private static g(Landroid/content/Context;)Landroid/view/Display;
    .locals 0

    invoke-static {p0}, Lv1/c;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static h()Landroid/util/SizeF;
    .locals 3

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->j()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/util/SizeF;

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-direct {v1, v2, v0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v1
.end method

.method public static i(Landroid/content/Context;)Landroid/view/Display;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Ldev/cobalt/util/DisplayUtil;->g(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Ldev/cobalt/util/DisplayUtil;->e(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private static j()Landroid/util/DisplayMetrics;
    .locals 1

    sget-object v0, Ldev/cobalt/util/DisplayUtil;->b:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static k()Landroid/util/Size;
    .locals 3

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->j()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static l()Landroid/util/Size;
    .locals 1

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->m()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->k()Landroid/util/Size;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static m()Landroid/util/Size;
    .locals 4

    const-string v0, "sys.display-size"

    invoke-static {v0}, Lv1/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native nativeOnDisplayChanged()V
.end method
