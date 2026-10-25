.class public abstract Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lv/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lv/d;
    .locals 1

    sget-object v0, Lv/d;->a:Lv/d;

    if-nez v0, :cond_0

    new-instance v0, Lv/e;

    invoke-direct {v0}, Lv/e;-><init>()V

    sput-object v0, Lv/d;->a:Lv/d;

    :cond_0
    sget-object v0, Lv/d;->a:Lv/d;

    return-object v0
.end method
