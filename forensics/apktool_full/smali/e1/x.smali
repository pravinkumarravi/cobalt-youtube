.class final Le1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/c$b;


# instance fields
.field private final synthetic a:Ld1/i;


# direct methods
.method constructor <init>(Ld1/i;)V
    .locals 0

    iput-object p1, p0, Le1/x;->a:Ld1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lb1/a;)V
    .locals 1

    iget-object v0, p0, Le1/x;->a:Ld1/i;

    invoke-interface {v0, p1}, Ld1/i;->c(Lb1/a;)V

    return-void
.end method
