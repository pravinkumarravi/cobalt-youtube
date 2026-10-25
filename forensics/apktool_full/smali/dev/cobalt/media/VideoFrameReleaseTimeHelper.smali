.class public final Ldev/cobalt/media/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;
    }
.end annotation

.annotation build Ldev/cobalt/util/UsedByNative;
.end annotation


# instance fields
.field private final a:Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;

.field private final b:Z

.field private final c:J

.field private final d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:D

.field private i:Z

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->f()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;-><init>(D)V

    return-void
.end method

.method private constructor <init>(D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;->d()Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->a:Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    double-to-long p1, v0

    iput-wide p1, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->c:J

    const-wide/16 v0, 0x50

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->a:Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->c:J

    :goto_1
    iput-wide p1, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->d:J

    iget-wide p1, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->c:J

    iput-wide p1, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->n:J

    iget-wide p1, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->d:J

    iput-wide p1, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->m:J

    return-void
.end method

.method private static a(JJJ)J
    .locals 4

    sub-long v0, p0, p2

    div-long/2addr v0, p4

    mul-long/2addr v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    sub-long p4, p2, p4

    goto :goto_0

    :cond_0
    add-long/2addr p4, p2

    move-wide v2, p2

    move-wide p2, p4

    move-wide p4, v2

    :goto_0
    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide p2, p4

    :goto_1
    return-wide p2
.end method

.method private b(JJD)Z
    .locals 2

    iget-wide v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->k:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->j:J

    sub-long/2addr p3, v0

    long-to-double p3, p3

    long-to-double p1, p1

    div-double/2addr p1, p5

    sub-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p3, 0x417312d000000000L    # 2.0E7

    cmpl-double p1, p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public adjustReleaseTime(JJD)J
    .locals 23
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    const-wide/16 v0, 0x0

    cmpl-double v0, v12, v0

    if-nez v0, :cond_0

    return-wide v10

    :cond_0
    iget-wide v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->h:D

    cmpl-double v0, v12, v0

    const/4 v14, 0x0

    if-eqz v0, :cond_1

    iput-boolean v14, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->i:Z

    iput-wide v12, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->h:D

    :cond_1
    const-wide/16 v15, 0x3e8

    mul-long v5, v8, v15

    iget-boolean v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->i:Z

    const-wide/16 v17, 0x1

    if-eqz v0, :cond_5

    iget-wide v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->e:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2

    iget-wide v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->l:J

    add-long v0, v0, v17

    iput-wide v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->l:J

    iget-wide v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->g:J

    iput-wide v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->f:J

    :cond_2
    iget-wide v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->l:J

    const-wide/16 v2, 0x6

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    iget-wide v2, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->k:J

    sub-long v2, v5, v2

    div-long/2addr v2, v0

    iget-wide v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->f:J

    add-long v19, v0, v2

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide/from16 v3, p3

    move-wide/from16 v21, v5

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->b(JJD)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v14, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->i:Z

    move-wide v0, v10

    move-wide/from16 v5, v21

    goto :goto_0

    :cond_3
    iget-wide v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->j:J

    iget-wide v2, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->k:J

    sub-long v2, v19, v2

    long-to-double v2, v2

    div-double/2addr v2, v12

    double-to-long v2, v2

    add-long/2addr v0, v2

    move-wide/from16 v5, v19

    :goto_0
    move-wide v1, v0

    move-wide v12, v5

    goto :goto_2

    :cond_4
    move-wide/from16 v21, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->b(JJD)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v14, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->i:Z

    goto :goto_1

    :cond_5
    move-wide/from16 v21, v5

    :cond_6
    :goto_1
    move-wide v1, v10

    move-wide/from16 v12, v21

    :goto_2
    iget-boolean v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->i:Z

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-nez v0, :cond_7

    move-wide/from16 v14, v21

    iput-wide v14, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->k:J

    iput-wide v10, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->j:J

    iput-wide v4, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->l:J

    iput-boolean v3, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->i:Z

    invoke-virtual/range {p0 .. p0}, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->c()V

    :cond_7
    iget-object v6, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->a:Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;

    if-eqz v6, :cond_c

    iget-wide v10, v6, Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;->a:J

    cmp-long v4, v10, v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_b

    iget-wide v4, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->e:J

    sub-long v4, v8, v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    const-wide/16 v10, 0x10

    cmp-long v6, v4, v10

    if-lez v6, :cond_b

    const-wide/16 v10, 0x64

    cmp-long v6, v4, v10

    if-gez v6, :cond_b

    const-wide/16 v14, 0x14

    rem-long/2addr v4, v14

    cmp-long v4, v4, v17

    if-gez v4, :cond_9

    move v14, v3

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_a

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    goto :goto_4

    :cond_a
    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    :goto_4
    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double v3, v5, v3

    double-to-long v3, v3

    iget-wide v14, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->n:J

    sub-long/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v14, 0x2dc6c0

    cmp-long v0, v3, v14

    if-lez v0, :cond_b

    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->f()D

    move-result-wide v3

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v0, v3, v14

    if-eqz v0, :cond_b

    div-double/2addr v5, v3

    double-to-long v3, v5

    iput-wide v3, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->n:J

    const-wide/16 v5, 0x50

    mul-long/2addr v3, v5

    div-long/2addr v3, v10

    iput-wide v3, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->m:J

    :cond_b
    iget-object v0, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->a:Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;

    iget-wide v3, v0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;->a:J

    iget-wide v5, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->n:J

    invoke-static/range {v1 .. v6}, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->a(JJJ)J

    move-result-wide v0

    iput-wide v8, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->e:J

    iput-wide v12, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->g:J

    iget-wide v2, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->m:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_c
    :goto_5
    iput-wide v8, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->e:J

    iput-wide v12, v7, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->g:J

    return-wide v1
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public disable()V
    .locals 1
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    iget-boolean v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->a:Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;

    invoke-virtual {v0}, Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;->e()V

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 2
    .annotation build Ldev/cobalt/util/UsedByNative;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->i:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->h:D

    iget-boolean v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/media/VideoFrameReleaseTimeHelper;->a:Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;

    invoke-virtual {v0}, Ldev/cobalt/media/VideoFrameReleaseTimeHelper$a;->a()V

    :cond_0
    return-void
.end method
