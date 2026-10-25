.class final Ldev/cobalt/app/c$d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Ldev/cobalt/app/c;


# direct methods
.method public constructor <init>(Ldev/cobalt/app/c;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/app/c$d;->a:Ldev/cobalt/app/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Ldev/cobalt/app/c$d;->a:Ldev/cobalt/app/c;

    invoke-static {p1}, Ldev/cobalt/app/c;->d(Ldev/cobalt/app/c;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Ldev/cobalt/app/b;->g(Landroid/content/ContentResolver;)Z

    move-result p1

    iget-object v0, p0, Ldev/cobalt/app/c$d;->a:Ldev/cobalt/app/c;

    invoke-static {v0}, Ldev/cobalt/app/c;->d(Ldev/cobalt/app/c;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ldev/cobalt/app/b;->e(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ldev/cobalt/app/b;->d:Ldev/cobalt/app/b;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    sget-object p1, Ldev/cobalt/app/b;->f:Ldev/cobalt/app/b;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Ldev/cobalt/app/c$d;->a:Ldev/cobalt/app/c;

    invoke-static {p1}, Ldev/cobalt/app/c;->a(Ldev/cobalt/app/c;)Ldev/cobalt/app/b;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Ldev/cobalt/app/c$d;->a:Ldev/cobalt/app/c;

    invoke-static {v0, p1}, Ldev/cobalt/app/c;->c(Ldev/cobalt/app/c;Ldev/cobalt/app/b;)V

    return-void
.end method
