.class public final Lz0/u;
.super Lm1/d;
.source "SourceFile"

# interfaces
.implements Lz0/v;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Lm1/d;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final g0(Lz0/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1

    invoke-virtual {p0}, Lm1/d;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lm1/e;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lm1/e;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x67

    invoke-virtual {p0, p1, v0}, Lm1/d;->f(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final u0(Lz0/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1

    invoke-virtual {p0}, Lm1/d;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lm1/e;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lm1/e;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Lm1/d;->f(ILandroid/os/Parcel;)V

    return-void
.end method
