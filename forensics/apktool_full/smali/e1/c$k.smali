.class public final Le1/c$k;
.super Le1/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le1/c$f;"
    }
.end annotation


# instance fields
.field private final synthetic g:Le1/c;


# direct methods
.method public constructor <init>(Le1/c;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le1/c$k;->g:Le1/c;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Le1/c$f;-><init>(Le1/c;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final f(Lb1/a;)V
    .locals 1

    iget-object v0, p0, Le1/c$k;->g:Le1/c;

    invoke-virtual {v0}, Le1/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le1/c$k;->g:Le1/c;

    invoke-static {v0}, Le1/c;->W(Le1/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le1/c$k;->g:Le1/c;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Le1/c;->P(Le1/c;I)V

    return-void

    :cond_0
    iget-object v0, p0, Le1/c$k;->g:Le1/c;

    iget-object v0, v0, Le1/c;->o:Le1/c$c;

    invoke-interface {v0, p1}, Le1/c$c;->b(Lb1/a;)V

    iget-object v0, p0, Le1/c$k;->g:Le1/c;

    invoke-virtual {v0, p1}, Le1/c;->E(Lb1/a;)V

    return-void
.end method

.method protected final g()Z
    .locals 2

    iget-object v0, p0, Le1/c$k;->g:Le1/c;

    iget-object v0, v0, Le1/c;->o:Le1/c$c;

    sget-object v1, Lb1/a;->f:Lb1/a;

    invoke-interface {v0, v1}, Le1/c$c;->b(Lb1/a;)V

    const/4 v0, 0x1

    return v0
.end method
