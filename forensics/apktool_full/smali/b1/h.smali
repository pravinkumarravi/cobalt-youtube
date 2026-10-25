.class public Lb1/h;
.super Lb1/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/h$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;

.field private static final e:Lb1/h;

.field public static final f:I


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb1/h;->d:Ljava/lang/Object;

    new-instance v0, Lb1/h;

    invoke-direct {v0}, Lb1/h;-><init>()V

    sput-object v0, Lb1/h;->e:Lb1/h;

    sget v0, Lb1/i;->a:I

    sput v0, Lb1/h;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb1/i;-><init>()V

    return-void
.end method

.method public static k()Lb1/h;
    .locals 1

    sget-object v0, Lb1/h;->e:Lb1/h;

    return-object v0
.end method

.method static n(Landroid/content/Context;ILe1/f;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0, p1}, Le1/e;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-static {p0, p1}, Le1/e;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-static {p0, p1}, Le1/e;->g(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static o(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    instance-of v0, p0, Landroidx/fragment/app/e;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->u()Landroidx/fragment/app/n;

    move-result-object p0

    invoke-static {p1, p3}, Lb1/n;->L1(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lb1/n;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lb1/n;->K1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p3}, Lb1/b;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lb1/b;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lb1/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final q(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    const/16 p3, 0x12

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lb1/h;->p(Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p4, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {p1, p2}, Le1/e;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2}, Le1/e;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v3, Landroidx/core/app/j$d;

    invoke-direct {v3, p1}, Landroidx/core/app/j$d;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/core/app/j$d;->k(Z)Landroidx/core/app/j$d;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/core/app/j$d;->e(Z)Landroidx/core/app/j$d;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroidx/core/app/j$d;->i(Ljava/lang/CharSequence;)Landroidx/core/app/j$d;

    move-result-object p3

    new-instance v3, Landroidx/core/app/j$b;

    invoke-direct {v3}, Landroidx/core/app/j$b;-><init>()V

    invoke-virtual {v3, v0}, Landroidx/core/app/j$b;->h(Ljava/lang/CharSequence;)Landroidx/core/app/j$b;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroidx/core/app/j$d;->n(Landroidx/core/app/j$e;)Landroidx/core/app/j$d;

    move-result-object p3

    invoke-static {p1}, Li1/e;->b(Landroid/content/Context;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_4

    invoke-static {}, Li1/f;->f()Z

    move-result v0

    invoke-static {v0}, Le1/r;->k(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p3, v0}, Landroidx/core/app/j$d;->m(I)Landroidx/core/app/j$d;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/core/app/j$d;->l(I)Landroidx/core/app/j$d;

    invoke-static {p1}, Li1/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, La1/a;->a:I

    sget v3, La1/b;->o:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, p4}, Landroidx/core/app/j$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/j$d;

    goto :goto_0

    :cond_3
    invoke-virtual {p3, p4}, Landroidx/core/app/j$d;->g(Landroid/app/PendingIntent;)Landroidx/core/app/j$d;

    goto :goto_0

    :cond_4
    const v3, 0x108008a

    invoke-virtual {p3, v3}, Landroidx/core/app/j$d;->m(I)Landroidx/core/app/j$d;

    move-result-object v3

    sget v6, La1/b;->h:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/core/app/j$d;->o(Ljava/lang/CharSequence;)Landroidx/core/app/j$d;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroidx/core/app/j$d;->p(J)Landroidx/core/app/j$d;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroidx/core/app/j$d;->g(Landroid/app/PendingIntent;)Landroidx/core/app/j$d;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroidx/core/app/j$d;->h(Ljava/lang/CharSequence;)Landroidx/core/app/j$d;

    :goto_0
    invoke-static {}, Li1/f;->i()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {}, Li1/f;->i()Z

    move-result p4

    invoke-static {p4}, Le1/r;->k(Z)V

    invoke-direct {p0}, Lb1/h;->s()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_6

    const-string p4, "com.google.android.gms.availability"

    invoke-static {v2, p4}, Lb1/d;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p1}, Le1/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_5

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    invoke-direct {v0, p4, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-static {v2, v0}, Lb1/e;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lb1/f;->a(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0, p1}, Lb1/g;->a(Landroid/app/NotificationChannel;Ljava/lang/CharSequence;)V

    invoke-static {v2, v0}, Lb1/e;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_6
    :goto_1
    invoke-virtual {p3, p4}, Landroidx/core/app/j$d;->f(Ljava/lang/String;)Landroidx/core/app/j$d;

    :cond_7
    invoke-virtual {p3}, Landroidx/core/app/j$d;->b()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v4, :cond_8

    if-eq p2, v5, :cond_8

    const/4 p3, 0x3

    if-eq p2, p3, :cond_8

    const p2, 0x9b6d

    goto :goto_2

    :cond_8
    sget-object p2, Lb1/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p2, 0x28c4

    :goto_2
    invoke-virtual {v2, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private final s()Ljava/lang/String;
    .locals 2

    sget-object v0, Lb1/h;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb1/h;->c:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb1/i;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb1/i;->b(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lb1/i;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;)I
    .locals 0

    invoke-super {p0, p1}, Lb1/i;->e(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public f(Landroid/content/Context;I)I
    .locals 0

    invoke-super {p0, p1, p2}, Lb1/i;->f(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final g(I)Z
    .locals 0

    invoke-super {p0, p1}, Lb1/i;->g(I)Z

    move-result p1

    return p1
.end method

.method public i(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "d"

    invoke-virtual {p0, p1, p2, v0}, Lb1/h;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Le1/f;->a(Landroid/app/Activity;Landroid/content/Intent;I)Le1/f;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lb1/h;->n(Landroid/content/Context;ILe1/f;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroid/content/Context;Lb1/a;)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p2}, Lb1/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lb1/a;->f()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lb1/a;->c()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lb1/h;->b(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lb1/h;->i(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, p3, p4}, Lb1/h;->o(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public m(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "n"

    invoke-virtual {p0, p1, p2, v0, v1}, Lb1/i;->c(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lb1/h;->q(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method final p(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lb1/h$a;

    invoke-direct {v0, p0, p1}, Lb1/h$a;-><init>(Lb1/h;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final r(Landroid/content/Context;Lb1/a;I)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lb1/h;->j(Landroid/content/Context;Lb1/a;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lb1/a;->c()I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-direct {p0, p1, p2, v1, p3}, Lb1/h;->q(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
