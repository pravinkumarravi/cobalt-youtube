.class public abstract Le1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Le1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le1/i;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Le1/i;
    .locals 2

    sget-object v0, Le1/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le1/i;->b:Le1/i;

    if-nez v1, :cond_0

    new-instance v1, Le1/g0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Le1/g0;-><init>(Landroid/content/Context;)V

    sput-object v1, Le1/i;->b:Le1/i;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Le1/i;->b:Le1/i;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Le1/i$a;

    invoke-direct {v0, p1, p2, p3, p6}, Le1/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0, p4, p5}, Le1/i;->d(Le1/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract c(Le1/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method protected abstract d(Le1/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method
