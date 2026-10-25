.class public final Ld1/w;
.super Ld1/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc1/a$d;",
        ">",
        "Ld1/p;"
    }
.end annotation


# instance fields
.field private final c:Lc1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/e<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/e<",
            "TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Ld1/p;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ld1/w;->c:Lc1/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc1/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/a<",
            "+",
            "Lc1/k;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Ld1/w;->c:Lc1/e;

    invoke-virtual {v0, p1}, Lc1/e;->c(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public final c()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Ld1/w;->c:Lc1/e;

    invoke-virtual {v0}, Lc1/e;->g()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
