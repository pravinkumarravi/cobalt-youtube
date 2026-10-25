.class public Ldev/cobalt/coat/StarboardBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/coat/StarboardBridge$d;
    }
.end annotation


# static fields
.field private static final x:Ljava/util/TimeZone;


# instance fields
.field private a:Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;

.field private b:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

.field private c:Ldev/cobalt/media/AudioOutputManager;

.field private d:Ldev/cobalt/coat/CobaltMediaSession;

.field private e:Ldev/cobalt/coat/AudioPermissionRequester;

.field private f:Ldev/cobalt/coat/NetworkStatus;

.field private g:Ldev/cobalt/coat/ResourceOverlay;

.field private h:Ldev/cobalt/coat/b;

.field private i:Ldev/cobalt/coat/VolumeStateReceiver;

.field private final j:Landroid/content/Context;

.field private final k:Lv1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/d<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lv1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/d<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final m:[Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private final o:Ljava/lang/Runnable;

.field private volatile p:Z

.field private volatile q:Z

.field private final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ldev/cobalt/coat/CobaltService$a;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ldev/cobalt/coat/CobaltService;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Z

.field private final v:J

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cobalt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "America/Los_Angeles"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ldev/cobalt/coat/StarboardBridge;->x:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv1/d;Lv1/d;Ldev/cobalt/coat/c;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lv1/d<",
            "Landroid/app/Activity;",
            ">;",
            "Lv1/d<",
            "Landroid/app/Service;",
            ">;",
            "Ldev/cobalt/coat/c;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldev/cobalt/coat/StarboardBridge$a;

    invoke-direct {v0, p0}, Ldev/cobalt/coat/StarboardBridge$a;-><init>(Ldev/cobalt/coat/StarboardBridge;)V

    iput-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->o:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldev/cobalt/coat/StarboardBridge;->p:Z

    iput-boolean v1, p0, Ldev/cobalt/coat/StarboardBridge;->q:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ldev/cobalt/coat/StarboardBridge;->r:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ldev/cobalt/coat/StarboardBridge;->s:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ldev/cobalt/coat/StarboardBridge;->t:Ljava/util/HashMap;

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Ldev/cobalt/coat/StarboardBridge;->v:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Ldev/cobalt/coat/StarboardBridge;->w:Z

    invoke-direct {p0}, Ldev/cobalt/coat/StarboardBridge;->nativeInitialize()Z

    iput-object p1, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    iput-object p2, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    iput-object p3, p0, Ldev/cobalt/coat/StarboardBridge;->l:Lv1/d;

    iput-object p5, p0, Ldev/cobalt/coat/StarboardBridge;->m:[Ljava/lang/String;

    iput-object p6, p0, Ldev/cobalt/coat/StarboardBridge;->n:Ljava/lang/String;

    new-instance p3, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;

    invoke-direct {p3, p1, v0}, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p3, p0, Ldev/cobalt/coat/StarboardBridge;->a:Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;

    new-instance p3, Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-direct {p3, p1}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Ldev/cobalt/coat/StarboardBridge;->b:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    new-instance p3, Ldev/cobalt/media/AudioOutputManager;

    invoke-direct {p3, p1}, Ldev/cobalt/media/AudioOutputManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Ldev/cobalt/coat/StarboardBridge;->c:Ldev/cobalt/media/AudioOutputManager;

    new-instance p3, Ldev/cobalt/coat/CobaltMediaSession;

    iget-object p5, p0, Ldev/cobalt/coat/StarboardBridge;->c:Ldev/cobalt/media/AudioOutputManager;

    invoke-direct {p3, p1, p2, p5, p4}, Ldev/cobalt/coat/CobaltMediaSession;-><init>(Landroid/content/Context;Lv1/d;Ldev/cobalt/coat/CobaltMediaSession$f;Ldev/cobalt/coat/c;)V

    iput-object p3, p0, Ldev/cobalt/coat/StarboardBridge;->d:Ldev/cobalt/coat/CobaltMediaSession;

    new-instance p3, Ldev/cobalt/coat/AudioPermissionRequester;

    invoke-direct {p3, p1, p2}, Ldev/cobalt/coat/AudioPermissionRequester;-><init>(Landroid/content/Context;Lv1/d;)V

    iput-object p3, p0, Ldev/cobalt/coat/StarboardBridge;->e:Ldev/cobalt/coat/AudioPermissionRequester;

    new-instance p2, Ldev/cobalt/coat/NetworkStatus;

    invoke-direct {p2, p1}, Ldev/cobalt/coat/NetworkStatus;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ldev/cobalt/coat/StarboardBridge;->f:Ldev/cobalt/coat/NetworkStatus;

    new-instance p2, Ldev/cobalt/coat/ResourceOverlay;

    invoke-direct {p2, p1}, Ldev/cobalt/coat/ResourceOverlay;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ldev/cobalt/coat/StarboardBridge;->g:Ldev/cobalt/coat/ResourceOverlay;

    new-instance p2, Ldev/cobalt/coat/b;

    invoke-direct {p2, p1}, Ldev/cobalt/coat/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ldev/cobalt/coat/StarboardBridge;->h:Ldev/cobalt/coat/b;

    new-instance p2, Ldev/cobalt/coat/VolumeStateReceiver;

    invoke-direct {p2, p1}, Ldev/cobalt/coat/VolumeStateReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ldev/cobalt/coat/StarboardBridge;->i:Ldev/cobalt/coat/VolumeStateReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.google.android.feature.AMATI_EXPERIENCE"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ldev/cobalt/coat/StarboardBridge;->u:Z

    return-void
.end method

.method static synthetic a(Ldev/cobalt/coat/StarboardBridge;)Z
    .locals 0

    iget-boolean p0, p0, Ldev/cobalt/coat/StarboardBridge;->w:Z

    return p0
.end method

.method static synthetic b(Ldev/cobalt/coat/StarboardBridge;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldev/cobalt/coat/StarboardBridge;->w:Z

    return p1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read system property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "starboard"

    invoke-static {v0, p0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Ldev/cobalt/coat/StarboardBridge;->nativeIsReleaseBuild()Z

    move-result v0

    return v0
.end method

.method private native nativeCurrentMonotonicTime()J
.end method

.method private native nativeHandleDeepLink(Ljava/lang/String;)V
.end method

.method private native nativeInitialize()Z
.end method

.method private static native nativeIsReleaseBuild()Z
.end method

.method private native nativeOnKeyServiceReady()V
.end method

.method private native nativeOnPageVisibilityChanged(Z)V
.end method

.method private native nativeOnSearchRequested()Z
.end method

.method private native nativeStopApp(I)V
.end method


# virtual methods
.method protected afterStopped()V
    .locals 4
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/StarboardBridge;->p:Z

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->b:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-virtual {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->j()V

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/cobalt/coat/CobaltService;

    invoke-virtual {v1}, Ldev/cobalt/coat/CobaltService;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "starboard"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "Shutdown in foreground; finishing Activity and removing task."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_1

    :cond_1
    const-string v0, "Shutdown in background; killing app without removing task."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method

.method protected beforeStartOrResume()V
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starboard"

    const-string v2, "Prepare to resume"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->d:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-virtual {v0}, Ldev/cobalt/coat/CobaltMediaSession;->v()V

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->f:Ldev/cobalt/coat/NetworkStatus;

    invoke-virtual {v0}, Ldev/cobalt/coat/NetworkStatus;->b()V

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/cobalt/coat/CobaltService;

    invoke-virtual {v1}, Ldev/cobalt/coat/CobaltService;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->h:Ldev/cobalt/coat/b;

    invoke-virtual {v0}, Ldev/cobalt/coat/b;->e()V

    return-void
.end method

.method protected beforeSuspend()V
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-string v0, "starboard"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Prepare to suspend"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Ldev/cobalt/coat/StarboardBridge;->d:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-virtual {v2}, Ldev/cobalt/coat/CobaltMediaSession;->y()V

    iget-object v2, p0, Ldev/cobalt/coat/StarboardBridge;->f:Ldev/cobalt/coat/NetworkStatus;

    invoke-virtual {v2}, Ldev/cobalt/coat/NetworkStatus;->c()V

    iget-object v2, p0, Ldev/cobalt/coat/StarboardBridge;->s:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/cobalt/coat/CobaltService;

    invoke-virtual {v3}, Ldev/cobalt/coat/CobaltService;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception in beforeSuspend: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method closeCobaltService(Ljava/lang/String;)V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method createBackButtonUI()V
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starboard"

    const-string v2, "Creating Back button UI"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Ldev/cobalt/coat/StarboardBridge$c;

    invoke-direct {v1, p0, v0}, Ldev/cobalt/coat/StarboardBridge$c;-><init>(Ldev/cobalt/coat/StarboardBridge;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Ldev/cobalt/coat/StarboardBridge;->q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ldev/cobalt/coat/StarboardBridge;->nativeHandleDeepLink(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ldev/cobalt/coat/StarboardBridge;->n:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public deactivateMediaSession()V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->d:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-virtual {v0}, Ldev/cobalt/coat/CobaltMediaSession;->p()V

    return-void
.end method

.method protected f(Landroid/app/Activity;)V
    .locals 3

    iget-boolean p1, p0, Ldev/cobalt/coat/StarboardBridge;->p:Z

    const-string v0, "starboard"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "Activity destroyed after shutdown; killing app."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Activity destroyed without shutdown; app suspended in background."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method protected g(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0, p1}, Lv1/d;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ldev/cobalt/coat/StarboardBridge;->a:Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;->a(Z)V

    return-void
.end method

.method protected getAdvertisingId()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->h:Ldev/cobalt/coat/b;

    invoke-virtual {v0}, Ldev/cobalt/coat/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAppStartTimestamp()J
    .locals 6
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Ldev/cobalt/coat/CobaltActivity;

    if-eqz v1, :cond_0

    check-cast v0, Ldev/cobalt/coat/CobaltActivity;

    invoke-virtual {v0}, Ldev/cobalt/coat/CobaltActivity;->Z()J

    move-result-wide v0

    invoke-direct {p0}, Ldev/cobalt/coat/StarboardBridge;->nativeCurrentMonotonicTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    sub-long/2addr v2, v4

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    return-object v0
.end method

.method protected getArgs()[Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->m:[Ljava/lang/String;

    return-object v0
.end method

.method getAudioOutputManager()Ldev/cobalt/media/AudioOutputManager;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->c:Ldev/cobalt/media/AudioOutputManager;

    return-object v0
.end method

.method getAudioPermissionRequester()Ldev/cobalt/coat/AudioPermissionRequester;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->e:Ldev/cobalt/coat/AudioPermissionRequester;

    return-object v0
.end method

.method protected getBuildFingerprint()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method protected getCacheAbsolutePath()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCaptionSettings()Ldev/cobalt/coat/CaptionSettings;
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    new-instance v1, Ldev/cobalt/coat/CaptionSettings;

    invoke-direct {v1, v0}, Ldev/cobalt/coat/CaptionSettings;-><init>(Landroid/view/accessibility/CaptioningManager;)V

    return-object v1
.end method

.method getDeviceResolution()Landroid/util/Size;
    .locals 4
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const-string v0, "sys.display-size"

    goto :goto_0

    :cond_0
    const-string v0, "vendor.display-size"

    :goto_0
    invoke-static {v0}, Ldev/cobalt/coat/StarboardBridge;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldev/cobalt/coat/StarboardBridge;->getDisplaySize()Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Ldev/cobalt/coat/StarboardBridge;->getDisplaySize()Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_2
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

    invoke-virtual {p0}, Ldev/cobalt/coat/StarboardBridge;->getDisplaySize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v3, :cond_4

    :cond_3
    return-object v0

    :cond_4
    return-object v1

    :catch_0
    invoke-virtual {p0}, Ldev/cobalt/coat/StarboardBridge;->getDisplaySize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method getDisplayDpi()Landroid/util/SizeF;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->h()Landroid/util/SizeF;

    move-result-object v0

    return-object v0
.end method

.method getDisplaySize()Landroid/util/Size;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->l()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method protected getFilesAbsolutePath()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIncorrectAppStartTimestamp()J
    .locals 6
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Ldev/cobalt/coat/CobaltActivity;

    if-eqz v1, :cond_0

    check-cast v0, Ldev/cobalt/coat/CobaltActivity;

    invoke-virtual {v0}, Ldev/cobalt/coat/CobaltActivity;->Z()J

    move-result-wide v0

    invoke-direct {p0}, Ldev/cobalt/coat/StarboardBridge;->nativeCurrentMonotonicTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    sub-long/2addr v2, v0

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getIsAmatiDevice()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-boolean v0, p0, Ldev/cobalt/coat/StarboardBridge;->u:Z

    return v0
.end method

.method protected getLimitAdTracking()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->h:Ldev/cobalt/coat/b;

    invoke-virtual {v0}, Ldev/cobalt/coat/b;->c()Z

    move-result v0

    return v0
.end method

.method getLocalInterfaceAddressAndNetmask(Z)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "[B[B>;"
        }
    .end annotation

    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isPointToPoint()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InterfaceAddress;

    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-le v7, v8, :cond_5

    move v7, v1

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    if-ne v7, p1, :cond_4

    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result p1

    array-length v3, v6

    new-array v4, v3, [B

    move v5, v2

    :goto_2
    if-ge v5, v3, :cond_8

    if-nez p1, :cond_6

    aput-byte v2, v4, v5

    goto :goto_3

    :cond_6
    const/16 v7, 0x8

    if-lt p1, v7, :cond_7

    const/4 v7, -0x1

    aput-byte v7, v4, v5

    add-int/lit8 p1, p1, -0x8

    goto :goto_3

    :cond_7
    rsub-int/lit8 p1, p1, 0x8

    const/16 v7, 0xff

    shl-int p1, v7, p1

    int-to-byte p1, p1

    aput-byte p1, v4, v5

    move p1, v2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_9
    return-object v0

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "starboard"

    const-string v2, "sbSocketGetLocalInterfaceAddress exception"

    invoke-static {p1, v2, v1}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0
.end method

.method protected getPlayServicesVersion()J
    .locals 6
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x1c

    const-string v5, "com.google.android.gms"

    if-ge v3, v4, :cond_0

    :try_start_1
    iget-object v3, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/16 v4, 0x21

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {v3}, Ldev/cobalt/coat/p;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v3, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {v3}, Ldev/cobalt/coat/p;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v0

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v2, "starboard"

    const-string v3, "Unable to query Google Play Services package version"

    invoke-static {v2, v3, v4}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-wide v0
.end method

.method public getResourceOverlay()Ldev/cobalt/coat/ResourceOverlay;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->g:Ldev/cobalt/coat/ResourceOverlay;

    return-object v0
.end method

.method protected getStartDeepLink()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedHdrTypes()[I
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->d()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v0

    return-object v0
.end method

.method getTextToSpeechHelper()Ldev/cobalt/coat/CobaltTextToSpeechHelper;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->b:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    return-object v0
.end method

.method getTimeZoneId()Ljava/lang/String;
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ldev/cobalt/coat/StarboardBridge;->x:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserAgentAuxField()Ljava/lang/String;
    .locals 6
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "starboard"

    const-string v2, "Can\'t find our own package"

    invoke-static {v1, v2, v3}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lv1/d;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Ldev/cobalt/coat/StarboardBridge;->a:Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;->a(Z)V

    return-void
.end method

.method hasCobaltService(Ljava/lang/String;)Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i()V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/StarboardBridge;->nativeOnKeyServiceReady()V

    return-void
.end method

.method isAccessibilityHighContrastTextEnabled()Z
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    const-string v3, "isHighTextContrastEnabled"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method isCurrentNetworkWireless()Z
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isMicrophoneDisconnected()Z
    .locals 7
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    const-string v3, "input"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    invoke-virtual {v0, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->hasMicrophone()Z

    move-result v6

    if-eqz v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isMicrophoneMute()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method isNetworkConnected()Z
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->f:Ldev/cobalt/coat/NetworkStatus;

    invoke-virtual {v0}, Ldev/cobalt/coat/NetworkStatus;->d()Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/coat/StarboardBridge;->nativeOnPageVisibilityChanged(Z)V

    return-void
.end method

.method k(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->e:Ldev/cobalt/coat/AudioPermissionRequester;

    invoke-virtual {v0, p1, p2, p3}, Ldev/cobalt/coat/AudioPermissionRequester;->a(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Ldev/cobalt/coat/StarboardBridge;->q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldev/cobalt/coat/StarboardBridge;->nativeOnSearchRequested()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m(Ldev/cobalt/coat/CobaltService$a;)V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->r:Ljava/util/HashMap;

    invoke-interface {p1}, Ldev/cobalt/coat/CobaltService$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method openCobaltService(JLjava/lang/String;)Ldev/cobalt/coat/CobaltService;
    .locals 5
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "starboard"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p3, p1, v4

    const-string p2, "Cannot open already open service %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/cobalt/coat/CobaltService$a;

    if-nez v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p3, p1, v4

    const-string p2, "Cannot open unregistered service %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    :cond_1
    invoke-interface {v0, p1, p2}, Ldev/cobalt/coat/CobaltService$a;->b(J)Ldev/cobalt/coat/CobaltService;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ldev/cobalt/coat/CobaltService;->e(Ldev/cobalt/coat/StarboardBridge;)V

    iget-object p2, p0, Ldev/cobalt/coat/StarboardBridge;->s:Ljava/util/HashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method raisePlatformError(IJ)V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    new-instance v0, Ldev/cobalt/coat/PlatformError;

    iget-object v1, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-direct {v0, v1, p1, p2, p3}, Ldev/cobalt/coat/PlatformError;-><init>(Lv1/d;IJ)V

    invoke-virtual {v0}, Ldev/cobalt/coat/PlatformError;->b()V

    return-void
.end method

.method reportFullyDrawn()V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->getDeviceInfoNeedsBackButton()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ldev/cobalt/coat/StarboardBridge$b;

    invoke-direct {v1, p0, v0}, Ldev/cobalt/coat/StarboardBridge$b;-><init>(Ldev/cobalt/coat/StarboardBridge;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestStop(I)V
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-boolean v0, p0, Ldev/cobalt/coat/StarboardBridge;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starboard"

    const-string v2, "Request to stop"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0, p1}, Ldev/cobalt/coat/StarboardBridge;->nativeStopApp(I)V

    :cond_0
    return-void
.end method

.method public requestSuspend()V
    .locals 8
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.amazon.feature.multimodal_ftv"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasSystemFeature(com.amazon.feature.multimodal_ftv): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "starboard"

    invoke-static {v7, v4, v6}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.amazon.tv.launcher.permission.DEEPLINK"

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DEEPLINK permission granted, using FTV_HOME"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v7, v1, v3}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.amazon.tv.launcher"

    const-string v4, "com.amazon.tv.launcher.ui.HomeActivity_vNext"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "DEEPLINK permission not granted, falling back to activity.finish()"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v1, "Not a multi-modal FTV device, using HOME"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v7, v1, v3}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Ldev/cobalt/coat/StarboardBridge;->j:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v1, "Successfully started launcher intent"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start launcher intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method public resetVideoSurface()V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Ldev/cobalt/coat/CobaltActivity;

    if-eqz v1, :cond_0

    check-cast v0, Ldev/cobalt/coat/CobaltActivity;

    invoke-virtual {v0}, Ldev/cobalt/coat/CobaltActivity;->g0()V

    :cond_0
    return-void
.end method

.method public setCrashContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setPreferMinimalPostProcessing(Z)V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Ldev/cobalt/coat/CobaltActivity;

    if-eqz v1, :cond_0

    check-cast v0, Ldev/cobalt/coat/CobaltActivity;

    invoke-virtual {v0, p1}, Ldev/cobalt/coat/CobaltActivity;->h0(Z)V

    :cond_0
    return-void
.end method

.method public setVideoSurfaceBounds(IIII)V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->k:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Ldev/cobalt/coat/CobaltActivity;

    if-eqz v1, :cond_0

    check-cast v0, Ldev/cobalt/coat/CobaltActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Ldev/cobalt/coat/CobaltActivity;->i0(IIII)V

    :cond_0
    return-void
.end method

.method protected starboardApplicationStarted()V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/StarboardBridge;->q:Z

    return-void
.end method

.method protected starboardApplicationStopping()V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/coat/StarboardBridge;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/StarboardBridge;->p:Z

    return-void
.end method

.method systemGetLocaleId()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateFullScreenStatus(Z)V
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFullScreenStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "starboard"

    invoke-static {v2, v0, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sput-boolean p1, Lt1/f;->j:Z

    return-void
.end method

.method updateMediaSession(IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V
    .locals 14
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Ldev/cobalt/coat/StarboardBridge;->d:Ldev/cobalt/coat/CobaltMediaSession;

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-virtual/range {v1 .. v13}, Ldev/cobalt/coat/CobaltMediaSession;->A(IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V

    return-void
.end method

.method public updateWakeLockForPlayback(IJ)V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/StarboardBridge;->d:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-virtual {v0, p1, p2, p3}, Ldev/cobalt/coat/CobaltMediaSession;->E(IJ)V

    return-void
.end method
