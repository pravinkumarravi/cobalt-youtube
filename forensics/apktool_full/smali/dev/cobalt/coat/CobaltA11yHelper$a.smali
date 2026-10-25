.class Ldev/cobalt/coat/CobaltA11yHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltA11yHelper;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ldev/cobalt/coat/CobaltA11yHelper;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltA11yHelper;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltA11yHelper$a;->b:Ldev/cobalt/coat/CobaltA11yHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldev/cobalt/coat/CobaltA11yHelper$a;->b:Ldev/cobalt/coat/CobaltA11yHelper;

    const/4 v1, 0x5

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lu/a;->J(II)Z

    return-void
.end method
