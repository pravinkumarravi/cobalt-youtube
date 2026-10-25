.class public Li1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/c;


# static fields
.field private static final a:Li1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li1/d;

    invoke-direct {v0}, Li1/d;-><init>()V

    sput-object v0, Li1/d;->a:Li1/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Li1/c;
    .locals 1

    sget-object v0, Li1/d;->a:Li1/d;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
