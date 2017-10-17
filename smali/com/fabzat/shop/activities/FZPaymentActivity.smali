.class public Lcom/fabzat/shop/activities/FZPaymentActivity;
.super Lcom/fabzat/shop/activities/FZActivity;
.source "FZPaymentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fabzat/shop/dao/FZWebServiceListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/activities/FZPaymentActivity$a;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static synthetic ax:[I

.field private static s:Lcom/fabzat/shop/model/FZPendingOrder;


# instance fields
.field private T:Landroid/view/View;

.field private au:Lcom/fabzat/shop/utils/ui/FZTextView;

.field private av:Lcom/fabzat/shop/utils/ui/FZTextView;

.field private aw:Lcom/fabzat/shop/utils/ui/FZButton;

.field private v:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/fabzat/shop/activities/FZPaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity;->LOG_TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # I

    .prologue
    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    const-string v1, "fz_alert_btn_retry"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fabzat/shop/activities/FZPaymentActivity$1;

    invoke-direct {v2, p0}, Lcom/fabzat/shop/activities/FZPaymentActivity$1;-><init>(Lcom/fabzat/shop/activities/FZPaymentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    const-string v1, "fz_alert_btn_exit"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fabzat/shop/activities/FZPaymentActivity$2;

    invoke-direct {v2, p0}, Lcom/fabzat/shop/activities/FZPaymentActivity$2;-><init>(Lcom/fabzat/shop/activities/FZPaymentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 149
    return-void
.end method

.method private a(Lcom/fabzat/shop/activities/FZPaymentActivity$a;)V
    .locals 3
    .param p1, "event"    # Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    .prologue
    const/16 v2, 0x8

    .line 248
    invoke-static {}, Lcom/fabzat/shop/activities/FZPaymentActivity;->v()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->au:Lcom/fabzat/shop/utils/ui/FZTextView;

    const-string v1, "fz_label_willReceive"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->av:Lcom/fabzat/shop/utils/ui/FZTextView;

    const-string v1, "fz_label_updateByEmail"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    .line 257
    :pswitch_1
    const-string v0, "fz_alert_msg_paymentRefused"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 261
    :pswitch_2
    const-string v0, "fz_alert_msg_wantQuit"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 265
    :pswitch_3
    const-string v0, "fz_alert_msg_errorPayment"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 269
    :pswitch_4
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->au:Lcom/fabzat/shop/utils/ui/FZTextView;

    const-string v1, "fz_label_orderReceived"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->av:Lcom/fabzat/shop/utils/ui/FZTextView;

    const-string v1, "fz_label_paymentPending"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZPaymentActivity;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->t()V

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZPaymentActivity;Lcom/fabzat/shop/activities/FZPaymentActivity$a;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZPaymentActivity;->a(Lcom/fabzat/shop/activities/FZPaymentActivity$a;)V

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZPaymentActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZPaymentActivity;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/fabzat/shop/activities/FZPaymentActivity;Ljava/lang/String;)Lcom/fabzat/shop/activities/FZPaymentActivity$a;
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZPaymentActivity;->c(Ljava/lang/String;)Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v0, "fabzat://paymentDone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Lcom/fabzat/shop/activities/FZPaymentActivity$a;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 224
    const-string v0, "authResult=AUTHORISED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->az:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    .line 239
    :goto_0
    return-object v0

    .line 227
    :cond_0
    const-string v0, "authResult=REFUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aA:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    goto :goto_0

    .line 230
    :cond_1
    const-string v0, "authResult=CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aB:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    goto :goto_0

    .line 233
    :cond_2
    const-string v0, "authResult=PENDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aC:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    goto :goto_0

    .line 236
    :cond_3
    const-string v0, "authResult=ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aD:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    goto :goto_0

    .line 239
    :cond_4
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aC:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    goto :goto_0
.end method

.method public static setOrder(Lcom/fabzat/shop/model/FZPendingOrder;)V
    .locals 0
    .param p0, "pendingOrder"    # Lcom/fabzat/shop/model/FZPendingOrder;

    .prologue
    .line 99
    sput-object p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    .line 100
    return-void
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->T:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_PAYMENT:Lcom/fabzat/shop/dao/FZUrlType;

    invoke-static {v1, p0}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    invoke-direct {v1, p0, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 113
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    invoke-direct {v2, p0}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 114
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 115
    invoke-static {p0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 116
    sget-object v2, Lcom/fabzat/shop/activities/FZPaymentActivity;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addPendingOrderNoFile(Lcom/fabzat/shop/model/FZPendingOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->setLongTimeout(Z)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    .line 118
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void
.end method

.method static synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v()[I
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity;->ax:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->values()[Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->az:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aB:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aD:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aC:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aA:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity;->ax:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/fabzat/shop/activities/FZPaymentActivity$a;->aB:Lcom/fabzat/shop/activities/FZPaymentActivity$a;

    invoke-direct {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->a(Lcom/fabzat/shop/activities/FZPaymentActivity$a;)V

    .line 284
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->finish()V

    .line 292
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "fz_payment"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->setContentView(Ljava/lang/String;)V

    .line 65
    const-string v0, "fz_navbar_title_chekout"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    const-string v0, "fz_webview"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    .line 68
    const-string v0, "fz_progressbar"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->T:Landroid/view/View;

    .line 69
    const-string v0, "fz_payment_info1"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZTextView;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->au:Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 70
    const-string v0, "fz_payment_info2"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZTextView;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->av:Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 71
    const-string v0, "fz_btn_back_to_game"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZButton;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->aw:Lcom/fabzat/shop/utils/ui/FZButton;

    .line 73
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->aw:Lcom/fabzat/shop/utils/ui/FZButton;

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/utils/ui/FZButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 79
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 80
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 83
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 84
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 87
    const-string v0, "fz_navbar_title_congratz"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZPaymentActivity;->showNextButton(Z)Landroid/view/View;

    .line 90
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->t()V

    .line 91
    return-void
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 2
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fabzat/shop/utils/FZTools;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->T:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    new-instance v0, Lcom/fabzat/shop/activities/FZPaymentActivity$3;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZPaymentActivity$3;-><init>(Lcom/fabzat/shop/activities/FZPaymentActivity;)V

    .line 193
    .local v0, "client":Landroid/webkit/WebViewClient;
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 196
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZPaymentActivity;->v:Landroid/webkit/WebView;

    const-string v2, "text/html; charset=UTF-8"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method
