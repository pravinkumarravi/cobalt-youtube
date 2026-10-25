.class Ldev/cobalt/coat/CobaltTextToSpeechHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;
    }
.end annotation


# static fields
.field private static final i:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/speech/tts/TextToSpeech;

.field private e:Z

.field private f:Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

.field private g:J

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->i:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;->b:Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

    iput-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->f:Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->h:Ljava/util/List;

    iput-object p1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CobaltTextToSpeechHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->c:Landroid/os/Handler;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->isScreenReaderEnabled()Z

    move-result v0

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->e:Z

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method static synthetic a(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->d:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic b(Ldev/cobalt/coat/CobaltTextToSpeechHelper;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->d:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic c(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->f:Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

    return-object p0
.end method

.method static synthetic d(Ldev/cobalt/coat/CobaltTextToSpeechHelper;Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;)Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->f:Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

    return-object p1
.end method

.method static synthetic e(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)J
    .locals 4

    iget-wide v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->g:J

    return-wide v0
.end method

.method static synthetic h()Z
    .locals 1

    sget-boolean v0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->i:Z

    return v0
.end method

.method private i()V
    .locals 2

    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->e:Z

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->isScreenReaderEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->isScreenReaderEnabled()Z

    move-result v0

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->e:Z

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->nativeSendTTSChangedEvent()V

    :cond_0
    return-void
.end method

.method private native nativeSendTTSChangedEvent()V
.end method


# virtual methods
.method cancel()V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->c:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/CobaltTextToSpeechHelper$d;

    invoke-direct {v1, p0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper$d;-><init>(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isScreenReaderEnabled()Z
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->a:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->c:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/CobaltTextToSpeechHelper$a;

    invoke-direct {v1, p0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper$a;-><init>(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->a:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->i()V

    return-void
.end method

.method public onInit(I)V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->c:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;

    invoke-direct {v1, p0, p1}, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;-><init>(Ldev/cobalt/coat/CobaltTextToSpeechHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->i()V

    return-void
.end method

.method speak(Ljava/lang/String;)V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->c:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;

    invoke-direct {v1, p0, p1}, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;-><init>(Ldev/cobalt/coat/CobaltTextToSpeechHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
