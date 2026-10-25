.class public Lz0/a;
.super Lf1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz0/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private c:I

.field private d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz0/d;

    invoke-direct {v0}, Lz0/d;-><init>()V

    sput-object v0, Lz0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lf1/a;-><init>()V

    iput p1, p0, Lz0/a;->b:I

    iput p2, p0, Lz0/a;->c:I

    iput-object p3, p0, Lz0/a;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lz0/a;->c:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lf1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lz0/a;->b:I

    invoke-static {p1, v0, v1}, Lf1/c;->f(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lz0/a;->c()I

    move-result v1

    invoke-static {p1, v0, v1}, Lf1/c;->f(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lz0/a;->d:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lf1/c;->d(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-static {p1, p2}, Lf1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
