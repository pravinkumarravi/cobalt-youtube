.class Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltTextToSpeechHelper;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltTextToSpeechHelper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    iput p2, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;->b:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextToSpeech.onInit failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "starboard"

    invoke-static {v2, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    sget-object v1, Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;->d:Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->d(Ldev/cobalt/coat/CobaltTextToSpeechHelper;Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;)Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

    return-void

    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    sget-object v1, Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->d(Ldev/cobalt/coat/CobaltTextToSpeechHelper;Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;)Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->e(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-virtual {v2, v1}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->speak(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$b;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->e(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
