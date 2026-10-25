.class Ldev/cobalt/coat/o$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/coat/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:[I

.field private d:[I

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field private f:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldev/cobalt/coat/o$c;->b:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Ldev/cobalt/coat/o$c;->c:[I

    new-array v0, v0, [I

    iput-object v0, p0, Ldev/cobalt/coat/o$c;->d:[I

    return-void
.end method

.method synthetic constructor <init>(Ldev/cobalt/coat/o$a;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/o$c;-><init>()V

    return-void
.end method

.method static synthetic a(Ldev/cobalt/coat/o$c;)I
    .locals 0

    iget p0, p0, Ldev/cobalt/coat/o$c;->a:I

    return p0
.end method

.method static synthetic b(Ldev/cobalt/coat/o$c;I)I
    .locals 0

    iput p1, p0, Ldev/cobalt/coat/o$c;->a:I

    return p1
.end method

.method static synthetic c(Ldev/cobalt/coat/o$c;)I
    .locals 0

    iget p0, p0, Ldev/cobalt/coat/o$c;->b:I

    return p0
.end method

.method static synthetic d(Ldev/cobalt/coat/o$c;)I
    .locals 2

    iget v0, p0, Ldev/cobalt/coat/o$c;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldev/cobalt/coat/o$c;->b:I

    return v0
.end method

.method static synthetic e(Ldev/cobalt/coat/o$c;)[I
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/o$c;->c:[I

    return-object p0
.end method

.method static synthetic f(Ldev/cobalt/coat/o$c;)[I
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/o$c;->d:[I

    return-object p0
.end method

.method static synthetic g(Ldev/cobalt/coat/o$c;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/o$c;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic h(Ldev/cobalt/coat/o$c;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/o$c;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic i(Ldev/cobalt/coat/o$c;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/o$c;->f:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic j(Ldev/cobalt/coat/o$c;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/o$c;->f:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method
