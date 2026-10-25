.class Ldev/cobalt/coat/CobaltActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ldev/cobalt/coat/CobaltActivity;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltActivity;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltActivity$a;->b:Ldev/cobalt/coat/CobaltActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity$a;->b:Ldev/cobalt/coat/CobaltActivity;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltActivity;->S(Ldev/cobalt/coat/CobaltActivity;)V

    return-void
.end method
