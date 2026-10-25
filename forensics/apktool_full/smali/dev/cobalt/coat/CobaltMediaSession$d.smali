.class Ldev/cobalt/coat/CobaltMediaSession$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltMediaSession;->A(IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:F

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:[Ldev/cobalt/coat/MediaImage;

.field final synthetic j:J

.field final synthetic k:Ldev/cobalt/coat/CobaltMediaSession;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltMediaSession;IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->k:Ldev/cobalt/coat/CobaltMediaSession;

    iput p2, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->b:I

    iput-wide p3, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->c:J

    iput-wide p5, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->d:J

    iput p7, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->e:F

    iput-object p8, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->f:Ljava/lang/String;

    iput-object p9, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->g:Ljava/lang/String;

    iput-object p10, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->h:Ljava/lang/String;

    iput-object p11, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->i:[Ldev/cobalt/coat/MediaImage;

    iput-wide p12, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->j:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->k:Ldev/cobalt/coat/CobaltMediaSession;

    iget v1, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->b:I

    iget-wide v2, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->c:J

    iget-wide v4, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->d:J

    iget v6, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->e:F

    iget-object v7, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->f:Ljava/lang/String;

    iget-object v8, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->g:Ljava/lang/String;

    iget-object v9, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->h:Ljava/lang/String;

    iget-object v10, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->i:[Ldev/cobalt/coat/MediaImage;

    iget-wide v11, p0, Ldev/cobalt/coat/CobaltMediaSession$d;->j:J

    invoke-static/range {v0 .. v12}, Ldev/cobalt/coat/CobaltMediaSession;->l(Ldev/cobalt/coat/CobaltMediaSession;IJJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ldev/cobalt/coat/MediaImage;J)V

    return-void
.end method
