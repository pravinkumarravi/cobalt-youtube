.class public Ldev/cobalt/coat/CobaltMediaSession$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/coat/CobaltMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;

.field public e:J

.field final synthetic f:Ldev/cobalt/coat/CobaltMediaSession;


# direct methods
.method public constructor <init>(Ldev/cobalt/coat/CobaltMediaSession;)V
    .locals 2

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->f:Ldev/cobalt/coat/CobaltMediaSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->a:Ljava/lang/String;

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->b:Ljava/lang/String;

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->d:Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->e:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->a:Ljava/lang/String;

    iput-object p2, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->b:Ljava/lang/String;

    iput-object p3, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->c:Ljava/lang/String;

    iput-object p4, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->d:Landroid/graphics/Bitmap;

    iput-wide p5, p0, Ldev/cobalt/coat/CobaltMediaSession$e;->e:J

    return-void
.end method
