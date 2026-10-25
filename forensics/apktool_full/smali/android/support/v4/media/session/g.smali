.class Landroid/support/v4/media/session/g;
.super Landroid/support/v4/media/session/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/f;",
        ">",
        "Landroid/support/v4/media/session/e$b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/e$b;-><init>(Landroid/support/v4/media/session/e$a;)V

    return-void
.end method


# virtual methods
.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    check-cast v0, Landroid/support/v4/media/session/f;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/f;->t(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
