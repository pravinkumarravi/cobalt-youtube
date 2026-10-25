.class Landroidx/fragment/app/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/c;
.implements Landroidx/lifecycle/x;


# instance fields
.field private final b:Landroidx/fragment/app/Fragment;

.field private final c:Landroidx/lifecycle/w;

.field private d:Landroidx/lifecycle/k;

.field private e:Landroidx/savedstate/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/k;

    iput-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/b;

    iput-object p1, p0, Landroidx/fragment/app/z;->b:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/z;->c:Landroidx/lifecycle/w;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/f;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/z;->e()V

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/k;

    return-object v0
.end method

.method b(Landroidx/lifecycle/f$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/k;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public d()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/z;->e()V

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/b;

    invoke-virtual {v0}, Landroidx/savedstate/b;->b()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/k;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/k;

    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/b;

    :cond_0
    return-void
.end method

.method f()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method g(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method h(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method i(Landroidx/lifecycle/f$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/k;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/k;->o(Landroidx/lifecycle/f$c;)V

    return-void
.end method

.method public m()Landroidx/lifecycle/w;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/z;->e()V

    iget-object v0, p0, Landroidx/fragment/app/z;->c:Landroidx/lifecycle/w;

    return-object v0
.end method
