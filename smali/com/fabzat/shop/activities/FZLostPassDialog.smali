.class public Lcom/fabzat/shop/activities/FZLostPassDialog;
.super Lcom/fabzat/shop/activities/FZDialog;
.source "FZLostPassDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/activities/FZLostPassDialog$FZOnLostPassListener;,
        Lcom/fabzat/shop/activities/FZLostPassDialog$a;
    }
.end annotation


# static fields
.field private static synthetic Y:[I


# instance fields
.field private P:Lcom/fabzat/shop/activities/FZLostPassDialog$FZOnLostPassListener;

.field private Q:Lcom/fabzat/shop/model/FZRecoveryUserContent;

.field R:Lcom/fabzat/shop/utils/ui/FZButton;

.field S:Lcom/fabzat/shop/utils/ui/FZButton;

.field T:Landroid/view/View;

.field private U:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private V:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private W:Lcom/fabzat/shop/utils/ui/FZEditText;

.field X:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

.field private h:Lcom/fabzat/shop/model/FZUser;


# direct methods
.method public constructor <init>(Lcom/fabzat/shop/activities/FZActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fabzat/shop/activities/FZActivity;",
            ":",
            "Lcom/fabzat/shop/activities/FZLostPassDialog$FZOnLostPassListener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "activity":Lcom/fabzat/shop/activities/FZActivity;, "TT;"
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    .line 57
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->P:Lcom/fabzat/shop/activities/FZLostPassDialog$FZOnLostPassListener;

    .line 59
    const-string v0, "fz_user_lost_pwd"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->setContentView(Ljava/lang/String;)V

    .line 61
    const-string v0, "fz_navbar_title_accountRecover"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->setWindowTitle(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->Z:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->X:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    .line 66
    const-string v0, "fz_user_login"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->U:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 67
    const-string v0, "fz_key"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->V:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 68
    const-string v0, "fz_new_pass"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->W:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 70
    const-string v0, "fz_next_btn"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZButton;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->S:Lcom/fabzat/shop/utils/ui/FZButton;

    .line 71
    const-string v0, "fz_btn_recover"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZButton;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->R:Lcom/fabzat/shop/utils/ui/FZButton;

    .line 72
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->S:Lcom/fabzat/shop/utils/ui/FZButton;

    const-string v1, "fz_btn_update"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZLostPassDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZButton;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->S:Lcom/fabzat/shop/utils/ui/FZButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZButton;->setEnabled(Z)V

    .line 75
    const-string v0, "fz_progressbar"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->T:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->U:Lcom/fabzat/shop/utils/ui/FZEditText;

    const-string v1, "fz_alert_msg_fieldsNotBlank"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZLostPassDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setError(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->S:Lcom/fabzat/shop/utils/ui/FZButton;

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/utils/ui/FZButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->R:Lcom/fabzat/shop/utils/ui/FZButton;

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/utils/ui/FZButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method static synthetic o()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/fabzat/shop/activities/FZLostPassDialog;->Y:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->values()[Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->Z:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->aa:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/fabzat/shop/activities/FZLostPassDialog;->Y:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "fz_btn_recover"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZLostPassDialog;->getId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->hideKeyboard()V

    .line 96
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_LOST_PWD:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1, v2}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->T:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    sget-object v1, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->Z:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->X:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    .line 102
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v1, v2, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 104
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 105
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 106
    new-instance v2, Lcom/fabzat/shop/model/FZUser;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->U:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v3}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZUser;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/fabzat/shop/model/FZUser;->setPassword(Ljava/lang/String;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    .line 107
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "fz_next_btn"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZLostPassDialog;->getId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->V:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->W:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->U:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_UPDATE_LOST_PWD:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1, v2}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->Q:Lcom/fabzat/shop/model/FZRecoveryUserContent;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->W:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v2}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/model/FZRecoveryUserContent;->setPassword(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->Q:Lcom/fabzat/shop/model/FZRecoveryUserContent;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->U:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v2}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/model/FZRecoveryUserContent;->setUsername(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->Q:Lcom/fabzat/shop/model/FZRecoveryUserContent;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->V:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v2}, Lcom/fabzat/shop/utils/ui/FZEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/model/FZRecoveryUserContent;->setTokenMail(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->T:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    sget-object v1, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->aa:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->X:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    .line 125
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v1, v2, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 127
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 128
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->Q:Lcom/fabzat/shop/model/FZRecoveryUserContent;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addRecoveryUserContent(Lcom/fabzat/shop/model/FZRecoveryUserContent;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    .line 130
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 2
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;->onError(Lcom/fabzat/shop/model/FZException;)V

    .line 204
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 144
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-static {}, Lcom/fabzat/shop/activities/FZLostPassDialog;->o()[I

    move-result-object v1

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->X:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    invoke-virtual {v2}, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 147
    :pswitch_0
    const-class v1, Lcom/fabzat/shop/model/FZRecoveryUserContent;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZRecoveryUserContent;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->Q:Lcom/fabzat/shop/model/FZRecoveryUserContent;

    goto :goto_0

    .line 151
    :pswitch_1
    const-class v1, Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZUser;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->h:Lcom/fabzat/shop/model/FZUser;

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 162
    invoke-static {}, Lcom/fabzat/shop/activities/FZLostPassDialog;->o()[I

    move-result-object v0

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->X:Lcom/fabzat/shop/activities/FZLostPassDialog$a;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZLostPassDialog$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    return-void

    .line 166
    :pswitch_0
    const-string v0, "fz_alert_msg_tokenByEmail"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->showMessage(I)V

    .line 167
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->S:Lcom/fabzat/shop/utils/ui/FZButton;

    invoke-virtual {v0, v2}, Lcom/fabzat/shop/utils/ui/FZButton;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->V:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v0, v2}, Lcom/fabzat/shop/utils/ui/FZEditText;->setMandatory(Z)V

    .line 169
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->W:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v0, v2}, Lcom/fabzat/shop/utils/ui/FZEditText;->setMandatory(Z)V

    .line 170
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->R:Lcom/fabzat/shop/utils/ui/FZButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZButton;->setEnabled(Z)V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZUser;->logged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->W:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->setPassword(Ljava/lang/String;)Lcom/fabzat/shop/model/FZUser;

    .line 180
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->storeUser(Landroid/content/Context;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->P:Lcom/fabzat/shop/activities/FZLostPassDialog$FZOnLostPassListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->P:Lcom/fabzat/shop/activities/FZLostPassDialog$FZOnLostPassListener;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->isLogged()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fabzat/shop/activities/FZLostPassDialog$FZOnLostPassListener;->onLostPassQuery(Z)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLogin(Ljava/lang/String;)Lcom/fabzat/shop/activities/FZLostPassDialog;
    .locals 1
    .param p1, "loginStr"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZLostPassDialog;->U:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v0, p1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-object p0
.end method
