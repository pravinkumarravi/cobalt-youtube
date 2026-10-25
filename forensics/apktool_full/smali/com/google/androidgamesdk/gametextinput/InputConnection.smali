.class public Lcom/google/androidgamesdk/gametextinput/InputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroidx/core/view/r0;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "gti.InputConnection"

.field private static final notInsertedKeyCodes:[I


# instance fields
.field private final dontInsertChars:Ljava/util/BitSet;

.field private final imm:Landroid/view/inputmethod/InputMethodManager;

.field private listener:Ls1/a;

.field private final mEditable:Landroid/text/Editable;

.field private mSoftKeyboardActive:Z

.field private final settings:Lcom/google/androidgamesdk/gametextinput/b;

.field private final targetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->notInsertedKeyCodes:[I

    return-void

    :array_0
    .array-data 4
        0x43
        0x70
        0x3b
        0x3c
        0x17
        0x14
        0x13
        0x15
        0x16
        0x10d
        0x10c
        0x10c
        0x10e
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/androidgamesdk/gametextinput/b;)V
    .locals 4

    iget-object v0, p3, Lcom/google/androidgamesdk/gametextinput/b;->a:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object p2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/b;

    const-string p3, "input_method"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->dontInsertChars:Ljava/util/BitSet;

    sget-object p1, Lcom/google/androidgamesdk/gametextinput/InputConnection;->notInsertedKeyCodes:[I

    array-length p3, p1

    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_1

    aget v2, p1, v0

    iget-object v3, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->dontInsertChars:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/view/q2;->a(Landroid/view/Window;Z)V

    invoke-static {p2, p0}, Landroidx/core/view/w0;->f0(Landroid/view/View;Landroidx/core/view/r0;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t get IMM"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getComposingRegion()Lcom/google/androidgamesdk/gametextinput/a$a;
    .locals 1

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lcom/google/androidgamesdk/gametextinput/a;->b(Landroid/text/Editable;)Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v0

    return-object v0
.end method

.method private final getSelection()Lcom/google/androidgamesdk/gametextinput/a$a;
    .locals 1

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lcom/google/androidgamesdk/gametextinput/a;->c(Landroid/text/Editable;)Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v0

    return-object v0
.end method

.method private final informIMM()V
    .locals 8

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    iget v5, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    iget v6, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    iget v7, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void
.end method

.method private processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const-string v0, "gti.InputConnection"

    const-string v1, "sendKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget v2, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    :cond_2
    iget v2, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    if-eq v2, v4, :cond_3

    iget-object v5, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v5, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_4

    iget v2, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    if-lez v2, :cond_4

    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x70

    if-ne v2, v4, :cond_5

    iget v2, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_5

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v2, v4, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->dontInsertChars:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget p1, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    add-int/2addr p1, v3

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0, p1, p1}, Lcom/google/androidgamesdk/gametextinput/a;->f(Landroid/text/Editable;II)V

    :cond_6
    invoke-direct {p0, v1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    return v3
.end method

.method private final setComposingRegionInternal(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {p1}, Lcom/google/androidgamesdk/gametextinput/a;->d(Landroid/text/Editable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/a;->e(Landroid/text/Editable;II)V

    :goto_0
    return-void
.end method

.method private final setSelectionInternal(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/a;->f(Landroid/text/Editable;II)V

    return-void
.end method

.method private final stateUpdated(Z)V
    .locals 9

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v1

    new-instance v8, Lcom/google/androidgamesdk/gametextinput/State;

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    iget v5, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    iget v6, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    iget v7, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/androidgamesdk/gametextinput/State;-><init>(Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Ls1/a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, v8, p1}, Ls1/a;->e(Lcom/google/androidgamesdk/gametextinput/State;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 2

    const-string v0, "gti.InputConnection"

    const-string v1, "closeConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", new pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->finishComposingText()Z

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->informIMM()V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSurroundingText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v0

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v3, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    sub-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-lez p2, :cond_1

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v3, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    sub-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v0, v0, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    sub-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {v2, v3, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSurroundingTextInCodePoints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    return p1
.end method

.method public finishComposingText()Z
    .locals 2

    const-string v0, "gti.InputConnection"

    const-string v1, "finishComposingText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegion(II)Z

    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    const-string v0, "gti.InputConnection"

    const-string v1, "getEditable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public final getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/b;

    iget-object v0, v0, Lcom/google/androidgamesdk/gametextinput/b;->a:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getImeInsets()Landroidx/core/graphics/Insets;
    .locals 2

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/w0;->y(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public final getListener()Ls1/a;
    .locals 1

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Ls1/a;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object p1

    iget v0, p1, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget p1, p1, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    invoke-interface {v1, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getSoftKeyboardActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    return v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextAfterCursor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gti.InputConnection"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object p2

    iget v0, p2, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget v0, p2, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget p2, p2, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    invoke-interface {v0, p2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextBeforeCursor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gti.InputConnection"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object p2

    iget v0, p2, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget p2, p2, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Ls1/a;

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/a;->i(Landroidx/core/graphics/Insets;)V

    :cond_0
    return-object p2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p3}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request cursor updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->requestCursorUpdates(I)Z

    move-result p1

    return p1
.end method

.method public restartInput()V
    .locals 2

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/b;

    iget-boolean v1, v0, Lcom/google/androidgamesdk/gametextinput/b;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/androidgamesdk/gametextinput/b;->a:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setComposingRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegionInternal(II)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setComposingText: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "\', newCursorPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v1

    iget v2, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object v1

    iget v2, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    if-ne v2, v3, :cond_1

    new-instance v1, Lcom/google/androidgamesdk/gametextinput/a$a;

    invoke-direct {v1, v0, v0}, Lcom/google/androidgamesdk/gametextinput/a$a;-><init>(II)V

    :cond_1
    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v3, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    iget v4, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v3, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    invoke-interface {v2, v3, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget v1, v1, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegion(II)Z

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/a$a;

    move-result-object p1

    const/4 v1, 0x1

    if-lez p2, :cond_2

    iget p1, p1, Lcom/google/androidgamesdk/gametextinput/a$a;->b:I

    add-int/2addr p1, p2

    sub-int/2addr p1, v1

    iget-object p2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    iget p1, p1, Lcom/google/androidgamesdk/gametextinput/a$a;->a:I

    add-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelection(II)Z

    invoke-direct {p0, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    return v1
.end method

.method public final setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/b;

    iput-object p1, v0, Lcom/google/androidgamesdk/gametextinput/b;->a:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method public final setListener(Ls1/a;)Lcom/google/androidgamesdk/gametextinput/InputConnection;
    .locals 0

    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Ls1/a;

    return-object p0
.end method

.method public setSelection(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelectionInternal(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setSoftKeyboardActive(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    iput-boolean p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    return-void
.end method

.method public final setState(Lcom/google/androidgamesdk/gametextinput/State;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', selection=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), composing region=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/androidgamesdk/gametextinput/State;->text:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget v0, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionStart:I

    iget v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionEnd:I

    invoke-direct {p0, v0, v1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelectionInternal(II)V

    iget v0, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionStart:I

    iget p1, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionEnd:I

    invoke-direct {p0, v0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegionInternal(II)V

    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->informIMM()V

    return-void
.end method
