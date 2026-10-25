.class public Ldev/cobalt/coat/PlatformError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final b:Lv1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/d<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:J

.field private final e:Landroid/os/Handler;

.field private f:Landroid/app/Dialog;

.field private g:I


# direct methods
.method public constructor <init>(Lv1/d;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/d<",
            "Landroid/app/Activity;",
            ">;IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/cobalt/coat/PlatformError;->b:Lv1/d;

    iput p2, p0, Ldev/cobalt/coat/PlatformError;->c:I

    iput-wide p3, p0, Ldev/cobalt/coat/PlatformError;->d:J

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ldev/cobalt/coat/PlatformError;->e:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Ldev/cobalt/coat/PlatformError;->g:I

    return-void
.end method

.method static synthetic a(Ldev/cobalt/coat/PlatformError;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/PlatformError;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Ldev/cobalt/coat/PlatformError;->b:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v2, p0, Ldev/cobalt/coat/PlatformError;->d:J

    invoke-virtual {p0, v1, v2, v3}, Ldev/cobalt/coat/PlatformError;->c(IJ)V

    return-void

    :cond_0
    new-instance v2, Ldev/cobalt/coat/o$b;

    invoke-direct {v2, v0}, Ldev/cobalt/coat/o$b;-><init>(Landroid/content/Context;)V

    iget v0, p0, Ldev/cobalt/coat/PlatformError;->c:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown platform error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldev/cobalt/coat/PlatformError;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "starboard"

    invoke-static {v2, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_1
    const v0, 0x7f0f005a

    invoke-virtual {v2, v0}, Ldev/cobalt/coat/o$b;->d(I)Ldev/cobalt/coat/o$b;

    move-result-object v0

    const/4 v1, 0x1

    const v3, 0x7f0f005c

    invoke-virtual {v0, v1, v3}, Ldev/cobalt/coat/o$b;->a(II)Ldev/cobalt/coat/o$b;

    move-result-object v0

    const/4 v1, 0x2

    const v3, 0x7f0f005b

    invoke-virtual {v0, v1, v3}, Ldev/cobalt/coat/o$b;->a(II)Ldev/cobalt/coat/o$b;

    invoke-virtual {v2, p0}, Ldev/cobalt/coat/o$b;->c(Landroid/content/DialogInterface$OnClickListener;)Ldev/cobalt/coat/o$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldev/cobalt/coat/o$b;->e(Landroid/content/DialogInterface$OnDismissListener;)Ldev/cobalt/coat/o$b;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/coat/o$b;->b()Ldev/cobalt/coat/o;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/coat/PlatformError;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private native nativeSendResponse(IJ)V
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/PlatformError;->e:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/PlatformError$a;

    invoke-direct {v1, p0}, Ldev/cobalt/coat/PlatformError$a;-><init>(Ldev/cobalt/coat/PlatformError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected c(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/cobalt/coat/PlatformError;->nativeSendResponse(IJ)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Ldev/cobalt/coat/PlatformError;->c:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/cobalt/coat/PlatformError;->b:Lv1/d;

    invoke-virtual {p1}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "starboard"

    const-string v0, "Failed to start activity for ACTION_WIFI_SETTINGS."

    invoke-static {p2, v0, p1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    iput p1, p0, Ldev/cobalt/coat/PlatformError;->g:I

    iget-object p1, p0, Ldev/cobalt/coat/PlatformError;->f:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, 0x0

    iput-object p1, p0, Ldev/cobalt/coat/PlatformError;->f:Landroid/app/Dialog;

    iget p1, p0, Ldev/cobalt/coat/PlatformError;->g:I

    iget-wide v0, p0, Ldev/cobalt/coat/PlatformError;->d:J

    invoke-virtual {p0, p1, v0, v1}, Ldev/cobalt/coat/PlatformError;->c(IJ)V

    return-void
.end method
