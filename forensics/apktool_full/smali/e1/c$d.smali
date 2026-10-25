.class public Le1/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field private final synthetic a:Le1/c;


# direct methods
.method public constructor <init>(Le1/c;)V
    .locals 0

    iput-object p1, p0, Le1/c$d;->a:Le1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lb1/a;)V
    .locals 2

    invoke-virtual {p1}, Lb1/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le1/c$d;->a:Le1/c;

    const/4 v0, 0x0

    invoke-virtual {p1}, Le1/c;->x()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Le1/c;->c(Le1/l;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Le1/c$d;->a:Le1/c;

    invoke-static {v0}, Le1/c;->b0(Le1/c;)Le1/c$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le1/c$d;->a:Le1/c;

    invoke-static {v0}, Le1/c;->b0(Le1/c;)Le1/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Le1/c$b;->c(Lb1/a;)V

    :cond_1
    return-void
.end method
