.class final Lp1/b;
.super Lc1/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc1/a$a<",
        "Lq1/a;",
        "Lp1/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc1/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Le1/d;Ljava/lang/Object;Lc1/f$a;Lc1/f$b;)Lc1/a$f;
    .locals 8

    check-cast p4, Lp1/a;

    if-nez p4, :cond_0

    sget-object p4, Lp1/a;->k:Lp1/a;

    :cond_0
    move-object v5, p4

    new-instance p4, Lq1/a;

    const/4 v3, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lq1/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLe1/d;Lp1/a;Lc1/f$a;Lc1/f$b;)V

    return-object p4
.end method
