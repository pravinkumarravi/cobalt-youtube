.class public Lq1/a;
.super Le1/h;
.source "SourceFile"

# interfaces
.implements Lp1/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le1/h<",
        "Lq1/f;",
        ">;",
        "Lp1/d;"
    }
.end annotation


# instance fields
.field private final G:Z

.field private final H:Le1/d;

.field private final I:Landroid/os/Bundle;

.field private J:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLe1/d;Landroid/os/Bundle;Lc1/f$a;Lc1/f$b;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Le1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILe1/d;Lc1/f$a;Lc1/f$b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq1/a;->G:Z

    iput-object p4, p0, Lq1/a;->H:Le1/d;

    iput-object p5, p0, Lq1/a;->I:Landroid/os/Bundle;

    invoke-virtual {p4}, Le1/d;->f()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lq1/a;->J:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLe1/d;Lp1/a;Lc1/f$a;Lc1/f$b;)V
    .locals 8

    const/4 v3, 0x1

    invoke-static {p4}, Lq1/a;->k0(Le1/d;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lq1/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLe1/d;Landroid/os/Bundle;Lc1/f$a;Lc1/f$b;)V

    return-void
.end method

.method public static k0(Le1/d;)Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Le1/d;->j()Lp1/a;

    move-result-object v0

    invoke-virtual {p0}, Le1/d;->f()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {p0}, Le1/d;->a()Landroid/accounts/Account;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    const-string p0, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_2

    const-string p0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v0}, Lp1/a;->j()Z

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v0}, Lp1/a;->i()Z

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v0}, Lp1/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v1, 0x1

    invoke-virtual {v2, p0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v0}, Lp1/a;->h()Z

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v0}, Lp1/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v0}, Lp1/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v0}, Lp1/a;->k()Z

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lp1/a;->a()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lp1/a;->a()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string p0, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {v0}, Lp1/a;->f()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lp1/a;->f()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p0, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    return-object v2
.end method


# virtual methods
.method protected A()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public f()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final j(Lq1/d;)V
    .locals 4

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Le1/r;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lq1/a;->H:Le1/d;

    invoke-virtual {v0}, Le1/d;->c()Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "<<default account>>"

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Le1/c;->u()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lz0/c;->b(Landroid/content/Context;)Lz0/c;

    move-result-object v1

    invoke-virtual {v1}, Lz0/c;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Le1/s;

    iget-object v3, p0, Lq1/a;->J:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Le1/s;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Le1/c;->y()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lq1/f;

    new-instance v1, Lq1/j;

    invoke-direct {v1, v2}, Lq1/j;-><init>(Le1/s;)V

    invoke-interface {v0, v1, p1}, Lq1/f;->A(Lq1/j;Lq1/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Remote service probably died when signIn is called"

    const-string v2, "SignInClientImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lq1/l;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lq1/l;-><init>(I)V

    invoke-interface {p1, v1}, Lq1/d;->b0(Lq1/l;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v2, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final l()V
    .locals 1

    new-instance v0, Le1/c$d;

    invoke-direct {v0, p0}, Le1/c$d;-><init>(Le1/c;)V

    invoke-virtual {p0, v0}, Le1/c;->e(Le1/c$c;)V

    return-void
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lq1/a;->G:Z

    return v0
.end method

.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lq1/f;

    if-eqz v1, :cond_1

    check-cast v0, Lq1/f;

    return-object v0

    :cond_1
    new-instance v0, Lq1/h;

    invoke-direct {v0, p1}, Lq1/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected v()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lq1/a;->H:Le1/d;

    invoke-virtual {v0}, Le1/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Le1/c;->u()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lq1/a;->I:Landroid/os/Bundle;

    iget-object v1, p0, Lq1/a;->H:Le1/d;

    invoke-virtual {v1}, Le1/d;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lq1/a;->I:Landroid/os/Bundle;

    return-object v0
.end method

.method protected z()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method
