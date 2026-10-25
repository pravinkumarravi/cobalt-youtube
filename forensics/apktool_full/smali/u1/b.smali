.class public Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ldev/cobalt/coat/CobaltService$a;
    .locals 1

    new-instance v0, Lu1/b$a;

    invoke-direct {v0, p0, p1}, Lu1/b$a;-><init>(Lu1/b;Landroid/content/Context;)V

    return-object v0
.end method
