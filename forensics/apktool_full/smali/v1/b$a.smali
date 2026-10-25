.class Lv1/b$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv1/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lv1/b;


# direct methods
.method constructor <init>(Lv1/b;)V
    .locals 0

    iput-object p1, p0, Lv1/b$a;->a:Lv1/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lv1/b$a;->a:Lv1/b;

    invoke-static {p1, p2}, Lv1/b;->a(Lv1/b;Landroid/content/Intent;)V

    return-void
.end method
