.class public final Lv0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv0/a$a;
    }
.end annotation


# static fields
.field public static final a:Lc1/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$g<",
            "Lm1/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc1/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$g<",
            "Lz0/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lc1/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$a<",
            "Lm1/g;",
            "Lv0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lc1/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$a<",
            "Lz0/j;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "Lv0/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "Lv0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lx0/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:Lw0/a;

.field public static final j:Ly0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lc1/a$g;

    invoke-direct {v0}, Lc1/a$g;-><init>()V

    sput-object v0, Lv0/a;->a:Lc1/a$g;

    new-instance v1, Lc1/a$g;

    invoke-direct {v1}, Lc1/a$g;-><init>()V

    sput-object v1, Lv0/a;->b:Lc1/a$g;

    new-instance v2, Lv0/e;

    invoke-direct {v2}, Lv0/e;-><init>()V

    sput-object v2, Lv0/a;->c:Lc1/a$a;

    new-instance v3, Lv0/f;

    invoke-direct {v3}, Lv0/f;-><init>()V

    sput-object v3, Lv0/a;->d:Lc1/a$a;

    sget-object v4, Lv0/b;->c:Lc1/a;

    sput-object v4, Lv0/a;->e:Lc1/a;

    new-instance v4, Lc1/a;

    const-string v5, "Auth.CREDENTIALS_API"

    invoke-direct {v4, v5, v2, v0}, Lc1/a;-><init>(Ljava/lang/String;Lc1/a$a;Lc1/a$g;)V

    sput-object v4, Lv0/a;->f:Lc1/a;

    new-instance v0, Lc1/a;

    const-string v2, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v0, v2, v3, v1}, Lc1/a;-><init>(Ljava/lang/String;Lc1/a$a;Lc1/a$g;)V

    sput-object v0, Lv0/a;->g:Lc1/a;

    sget-object v0, Lv0/b;->d:Lx0/a;

    sput-object v0, Lv0/a;->h:Lx0/a;

    new-instance v0, Lm1/f;

    invoke-direct {v0}, Lm1/f;-><init>()V

    sput-object v0, Lv0/a;->i:Lw0/a;

    new-instance v0, Lz0/g;

    invoke-direct {v0}, Lz0/g;-><init>()V

    sput-object v0, Lv0/a;->j:Ly0/a;

    return-void
.end method
