.class public Lcom/google/android/gms/auth/api/signin/b;
.super Lc1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/b$a;,
        Lcom/google/android/gms/auth/api/signin/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc1/e<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final j:Lcom/google/android/gms/auth/api/signin/b$a;

.field private static k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/signin/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/b$a;-><init>(Lcom/google/android/gms/auth/api/signin/g;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/b;->j:Lcom/google/android/gms/auth/api/signin/b$a;

    sget v0, Lcom/google/android/gms/auth/api/signin/b$b;->a:I

    sput v0, Lcom/google/android/gms/auth/api/signin/b;->k:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    sget-object v0, Lv0/a;->g:Lc1/a;

    new-instance v1, Ld1/a;

    invoke-direct {v1}, Ld1/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lc1/e;-><init>(Landroid/content/Context;Lc1/a;Lc1/a$d;Ld1/k;)V

    return-void
.end method

.method private final declared-synchronized m()I
    .locals 4

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/google/android/gms/auth/api/signin/b;->k:I

    sget v1, Lcom/google/android/gms/auth/api/signin/b$b;->a:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lc1/e;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lb1/h;->k()Lb1/h;

    move-result-object v1

    const v2, 0xbdfcb8

    invoke-virtual {v1, v0, v2}, Lb1/h;->f(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    sget v0, Lcom/google/android/gms/auth/api/signin/b$b;->d:I

    :goto_0
    sput v0, Lcom/google/android/gms/auth/api/signin/b;->k:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lb1/h;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.auth.api.fallback"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/gms/auth/api/signin/b$b;->c:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/android/gms/auth/api/signin/b$b;->b:I

    goto :goto_0

    :cond_2
    :goto_1
    sget v0, Lcom/google/android/gms/auth/api/signin/b;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public k()Lr1/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr1/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc1/e;->a()Lc1/f;

    move-result-object v0

    invoke-virtual {p0}, Lc1/e;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b;->m()I

    move-result v2

    sget v3, Lcom/google/android/gms/auth/api/signin/b$b;->c:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lz0/i;->c(Lc1/f;Landroid/content/Context;Z)Lc1/g;

    move-result-object v0

    invoke-static {v0}, Le1/q;->b(Lc1/g;)Lr1/a;

    move-result-object v0

    return-object v0
.end method

.method public l()Lr1/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr1/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc1/e;->a()Lc1/f;

    move-result-object v0

    invoke-virtual {p0}, Lc1/e;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b;->m()I

    move-result v2

    sget v3, Lcom/google/android/gms/auth/api/signin/b$b;->c:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lz0/i;->a(Lc1/f;Landroid/content/Context;Z)Lc1/g;

    move-result-object v0

    invoke-static {v0}, Le1/q;->b(Lc1/g;)Lr1/a;

    move-result-object v0

    return-object v0
.end method
