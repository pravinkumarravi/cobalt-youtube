.class public Ldev/cobalt/coat/AudioPermissionRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lv1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/d<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv1/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lv1/d<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/cobalt/coat/AudioPermissionRequester;->a:Landroid/content/Context;

    iput-object p2, p0, Ldev/cobalt/coat/AudioPermissionRequester;->b:Lv1/d;

    return-void
.end method

.method private native nativeHandlePermission(JZ)V
.end method


# virtual methods
.method public declared-synchronized a(I[Ljava/lang/String;[I)V
    .locals 2

    monitor-enter p0

    const p2, 0x7f090125

    if-ne p1, p2, :cond_1

    :try_start_0
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    iget-wide v0, p0, Ldev/cobalt/coat/AudioPermissionRequester;->c:J

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Ldev/cobalt/coat/AudioPermissionRequester;->nativeHandlePermission(JZ)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ldev/cobalt/coat/AudioPermissionRequester;->c:J

    invoke-direct {p0, v0, v1, p2}, Ldev/cobalt/coat/AudioPermissionRequester;->nativeHandlePermission(JZ)V

    :goto_0
    iput-boolean p2, p0, Ldev/cobalt/coat/AudioPermissionRequester;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized requestRecordAudioPermission(J)Z
    .locals 3
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Ldev/cobalt/coat/AudioPermissionRequester;->c:J

    iget-object p1, p0, Ldev/cobalt/coat/AudioPermissionRequester;->b:Lv1/d;

    invoke-virtual {p1}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return p2

    :cond_0
    :try_start_1
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Ldev/cobalt/coat/AudioPermissionRequester;->d:Z

    if-nez v0, :cond_2

    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f090125

    invoke-static {p1, v0, v2}, Landroidx/core/app/b;->j(Landroid/app/Activity;[Ljava/lang/String;I)V

    iput-boolean v1, p0, Ldev/cobalt/coat/AudioPermissionRequester;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
