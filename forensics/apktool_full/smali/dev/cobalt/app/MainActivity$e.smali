.class Ldev/cobalt/app/MainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Ldev/cobalt/app/MainActivity;


# direct methods
.method private constructor <init>(Ldev/cobalt/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/app/MainActivity$e;->a:Ldev/cobalt/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/cobalt/app/MainActivity;Ldev/cobalt/app/MainActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/app/MainActivity$e;-><init>(Ldev/cobalt/app/MainActivity;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldev/cobalt/app/MainActivity$e;->a:Ldev/cobalt/app/MainActivity;

    invoke-static {p1}, Ldev/cobalt/app/MainActivity;->m0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Ldev/cobalt/coat/StarboardBridge;->j(Z)V

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ldev/cobalt/app/MainActivity$e;->a:Ldev/cobalt/app/MainActivity;

    invoke-static {p1}, Ldev/cobalt/app/MainActivity;->n0(Ldev/cobalt/app/MainActivity;)Ldev/cobalt/coat/StarboardBridge;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
