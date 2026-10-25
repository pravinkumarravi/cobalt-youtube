.class final Ld1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Ld1/v;


# direct methods
.method constructor <init>(Ld1/v;)V
    .locals 0

    iput-object p1, p0, Ld1/u;->b:Ld1/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld1/u;->b:Ld1/v;

    iget-object v0, v0, Ld1/v;->a:Ld1/e$a;

    invoke-static {v0}, Ld1/e$a;->I(Ld1/e$a;)Lc1/a$f;

    move-result-object v0

    invoke-interface {v0}, Lc1/a$f;->k()V

    return-void
.end method
