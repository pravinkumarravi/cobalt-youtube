.class public Le1/g;
.super Lf1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le1/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:I

.field private d:I

.field e:Ljava/lang/String;

.field f:Landroid/os/IBinder;

.field g:[Lcom/google/android/gms/common/api/Scope;

.field h:Landroid/os/Bundle;

.field i:Landroid/accounts/Account;

.field j:[Lb1/c;

.field k:[Lb1/c;

.field private l:Z

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le1/f0;

    invoke-direct {v0}, Le1/f0;-><init>()V

    sput-object v0, Le1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lf1/a;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Le1/g;->b:I

    sget v0, Lb1/i;->a:I

    iput v0, p0, Le1/g;->d:I

    iput p1, p0, Le1/g;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Le1/g;->l:Z

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lb1/c;[Lb1/c;ZI)V
    .locals 0

    invoke-direct {p0}, Lf1/a;-><init>()V

    iput p1, p0, Le1/g;->b:I

    iput p2, p0, Le1/g;->c:I

    iput p3, p0, Le1/g;->d:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p2, p0, Le1/g;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Le1/g;->e:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    if-eqz p5, :cond_1

    invoke-static {p5}, Le1/l$a;->f(Landroid/os/IBinder;)Le1/l;

    move-result-object p1

    invoke-static {p1}, Le1/a;->j(Le1/l;)Landroid/accounts/Account;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Le1/g;->i:Landroid/accounts/Account;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Le1/g;->f:Landroid/os/IBinder;

    iput-object p8, p0, Le1/g;->i:Landroid/accounts/Account;

    :goto_2
    iput-object p6, p0, Le1/g;->g:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Le1/g;->h:Landroid/os/Bundle;

    iput-object p9, p0, Le1/g;->j:[Lb1/c;

    iput-object p10, p0, Le1/g;->k:[Lb1/c;

    iput-boolean p11, p0, Le1/g;->l:Z

    iput p12, p0, Le1/g;->m:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lf1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Le1/g;->b:I

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Le1/g;->c:I

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget v2, p0, Le1/g;->d:I

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    iget-object v1, p0, Le1/g;->e:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lf1/c;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-object v2, p0, Le1/g;->f:Landroid/os/IBinder;

    invoke-static {p1, v1, v2, v3}, Lf1/c;->e(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Le1/g;->g:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2, v3}, Lf1/c;->j(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Le1/g;->h:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v3}, Lf1/c;->d(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Le1/g;->i:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2, v3}, Lf1/c;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Le1/g;->j:[Lb1/c;

    invoke-static {p1, v1, v2, p2, v3}, Lf1/c;->j(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Le1/g;->k:[Lb1/c;

    invoke-static {p1, v1, v2, p2, v3}, Lf1/c;->j(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 p2, 0xc

    iget-boolean v1, p0, Le1/g;->l:Z

    invoke-static {p1, p2, v1}, Lf1/c;->c(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xd

    iget v1, p0, Le1/g;->m:I

    invoke-static {p1, p2, v1}, Lf1/c;->f(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lf1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
