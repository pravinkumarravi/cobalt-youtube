.class public final Lv0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lc1/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$g<",
            "Ll1/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lc1/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a$a<",
            "Ll1/b;",
            "Lv0/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "Lv0/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lx0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc1/a$g;

    invoke-direct {v0}, Lc1/a$g;-><init>()V

    sput-object v0, Lv0/b;->a:Lc1/a$g;

    new-instance v1, Lv0/d;

    invoke-direct {v1}, Lv0/d;-><init>()V

    sput-object v1, Lv0/b;->b:Lc1/a$a;

    new-instance v2, Lc1/a;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v2, v3, v1, v0}, Lc1/a;-><init>(Ljava/lang/String;Lc1/a$a;Lc1/a$g;)V

    sput-object v2, Lv0/b;->c:Lc1/a;

    new-instance v0, Ll1/e;

    invoke-direct {v0}, Ll1/e;-><init>()V

    sput-object v0, Lv0/b;->d:Lx0/a;

    return-void
.end method
