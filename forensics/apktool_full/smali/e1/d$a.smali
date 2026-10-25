.class public final Le1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Lm/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/b<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc1/a<",
            "*>;",
            "Le1/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lp1/a;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le1/d$a;->d:I

    sget-object v0, Lp1/a;->k:Lp1/a;

    iput-object v0, p0, Le1/d$a;->h:Lp1/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Le1/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Le1/d$a;"
        }
    .end annotation

    iget-object v0, p0, Le1/d$a;->b:Lm/b;

    if-nez v0, :cond_0

    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    iput-object v0, p0, Le1/d$a;->b:Lm/b;

    :cond_0
    iget-object v0, p0, Le1/d$a;->b:Lm/b;

    invoke-virtual {v0, p1}, Lm/b;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final b()Le1/d;
    .locals 11

    new-instance v10, Le1/d;

    iget-object v1, p0, Le1/d$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Le1/d$a;->b:Lm/b;

    iget-object v3, p0, Le1/d$a;->c:Ljava/util/Map;

    iget v4, p0, Le1/d$a;->d:I

    iget-object v5, p0, Le1/d$a;->e:Landroid/view/View;

    iget-object v6, p0, Le1/d$a;->f:Ljava/lang/String;

    iget-object v7, p0, Le1/d$a;->g:Ljava/lang/String;

    iget-object v8, p0, Le1/d$a;->h:Lp1/a;

    iget-boolean v9, p0, Le1/d$a;->i:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Le1/d;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lp1/a;Z)V

    return-object v10
.end method

.method public final c(Landroid/accounts/Account;)Le1/d$a;
    .locals 0

    iput-object p1, p0, Le1/d$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Le1/d$a;
    .locals 0

    iput-object p1, p0, Le1/d$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Le1/d$a;
    .locals 0

    iput-object p1, p0, Le1/d$a;->f:Ljava/lang/String;

    return-object p0
.end method
