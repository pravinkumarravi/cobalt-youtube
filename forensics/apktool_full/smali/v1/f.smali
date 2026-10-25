.class public final Lv1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lv1/f;->f()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    const-string v0, "starboard"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lv1/f;->b:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Lv1/f;->g(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lv1/f;->e:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Lv1/f;->g(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static varargs c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    array-length p1, p2

    if-gtz p1, :cond_1

    :cond_0
    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static d([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    instance-of v1, p0, Ljava/lang/Throwable;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    const-string v0, "starboard"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lv1/f;->c:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Lv1/f;->g(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static f()V
    .locals 9

    const-class v0, Ljava/lang/Throwable;

    const-class v1, Landroid/util/Log;

    const-class v2, Ljava/lang/String;

    :try_start_0
    const-string v3, "v"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    const/4 v8, 0x2

    aput-object v0, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lv1/f;->a:Ljava/lang/reflect/Method;

    const-string v3, "d"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v2, v5, v6

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lv1/f;->b:Ljava/lang/reflect/Method;

    const-string v3, "i"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v2, v5, v6

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lv1/f;->c:Ljava/lang/reflect/Method;

    const-string v3, "w"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v2, v5, v6

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lv1/f;->d:Ljava/lang/reflect/Method;

    const-string v3, "e"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v2, v4, v6

    aput-object v2, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lv1/f;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static varargs g(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p3}, Lv1/f;->d([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {p2, v1, p3}, Lv1/f;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const/4 p1, 0x2

    aput-object v1, p3, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    return v0
.end method

.method public static varargs h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    const-string v0, "starboard"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lv1/f;->a:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Lv1/f;->g(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lv1/f;->d:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Lv1/f;->g(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
