.class public final Lcom/google/androidgamesdk/gametextinput/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidgamesdk/gametextinput/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/androidgamesdk/gametextinput/a;

.field private static final b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/androidgamesdk/gametextinput/a;

    invoke-direct {v0}, Lcom/google/androidgamesdk/gametextinput/a;-><init>()V

    sput-object v0, Lcom/google/androidgamesdk/gametextinput/a;->a:Lcom/google/androidgamesdk/gametextinput/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/androidgamesdk/gametextinput/a;->b:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    :cond_1
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :cond_2
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    if-eqz p0, :cond_3

    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public static final b(Landroid/text/Editable;)Lcom/google/androidgamesdk/gametextinput/a$a;
    .locals 3

    new-instance v0, Lcom/google/androidgamesdk/gametextinput/a$a;

    sget-object v1, Lcom/google/androidgamesdk/gametextinput/a;->a:Lcom/google/androidgamesdk/gametextinput/a;

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    invoke-direct {v0, v2, p0}, Lcom/google/androidgamesdk/gametextinput/a$a;-><init>(II)V

    return-object v0
.end method

.method public static final c(Landroid/text/Editable;)Lcom/google/androidgamesdk/gametextinput/a$a;
    .locals 3

    new-instance v0, Lcom/google/androidgamesdk/gametextinput/a$a;

    sget-object v1, Lcom/google/androidgamesdk/gametextinput/a;->b:Ljava/lang/Class;

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    invoke-direct {v0, v2, p0}, Lcom/google/androidgamesdk/gametextinput/a$a;-><init>(II)V

    return-object v0
.end method

.method public static final d(Landroid/text/Editable;)V
    .locals 1

    sget-object v0, Lcom/google/androidgamesdk/gametextinput/a;->a:Lcom/google/androidgamesdk/gametextinput/a;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static final e(Landroid/text/Editable;II)V
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_1
    const/16 v0, 0x100

    sget-object v1, Lcom/google/androidgamesdk/gametextinput/a;->a:Lcom/google/androidgamesdk/gametextinput/a;

    if-le p1, p2, :cond_2

    invoke-interface {p0, v1, p2, p1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    invoke-interface {p0, v1, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method public static final f(Landroid/text/Editable;II)V
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/google/androidgamesdk/gametextinput/a;->b:Ljava/lang/Class;

    if-le p1, p2, :cond_2

    invoke-interface {p0, v1, p2, p1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    invoke-interface {p0, v1, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method
