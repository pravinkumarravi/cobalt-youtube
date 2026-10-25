.class final Ld1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Ld1/c0;


# direct methods
.method constructor <init>(Ld1/c0;)V
    .locals 0

    iput-object p1, p0, Ld1/b0;->b:Ld1/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ld1/b0;->b:Ld1/c0;

    invoke-static {v0}, Ld1/c0;->H0(Ld1/c0;)Ld1/d0;

    move-result-object v0

    new-instance v1, Lb1/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lb1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ld1/d0;->a(Lb1/a;)V

    return-void
.end method
