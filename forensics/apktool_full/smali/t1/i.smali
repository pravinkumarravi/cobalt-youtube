.class public final synthetic Lt1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lt1/j;

.field public final synthetic c:[I

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lt1/j;[ILandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/i;->b:Lt1/j;

    iput-object p2, p0, Lt1/i;->c:[I

    iput-object p3, p0, Lt1/i;->d:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lt1/i;->b:Lt1/j;

    iget-object v1, p0, Lt1/i;->c:[I

    iget-object v2, p0, Lt1/i;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lt1/j;->c(Lt1/j;[ILandroid/widget/ImageView;)V

    return-void
.end method
