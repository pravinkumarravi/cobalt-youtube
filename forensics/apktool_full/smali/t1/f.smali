.class public Lt1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Z = false

.field public static k:Z = false

.field private static l:Lt1/f;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lt1/f;->a:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lt1/f;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt1/f;->h:Z

    iput-boolean v0, p0, Lt1/f;->i:Z

    return-void
.end method

.method public static synthetic a(Lt1/f;)V
    .locals 0

    invoke-direct {p0}, Lt1/f;->u()V

    return-void
.end method

.method public static synthetic b(Lt1/f;)V
    .locals 0

    invoke-direct {p0}, Lt1/f;->t()V

    return-void
.end method

.method public static synthetic c(Lt1/f;)V
    .locals 0

    invoke-direct {p0}, Lt1/f;->w()V

    return-void
.end method

.method public static synthetic d(Lt1/f;)V
    .locals 0

    invoke-direct {p0}, Lt1/f;->v()V

    return-void
.end method

.method static synthetic e(Lt1/f;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lt1/f;->f:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic f(Lt1/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lt1/f;->h:Z

    return p1
.end method

.method static synthetic g(Lt1/f;)V
    .locals 0

    invoke-direct {p0}, Lt1/f;->y()V

    return-void
.end method

.method static synthetic h(Lt1/f;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lt1/f;->d:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic i(Lt1/f;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lt1/f;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic j(Lt1/f;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lt1/f;->c:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic k(Lt1/f;)Z
    .locals 0

    iget-boolean p0, p0, Lt1/f;->i:Z

    return p0
.end method

.method static synthetic l(Lt1/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lt1/f;->i:Z

    return p1
.end method

.method static synthetic m(Lt1/f;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lt1/f;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic n()V
    .locals 0

    invoke-static {}, Lt1/f;->r()V

    return-void
.end method

.method private p(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x2bc

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public static declared-synchronized q()Lt1/f;
    .locals 4

    const-class v0, Lt1/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lt1/f;->l:Lt1/f;

    if-nez v1, :cond_0

    const-string v1, "BackButton"

    const-string v2, "Initializing BackButton"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lt1/f;

    invoke-direct {v1}, Lt1/f;-><init>()V

    sput-object v1, Lt1/f;->l:Lt1/f;

    :cond_0
    sget-object v1, Lt1/f;->l:Lt1/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static r()V
    .locals 2

    sget-object v0, Lt1/f;->l:Lt1/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lt1/f;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lt1/f$b;

    invoke-direct {v1, v0}, Lt1/f$b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lt1/f;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, -0x3e580000    # -21.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lt1/f$d;

    invoke-direct {v2, p0}, Lt1/f$d;-><init>(Lt1/f;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Back Button animation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "BackButton"

    invoke-static {v3, v1, v2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    sput-boolean v0, Lt1/f;->k:Z

    return-void
.end method

.method private synthetic t()V
    .locals 3

    invoke-direct {p0}, Lt1/f;->y()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackButton"

    const-string v2, "Show BackButton for fullscreen video playback"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private synthetic u()V
    .locals 3

    sget-boolean v0, Lt1/f;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lt1/f;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lt1/f;->s()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackButton"

    const-string v2, "Hide BackButton for fullscreen video playback"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method private synthetic v()V
    .locals 3

    invoke-direct {p0}, Lt1/f;->y()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackButton"

    const-string v2, "Show BackButton on user interaction"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private synthetic w()V
    .locals 3

    sget-boolean v0, Lt1/f;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lt1/f;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lt1/f;->s()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackButton"

    const-string v2, "Hide BackButton for fullscreen video playback"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lt1/f;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lt1/f$c;

    invoke-direct {v1, p0}, Lt1/f$c;-><init>(Lt1/f;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Back Button animation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BackButton"

    invoke-static {v2, v0, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lt1/f;->k:Z

    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lt1/f;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lt1/f;->p(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lt1/f;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Lt1/f;->e:Landroid/view/View;

    iget-object v1, p0, Lt1/f;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error updating height on orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackButton"

    invoke-static {v1, p1, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public o(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lt1/f;->c:Landroid/view/WindowManager;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lt1/f;->e:Landroid/view/View;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lt1/f;->f:Landroid/widget/FrameLayout;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v0, p0, Lt1/f;->e:Landroid/view/View;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lt1/f;->g:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {p0, p1}, Lt1/f;->p(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x3e8

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lt1/f;->d:Landroid/view/WindowManager$LayoutParams;

    const p1, 0x800003

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p1, 0x0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lt1/f;->e:Landroid/view/View;

    new-instance v1, Lt1/f$a;

    invoke-direct {v1, p0}, Lt1/f$a;-><init>(Lt1/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_0
    iget-object v0, p0, Lt1/f;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lt1/f;->e:Landroid/view/View;

    iget-object v2, p0, Lt1/f;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    sput-boolean v0, Lt1/f;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error adding Back button View to windowManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "BackButton"

    invoke-static {v1, v0, p1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public x()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lt1/f;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lt1/f;->e:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    sput-boolean v0, Lt1/f;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error removing Back button View from windowManager : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "BackButton"

    invoke-static {v2, v1, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public z()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CURRENT_MEDIA_STATE_REPORTER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ldev/cobalt/coat/CobaltMediaSession;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fullScreenStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lt1/f;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isBackButtonShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lt1/f;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BackButton"

    invoke-static {v2, v0, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lt1/f;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget v0, Ldev/cobalt/coat/CobaltMediaSession;->t:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt1/f;->a:Landroid/os/Handler;

    new-instance v1, Lt1/b;

    invoke-direct {v1, p0}, Lt1/b;-><init>(Lt1/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-wide/16 v1, 0x1388

    if-nez v0, :cond_1

    sget-boolean v0, Lt1/f;->k:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lt1/f;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt1/f;->b:Landroid/os/Handler;

    new-instance v3, Lt1/c;

    invoke-direct {v3, p0}, Lt1/c;-><init>(Lt1/f;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    sget-boolean v0, Lt1/f;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lt1/f;->a:Landroid/os/Handler;

    new-instance v3, Lt1/d;

    invoke-direct {v3, p0}, Lt1/d;-><init>(Lt1/f;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lt1/f;->b:Landroid/os/Handler;

    new-instance v3, Lt1/e;

    invoke-direct {v3, p0}, Lt1/e;-><init>(Lt1/f;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
