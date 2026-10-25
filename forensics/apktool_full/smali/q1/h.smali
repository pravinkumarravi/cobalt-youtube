.class public final Lq1/h;
.super Ln1/b;
.source "SourceFile"

# interfaces
.implements Lq1/f;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Ln1/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Lq1/j;Lq1/d;)V
    .locals 1

    invoke-virtual {p0}, Ln1/b;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Ln1/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Ln1/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Ln1/b;->f(ILandroid/os/Parcel;)V

    return-void
.end method
