.class public final synthetic Lt1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lt1/j;


# direct methods
.method public synthetic constructor <init>(Lt1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/h;->b:Lt1/j;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lt1/h;->b:Lt1/j;

    invoke-static {v0, p1, p2}, Lt1/j;->a(Lt1/j;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
