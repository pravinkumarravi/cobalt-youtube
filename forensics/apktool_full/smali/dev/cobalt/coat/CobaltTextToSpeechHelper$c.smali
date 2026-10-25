.class Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltTextToSpeechHelper;->speak(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltTextToSpeechHelper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    iput-object p2, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->a(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v2}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->f(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->b(Ldev/cobalt/coat/CobaltTextToSpeechHelper;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    :cond_0
    sget-object v0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$e;->a:[I

    iget-object v1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v1}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->c(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Ldev/cobalt/coat/CobaltTextToSpeechHelper$f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->a(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v2, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->b:Ljava/lang/String;

    iget-object v3, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v3}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->g(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "starboard"

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextToSpeech.speak error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lv1/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_2
    invoke-static {}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "utterance: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lv1/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->c:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->e(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method
