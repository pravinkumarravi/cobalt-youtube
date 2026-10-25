.class public final Lp1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lc1/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$g<",
            "Lq1/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lc1/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$g<",
            "Lq1/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc1/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$a<",
            "Lq1/a;",
            "Lp1/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lc1/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$a<",
            "Lq1/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/google/android/gms/common/api/Scope;

.field private static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "Lp1/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lc1/a$g;

    invoke-direct {v0}, Lc1/a$g;-><init>()V

    sput-object v0, Lp1/c;->a:Lc1/a$g;

    new-instance v1, Lc1/a$g;

    invoke-direct {v1}, Lc1/a$g;-><init>()V

    sput-object v1, Lp1/c;->b:Lc1/a$g;

    new-instance v2, Lp1/b;

    invoke-direct {v2}, Lp1/b;-><init>()V

    sput-object v2, Lp1/c;->c:Lc1/a$a;

    new-instance v3, Lp1/e;

    invoke-direct {v3}, Lp1/e;-><init>()V

    sput-object v3, Lp1/c;->d:Lc1/a$a;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "profile"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lp1/c;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "email"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lp1/c;->f:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lc1/a;

    const-string v5, "SignIn.API"

    invoke-direct {v4, v5, v2, v0}, Lc1/a;-><init>(Ljava/lang/String;Lc1/a$a;Lc1/a$g;)V

    sput-object v4, Lp1/c;->g:Lc1/a;

    new-instance v0, Lc1/a;

    const-string v2, "SignIn.INTERNAL_API"

    invoke-direct {v0, v2, v3, v1}, Lc1/a;-><init>(Ljava/lang/String;Lc1/a$a;Lc1/a$g;)V

    sput-object v0, Lp1/c;->h:Lc1/a;

    return-void
.end method
