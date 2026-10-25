.class Le/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Le/d;


# direct methods
.method constructor <init>(Le/d;)V
    .locals 0

    iput-object p1, p0, Le/d$a;->b:Le/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Le/d$a;->b:Le/d;

    invoke-virtual {v0, p1}, Le/d;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
