.class public abstract Le1/l$a;
.super Lo1/a;
.source "SourceFile"

# interfaces
.implements Le1/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/l$a$a;
    }
.end annotation


# direct methods
.method public static f(Landroid/os/IBinder;)Le1/l;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Le1/l;

    if-eqz v1, :cond_1

    check-cast v0, Le1/l;

    return-object v0

    :cond_1
    new-instance v0, Le1/l$a$a;

    invoke-direct {v0, p0}, Le1/l$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
