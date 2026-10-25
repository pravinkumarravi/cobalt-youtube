.class final Lz0/m;
.super Lz0/f;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lz0/n;


# direct methods
.method constructor <init>(Lz0/n;)V
    .locals 0

    iput-object p1, p0, Lz0/m;->a:Lz0/n;

    invoke-direct {p0}, Lz0/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final O(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lz0/m;->a:Lz0/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lc1/k;)V

    return-void
.end method
