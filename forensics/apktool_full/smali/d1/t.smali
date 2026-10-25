.class final Ld1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Ld1/e$a;


# direct methods
.method constructor <init>(Ld1/e$a;)V
    .locals 0

    iput-object p1, p0, Ld1/t;->b:Ld1/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld1/t;->b:Ld1/e$a;

    invoke-static {v0}, Ld1/e$a;->H(Ld1/e$a;)V

    return-void
.end method
