.class public Lcom/fabzat/shop/activities/FZLoginDialog;
.super Lcom/fabzat/shop/activities/FZDialog;
.source "FZLoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;
    }
.end annotation


# instance fields
.field private M:Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;

.field private N:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private O:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private h:Lcom/fabzat/shop/model/FZUser;

.field private t:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/fabzat/shop/activities/FZActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fabzat/shop/activities/FZActivity;",
            ":",
            "Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "activity":Lcom/fabzat/shop/activities/FZActivity;, "TT;"
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    .line 43
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->M:Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;

    .line 45
    const-string v0, "fz_login"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->setContentView(Ljava/lang/String;)V

    .line 47
    const-string v0, "fz_user_login"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->N:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 48
    const-string v0, "fz_user_password"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->O:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 49
    const-string v0, "fz_progressbar"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->t:Landroid/view/View;

    .line 52
    const-string v0, "fz_btn_forgot_password"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const-string v0, "fz_navbar_title_accountLogin"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->setWindowTitle(Ljava/lang/String;)V

    .line 56
    const-string v0, "fz_btn_login"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->setNextButton(I)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/fabzat/shop/activities/FZLoginDialog;->setNextButtonListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method private n()Lcom/fabzat/shop/model/FZUser;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->h:Lcom/fabzat/shop/model/FZUser;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->destroy(Landroid/content/Context;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->N:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->O:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 102
    :cond_1
    new-instance v0, Lcom/fabzat/shop/model/FZUser;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/fabzat/shop/model/FZUser;-><init>(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/fabzat/shop/model/FZUser;

    .line 105
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->N:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-direct {v0, v1}, Lcom/fabzat/shop/model/FZUser;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->O:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->setPassword(Ljava/lang/String;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->N:Lcom/fabzat/shop/utils/ui/FZEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->N:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->N:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "fz_next_btn"

    invoke-virtual {p0, v3}, Lcom/fabzat/shop/activities/FZLoginDialog;->getId(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZLoginDialog;->hideKeyboard()V

    .line 73
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->t:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 75
    new-instance v0, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v0}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    .line 78
    .local v0, "info":Lcom/fabzat/shop/model/FZLocaleInfo;
    sget-object v2, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_AUTH:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v2, v3}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v2, v3, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v2

    .line 81
    new-instance v3, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v4, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v3, v4}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v2

    .line 83
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZLoginDialog;->n()Lcom/fabzat/shop/model/FZUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Void;

    .line 84
    invoke-virtual {v2, v3}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    .end local v0    # "info":Lcom/fabzat/shop/model/FZLocaleInfo;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "fz_btn_forgot_password"

    invoke-virtual {p0, v3}, Lcom/fabzat/shop/activities/FZLoginDialog;->getId(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 87
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->M:Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->M:Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;

    invoke-interface {v2}, Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;->onLostPassword()V

    goto :goto_0
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 3
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->t:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const-string v1, "fz_alert_msg_errorUserAuth"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZLoginDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/fabzat/shop/model/FZException;->addMessage(Ljava/lang/String;)Lcom/fabzat/shop/model/FZException;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/fabzat/shop/activities/FZDialog;->onError(Lcom/fabzat/shop/model/FZException;)V

    .line 149
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 116
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZUser;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->h:Lcom/fabzat/shop/model/FZUser;

    .line 118
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->h:Lcom/fabzat/shop/model/FZUser;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/fabzat/shop/model/FZUser;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fabzat/shop/model/FZUser;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->h:Lcom/fabzat/shop/model/FZUser;

    .line 121
    :cond_0
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZUser;->logged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->O:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->setPassword(Ljava/lang/String;)Lcom/fabzat/shop/model/FZUser;

    .line 134
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->storeUser(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZLoginDialog;->dismiss()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->M:Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->M:Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLoginDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->isLogged()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;->onLogin(Z)V

    .line 140
    :cond_1
    return-void
.end method
