.class public final enum Lj0/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj0/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lj0/a;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic d:[Lj0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lj0/a;

    const-string v1, "system"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/a;->b:Lj0/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lj0/a;

    aput-object v0, v1, v2

    sput-object v1, Lj0/a;->d:[Lj0/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lj0/a;->c:Ljava/util/List;

    const-class v0, Lj0/a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/a;

    sget-object v2, Lj0/a;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lj0/a;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lj0/a;
    .locals 1

    const-class v0, Lj0/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj0/a;

    return-object p0
.end method

.method public static values()[Lj0/a;
    .locals 1

    sget-object v0, Lj0/a;->d:[Lj0/a;

    invoke-virtual {v0}, [Lj0/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj0/a;

    return-object v0
.end method
