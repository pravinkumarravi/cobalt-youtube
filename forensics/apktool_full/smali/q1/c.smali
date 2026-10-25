.class public final Lq1/c;
.super Lf1/a;
.source "SourceFile"

# interfaces
.implements Lc1/k;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lq1/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private c:I

.field private d:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/b;

    invoke-direct {v0}, Lq1/b;-><init>()V

    sput-object v0, Lq1/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lq1/c;-><init>(ILandroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lf1/a;-><init>()V

    iput p1, p0, Lq1/c;->b:I

    iput p2, p0, Lq1/c;->c:I

    iput-object p3, p0, Lq1/c;->d:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lq1/c;-><init>(IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, Lq1/c;->c:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->j:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lf1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lq1/c;->b:I

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lq1/c;->c:I

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lq1/c;->d:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lf1/c;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lf1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
