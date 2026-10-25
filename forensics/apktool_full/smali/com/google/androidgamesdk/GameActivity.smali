.class public Lcom/google/androidgamesdk/GameActivity;
.super Landroidx/appcompat/app/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Ls1/a;
.implements Landroidx/core/view/r0;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidgamesdk/GameActivity$a;
    }
.end annotation


# instance fields
.field protected A:I

.field protected B:I

.field protected C:Z

.field protected s:I

.field private t:Landroid/view/inputmethod/EditorInfo;

.field protected u:Lcom/google/androidgamesdk/GameActivity$a;

.field private v:J

.field private w:Landroid/view/SurfaceHolder;

.field protected final x:[I

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->x:[I

    return-void
.end method

.method private static O(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public P()Landroid/view/inputmethod/EditorInfo;
    .locals 2

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->t:Landroid/view/inputmethod/EditorInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    iput-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->t:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_0
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->t:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method protected Q()V
    .locals 2

    new-instance v0, Lcom/google/androidgamesdk/GameActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/google/androidgamesdk/GameActivity$a;-><init>(Lcom/google/androidgamesdk/GameActivity;Lcom/google/androidgamesdk/GameActivity;)V

    iput-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroidx/core/view/w0;->i()I

    move-result v1

    iput v1, p0, Lcom/google/androidgamesdk/GameActivity;->s:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    invoke-static {v0, p0}, Landroidx/core/view/w0;->f0(Landroid/view/View;Landroidx/core/view/r0;)V

    return-void
.end method

.method protected R()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public e(Lcom/google/androidgamesdk/gametextinput/State;Z)V
    .locals 2

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onTextInputEventNative(JLcom/google/androidgamesdk/gametextinput/State;)V

    return-void
.end method

.method protected native getDlError()Ljava/lang/String;
.end method

.method public getWaterfallInsets()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    invoke-static {v0}, Landroidx/core/view/w0;->y(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/q;->e()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowInsets(I)Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    invoke-static {v0}, Landroidx/core/view/w0;->y(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public i(Landroidx/core/graphics/Insets;)V
    .locals 1

    const-string p1, "GameActivity"

    const-string v0, "onImeInsetsChanged from Text Listener"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected native initializeNativeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;[BLandroid/content/res/Configuration;)J
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onWindowInsetsChangedNative(J)V

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-object p2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->C:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onConfigurationChangedNative(JLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected native onConfigurationChangedNative(JLandroid/content/res/Configuration;)V
.end method

.method protected native onContentRectChangedNative(JIIII)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->Q()V

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->R()V

    new-instance v0, Ljava/lang/String;

    const-string v1, "main"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "android.app.lib_name"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    move-object v0, v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking for library "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    check-cast v3, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v3, v0}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found library "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Loading..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application should have loaded the native library "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " explicitly by now. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "android:native_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_3
    move-object v11, v0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/androidgamesdk/GameActivity;->O(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/androidgamesdk/GameActivity;->O(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/androidgamesdk/GameActivity;->O(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/google/androidgamesdk/GameActivity;->initializeNativeCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;[BLandroid/content/res/Configuration;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/google/androidgamesdk/GameActivity$a;->b:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/androidgamesdk/GameActivity;->setInputConnectionNative(JLcom/google/androidgamesdk/gametextinput/InputConnection;)V

    :cond_4
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to initialize native code \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->getDlError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to find native library "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using classloader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error getting activity info"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->C:Z

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->w:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceDestroyedNative(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->w:Landroid/view/SurfaceHolder;

    :cond_0
    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->terminateNativeCode(J)V

    invoke-super {p0}, Landroidx/appcompat/app/c;->onDestroy()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onTouchEventNative(JLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onGlobalLayout()V
    .locals 8

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    iget-object v1, p0, Lcom/google/androidgamesdk/GameActivity;->x:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->u:Lcom/google/androidgamesdk/GameActivity$a;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity;->x:[I

    const/4 v1, 0x0

    aget v4, v0, v1

    iget v1, p0, Lcom/google/androidgamesdk/GameActivity;->y:I

    const/4 v2, 0x1

    if-ne v4, v1, :cond_0

    aget v1, v0, v2

    iget v3, p0, Lcom/google/androidgamesdk/GameActivity;->z:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/google/androidgamesdk/GameActivity;->A:I

    if-ne v6, v1, :cond_0

    iget v1, p0, Lcom/google/androidgamesdk/GameActivity;->B:I

    if-eq v7, v1, :cond_1

    :cond_0
    iput v4, p0, Lcom/google/androidgamesdk/GameActivity;->y:I

    aget v5, v0, v2

    iput v5, p0, Lcom/google/androidgamesdk/GameActivity;->z:I

    iput v6, p0, Lcom/google/androidgamesdk/GameActivity;->A:I

    iput v7, p0, Lcom/google/androidgamesdk/GameActivity;->B:I

    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->C:Z

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/androidgamesdk/GameActivity;->onContentRectChangedNative(JIIII)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/androidgamesdk/GameActivity;->onKeyDownNative(JLandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected native onKeyDownNative(JLandroid/view/KeyEvent;)Z
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/androidgamesdk/GameActivity;->onKeyUpNative(JLandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected native onKeyUpNative(JLandroid/view/KeyEvent;)Z
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onPauseNative(J)V

    return-void
.end method

.method protected native onPauseNative(J)V
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onResumeNative(J)V

    return-void
.end method

.method protected native onResumeNative(J)V
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onSaveInstanceStateNative(J)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:native_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method protected native onSaveInstanceStateNative(J)[B
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/c;->onStart()V

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onStartNative(J)V

    return-void
.end method

.method protected native onStartNative(J)V
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/c;->onStop()V

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onStopNative(J)V

    return-void
.end method

.method protected native onStopNative(J)V
.end method

.method protected native onSurfaceChangedNative(JLandroid/view/Surface;III)V
.end method

.method protected native onSurfaceCreatedNative(JLandroid/view/Surface;)V
.end method

.method protected native onSurfaceDestroyedNative(J)V
.end method

.method protected native onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V
.end method

.method protected native onTextInputEventNative(JLcom/google/androidgamesdk/gametextinput/State;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onTouchEventNative(JLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected native onTouchEventNative(JLandroid/view/MotionEvent;)Z
.end method

.method public onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->C:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onTrimMemoryNative(JI)V

    :cond_0
    return-void
.end method

.method protected native onTrimMemoryNative(JI)V
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->C:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onWindowFocusChangedNative(JZ)V

    :cond_0
    return-void
.end method

.method protected native onWindowFocusChangedNative(JZ)V
.end method

.method protected native onWindowInsetsChangedNative(J)V
.end method

.method public setImeEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->t:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method public setImeEditorInfoFields(III)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Lcom/google/androidgamesdk/GameActivity;->P()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iput p1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput p2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iput p3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return-void
.end method

.method protected native setInputConnectionNative(JLcom/google/androidgamesdk/gametextinput/InputConnection;)V
.end method

.method setWindowFlags(II)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->C:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->w:Landroid/view/SurfaceHolder;

    iget-wide v2, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceChangedNative(JLandroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->C:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->w:Landroid/view/SurfaceHolder;

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceCreatedNative(JLandroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->w:Landroid/view/SurfaceHolder;

    iget-boolean p1, p0, Lcom/google/androidgamesdk/GameActivity;->C:Z

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-virtual {p0, v0, v1}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceDestroyedNative(J)V

    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/androidgamesdk/GameActivity;->C:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity;->w:Landroid/view/SurfaceHolder;

    iget-wide v0, p0, Lcom/google/androidgamesdk/GameActivity;->v:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/androidgamesdk/GameActivity;->onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method protected native terminateNativeCode(J)V
.end method
