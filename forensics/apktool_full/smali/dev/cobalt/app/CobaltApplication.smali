.class public Ldev/cobalt/app/CobaltApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Ldev/cobalt/coat/StarboardBridge$d;


# instance fields
.field b:Ldev/cobalt/coat/StarboardBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldev/cobalt/coat/StarboardBridge;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/app/CobaltApplication;->b:Ldev/cobalt/coat/StarboardBridge;

    return-void
.end method

.method public b()Ldev/cobalt/coat/StarboardBridge;
    .locals 1

    iget-object v0, p0, Ldev/cobalt/app/CobaltApplication;->b:Ldev/cobalt/coat/StarboardBridge;

    return-object v0
.end method
