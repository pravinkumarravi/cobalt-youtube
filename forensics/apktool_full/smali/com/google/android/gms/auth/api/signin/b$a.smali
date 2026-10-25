.class final Lcom/google/android/gms/auth/api/signin/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le1/q$a<",
        "Ly0/b;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lc1/k;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly0/b;

    invoke-virtual {p1}, Ly0/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    return-object p1
.end method
