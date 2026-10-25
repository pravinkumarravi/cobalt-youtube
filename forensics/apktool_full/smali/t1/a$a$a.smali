.class Lt1/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lt1/a$a;


# direct methods
.method constructor <init>(Lt1/a$a;)V
    .locals 0

    iput-object p1, p0, Lt1/a$a$a;->b:Lt1/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt1/a$a$a;->b:Lt1/a$a;

    iget-object v0, v0, Lt1/a$a;->b:Lt1/a;

    invoke-static {v0}, Lt1/a;->d(Lt1/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "YouTubeCloud9Mgr"

    const-string v1, "Syncing with Arcus server took more than 3000ms. Initializing with default Configurations."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lt1/a$a$a;->b:Lt1/a$a;

    iget-object v0, v0, Lt1/a$a;->b:Lt1/a;

    invoke-virtual {v0}, Lt1/a;->j()V

    :cond_0
    return-void
.end method
