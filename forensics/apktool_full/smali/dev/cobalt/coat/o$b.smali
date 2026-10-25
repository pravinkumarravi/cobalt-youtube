.class public Ldev/cobalt/coat/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/coat/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ldev/cobalt/coat/o$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldev/cobalt/coat/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/cobalt/coat/o$c;-><init>(Ldev/cobalt/coat/o$a;)V

    iput-object v0, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    iput-object p1, p0, Ldev/cobalt/coat/o$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(II)Ldev/cobalt/coat/o$b;
    .locals 2

    iget-object v0, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v0}, Ldev/cobalt/coat/o$c;->c(Ldev/cobalt/coat/o$c;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v0}, Ldev/cobalt/coat/o$c;->e(Ldev/cobalt/coat/o$c;)[I

    move-result-object v0

    iget-object v1, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v1}, Ldev/cobalt/coat/o$c;->c(Ldev/cobalt/coat/o$c;)I

    move-result v1

    aput p1, v0, v1

    iget-object p1, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    invoke-static {p1}, Ldev/cobalt/coat/o$c;->f(Ldev/cobalt/coat/o$c;)[I

    move-result-object p1

    iget-object v0, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v0}, Ldev/cobalt/coat/o$c;->c(Ldev/cobalt/coat/o$c;)I

    move-result v0

    aput p2, p1, v0

    iget-object p1, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    invoke-static {p1}, Ldev/cobalt/coat/o$c;->d(Ldev/cobalt/coat/o$c;)I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Too many buttons"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ldev/cobalt/coat/o;
    .locals 4

    new-instance v0, Ldev/cobalt/coat/o;

    iget-object v1, p0, Ldev/cobalt/coat/o$b;->a:Landroid/content/Context;

    iget-object v2, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ldev/cobalt/coat/o;-><init>(Landroid/content/Context;Ldev/cobalt/coat/o$c;Ldev/cobalt/coat/o$a;)V

    return-object v0
.end method

.method public c(Landroid/content/DialogInterface$OnClickListener;)Ldev/cobalt/coat/o$b;
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v0, p1}, Ldev/cobalt/coat/o$c;->h(Ldev/cobalt/coat/o$c;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d(I)Ldev/cobalt/coat/o$b;
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v0, p1}, Ldev/cobalt/coat/o$c;->b(Ldev/cobalt/coat/o$c;I)I

    return-object p0
.end method

.method public e(Landroid/content/DialogInterface$OnDismissListener;)Ldev/cobalt/coat/o$b;
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/o$b;->b:Ldev/cobalt/coat/o$c;

    invoke-static {v0, p1}, Ldev/cobalt/coat/o$c;->j(Ldev/cobalt/coat/o$c;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method
