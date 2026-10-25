.class final Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;->a:Z

    iput-object p2, p0, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;->b:Ljava/lang/Runnable;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private native nativeDateTimeConfigurationChanged()V
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;->a:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    const-string p1, "starboard"

    packed-switch v1, :pswitch_data_0

    const-string p2, "Unknown intent."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :pswitch_0
    iget-boolean p2, p0, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;->a:Z

    if-nez p2, :cond_5

    const-string p2, "System Date or Time have changed."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;->nativeDateTimeConfigurationChanged()V

    goto :goto_1

    :pswitch_1
    iget-boolean p2, p0, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;->a:Z

    if-eqz p2, :cond_4

    const-string p2, "System locale changed while in foreground (handled via configChanges)."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lv1/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_4
    const-string p2, "System locale settings have changed while in background."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lv1/f;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Ldev/cobalt/coat/CobaltSystemConfigChangeReceiver;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x122164c -> :sswitch_3
        0x1df32313 -> :sswitch_2
        0x1e1f7f95 -> :sswitch_1
        0x3e117848 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
