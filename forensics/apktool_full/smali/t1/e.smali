.class public final synthetic Lt1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lt1/f;


# direct methods
.method public synthetic constructor <init>(Lt1/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/e;->b:Lt1/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lt1/e;->b:Lt1/f;

    invoke-static {v0}, Lt1/f;->c(Lt1/f;)V

    return-void
.end method
