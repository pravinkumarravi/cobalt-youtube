.class public final Le1/d0;
.super Lf1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le1/d0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Landroid/os/Bundle;

.field c:[Lb1/c;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le1/e0;

    invoke-direct {v0}, Le1/e0;-><init>()V

    sput-object v0, Le1/d0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf1/a;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;[Lb1/c;I)V
    .locals 0

    invoke-direct {p0}, Lf1/a;-><init>()V

    iput-object p1, p0, Le1/d0;->b:Landroid/os/Bundle;

    iput-object p2, p0, Le1/d0;->c:[Lb1/c;

    iput p3, p0, Le1/d0;->d:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lf1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Le1/d0;->b:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lf1/c;->d(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Le1/d0;->c:[Lb1/c;

    invoke-static {p1, v1, v2, p2, v3}, Lf1/c;->j(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget v1, p0, Le1/d0;->d:I

    invoke-static {p1, p2, v1}, Lf1/c;->f(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lf1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
