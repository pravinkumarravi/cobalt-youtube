.class public Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr0/a;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lr0/a;->c:I

    return-void
.end method

.method private b()J
    .locals 5

    iget v0, p0, Lr0/a;->b:I

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x3e8

    shl-long v0, v1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/32 v3, 0xdbba0

    if-lez v2, :cond_0

    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    :cond_0
    move-wide v0, v3

    :cond_1
    return-wide v0
.end method

.method private c()J
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-direct {p0}, Lr0/a;->b()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lr0/a;->c:I

    return v0
.end method

.method public d()J
    .locals 4

    iget-wide v0, p0, Lr0/a;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Z
    .locals 4

    invoke-virtual {p0}, Lr0/a;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 4

    invoke-direct {p0}, Lr0/a;->b()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lr0/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr0/a;->b:I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0}, Lr0/a;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lr0/a;->a:J

    const/16 v0, 0x14

    iput v0, p0, Lr0/a;->c:I

    return-void
.end method

.method public g()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lr0/a;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lr0/a;->a:J

    const/16 v0, 0xa

    iput v0, p0, Lr0/a;->c:I

    return-void
.end method
