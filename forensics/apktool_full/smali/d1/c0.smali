.class public final Ld1/c0;
.super Lq1/e;
.source "SourceFile"

# interfaces
.implements Lc1/f$a;
.implements Lc1/f$b;


# static fields
.field private static h:Lc1/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$a<",
            "+",
            "Lp1/d;",
            "Lp1/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lc1/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$a<",
            "+",
            "Lp1/d;",
            "Lp1/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private e:Le1/d;

.field private f:Lp1/d;

.field private g:Ld1/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lp1/c;->c:Lc1/a$a;

    sput-object v0, Ld1/c0;->h:Lc1/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Le1/d;)V
    .locals 1

    sget-object v0, Ld1/c0;->h:Lc1/a$a;

    invoke-direct {p0, p1, p2, p3, v0}, Ld1/c0;-><init>(Landroid/content/Context;Landroid/os/Handler;Le1/d;Lc1/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Le1/d;Lc1/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Le1/d;",
            "Lc1/a$a<",
            "+",
            "Lp1/d;",
            "Lp1/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lq1/e;-><init>()V

    iput-object p1, p0, Ld1/c0;->a:Landroid/content/Context;

    iput-object p2, p0, Ld1/c0;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le1/d;

    iput-object p1, p0, Ld1/c0;->e:Le1/d;

    invoke-virtual {p3}, Le1/d;->i()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ld1/c0;->d:Ljava/util/Set;

    iput-object p4, p0, Ld1/c0;->c:Lc1/a$a;

    return-void
.end method

.method static synthetic H0(Ld1/c0;)Ld1/d0;
    .locals 0

    iget-object p0, p0, Ld1/c0;->g:Ld1/d0;

    return-object p0
.end method

.method static synthetic I0(Ld1/c0;Lq1/l;)V
    .locals 0

    invoke-direct {p0, p1}, Ld1/c0;->L0(Lq1/l;)V

    return-void
.end method

.method private final L0(Lq1/l;)V
    .locals 3

    invoke-virtual {p1}, Lq1/l;->c()Lb1/a;

    move-result-object v0

    invoke-virtual {v0}, Lb1/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lq1/l;->e()Le1/t;

    move-result-object p1

    invoke-virtual {p1}, Le1/t;->e()Lb1/a;

    move-result-object v0

    invoke-virtual {v0}, Lb1/a;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Ld1/c0;->g:Ld1/d0;

    invoke-interface {p1, v0}, Ld1/d0;->a(Lb1/a;)V

    :goto_0
    iget-object p1, p0, Ld1/c0;->f:Lp1/d;

    invoke-interface {p1}, Lc1/a$f;->k()V

    return-void

    :cond_1
    iget-object v0, p0, Ld1/c0;->g:Ld1/d0;

    invoke-virtual {p1}, Le1/t;->c()Le1/l;

    move-result-object p1

    iget-object v1, p0, Ld1/c0;->d:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Ld1/d0;->c(Le1/l;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final J0(Ld1/d0;)V
    .locals 9

    iget-object v0, p0, Ld1/c0;->f:Lp1/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc1/a$f;->k()V

    :cond_0
    iget-object v0, p0, Ld1/c0;->e:Le1/d;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Le1/d;->k(Ljava/lang/Integer;)V

    iget-object v2, p0, Ld1/c0;->c:Lc1/a$a;

    iget-object v3, p0, Ld1/c0;->a:Landroid/content/Context;

    iget-object v0, p0, Ld1/c0;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Ld1/c0;->e:Le1/d;

    invoke-virtual {v5}, Le1/d;->j()Lp1/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lc1/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Le1/d;Ljava/lang/Object;Lc1/f$a;Lc1/f$b;)Lc1/a$f;

    move-result-object v0

    check-cast v0, Lp1/d;

    iput-object v0, p0, Ld1/c0;->f:Lp1/d;

    iput-object p1, p0, Ld1/c0;->g:Ld1/d0;

    iget-object p1, p0, Ld1/c0;->d:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ld1/c0;->f:Lp1/d;

    invoke-interface {p1}, Lp1/d;->l()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Ld1/c0;->b:Landroid/os/Handler;

    new-instance v0, Ld1/b0;

    invoke-direct {v0, p0}, Ld1/b0;-><init>(Ld1/c0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final K0()V
    .locals 1

    iget-object v0, p0, Ld1/c0;->f:Lp1/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc1/a$f;->k()V

    :cond_0
    return-void
.end method

.method public final b0(Lq1/l;)V
    .locals 2

    iget-object v0, p0, Ld1/c0;->b:Landroid/os/Handler;

    new-instance v1, Ld1/e0;

    invoke-direct {v1, p0, p1}, Ld1/e0;-><init>(Ld1/c0;Lq1/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lb1/a;)V
    .locals 1

    iget-object v0, p0, Ld1/c0;->g:Ld1/d0;

    invoke-interface {v0, p1}, Ld1/d0;->a(Lb1/a;)V

    return-void
.end method

.method public final f(I)V
    .locals 0

    iget-object p1, p0, Ld1/c0;->f:Lp1/d;

    invoke-interface {p1}, Lc1/a$f;->k()V

    return-void
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Ld1/c0;->f:Lp1/d;

    invoke-interface {p1, p0}, Lp1/d;->j(Lq1/d;)V

    return-void
.end method
