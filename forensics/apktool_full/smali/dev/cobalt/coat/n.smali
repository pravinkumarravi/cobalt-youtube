.class public final synthetic Ldev/cobalt/coat/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldev/cobalt/coat/CobaltMediaSession;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ldev/cobalt/coat/CobaltMediaSession;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/cobalt/coat/n;->b:Ldev/cobalt/coat/CobaltMediaSession;

    iput-wide p2, p0, Ldev/cobalt/coat/n;->c:J

    iput p4, p0, Ldev/cobalt/coat/n;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ldev/cobalt/coat/n;->b:Ldev/cobalt/coat/CobaltMediaSession;

    iget-wide v1, p0, Ldev/cobalt/coat/n;->c:J

    iget v3, p0, Ldev/cobalt/coat/n;->d:I

    invoke-static {v0, v1, v2, v3}, Ldev/cobalt/coat/CobaltMediaSession;->b(Ldev/cobalt/coat/CobaltMediaSession;JI)V

    return-void
.end method
