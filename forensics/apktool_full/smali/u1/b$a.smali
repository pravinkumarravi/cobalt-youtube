.class Lu1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldev/cobalt/coat/CobaltService$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu1/b;->a(Landroid/content/Context;)Ldev/cobalt/coat/CobaltService$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lu1/b;


# direct methods
.method constructor <init>(Lu1/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu1/b$a;->b:Lu1/b;

    iput-object p2, p0, Lu1/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "dev.cobalt.coat.clientloginfo"

    return-object v0
.end method

.method public b(J)Ldev/cobalt/coat/CobaltService;
    .locals 2

    new-instance v0, Lu1/a;

    iget-object v1, p0, Lu1/b$a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lu1/a;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method
