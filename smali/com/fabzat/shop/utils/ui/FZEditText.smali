.class public Lcom/fabzat/shop/utils/ui/FZEditText;
.super Landroid/widget/EditText;
.source "FZEditText.java"


# instance fields
.field private dB:Z

.field private dC:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v1, "FZTextView"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStyleables(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    .local v0, "ta":Landroid/content/res/TypedArray;
    const-string v1, "FZTextView_isMandatory"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStyleable(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fabzat/shop/utils/ui/FZEditText;->dB:Z

    .line 28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setCursorVisible(Z)V

    .line 31
    iget-boolean v1, p0, Lcom/fabzat/shop/utils/ui/FZEditText;->dB:Z

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setMandatory(Z)V

    .line 34
    const v1, 0x108001b

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setBackgroundResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZEditText;->dC:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFilled()Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZEditText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 65
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 66
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZEditText;->dB:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZEditText;->dC:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZEditText;->setError(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 53
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZEditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMandatory(Z)V
    .locals 2
    .param p1, "isMandatory"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/fabzat/shop/utils/ui/FZEditText;->dB:Z

    .line 39
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fz_alert_msg_fieldsNotBlank"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/utils/ui/FZEditText;->dC:Ljava/lang/CharSequence;

    .line 40
    return-void
.end method

.method public showError()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZEditText;->dC:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/ui/FZEditText;->setError(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
