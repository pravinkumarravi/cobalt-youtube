.class public final synthetic Lt1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lt1/j;


# direct methods
.method public synthetic constructor <init>(Lt1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/g;->b:Lt1/j;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lt1/g;->b:Lt1/j;

    invoke-static {v0, p1}, Lt1/j;->b(Lt1/j;Landroid/view/View;)V

    return-void
.end method
