.class final Lv0/d;
.super Lc1/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc1/a$a<",
        "Ll1/b;",
        "Lv0/c;",
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
    .locals 7

    move-object v4, p4

    check-cast v4, Lv0/c;

    new-instance p4, Ll1/b;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ll1/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Le1/d;Lv0/c;Lc1/f$a;Lc1/f$b;)V

    return-object p4
.end method
