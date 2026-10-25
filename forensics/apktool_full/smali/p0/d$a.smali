.class Lp0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp0/d;->k(Lp0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lp0/c;

.field final synthetic c:Lp0/d;


# direct methods
.method constructor <init>(Lp0/d;Lp0/c;)V
    .locals 0

    iput-object p1, p0, Lp0/d$a;->c:Lp0/d;

    iput-object p2, p0, Lp0/d$a;->b:Lp0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lp0/d$a;->c:Lp0/d;

    iget-object v1, p0, Lp0/d$a;->b:Lp0/c;

    invoke-static {v0, v1}, Lp0/d;->b(Lp0/d;Lp0/c;)V

    return-void
.end method
