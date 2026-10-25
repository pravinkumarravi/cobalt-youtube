.class public abstract Ldev/cobalt/coat/CobaltActivity;
.super Lcom/google/androidgamesdk/GameActivity;
.source "SourceFile"


# static fields
.field private static final I:[Ljava/lang/String;

.field private static final J:Ljava/util/regex/Pattern;


# instance fields
.field private D:Ldev/cobalt/coat/CobaltA11yHelper;

.field private E:Ldev/cobalt/media/VideoSurfaceView;

.field private F:Z

.field private G:J

.field protected H:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ldev/cobalt/coat/CobaltActivity;->I:[Ljava/lang/String;

    const-string v0, "^[a-zA-Z0-9_=]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldev/cobalt/coat/CobaltActivity;->J:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/androidgamesdk/GameActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->F:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->H:Landroid/view/View;

    return-void
.end method

.method static synthetic S(Ldev/cobalt/coat/CobaltActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->W()V

    return-void
.end method

.method static synthetic T(Ldev/cobalt/coat/CobaltActivity;)Ldev/cobalt/media/VideoSurfaceView;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    return-object p0
.end method

.method private static U(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "starboard"

    invoke-static {}, Ldev/cobalt/coat/CobaltActivity;->Y()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const v6, 0xffff

    if-le v2, v6, :cond_1

    goto :goto_0

    :cond_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "--proxy=\"http=http://%s:%d\""

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v9, v8, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addCustomProxyArgs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v1, v2, v5

    aput-object p0, v2, v3

    const-string p0, "http.proxyPort: %s is not valid number"

    invoke-static {v0, p0, v2}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private V(Ljava/util/List;[Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "--url="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    const-string v3, "&"

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_4

    aget-object v3, p2, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ldev/cobalt/coat/CobaltActivity;->J:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private W()V
    .locals 5

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v2, Ldev/cobalt/media/VideoSurfaceView;

    invoke-direct {v2, p0}, Ldev/cobalt/media/VideoSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    new-instance v2, Ldev/cobalt/coat/CobaltA11yHelper;

    iget-object v3, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    invoke-direct {v2, v3}, Ldev/cobalt/coat/CobaltA11yHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Ldev/cobalt/coat/CobaltActivity;->D:Ldev/cobalt/coat/CobaltA11yHelper;

    iget-object v2, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected surface view parent class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "starboard"

    invoke-static {v2, v0, v1}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private static Y()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "http.proxyHost"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "http.proxyPort"

    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static a0(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d0(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static f0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static native nativeLowMemoryEvent()V
.end method


# virtual methods
.method protected Q()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->H:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected abstract X([Ljava/lang/String;Ljava/lang/String;)Ldev/cobalt/coat/StarboardBridge;
.end method

.method public Z()J
    .locals 2

    iget-wide v0, p0, Ldev/cobalt/coat/CobaltActivity;->G:J

    return-wide v0
.end method

.method protected b0()[Ljava/lang/String;
    .locals 15

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->e0()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "args"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v1

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Ldev/cobalt/coat/CobaltActivity;->I:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move v5, v4

    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_2

    aget-object v6, v2, v5

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\,"

    const-string v8, ","

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "--url="

    invoke-static {v3, v2}, Ldev/cobalt/coat/CobaltActivity;->d0(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "--fallback_splash_screen_url="

    invoke-static {v3, v6}, Ldev/cobalt/coat/CobaltActivity;->d0(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    const-string v8, "--fallback_splash_screen_topics="

    invoke-static {v3, v8}, Ldev/cobalt/coat/CobaltActivity;->d0(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    const-string v10, "--evergreen_lite"

    invoke-static {v3, v10}, Ldev/cobalt/coat/CobaltActivity;->d0(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    if-nez v11, :cond_8

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_8

    if-nez v5, :cond_4

    const-string v5, "cobalt.APP_URL"

    invoke-virtual {v13, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v7, :cond_5

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "cobalt.SPLASH_URL"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v9, :cond_6

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "cobalt.SPLASH_TOPIC"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v11, :cond_7

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "cobalt.EVERGREEN_LITE"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "cobalt.force_migration_for_storage_partitioning"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "--force_migration_for_storage_partitioning"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v1, "url_params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_a

    invoke-direct {p0, v3, v1}, Ldev/cobalt/coat/CobaltActivity;->V(Ljava/util/List;[Ljava/lang/CharSequence;)V

    :cond_a
    invoke-static {v3}, Ldev/cobalt/coat/CobaltActivity;->U(Ljava/util/List;)V

    invoke-static {v3, v2}, Ldev/cobalt/coat/CobaltActivity;->a0(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "additionalDataUrl"

    const-string v5, "http://127.0.0.1:8009/apps/YouTube/dial_data"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Ldev/cobalt/coat/CobaltActivity;->f0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error getting activity info"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected c0(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected e0()Z
    .locals 1

    invoke-static {}, Ldev/cobalt/coat/StarboardBridge;->e()Z

    move-result v0

    return v0
.end method

.method public g0()V
    .locals 1

    new-instance v0, Ldev/cobalt/coat/CobaltActivity$a;

    invoke-direct {v0, p0}, Ldev/cobalt/coat/CobaltActivity$a;-><init>(Ldev/cobalt/coat/CobaltActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Ldev/cobalt/coat/StarboardBridge$d;

    invoke-interface {v0}, Ldev/cobalt/coat/StarboardBridge$d;->b()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    return-object v0
.end method

.method public h0(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ldev/cobalt/coat/CobaltActivity$c;

    invoke-direct {v0, p0, p1}, Ldev/cobalt/coat/CobaltActivity$c;-><init>(Ldev/cobalt/coat/CobaltActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i0(IIII)V
    .locals 7

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Ldev/cobalt/coat/CobaltActivity$b;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ldev/cobalt/coat/CobaltActivity$b;-><init>(Ldev/cobalt/coat/CobaltActivity;IIII)V

    invoke-virtual {p0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/cobalt/coat/CobaltActivity;->G:J

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldev/cobalt/coat/CobaltActivity;->c0(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->b0()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ldev/cobalt/coat/CobaltActivity;->X([Ljava/lang/String;Ljava/lang/String;)Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Ldev/cobalt/coat/StarboardBridge$d;

    invoke-interface {v1, v0}, Ldev/cobalt/coat/StarboardBridge$d;->a(Ldev/cobalt/coat/StarboardBridge;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldev/cobalt/coat/StarboardBridge;->d(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/google/androidgamesdk/GameActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ldev/cobalt/media/VideoSurfaceView;

    invoke-direct {p1, p0}, Ldev/cobalt/media/VideoSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    new-instance p1, Ldev/cobalt/coat/CobaltA11yHelper;

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    invoke-direct {p1, v0}, Ldev/cobalt/coat/CobaltA11yHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Ldev/cobalt/coat/CobaltActivity;->D:Ldev/cobalt/coat/CobaltA11yHelper;

    iget-object p1, p0, Ldev/cobalt/coat/CobaltActivity;->E:Ldev/cobalt/media/VideoSurfaceView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/c;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onDestroy()V

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldev/cobalt/coat/StarboardBridge;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/e;->onLowMemory()V

    invoke-static {}, Ldev/cobalt/coat/CobaltActivity;->nativeLowMemoryEvent()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {p0, p1}, Ldev/cobalt/coat/CobaltActivity;->c0(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldev/cobalt/coat/StarboardBridge;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/coat/StarboardBridge;->getTextToSpeechHelper()Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->cancel()V

    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldev/cobalt/coat/StarboardBridge;->k(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/coat/StarboardBridge;->l()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 3

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/coat/StarboardBridge;->getAudioOutputManager()Ldev/cobalt/media/AudioOutputManager;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/media/AudioOutputManager;->e()V

    invoke-static {}, Ldev/cobalt/media/l;->i()V

    :cond_0
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->F:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starboard"

    const-string v2, "Force to create a new video surface."

    invoke-static {v1, v2, v0}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->W()V

    :cond_1
    invoke-static {p0}, Ldev/cobalt/util/DisplayUtil;->c(Landroid/content/Context;)V

    invoke-static {p0}, Ldev/cobalt/util/DisplayUtil;->b(Landroid/content/Context;)V

    invoke-static {p0}, Ldev/cobalt/media/AudioOutputManager;->d(Landroid/content/Context;)V

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldev/cobalt/coat/StarboardBridge;->g(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldev/cobalt/coat/StarboardBridge;->h(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/google/androidgamesdk/GameActivity;->onStop()V

    invoke-static {}, Ldev/cobalt/media/VideoSurfaceView;->getCurrentSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->F:Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Ldev/cobalt/coat/CobaltActivity;->i0(IIII)V

    return-void
.end method
