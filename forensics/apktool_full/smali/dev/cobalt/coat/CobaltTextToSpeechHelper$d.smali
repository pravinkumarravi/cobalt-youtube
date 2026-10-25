.class Ldev/cobalt/coat/CobaltTextToSpeechHelper$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/cobalt/coat/CobaltTextToSpeechHelper;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ldev/cobalt/coat/CobaltTextToSpeechHelper;


# direct methods
.method constructor <init>(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$d;->b:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$d;->b:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->a(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$d;->b:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->a(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/CobaltTextToSpeechHelper$d;->b:Ldev/cobalt/coat/CobaltTextToSpeechHelper;

    invoke-static {v0}, Ldev/cobalt/coat/CobaltTextToSpeechHelper;->e(Ldev/cobalt/coat/CobaltTextToSpeechHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
