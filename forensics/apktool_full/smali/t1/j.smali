.class public Lt1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lt1/j;


# instance fields
.field private final a:I

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lt1/j;->a:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lt1/j;->b:Landroid/os/Handler;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lt1/j;->e:Landroid/view/WindowManager;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v1, 0x7f0c001d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lt1/j;->d:Landroid/view/View;

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x3e8

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, 0x5

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lt1/g;

    invoke-direct {v2, p0}, Lt1/g;-><init>(Lt1/j;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lt1/h;

    invoke-direct {v2, p0}, Lt1/h;-><init>(Lt1/j;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_0
    invoke-interface {v0, p1, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lt1/j;->e()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating back button tutorial view : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BackButtonTutorial"

    invoke-static {v1, p1, v0}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public static synthetic a(Lt1/j;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lt1/j;->l(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lt1/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lt1/j;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lt1/j;[ILandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt1/j;->j([ILandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic d(Lt1/j;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lt1/j;->d:Landroid/view/View;

    return-object p0
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v1, p0, Lt1/j;->d:Landroid/view/View;

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lt1/j;->b:Landroid/os/Handler;

    new-instance v3, Lt1/i;

    invoke-direct {v3, p0, v0, v1}, Lt1/i;-><init>(Lt1/j;[ILandroid/widget/ImageView;)V

    iput-object v3, p0, Lt1/j;->c:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    const-string v0, "BackButtonTutorial"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackButtonTutorial is destroyed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lt1/j;->b:Landroid/os/Handler;

    iget-object v2, p0, Lt1/j;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lt1/j;->e:Landroid/view/WindowManager;

    iget-object v2, p0, Lt1/j;->d:Landroid/view/View;

    invoke-interface {p1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 p1, 0x0

    sput-object p1, Lt1/j;->f:Lt1/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error cleaning up back button tutorial : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "back_button_tutorial_flag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "backButtonDisplayCount"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tutorial displayCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "BackButtonTutorial"

    invoke-static {v6, v4, v5}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-le v2, v4, :cond_1

    rem-int/lit8 v4, v2, 0xf

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lt1/j;->h(Landroid/content/Context;)Lt1/j;

    move v4, v5

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/2addr v2, v5

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display Back Button Tutorial : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v6, p0, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v4
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lt1/j;
    .locals 4

    const-class v0, Lt1/j;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v1, Lt1/j;->f:Lt1/j;

    if-nez v1, :cond_0

    const-string v1, "BackButtonTutorial"

    const-string v2, "Initializing BackButtonTutorial"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lt1/j;

    invoke-direct {v1, p0}, Lt1/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lt1/j;->f:Lt1/j;

    :cond_0
    sget-object p0, Lt1/j;->f:Lt1/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BackButtonTutorial getInstance parameter missing"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lt1/j;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lt1/j$b;

    invoke-direct {v1, p0}, Lt1/j$b;-><init>(Lt1/j;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error hiding back button tutorial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BackButtonTutorial"

    invoke-static {v2, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private synthetic j([ILandroid/widget/ImageView;)V
    .locals 7

    iget-object v0, p0, Lt1/j;->b:Landroid/os/Handler;

    iget-object v1, p0, Lt1/j;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lt1/j;->m()V

    const/4 v0, 0x0

    aget v1, p1, v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v1, 0x7f070051

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    aget p2, p1, v0

    add-int/2addr p2, v6

    aput p2, p1, v0

    return-void

    :cond_0
    if-ne v1, v6, :cond_1

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v1, 0x7f070052

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    aget p2, p1, v0

    add-int/2addr p2, v6

    aput p2, p1, v0

    return-void

    :cond_1
    const/4 p2, 0x2

    if-ne v1, p2, :cond_2

    invoke-direct {p0}, Lt1/j;->i()V

    aget p2, p1, v0

    add-int/2addr p2, v6

    aput p2, p1, v0

    return-void

    :cond_2
    const-string p1, "Tutorial Complete"

    invoke-direct {p0, p1}, Lt1/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic k(Landroid/view/View;)V
    .locals 0

    const-string p1, "Click"

    invoke-direct {p0, p1}, Lt1/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "Touch"

    invoke-direct {p0, p1}, Lt1/j;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private m()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lt1/j;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lt1/j$a;

    invoke-direct {v1, p0}, Lt1/j$a;-><init>(Lt1/j;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error showing back button tutorial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BackButtonTutorial"

    invoke-static {v2, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
