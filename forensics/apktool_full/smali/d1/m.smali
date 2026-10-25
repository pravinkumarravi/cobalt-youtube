.class final Ld1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field private final synthetic b:Ld1/l0;


# direct methods
.method constructor <init>(Ld1/l0;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Ld1/m;->b:Ld1/l0;

    iput-object p2, p0, Ld1/m;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p1, p0, Ld1/m;->b:Ld1/l0;

    invoke-static {p1}, Ld1/l0;->a(Ld1/l0;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Ld1/m;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
