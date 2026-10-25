.class public final synthetic Lt1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldev/cobalt/app/MainActivity;


# direct methods
.method public synthetic constructor <init>(Ldev/cobalt/app/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/m;->b:Ldev/cobalt/app/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lt1/m;->b:Ldev/cobalt/app/MainActivity;

    invoke-static {v0}, Ldev/cobalt/app/MainActivity;->k0(Ldev/cobalt/app/MainActivity;)V

    return-void
.end method
