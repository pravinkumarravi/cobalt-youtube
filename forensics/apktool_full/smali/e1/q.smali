.class public Le1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/q$b;,
        Le1/q$a;
    }
.end annotation


# static fields
.field private static final a:Le1/q$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le1/y;

    invoke-direct {v0}, Le1/y;-><init>()V

    sput-object v0, Le1/q;->a:Le1/q$b;

    return-void
.end method

.method public static a(Lc1/g;Le1/q$a;)Lr1/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lc1/k;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc1/g<",
            "TR;>;",
            "Le1/q$a<",
            "TR;TT;>;)",
            "Lr1/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le1/q;->a:Le1/q$b;

    new-instance v1, Lr1/b;

    invoke-direct {v1}, Lr1/b;-><init>()V

    new-instance v2, Le1/z;

    invoke-direct {v2, p0, v1, p1, v0}, Le1/z;-><init>(Lc1/g;Lr1/b;Le1/q$a;Le1/q$b;)V

    invoke-virtual {p0, v2}, Lc1/g;->a(Lc1/g$a;)V

    invoke-virtual {v1}, Lr1/b;->a()Lr1/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lc1/g;)Lr1/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lc1/k;",
            ">(",
            "Lc1/g<",
            "TR;>;)",
            "Lr1/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Le1/a0;

    invoke-direct {v0}, Le1/a0;-><init>()V

    invoke-static {p0, v0}, Le1/q;->a(Lc1/g;Le1/q$a;)Lr1/a;

    move-result-object p0

    return-object p0
.end method
