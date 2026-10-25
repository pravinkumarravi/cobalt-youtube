.class public Le1/s;
.super Lf1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le1/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Landroid/accounts/Account;

.field private final d:I

.field private final e:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le1/b0;

    invoke-direct {v0}, Le1/b0;-><init>()V

    sput-object v0, Le1/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    invoke-direct {p0}, Lf1/a;-><init>()V

    iput p1, p0, Le1/s;->b:I

    iput-object p2, p0, Le1/s;->c:Landroid/accounts/Account;

    iput p3, p0, Le1/s;->d:I

    iput-object p4, p0, Le1/s;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Le1/s;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Le1/s;->d:I

    return v0
.end method

.method public d()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Le1/s;->c:Landroid/accounts/Account;

    return-object v0
.end method

.method public e()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    iget-object v0, p0, Le1/s;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lf1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Le1/s;->b:I

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Le1/s;->d()Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lf1/c;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Le1/s;->c()I

    move-result v2

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Le1/s;->e()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lf1/c;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lf1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
