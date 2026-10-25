.class Ldev/cobalt/coat/CobaltMediaSession$a;
.super Landroid/support/v4/media/session/MediaSessionCompat$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltMediaSession;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ldev/cobalt/coat/CobaltMediaSession;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltMediaSession;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$a;->e:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$c;-><init>()V

    return-void
.end method


# virtual methods
.method public B()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starboard"

    const-string v2, "MediaSession action: STOP"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->f(J)V

    return-void
.end method

.method public f()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard"

    const-string v3, "MediaSession action: FAST FORWARD"

    invoke-static {v2, v3, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession$a;->e:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-static {v1, v0}, Ldev/cobalt/coat/CobaltMediaSession;->e(Ldev/cobalt/coat/CobaltMediaSession;Z)Z

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->f(J)V

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starboard"

    const-string v2, "MediaSession action: PAUSE"

    invoke-static {v1, v2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->f(J)V

    return-void
.end method

.method public i()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard"

    const-string v3, "MediaSession action: PLAY"

    invoke-static {v2, v3, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession$a;->e:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-static {v1, v0}, Ldev/cobalt/coat/CobaltMediaSession;->e(Ldev/cobalt/coat/CobaltMediaSession;Z)Z

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession$a;->e:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltMediaSession;->g(Ldev/cobalt/coat/CobaltMediaSession;)Lv1/d;

    move-result-object v0

    invoke-virtual {v0}, Lv1/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Ldev/cobalt/coat/CobaltMediaSession;->h()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ldev/cobalt/coat/CobaltMediaSession$a$a;

    invoke-direct {v1, p0, v0}, Ldev/cobalt/coat/CobaltMediaSession$a$a;-><init>(Ldev/cobalt/coat/CobaltMediaSession$a;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->f(J)V

    return-void
.end method

.method public r()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard"

    const-string v3, "MediaSession action: REWIND"

    invoke-static {v2, v3, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession$a;->e:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-static {v1, v0}, Ldev/cobalt/coat/CobaltMediaSession;->e(Ldev/cobalt/coat/CobaltMediaSession;Z)Z

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->f(J)V

    return-void
.end method

.method public s(J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSession action: SEEK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "starboard"

    invoke-static {v3, v0, v2}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession$a;->e:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->e(Ldev/cobalt/coat/CobaltMediaSession;Z)Z

    const-wide/16 v0, 0x100

    invoke-static {v0, v1, p1, p2}, Ldev/cobalt/coat/CobaltMediaSession;->i(JJ)V

    return-void
.end method

.method public y()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard"

    const-string v3, "MediaSession action: SKIP NEXT"

    invoke-static {v2, v3, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession$a;->e:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-static {v1, v0}, Ldev/cobalt/coat/CobaltMediaSession;->e(Ldev/cobalt/coat/CobaltMediaSession;Z)Z

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->f(J)V

    return-void
.end method

.method public z()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "starboard"

    const-string v3, "MediaSession action: SKIP PREVIOUS"

    invoke-static {v2, v3, v1}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Ldev/cobalt/coat/CobaltMediaSession$a;->e:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-static {v1, v0}, Ldev/cobalt/coat/CobaltMediaSession;->e(Ldev/cobalt/coat/CobaltMediaSession;Z)Z

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltMediaSession;->f(J)V

    return-void
.end method
