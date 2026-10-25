.class Lt1/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/a;->f(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lt1/a;


# direct methods
.method constructor <init>(Lt1/a;)V
    .locals 0

    iput-object p1, p0, Lt1/a$d;->a:Lt1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    const-string p1, "YouTubeCloud9Mgr"

    const-string p2, "Sync was throttled. Request ignored after exceeding device frequency limit."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lt1/a$d;->a:Lt1/a;

    invoke-virtual {p1}, Lt1/a;->j()V

    return-void
.end method

.method public b(Lp0/b;)V
    .locals 2

    const-string v0, "YouTubeCloud9Mgr"

    const-string v1, "Sync successful. Received a modified device config."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lt1/a$d;->a:Lt1/a;

    invoke-interface {p1}, Lp0/b;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, p1}, Lt1/a;->e(Lt1/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object p1, p0, Lt1/a$d;->a:Lt1/a;

    invoke-virtual {p1}, Lt1/a;->i()V

    return-void
.end method

.method public c(Lp0/b;)V
    .locals 2

    const-string v0, "YouTubeCloud9Mgr"

    const-string v1, "Sync successful. Received an unmodified device configuration."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lt1/a$d;->a:Lt1/a;

    invoke-interface {p1}, Lp0/b;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, p1}, Lt1/a;->e(Lt1/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object p1, p0, Lt1/a$d;->a:Lt1/a;

    invoke-virtual {p1}, Lt1/a;->i()V

    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "YouTubeCloud9Mgr"

    const-string v1, "Synchronization failed for device config"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lt1/a$d;->a:Lt1/a;

    invoke-virtual {p1}, Lt1/a;->j()V

    return-void
.end method
