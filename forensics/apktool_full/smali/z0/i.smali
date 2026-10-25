.class public final Lz0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lg1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg1/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GoogleSignInCommon"

    invoke-direct {v0, v2, v1}, Lg1/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lz0/i;->a:Lg1/a;

    return-void
.end method

.method public static a(Lc1/f;Landroid/content/Context;Z)Lc1/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/f;",
            "Landroid/content/Context;",
            "Z)",
            "Lc1/g<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz0/i;->a:Lg1/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Signing out"

    invoke-virtual {v0, v2, v1}, Lg1/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lz0/i;->b(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1, p0}, Lc1/h;->b(Lcom/google/android/gms/common/api/Status;Lc1/f;)Lc1/g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lz0/l;

    invoke-direct {p1, p0}, Lz0/l;-><init>(Lc1/f;)V

    invoke-virtual {p0, p1}, Lc1/f;->a(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lz0/o;->c(Landroid/content/Context;)Lz0/o;

    move-result-object p0

    invoke-virtual {p0}, Lz0/o;->a()V

    invoke-static {}, Lc1/f;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/f;

    invoke-virtual {v0}, Lc1/f;->e()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ld1/e;->a()V

    return-void
.end method

.method public static c(Lc1/f;Landroid/content/Context;Z)Lc1/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/f;",
            "Landroid/content/Context;",
            "Z)",
            "Lc1/g<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz0/i;->a:Lg1/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Revoking access"

    invoke-virtual {v0, v2, v1}, Lg1/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lz0/c;->b(Landroid/content/Context;)Lz0/c;

    move-result-object v0

    invoke-virtual {v0}, Lz0/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lz0/i;->b(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-static {v0}, Lz0/e;->a(Ljava/lang/String;)Lc1/g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lz0/n;

    invoke-direct {p1, p0}, Lz0/n;-><init>(Lc1/f;)V

    invoke-virtual {p0, p1}, Lc1/f;->a(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p0

    return-object p0
.end method
