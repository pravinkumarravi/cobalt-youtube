.class public Le1/t;
.super Lf1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le1/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private c:Landroid/os/IBinder;

.field private d:Lb1/a;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le1/c0;

    invoke-direct {v0}, Le1/c0;-><init>()V

    sput-object v0, Le1/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lb1/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Lf1/a;-><init>()V

    iput p1, p0, Le1/t;->b:I

    iput-object p2, p0, Le1/t;->c:Landroid/os/IBinder;

    iput-object p3, p0, Le1/t;->d:Lb1/a;

    iput-boolean p4, p0, Le1/t;->e:Z

    iput-boolean p5, p0, Le1/t;->f:Z

    return-void
.end method


# virtual methods
.method public c()Le1/l;
    .locals 1

    iget-object v0, p0, Le1/t;->c:Landroid/os/IBinder;

    invoke-static {v0}, Le1/l$a;->f(Landroid/os/IBinder;)Le1/l;

    move-result-object v0

    return-object v0
.end method

.method public e()Lb1/a;
    .locals 1

    iget-object v0, p0, Le1/t;->d:Lb1/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le1/t;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le1/t;

    iget-object v1, p0, Le1/t;->d:Lb1/a;

    iget-object v3, p1, Le1/t;->d:Lb1/a;

    invoke-virtual {v1, v3}, Lb1/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Le1/t;->c()Le1/l;

    move-result-object v1

    invoke-virtual {p1}, Le1/t;->c()Le1/l;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Le1/t;->e:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Le1/t;->f:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lf1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Le1/t;->b:I

    invoke-static {p1, v1, v2}, Lf1/c;->f(Landroid/os/Parcel;II)V

    iget-object v1, p0, Le1/t;->c:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lf1/c;->e(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Le1/t;->e()Lb1/a;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lf1/c;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    invoke-virtual {p0}, Le1/t;->f()Z

    move-result v1

    invoke-static {p1, p2, v1}, Lf1/c;->c(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    invoke-virtual {p0}, Le1/t;->g()Z

    move-result v1

    invoke-static {p1, p2, v1}, Lf1/c;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lf1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
