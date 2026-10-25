.class Landroid/support/v4/media/session/MediaSessionCompat$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->u(Landroid/support/v4/media/RatingCompat;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->i()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->B()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->z()V

    return-void
.end method

.method public f(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->g(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->y()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->r()V

    return-void
.end method

.method public k(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->k(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->h()V

    return-void
.end method

.method public m(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4

    :try_start_0
    const-string v0, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$e;

    if-eqz p1, :cond_7

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$e;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Landroid/support/v4/media/session/b;

    move-result-object v0

    const-string v2, "android.support.v4.media.session.EXTRA_BINDER"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-static {p2, v2, v1}, Landroidx/core/app/f;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    if-eqz v0, :cond_2

    :try_start_1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    if-eqz v0, :cond_3

    :try_start_2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->c(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto :goto_2

    :cond_3
    const-string v0, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaDescriptionCompat;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->q(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto :goto_2

    :cond_4
    const-string v0, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$e;

    if-eqz p1, :cond_7

    iget-object p3, p1, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Ljava/util/List;

    if-eqz p3, :cond_7

    const/4 p3, -0x1

    invoke-virtual {p2, v3, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_5

    iget-object p3, p1, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_5

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    :cond_5
    if-eqz v1, :cond_7

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->c()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$c;->d(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "MediaSessionCompat"

    const-string p2, "Could not unparcel the extra data."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public n(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->f()V

    return-void
.end method

.method public p(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(J)V

    return-void
.end method

.method public q(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_URI"

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->l(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "android.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->m()V

    goto/16 :goto_0

    :cond_1
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->n(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->o(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->p(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->t(Z)V

    goto :goto_0

    :cond_5
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->w(I)V

    goto :goto_0

    :cond_6
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->x(I)V

    goto :goto_0

    :cond_7
    const-string v1, "android.support.v4.media.session.action.SET_RATING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->v(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public s(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->A(J)V

    return-void
.end method
