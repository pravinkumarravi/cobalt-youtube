.class Landroidx/recyclerview/widget/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static d:Landroidx/core/util/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/d<",
            "Landroidx/recyclerview/widget/o$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Landroidx/recyclerview/widget/j$l$c;

.field c:Landroidx/recyclerview/widget/j$l$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/util/e;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/util/e;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/o$a;->d:Landroidx/core/util/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 1

    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/o$a;->d:Landroidx/core/util/d;

    invoke-interface {v0}, Landroidx/core/util/d;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static b()Landroidx/recyclerview/widget/o$a;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/o$a;->d:Landroidx/core/util/d;

    invoke-interface {v0}, Landroidx/core/util/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/o$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/o$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/o$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method static c(Landroidx/recyclerview/widget/o$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/o$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Landroidx/recyclerview/widget/j$l$c;

    iput-object v0, p0, Landroidx/recyclerview/widget/o$a;->c:Landroidx/recyclerview/widget/j$l$c;

    sget-object v0, Landroidx/recyclerview/widget/o$a;->d:Landroidx/core/util/d;

    invoke-interface {v0, p0}, Landroidx/core/util/d;->a(Ljava/lang/Object;)Z

    return-void
.end method
