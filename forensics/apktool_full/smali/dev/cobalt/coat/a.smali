.class public final synthetic Ldev/cobalt/coat/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldev/cobalt/coat/b;


# direct methods
.method public synthetic constructor <init>(Ldev/cobalt/coat/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/cobalt/coat/a;->b:Ldev/cobalt/coat/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/a;->b:Ldev/cobalt/coat/b;

    invoke-static {v0}, Ldev/cobalt/coat/b;->a(Ldev/cobalt/coat/b;)V

    return-void
.end method
