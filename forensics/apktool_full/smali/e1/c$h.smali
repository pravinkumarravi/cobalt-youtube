.class final Le1/c$h;
.super Lo1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "h"
.end annotation


# instance fields
.field private final synthetic a:Le1/c;


# direct methods
.method public constructor <init>(Le1/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-direct {p0, p2}, Lo1/d;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static a(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Le1/c$g;

    invoke-virtual {p0}, Le1/c$g;->d()V

    invoke-virtual {p0}, Le1/c$g;->b()V

    return-void
.end method

.method private static b(Landroid/os/Message;)Z
    .locals 2

    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    iget-object v0, v0, Le1/c;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Le1/c$h;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Le1/c$h;->a(Landroid/os/Message;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v2, :cond_3

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    invoke-virtual {v0}, Le1/c;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    invoke-virtual {v0}, Le1/c;->g()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Le1/c$h;->a(Landroid/os/Message;)V

    return-void

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    new-instance v1, Lb1/a;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Lb1/a;-><init>(I)V

    invoke-static {v0, v1}, Le1/c;->K(Le1/c;Lb1/a;)Lb1/a;

    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-static {p1}, Le1/c;->W(Le1/c;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-static {p1}, Le1/c;->X(Le1/c;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-static {p1, v5, v6}, Le1/c;->Q(Le1/c;ILandroid/os/IInterface;)V

    return-void

    :cond_5
    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-static {p1}, Le1/c;->Y(Le1/c;)Lb1/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-static {p1}, Le1/c;->Y(Le1/c;)Lb1/a;

    move-result-object p1

    goto :goto_0

    :cond_6
    new-instance p1, Lb1/a;

    invoke-direct {p1, v4}, Lb1/a;-><init>(I)V

    :goto_0
    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    iget-object v0, v0, Le1/c;->o:Le1/c$c;

    invoke-interface {v0, p1}, Le1/c$c;->b(Lb1/a;)V

    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    invoke-virtual {v0, p1}, Le1/c;->E(Lb1/a;)V

    return-void

    :cond_7
    if-ne v0, v3, :cond_9

    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-static {p1}, Le1/c;->Y(Le1/c;)Lb1/a;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-static {p1}, Le1/c;->Y(Le1/c;)Lb1/a;

    move-result-object p1

    goto :goto_1

    :cond_8
    new-instance p1, Lb1/a;

    invoke-direct {p1, v4}, Lb1/a;-><init>(I)V

    :goto_1
    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    iget-object v0, v0, Le1/c;->o:Le1/c$c;

    invoke-interface {v0, p1}, Le1/c$c;->b(Lb1/a;)V

    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    invoke-virtual {v0, p1}, Le1/c;->E(Lb1/a;)V

    return-void

    :cond_9
    if-ne v0, v5, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_a

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    :cond_a
    new-instance v0, Lb1/a;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v6}, Lb1/a;-><init>(ILandroid/app/PendingIntent;)V

    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    iget-object p1, p1, Le1/c;->o:Le1/c$c;

    invoke-interface {p1, v0}, Le1/c$c;->b(Lb1/a;)V

    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-virtual {p1, v0}, Le1/c;->E(Lb1/a;)V

    return-void

    :cond_b
    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    invoke-static {v0, v3, v6}, Le1/c;->Q(Le1/c;ILandroid/os/IInterface;)V

    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    invoke-static {v0}, Le1/c;->Z(Le1/c;)Le1/c$a;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    invoke-static {v0}, Le1/c;->Z(Le1/c;)Le1/c$a;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Le1/c$a;->f(I)V

    :cond_c
    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Le1/c;->F(I)V

    iget-object p1, p0, Le1/c$h;->a:Le1/c;

    invoke-static {p1, v3, v2, v6}, Le1/c;->U(Le1/c;IILandroid/os/IInterface;)Z

    return-void

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Le1/c$h;->a:Le1/c;

    invoke-virtual {v0}, Le1/c;->a()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Le1/c$h;->a(Landroid/os/Message;)V

    return-void

    :cond_e
    invoke-static {p1}, Le1/c$h;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le1/c$g;

    invoke-virtual {p1}, Le1/c$g;->e()V

    return-void

    :cond_f
    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Don\'t know how to handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
