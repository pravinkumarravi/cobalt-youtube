.class public Ldev/cobalt/coat/CobaltMediaSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Ldev/cobalt/coat/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/coat/CobaltMediaSession$e;,
        Ldev/cobalt/coat/CobaltMediaSession$f;
    }
.end annotation


# static fields
.field private static final o:[Ljava/lang/String;

.field private static final p:[I

.field private static q:I

.field private static r:Z

.field public static s:Ljava/lang/String;

.field public static t:I


# instance fields
.field private a:Landroid/media/AudioFocusRequest;

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/content/Context;

.field private final d:Lv1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/d<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ldev/cobalt/coat/CobaltMediaSession$f;

.field private final f:Ldev/cobalt/coat/e;

.field private g:Landroid/support/v4/media/session/MediaSessionCompat;

.field private h:Landroid/support/v4/media/session/PlaybackStateCompat$b;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ldev/cobalt/coat/CobaltMediaSession$e;

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "PAUSED"

    const-string v1, "NONE"

    const-string v2, "PLAYING"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/cobalt/coat/CobaltMediaSession;->o:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldev/cobalt/coat/CobaltMediaSession;->p:[I

    const/4 v0, 0x2

    sput v0, Ldev/cobalt/coat/CobaltMediaSession;->q:I

    const/4 v1, 0x0

    sput-boolean v1, Ldev/cobalt/coat/CobaltMediaSession;->r:Z

    const-string v1, ""

    sput-object v1, Ldev/cobalt/coat/CobaltMediaSession;->s:Ljava/lang/String;

    sput v0, Ldev/cobalt/coat/CobaltMediaSession;->t:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lv1/d;Ldev/cobalt/coat/CobaltMediaSession$f;Ldev/cobalt/coat/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lv1/d<",
            "Landroid/app/Activity;",
            ">;",
            "Ldev/cobalt/coat/CobaltMediaSession$f;",
            "Ldev/cobalt/coat/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->b:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$b;-><init>()V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->h:Landroid/support/v4/media/session/PlaybackStateCompat$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->i:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->j:Z

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->k:Z

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->l:Z

    new-instance v0, Ldev/cobalt/coat/CobaltMediaSession$e;

    invoke-direct {v0, p0}, Ldev/cobalt/coat/CobaltMediaSession$e;-><init>(Ldev/cobalt/coat/CobaltMediaSession;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->m:Ldev/cobalt/coat/CobaltMediaSession$e;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->n:Ljava/util/Set;

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession;->c:Landroid/content/Context;

    iput-object p2, p0, Ldev/cobalt/coat/CobaltMediaSession;->d:Lv1/d;

    iput-object p3, p0, Ldev/cobalt/coat/CobaltMediaSession;->e:Ldev/cobalt/coat/CobaltMediaSession$f;

    new-instance p1, Ldev/cobalt/coat/e;

    invoke-direct {p1, p0, p4}, Ldev/cobalt/coat/e;-><init>(Ldev/cobalt/coat/e$b;Ldev/cobalt/coat/c;)V

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession;->f:Ldev/cobalt/coat/e;

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->x()V

    return-void
.end method

.method private B(IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    move/from16 v4, p6

    invoke-static {}, Ldev/cobalt/coat/CobaltMediaSession;->n()V

    sput v1, Ldev/cobalt/coat/CobaltMediaSession;->t:I

    sget v5, Ldev/cobalt/coat/CobaltMediaSession;->q:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    if-ne v1, v8, :cond_0

    goto :goto_0

    :cond_0
    move v9, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v6

    :goto_1
    if-eq v5, v1, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    sput v1, Ldev/cobalt/coat/CobaltMediaSession;->q:I

    iget-boolean v10, v0, Ldev/cobalt/coat/CobaltMediaSession;->j:Z

    const-string v11, "starboard"

    if-eqz v10, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playback state change while suspended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ldev/cobalt/coat/CobaltMediaSession;->o:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v11, v1, v2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_3
    if-nez v1, :cond_4

    const-wide/16 v12, 0x4

    or-long v12, p2, v12

    goto :goto_3

    :cond_4
    move-wide/from16 v12, p2

    :goto_3
    iget-object v10, v0, Ldev/cobalt/coat/CobaltMediaSession;->h:Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-virtual {v10, v12, v13}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->b(J)Landroid/support/v4/media/session/PlaybackStateCompat$b;

    iget-object v10, v0, Ldev/cobalt/coat/CobaltMediaSession;->h:Landroid/support/v4/media/session/PlaybackStateCompat$b;

    sget-object v12, Ldev/cobalt/coat/CobaltMediaSession;->p:[I

    aget v12, v12, v1

    invoke-virtual {v10, v12, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->c(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->D()V

    if-eqz v5, :cond_a

    if-eqz v9, :cond_6

    if-eq v1, v8, :cond_5

    goto :goto_4

    :cond_5
    move v6, v7

    :goto_4
    invoke-direct {p0, v6}, Ldev/cobalt/coat/CobaltMediaSession;->m(Z)V

    :cond_6
    if-nez v1, :cond_9

    iget-boolean v5, v0, Ldev/cobalt/coat/CobaltMediaSession;->k:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Ldev/cobalt/coat/CobaltMediaSession;->d:Lv1/d;

    invoke-virtual {v5}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Ldev/cobalt/coat/CobaltMediaSession;->d:Lv1/d;

    invoke-virtual {v5}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const-string v1, "Audiofocus action: PAUSE (explicit user action required)"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v11, v1, v2}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ldev/cobalt/coat/CobaltMediaSession;->s(J)V

    goto :goto_6

    :cond_8
    :goto_5
    iput-boolean v7, v0, Ldev/cobalt/coat/CobaltMediaSession;->k:Z

    :cond_9
    invoke-direct {p0, v1, v2, v3, v4}, Ldev/cobalt/coat/CobaltMediaSession;->o(IJF)V

    :cond_a
    :goto_6
    iget-object v8, v0, Ldev/cobalt/coat/CobaltMediaSession;->m:Ldev/cobalt/coat/CobaltMediaSession$e;

    iget-object v1, v0, Ldev/cobalt/coat/CobaltMediaSession;->f:Ldev/cobalt/coat/e;

    move-object/from16 v2, p10

    invoke-virtual {v1, v2}, Ldev/cobalt/coat/e;->e([Ldev/cobalt/coat/MediaImage;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v13, p11

    invoke-virtual/range {v8 .. v14}, Ldev/cobalt/coat/CobaltMediaSession$e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    invoke-direct {p0, v7}, Ldev/cobalt/coat/CobaltMediaSession;->C(Z)V

    return-void
.end method

.method private C(Z)V
    .locals 4

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$b;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->j(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_1
    iget-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession;->m:Ldev/cobalt/coat/CobaltMediaSession$e;

    iget-object p1, p1, Ldev/cobalt/coat/CobaltMediaSession$e;->a:Ljava/lang/String;

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$b;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object p1

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->m:Ldev/cobalt/coat/CobaltMediaSession$e;

    iget-object v1, v1, Ldev/cobalt/coat/CobaltMediaSession$e;->b:Ljava/lang/String;

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$b;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object p1

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->m:Ldev/cobalt/coat/CobaltMediaSession$e;

    iget-object v1, v1, Ldev/cobalt/coat/CobaltMediaSession$e;->c:Ljava/lang/String;

    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$b;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object p1

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->m:Ldev/cobalt/coat/CobaltMediaSession$e;

    iget-wide v1, v1, Ldev/cobalt/coat/CobaltMediaSession$e;->e:J

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {p1, v3, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$b;->b(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$b;

    iget-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->j(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private D()V
    .locals 5

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->h:Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->g()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->h:Landroid/support/v4/media/session/PlaybackStateCompat$b;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->b(J)Landroid/support/v4/media/session/PlaybackStateCompat$b;

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->h:Landroid/support/v4/media/session/PlaybackStateCompat$b;

    sget-object v2, Ldev/cobalt/coat/CobaltMediaSession;->p:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()F

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->c(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$b;

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->h:Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->k(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method private F(Z)V
    .locals 5

    invoke-static {}, Ldev/cobalt/coat/CobaltMediaSession;->n()V

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->d:Lv1/d;

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v4, "starboard"

    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    const-string p1, "Wakelock acquire"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    if-eqz v1, :cond_3

    const-string p1, "Wakelock release"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic b(Ldev/cobalt/coat/CobaltMediaSession;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/cobalt/coat/CobaltMediaSession;->r(JI)V

    return-void
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->q()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->a:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->q()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->a:Landroid/media/AudioFocusRequest;

    invoke-static {v0, v1}, Ldev/cobalt/coat/m;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method static synthetic e(Ldev/cobalt/coat/CobaltMediaSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldev/cobalt/coat/CobaltMediaSession;->k:Z

    return p1
.end method

.method static synthetic f(J)V
    .locals 0

    invoke-static {p0, p1}, Ldev/cobalt/coat/CobaltMediaSession;->s(J)V

    return-void
.end method

.method static synthetic g(Ldev/cobalt/coat/CobaltMediaSession;)Lv1/d;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/CobaltMediaSession;->d:Lv1/d;

    return-object p0
.end method

.method public static getAppState()Ljava/lang/String;
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    sget-object v0, Ldev/cobalt/coat/CobaltMediaSession;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Ldev/cobalt/coat/CobaltMediaSession;->q:I

    return v0
.end method

.method static synthetic i(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ldev/cobalt/coat/CobaltMediaSession;->nativeInvokeAction(JJ)V

    return-void
.end method

.method static synthetic j(Ldev/cobalt/coat/CobaltMediaSession;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->w()V

    return-void
.end method

.method static synthetic k(Ldev/cobalt/coat/CobaltMediaSession;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->z()V

    return-void
.end method

.method static synthetic l(Ldev/cobalt/coat/CobaltMediaSession;IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Ldev/cobalt/coat/CobaltMediaSession;->B(IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V

    return-void
.end method

.method private m(Z)V
    .locals 2

    const/16 v0, 0x1a

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->t()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->u()I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "starboard"

    const-string v1, "Audiofocus action: PAUSE (not granted)"

    invoke-static {v0, v1, p1}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->s(J)V

    goto :goto_1

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_2

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->c()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->d()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static n()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be on main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeInvokeAction(JJ)V
.end method

.method private o(IJF)V
    .locals 5

    invoke-static {}, Ldev/cobalt/coat/CobaltMediaSession;->n()V

    invoke-static {}, Ldev/cobalt/app/AmazonDeviceInfo;->getDeviceInfoNeedsBackButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lt1/f;->q()Lt1/f;

    move-result-object v0

    invoke-virtual {v0}, Lt1/f;->z()V

    :cond_0
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->i:Z

    const-string v1, "starboard"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    const-string p1, "Media focus: PAUSED (transient)"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media focus: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ldev/cobalt/coat/CobaltMediaSession;->o:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-direct {p0, v0}, Ldev/cobalt/coat/CobaltMediaSession;->F(Z)V

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->h:Landroid/support/v4/media/session/PlaybackStateCompat$b;

    sget-object v4, Ldev/cobalt/coat/CobaltMediaSession;->p:[I

    aget v4, v4, p1

    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->c(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->D()V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    move p3, v2

    goto :goto_1

    :cond_3
    move p3, v3

    :goto_1
    if-ne p1, p2, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    iget-object p2, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p2, :cond_7

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->d()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    if-eqz p1, :cond_6

    iget-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->d()Z

    move-result p1

    :cond_6
    move p3, v2

    :cond_7
    if-eqz p3, :cond_8

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->x()V

    :cond_8
    iget-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez p1, :cond_9

    const-string p1, "MediaSession already released"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_9
    return-void
.end method

.method private q()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private synthetic r(JI)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ldev/cobalt/coat/CobaltMediaSession;->n:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p3, :cond_0

    iget-object p3, p0, Ldev/cobalt/coat/CobaltMediaSession;->n:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p3, p0, Ldev/cobalt/coat/CobaltMediaSession;->n:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession;->n:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eq p2, p1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Ldev/cobalt/coat/CobaltMediaSession;->F(Z)V

    :cond_1
    return-void
.end method

.method private static s(J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->nativeInvokeAction(JJ)V

    return-void
.end method

.method private t()I
    .locals 3

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->q()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private u()I
    .locals 3

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->a:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-static {v1, p0}, Ldev/cobalt/coat/i;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-static {v1, v0}, Ldev/cobalt/coat/j;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Ldev/cobalt/coat/k;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->a:Landroid/media/AudioFocusRequest;

    :cond_0
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->q()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->a:Landroid/media/AudioFocusRequest;

    invoke-static {v0, v1}, Ldev/cobalt/coat/l;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private w()V
    .locals 4

    invoke-static {}, Ldev/cobalt/coat/CobaltMediaSession;->n()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard"

    const-string v3, "Resume"

    invoke-static {v2, v3, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->j:Z

    const-string v1, "MediaSessionCompat resumeInternal"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->f(Z)V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    const-string v2, "starboard"

    if-nez v0, :cond_0

    const-string v0, "MediaSession new"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v3, p0, Ldev/cobalt/coat/CobaltMediaSession;->c:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->i(I)V

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v3, Ldev/cobalt/coat/CobaltMediaSession$a;

    invoke-direct {v3, p0}, Ldev/cobalt/coat/CobaltMediaSession$a;-><init>(Ldev/cobalt/coat/CobaltMediaSession;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$b;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>()V

    iget-object v3, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->j(Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->D()V

    const-string v0, "MediaSessionCompat setMediaSession"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->f(Z)V

    :cond_1
    return-void
.end method

.method private z()V
    .locals 4

    invoke-static {}, Ldev/cobalt/coat/CobaltMediaSession;->n()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starboard"

    const-string v2, "Suspend"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->j:Z

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v3, v0, v1, v2}, Ldev/cobalt/coat/CobaltMediaSession;->o(IJF)V

    return-void
.end method


# virtual methods
.method public A(IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V
    .locals 16

    move-object/from16 v14, p0

    iget-object v15, v14, Ldev/cobalt/coat/CobaltMediaSession;->b:Landroid/os/Handler;

    new-instance v12, Ldev/cobalt/coat/CobaltMediaSession$d;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v14, v12

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Ldev/cobalt/coat/CobaltMediaSession$d;-><init>(Ldev/cobalt/coat/CobaltMediaSession;IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V

    invoke-virtual {v15, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public E(IJ)V
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->b:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/n;

    invoke-direct {v1, p0, p2, p3, p1}, Ldev/cobalt/coat/n;-><init>(Ldev/cobalt/coat/CobaltMediaSession;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->m:Ldev/cobalt/coat/CobaltMediaSession$e;

    iput-object p1, v0, Ldev/cobalt/coat/CobaltMediaSession$e;->d:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ldev/cobalt/coat/CobaltMediaSession;->C(Z)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 8

    const/4 v0, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    const-string v4, "starboard"

    const/4 v5, 0x0

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "Audiofocus gain"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v6}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->e:Ldev/cobalt/coat/CobaltMediaSession$f;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v0, v6}, Ldev/cobalt/coat/CobaltMediaSession$f;->a(F)V

    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->i:Z

    if-eqz v0, :cond_4

    sget v0, Ldev/cobalt/coat/CobaltMediaSession;->q:I

    if-ne v0, v3, :cond_4

    const-string v0, "Audiofocus action: PLAY"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v6}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v6, 0x4

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, " (transient)"

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audiofocus loss"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v6}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget v0, Ldev/cobalt/coat/CobaltMediaSession;->q:I

    if-nez v0, :cond_4

    const-string v0, "Audiofocus action: PAUSE"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v6}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v6, 0x2

    :goto_1
    invoke-static {v6, v7}, Ldev/cobalt/coat/CobaltMediaSession;->s(J)V

    goto :goto_2

    :cond_3
    const-string v0, "Audiofocus duck"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v6}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->e:Ldev/cobalt/coat/CobaltMediaSession$f;

    const v4, 0x3dcccccd    # 0.1f

    invoke-interface {v0, v4}, Ldev/cobalt/coat/CobaltMediaSession$f;->a(F)V

    :cond_4
    :goto_2
    if-ne p1, v2, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->i:Z

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v5

    :goto_4
    iput-boolean v3, p0, Ldev/cobalt/coat/CobaltMediaSession;->k:Z

    return-void
.end method

.method public p()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard"

    const-string v3, "MediaSession release"

    invoke-static {v2, v3, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->f(Z)V

    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    :cond_1
    return-void
.end method

.method public v()V
    .locals 2

    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->l:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouTube application resumed at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouTube application opened at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/cobalt/coat/CobaltMediaSession;->s:Ljava/lang/String;

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->b:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/CobaltMediaSession$b;

    invoke-direct {v1, p0}, Ldev/cobalt/coat/CobaltMediaSession$b;-><init>(Ldev/cobalt/coat/CobaltMediaSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public y()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouTube application suspended at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/cobalt/coat/CobaltMediaSession;->s:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->l:Z

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->s(J)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard"

    const-string v3, "MediaSessionCompat suspend"

    invoke-static {v2, v3, v1}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->f(Z)V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltMediaSession;->z()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession;->b:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/CobaltMediaSession$c;

    invoke-direct {v1, p0}, Ldev/cobalt/coat/CobaltMediaSession$c;-><init>(Ldev/cobalt/coat/CobaltMediaSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
