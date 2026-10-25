.class final Ld1/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ld1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lb1/c;


# direct methods
.method private constructor <init>(Ld1/b;Lb1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/b<",
            "*>;",
            "Lb1/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/e$c;->a:Ld1/b;

    iput-object p2, p0, Ld1/e$c;->b:Lb1/c;

    return-void
.end method

.method synthetic constructor <init>(Ld1/b;Lb1/c;Ld1/r;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld1/e$c;-><init>(Ld1/b;Lb1/c;)V

    return-void
.end method

.method static synthetic a(Ld1/e$c;)Ld1/b;
    .locals 0

    iget-object p0, p0, Ld1/e$c;->a:Ld1/b;

    return-object p0
.end method

.method static synthetic b(Ld1/e$c;)Lb1/c;
    .locals 0

    iget-object p0, p0, Ld1/e$c;->b:Lb1/c;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Ld1/e$c;

    if-eqz v1, :cond_0

    check-cast p1, Ld1/e$c;

    iget-object v1, p0, Ld1/e$c;->a:Ld1/b;

    iget-object v2, p1, Ld1/e$c;->a:Ld1/b;

    invoke-static {v1, v2}, Le1/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld1/e$c;->b:Lb1/c;

    iget-object p1, p1, Ld1/e$c;->b:Lb1/c;

    invoke-static {v1, p1}, Le1/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ld1/e$c;->a:Ld1/b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ld1/e$c;->b:Lb1/c;

    aput-object v2, v0, v1

    invoke-static {v0}, Le1/p;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Le1/p;->c(Ljava/lang/Object;)Le1/p$a;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Ld1/e$c;->a:Ld1/b;

    invoke-virtual {v0, v1, v2}, Le1/p$a;->a(Ljava/lang/String;Ljava/lang/Object;)Le1/p$a;

    move-result-object v0

    const-string v1, "feature"

    iget-object v2, p0, Ld1/e$c;->b:Lb1/c;

    invoke-virtual {v0, v1, v2}, Le1/p$a;->a(Ljava/lang/String;Ljava/lang/Object;)Le1/p$a;

    move-result-object v0

    invoke-virtual {v0}, Le1/p$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
