.class final Le1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/c$a;


# instance fields
.field private final synthetic a:Ld1/d;


# direct methods
.method constructor <init>(Ld1/d;)V
    .locals 0

    iput-object p1, p0, Le1/w;->a:Ld1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(I)V
    .locals 1

    iget-object v0, p0, Le1/w;->a:Ld1/d;

    invoke-interface {v0, p1}, Ld1/d;->f(I)V

    return-void
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Le1/w;->a:Ld1/d;

    invoke-interface {v0, p1}, Ld1/d;->j(Landroid/os/Bundle;)V

    return-void
.end method
