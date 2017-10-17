.class public Lcom/fabzat/shop/activities/FZNewUserDialog;
.super Lcom/fabzat/shop/activities/FZDialog;
.source "FZNewUserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/activities/FZNewUserDialog$FZOnNewuserListener;
    }
.end annotation


# instance fields
.field private T:Landroid/view/View;

.field private ao:Lcom/fabzat/shop/activities/FZNewUserDialog$FZOnNewuserListener;

.field private ap:Landroid/widget/EditText;

.field private aq:Landroid/widget/EditText;

.field private h:Lcom/fabzat/shop/model/FZUser;


# direct methods
.method public constructor <init>(Lcom/fabzat/shop/activities/FZActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fabzat/shop/activities/FZActivity;",
            ":",
            "Lcom/fabzat/shop/activities/FZNewUserDialog$FZOnNewuserListener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "activity":Lcom/fabzat/shop/activities/FZActivity;, "TT;"
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    .line 40
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->ao:Lcom/fabzat/shop/activities/FZNewUserDialog$FZOnNewuserListener;

    .line 42
    const-string v0, "fz_login"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->setContentView(Ljava/lang/String;)V

    .line 44
    const-string v0, "fz_user_login"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->ap:Landroid/widget/EditText;

    .line 45
    const-string v0, "fz_user_password"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->aq:Landroid/widget/EditText;

    .line 46
    const-string v0, "fz_progressbar"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->T:Landroid/view/View;

    .line 48
    const-string v0, "fz_btn_forgot_password"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const-string v0, "fz_navbar_title_accountCreate"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->setWindowTitle(Ljava/lang/String;)V

    .line 51
    const-string v0, "fz_btn_create"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->setNextButton(I)V

    .line 53
    const-string v0, "fz_next_btn"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private n()Lcom/fabzat/shop/model/FZUser;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->h:Lcom/fabzat/shop/model/FZUser;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->destroy(Landroid/content/Context;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->ap:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->aq:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 86
    :cond_1
    new-instance v0, Lcom/fabzat/shop/model/FZUser;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/fabzat/shop/model/FZUser;-><init>(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/fabzat/shop/model/FZUser;

    .line 89
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->ap:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Lcom/fabzat/shop/model/FZUser;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->aq:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->setPassword(Ljava/lang/String;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "fz_next_btn"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZNewUserDialog;->getId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->hideKeyboard()V

    .line 63
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->T:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_NEW_USER:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1, v2}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v1, v2, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 68
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 70
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->n()Lcom/fabzat/shop/model/FZUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    .line 71
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 2
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;->onError(Lcom/fabzat/shop/model/FZException;)V

    .line 128
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 99
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZUser;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->h:Lcom/fabzat/shop/model/FZUser;

    .line 101
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->logged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->aq:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/model/FZUser;->setPassword(Ljava/lang/String;)Lcom/fabzat/shop/model/FZUser;

    .line 104
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/model/FZUser;->storeUser(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->dismiss()V

    .line 108
    :cond_0
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->ao:Lcom/fabzat/shop/activities/FZNewUserDialog$FZOnNewuserListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewUserDialog;->ao:Lcom/fabzat/shop/activities/FZNewUserDialog$FZOnNewuserListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fabzat/shop/activities/FZNewUserDialog$FZOnNewuserListener;->onNewUserCreate(Z)V

    .line 119
    :cond_0
    return-void
.end method
