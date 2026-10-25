.class Ldev/cobalt/app/MainActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldev/cobalt/app/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/cobalt/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Ldev/cobalt/app/MainActivity;


# direct methods
.method private constructor <init>(Ldev/cobalt/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/app/MainActivity$d;->a:Ldev/cobalt/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/cobalt/app/MainActivity;Ldev/cobalt/app/MainActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/app/MainActivity$d;-><init>(Ldev/cobalt/app/MainActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ldev/cobalt/app/b;)V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/app/MainActivity$d;->a:Ldev/cobalt/app/MainActivity;

    invoke-static {v0, p1}, Ldev/cobalt/app/MainActivity;->p0(Ldev/cobalt/app/MainActivity;Ldev/cobalt/app/b;)V

    return-void
.end method
