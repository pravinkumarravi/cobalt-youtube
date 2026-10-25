.class public final Lq1/l;
.super Lf1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lq1/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Lb1/a;

.field private final d:Le1/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/k;

    invoke-direct {v0}, Lq1/k;-><init>()V

    sput-object v0, Lq1/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance p1, Lb1/a;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lb1/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1, v1}, Lq1/l;-><init>(Lb1/a;Le1/t;)V

    return-void
.end method

.method constructor <init>(ILb1/a;Le1/t;)V
    .locals 0

    invoke-direct {p0}, Lf1/a;-><init>()V

    iput p1, p0, Lq1/l;->b:I

    iput-object p2, p0, Lq1/l;->c:Lb1/a;

    iput-object p3, p0, Lq1/l;->d:Le1/t;

    return-void
.end method

.method private constructor <init>(Lb1/a;Le1/t;)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lq1/l;-><init>(ILb1/a;Le1/t;)V

    return-void
.end method


# virtual methods
.method public final c()Lb1/a;
    .locals 1

    iget-object v0, p0, Lq1/l;->c:Lb1/a;

    return-object v0
.end method

.method public final e()Le1/t;
    .locals 1

    iget-object v0, p0, Lq1/l;->d:Le1/t;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lf1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lq1/l;->b:I

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lq1/l;->c:Lb1/a;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lf1/c;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lq1/l;->d:Le1/t;

    invoke-static {p1, v1, v2, p2, v3}, Lf1/c;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lf1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
