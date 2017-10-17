.class public abstract Lcom/fabzat/shop/activities/FZDialog;
.super Landroid/app/Dialog;
.source "FZDialog.java"

# interfaces
.implements Lcom/fabzat/shop/dao/FZWebServiceListener;


# instance fields
.field protected _activity:Lcom/fabzat/shop/activities/FZActivity;


# direct methods
.method public constructor <init>(Lcom/fabzat/shop/activities/FZActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/fabzat/shop/activities/FZActivity;

    .prologue
    .line 28
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "style"

    const-string v3, "DialogTheme"

    invoke-static {v1, v2, v3}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    .line 32
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 33
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 35
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method protected findViewById(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawable(Ljava/lang/String;)I
    .locals 2
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-static {v0, v1, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getId(Ljava/lang/String;)I
    .locals 2
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLayout(Ljava/lang/String;)I
    .locals 2
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, v1, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/activities/FZActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStringId(Ljava/lang/String;)I
    .locals 2
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-static {v0, v1, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected hideKeyboard()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 114
    const-string v2, "input_method"

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 115
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 116
    return-void
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 2
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZTools;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected setContentView(Ljava/lang/String;)V
    .locals 3
    .param p1, "layoutResID"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Lcom/fabzat/shop/FabzatShop;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v2, p1}, Lcom/fabzat/shop/utils/FZTools;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "res":I
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 125
    return-void
.end method

.method protected setNextButton(I)V
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 67
    const-string v0, "fz_next_btn"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZDialog;->getId(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {v1, p1}, Lcom/fabzat/shop/activities/FZActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fabzat/shop/activities/FZDialog;->a(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method protected setNextButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 76
    const-string v1, "fz_next_btn"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZDialog;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected setWindowTitle(I)V
    .locals 1
    .param p1, "titleStringId"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {v0, p1}, Lcom/fabzat/shop/activities/FZActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZDialog;->setWindowTitle(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected setWindowTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "fz_window_title"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZDialog;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/fabzat/shop/activities/FZDialog;->a(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 40
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    const-string v1, "fz_logo"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZDialog;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZTools;->setLogo(Landroid/app/Activity;Landroid/view/View;)V

    .line 41
    return-void
.end method

.method protected showMessage(I)V
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v0, p1}, Lcom/fabzat/shop/utils/FZTools;->showMessage(Landroid/content/Context;I)V

    .line 97
    return-void
.end method
