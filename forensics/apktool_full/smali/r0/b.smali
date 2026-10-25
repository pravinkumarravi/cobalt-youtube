.class public Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lr0/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lr0/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lr0/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lr0/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lr0/b;
    .locals 9

    const-string v0, ":"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    aget-object v0, p0, v0

    const-string v1, "[:/]"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lr0/b;

    aget-object v4, p0, v2

    const/4 v2, 0x3

    aget-object v5, p0, v2

    const/4 v2, 0x4

    aget-object v6, p0, v2

    const/4 p0, 0x0

    aget-object v7, v0, p0

    const/4 p0, 0x1

    aget-object v8, v0, p0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lr0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ARN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
