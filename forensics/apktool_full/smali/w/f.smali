.class public final Lw/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/f$a;,
        Lw/f$c;,
        Lw/f$b;
    }
.end annotation


# instance fields
.field private final a:Lw/f$b;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "textView cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/f;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance p2, Lw/f$c;

    invoke-direct {p2, p1}, Lw/f$c;-><init>(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lw/f$a;

    invoke-direct {p2, p1}, Lw/f$a;-><init>(Landroid/widget/TextView;)V

    :goto_0
    iput-object p2, p0, Lw/f;->a:Lw/f$b;

    return-void
.end method


# virtual methods
.method public a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Lw/f;->a:Lw/f$b;

    invoke-virtual {v0, p1}, Lw/f$b;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lw/f;->a:Lw/f$b;

    invoke-virtual {v0, p1}, Lw/f$b;->b(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lw/f;->a:Lw/f$b;

    invoke-virtual {v0, p1}, Lw/f$b;->c(Z)V

    return-void
.end method
