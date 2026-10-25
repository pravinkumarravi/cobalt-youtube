.class public final Lq1/j;
.super Lf1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lq1/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Le1/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/i;

    invoke-direct {v0}, Lq1/i;-><init>()V

    sput-object v0, Lq1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILe1/s;)V
    .locals 0

    invoke-direct {p0}, Lf1/a;-><init>()V

    iput p1, p0, Lq1/j;->b:I

    iput-object p2, p0, Lq1/j;->c:Le1/s;

    return-void
.end method

.method public constructor <init>(Le1/s;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lq1/j;-><init>(ILe1/s;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lf1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lq1/j;->b:I

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lq1/j;->c:Le1/s;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lf1/c;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lf1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
