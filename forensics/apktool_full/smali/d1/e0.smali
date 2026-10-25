.class final Ld1/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lq1/l;

.field private final synthetic c:Ld1/c0;


# direct methods
.method constructor <init>(Ld1/c0;Lq1/l;)V
    .locals 0

    iput-object p1, p0, Ld1/e0;->c:Ld1/c0;

    iput-object p2, p0, Ld1/e0;->b:Lq1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ld1/e0;->c:Ld1/c0;

    iget-object v1, p0, Ld1/e0;->b:Lq1/l;

    invoke-static {v0, v1}, Ld1/c0;->I0(Ld1/c0;Lq1/l;)V

    return-void
.end method
