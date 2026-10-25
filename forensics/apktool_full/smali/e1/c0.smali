.class public final Le1/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Le1/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1}, Lf1/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v7, v4

    move v8, v7

    move-object v5, v2

    move-object v6, v5

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_5

    invoke-static {p1}, Lf1/b;->i(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Lf1/b;->g(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-static {p1, v1}, Lf1/b;->n(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lf1/b;->h(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lf1/b;->h(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_0

    :cond_2
    sget-object v2, Lb1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Lf1/b;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lb1/a;

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lf1/b;->j(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Lf1/b;->k(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :cond_5
    invoke-static {p1, v0}, Lf1/b;->f(Landroid/os/Parcel;I)V

    new-instance p1, Le1/t;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le1/t;-><init>(ILandroid/os/IBinder;Lb1/a;ZZ)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Le1/t;

    return-object p1
.end method
