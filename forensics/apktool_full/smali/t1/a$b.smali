.class Lt1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lt1/a;


# direct methods
.method constructor <init>(Lt1/a;)V
    .locals 0

    iput-object p1, p0, Lt1/a$b;->b:Lt1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lt1/a$b;->b:Lt1/a;

    invoke-virtual {v0}, Lt1/a;->k()V

    return-void
.end method
