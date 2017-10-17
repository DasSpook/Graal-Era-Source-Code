.class public Lcom/fabzat/shop/activities/FZCartActivity;
.super Lcom/fabzat/shop/activities/FZActivity;
.source "FZCartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fabzat/shop/activities/FZLoginDialog$FZOnLoginListener;
.implements Lcom/fabzat/shop/activities/FZLostPassDialog$FZOnLostPassListener;
.implements Lcom/fabzat/shop/activities/FZNewAddressDialog$FZOnNewAddressListener;
.implements Lcom/fabzat/shop/activities/FZNewUserDialog$FZOnNewuserListener;
.implements Lcom/fabzat/shop/activities/FZOrderDialog$FZOnUploadListener;
.implements Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;
.implements Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;
.implements Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;
.implements Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;
.implements Lcom/fabzat/shop/dao/FZWebServiceListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private h:Lcom/fabzat/shop/model/FZUser;

.field private i:Lcom/fabzat/shop/activities/FZLoginDialog;

.field private j:Lcom/fabzat/shop/activities/FZLostPassDialog;

.field private k:Lcom/fabzat/shop/activities/FZNewUserDialog;

.field private l:Lcom/fabzat/shop/activities/FZNewAddressDialog;

.field private m:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

.field private n:Lcom/fabzat/shop/activities/FZOrderDialog;

.field private o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

.field private p:Lcom/fabzat/shop/adapters/FZCartAdapter;

.field private q:Lcom/fabzat/shop/adapters/FZDiscountAdapter;

.field private r:Lcom/fabzat/shop/utils/ui/FZButton;

.field private s:Lcom/fabzat/shop/model/FZPendingOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/fabzat/shop/activities/FZCartActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/fabzat/shop/model/FZOrder;)V
    .locals 4
    .param p1, "order"    # Lcom/fabzat/shop/model/FZOrder;

    .prologue
    const/4 v3, 0x0

    .line 538
    sget-object v1, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Sending order"

    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "fz_progressbar"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 542
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->ORDER_NEW:Lcom/fabzat/shop/dao/FZUrlType;

    invoke-static {v1, p0}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    invoke-direct {v1, p0, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 546
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    invoke-direct {v2, p0}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 547
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 548
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 549
    invoke-virtual {v1, p1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addOrder(Lcom/fabzat/shop/model/FZOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 550
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v2}, Lcom/fabzat/shop/adapters/FZCartAdapter;->getCart()Lcom/fabzat/shop/model/FZCart;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addOrderLines(Lcom/fabzat/shop/model/FZCart;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    .line 551
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 552
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 251
    const-string v2, "fz_connection_container"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 252
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 255
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "fz_connected"

    invoke-virtual {p0, v3}, Lcom/fabzat/shop/activities/FZCartActivity;->getLayout(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 256
    const-string v2, "fz_btn_logout"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const-string v2, "fz_login_name"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 260
    .local v0, "tv":Lcom/fabzat/shop/utils/ui/FZTextView;
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const-string v2, "fz_address_container"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->e()V

    .line 266
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZUser;->isLogged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZUser;->hasAddresses()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZUser;->initAddresses()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    if-nez v0, :cond_2

    .line 342
    new-instance v0, Lcom/fabzat/shop/adapters/FZAddressAdapter;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fabzat/shop/adapters/FZAddressAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 343
    invoke-virtual {v0, p0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->setListener(Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;)Lcom/fabzat/shop/adapters/FZAddressAdapter;

    move-result-object v0

    .line 342
    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    invoke-virtual {v0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->setLayout()V

    .line 358
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->g()V

    .line 359
    return-void

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->setAddresses(Ljava/util/List;)Lcom/fabzat/shop/adapters/FZAddressAdapter;

    move-result-object v0

    .line 348
    invoke-virtual {v0, p0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->setListener(Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;)Lcom/fabzat/shop/adapters/FZAddressAdapter;

    goto :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    invoke-virtual {v0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->clear()V

    goto :goto_1
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    invoke-virtual {v0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->getSelectedAddressId()I

    move-result v0

    if-lez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZUser;->isLogged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->f()Z

    move-result v1

    .line 490
    .local v1, "enabled":Z
    if-eqz v1, :cond_0

    const-string v2, "fz_btn_form_payment"

    :goto_0
    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZCartActivity;->getDrawable(Ljava/lang/String;)I

    move-result v0

    .line 492
    .local v0, "bgResource":I
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->r:Lcom/fabzat/shop/utils/ui/FZButton;

    invoke-virtual {v2, v1}, Lcom/fabzat/shop/utils/ui/FZButton;->setEnabled(Z)V

    .line 493
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->r:Lcom/fabzat/shop/utils/ui/FZButton;

    invoke-virtual {v2, v0}, Lcom/fabzat/shop/utils/ui/FZButton;->setBackgroundResource(I)V

    .line 494
    return-void

    .line 490
    .end local v0    # "bgResource":I
    :cond_0
    const-string v2, "fz_grey_background"

    goto :goto_0
.end method

.method private h()Lcom/fabzat/shop/model/FZOrder;
    .locals 4

    .prologue
    .line 514
    sget-object v2, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Creating order"

    invoke-static {v2, v3}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance v0, Lcom/fabzat/shop/model/FZOrder;

    invoke-direct {v0}, Lcom/fabzat/shop/model/FZOrder;-><init>()V

    .line 517
    .local v0, "order":Lcom/fabzat/shop/model/FZOrder;
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v1

    .line 519
    .local v1, "shop":Lcom/fabzat/shop/model/FZContainer;
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    invoke-virtual {v2}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->getSelectedAddressId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/fabzat/shop/model/FZOrder;->setAddressId(I)V

    .line 520
    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZContainer;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/fabzat/shop/model/FZOrder;->setShopid(I)V

    .line 521
    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZContainer;->getPercentDiscount()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/fabzat/shop/model/FZOrder;->setPercentDiscount(D)V

    .line 522
    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZContainer;->getPercentShippingDiscount()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/fabzat/shop/model/FZOrder;->setShippingPercent_discount(D)V

    .line 523
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v2}, Lcom/fabzat/shop/adapters/FZCartAdapter;->getPriceShippingBase()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fabzat/shop/model/FZOrder;->setTotalShipping_base(D)V

    .line 524
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v2}, Lcom/fabzat/shop/adapters/FZCartAdapter;->getPriceTotalBase()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fabzat/shop/model/FZOrder;->setTotalBase(D)V

    .line 525
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v2}, Lcom/fabzat/shop/adapters/FZCartAdapter;->getTotalAll()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fabzat/shop/model/FZOrder;->setTotalAll(D)V

    .line 526
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fabzat/shop/model/FZOrder;->setCurrencyCode(Ljava/lang/String;)V

    .line 528
    return-object v0
.end method


# virtual methods
.method public cgv()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/fabzat/shop/activities/FZCgvDialog;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZCgvDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZCgvDialog;->show()V

    .line 242
    return-void
.end method

.method public login()V
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Login screen"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/fabzat/shop/activities/FZLoginDialog;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZLoginDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->i:Lcom/fabzat/shop/activities/FZLoginDialog;

    .line 223
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->i:Lcom/fabzat/shop/activities/FZLoginDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->show()V

    .line 225
    return-void
.end method

.method public logout()V
    .locals 3

    .prologue
    .line 188
    sget-object v1, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Loging out..."

    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1, p0}, Lcom/fabzat/shop/model/FZUser;->destroy(Landroid/content/Context;)V

    .line 194
    const-string v1, "fz_connection_container"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 195
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 198
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "fz_not_connected"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZCartActivity;->getLayout(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 199
    const-string v1, "fz_btn_existing_account"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const-string v1, "fz_btn_new_account"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->e()V

    .line 203
    const-string v1, "fz_address_container"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/adapters/FZCartAdapter;->setShippingIsValid(Z)V

    .line 209
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v1}, Lcom/fabzat/shop/adapters/FZCartAdapter;->setLayout()V

    .line 210
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->q:Lcom/fabzat/shop/adapters/FZDiscountAdapter;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v2}, Lcom/fabzat/shop/adapters/FZCartAdapter;->hasOneProduct()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->showDiscount(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public newAccount()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/fabzat/shop/activities/FZNewUserDialog;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZNewUserDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->k:Lcom/fabzat/shop/activities/FZNewUserDialog;

    .line 233
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->k:Lcom/fabzat/shop/activities/FZNewUserDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZNewUserDialog;->show()V

    .line 235
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/fabzat/shop/activities/FZActivity;->onBackPressed()V

    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOAD_PAYMENT:Z

    .line 181
    return-void
.end method

.method public onCartChange()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->q:Lcom/fabzat/shop/adapters/FZDiscountAdapter;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v1}, Lcom/fabzat/shop/adapters/FZCartAdapter;->hasOneProduct()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->showDiscount(Z)V

    .line 470
    return-void
.end method

.method public onCartEmpty()V
    .locals 2

    .prologue
    .line 440
    sget-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cart is empty, going back"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOAD_PAYMENT:Z

    .line 443
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->finish()V

    .line 444
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "fz_btn_existing_account"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->login()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "fz_btn_logout"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->logout()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "fz_btn_new_account"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->newAccount()V

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "fz_cgv"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 166
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->cgv()V

    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "fz_btn_validate"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->h()Lcom/fabzat/shop/model/FZOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->a(Lcom/fabzat/shop/model/FZOrder;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "fz_cart"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->setContentView(Ljava/lang/String;)V

    .line 98
    const-string v0, "fz_navbar_title_chekout"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    const-string v0, "fz_btn_validate"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZButton;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->r:Lcom/fabzat/shop/utils/ui/FZButton;

    .line 103
    const-string v0, "fz_btn_existing_account"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const-string v0, "fz_btn_new_account"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const-string v0, "fz_cgv"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->r:Lcom/fabzat/shop/utils/ui/FZButton;

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/utils/ui/FZButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {p0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    .line 111
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZUser;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->logout()V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-direct {v0, p0, p0}, Lcom/fabzat/shop/adapters/FZCartAdapter;-><init>(Landroid/app/Activity;Lcom/fabzat/shop/adapters/FZCartAdapter$FZCartListener;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    .line 119
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->setLayout()V

    .line 122
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->showNextButton(Z)Landroid/view/View;

    .line 123
    return-void

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->d()V

    goto :goto_0
.end method

.method public onDeleteAddressCreate(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 428
    invoke-static {p0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    .line 429
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->e()V

    .line 431
    return-void
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 3
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 599
    sget-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "fz_progressbar"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 601
    const-string v0, "fz_alert_msg_errorUpload"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fabzat/shop/utils/FZTools;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public onFZAddressAddClick()V
    .locals 2

    .prologue
    .line 387
    sget-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Add a new address"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZUser;->isLogged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Lcom/fabzat/shop/activities/FZNewAddressDialog;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->l:Lcom/fabzat/shop/activities/FZNewAddressDialog;

    .line 392
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->l:Lcom/fabzat/shop/activities/FZNewAddressDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->show()V

    .line 395
    :cond_0
    return-void
.end method

.method public onFZAddressClick(Lcom/fabzat/shop/model/FZAddress;)V
    .locals 3
    .param p1, "address"    # Lcom/fabzat/shop/model/FZAddress;

    .prologue
    .line 367
    sget-object v1, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Selected an address"

    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    invoke-virtual {v1}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->isSelectedAddressValid()Z

    move-result v0

    .line 371
    .local v0, "addressIsValid":Z
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getCountryId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/adapters/FZCartAdapter;->setCountryCode(I)V

    .line 372
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v1, v0}, Lcom/fabzat/shop/adapters/FZCartAdapter;->setShippingIsValid(Z)V

    .line 373
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v1}, Lcom/fabzat/shop/adapters/FZCartAdapter;->updatePrice()V

    .line 375
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->g()V

    .line 377
    if-nez v0, :cond_0

    .line 378
    const-string v1, "fz_alert_msg_countryDisabled"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZCartActivity;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/fabzat/shop/utils/FZTools;->showMessage(Landroid/content/Context;I)V

    .line 379
    :cond_0
    return-void
.end method

.method public onFZAddressModifyClick(ILcom/fabzat/shop/model/FZAddress;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "address"    # Lcom/fabzat/shop/model/FZAddress;

    .prologue
    .line 408
    sget-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Update an address"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

    invoke-direct {v0, p0, p2}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;Lcom/fabzat/shop/model/FZAddress;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->m:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

    .line 411
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->m:Lcom/fabzat/shop/activities/FZUpdateAddressDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->show()V

    .line 413
    return-void
.end method

.method public onLogin(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 274
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->i:Lcom/fabzat/shop/activities/FZLoginDialog;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->i:Lcom/fabzat/shop/activities/FZLoginDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->dismiss()V

    .line 277
    invoke-static {p0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    .line 279
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->d()V

    .line 282
    :cond_0
    return-void
.end method

.method public onLostPassQuery(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 309
    invoke-static {p0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    .line 310
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->j:Lcom/fabzat/shop/activities/FZLostPassDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->dismiss()V

    .line 311
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->d()V

    .line 313
    :cond_0
    return-void
.end method

.method public onLostPassword()V
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Lost password"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/fabzat/shop/activities/FZLostPassDialog;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZLostPassDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->j:Lcom/fabzat/shop/activities/FZLostPassDialog;

    .line 293
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->j:Lcom/fabzat/shop/activities/FZLostPassDialog;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->i:Lcom/fabzat/shop/activities/FZLoginDialog;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZLoginDialog;->getLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/activities/FZLostPassDialog;->setLogin(Ljava/lang/String;)Lcom/fabzat/shop/activities/FZLostPassDialog;

    .line 294
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->j:Lcom/fabzat/shop/activities/FZLostPassDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZLostPassDialog;->show()V

    .line 297
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->i:Lcom/fabzat/shop/activities/FZLoginDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZLoginDialog;->dismiss()V

    .line 299
    return-void
.end method

.method public onNewAddressCreate(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 400
    invoke-static {p0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    .line 401
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->e()V

    .line 403
    return-void
.end method

.method public onNewUserCreate(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 322
    invoke-static {p0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    .line 323
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->d()V

    .line 325
    :cond_0
    return-void
.end method

.method public onPromoClick()V
    .locals 2

    .prologue
    .line 453
    sget-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "User clicked on a promo"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZResourceManager;->hasSingleResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->startActivity(Landroid/content/Intent;)V

    .line 460
    :goto_0
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->finish()V

    .line 462
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOAD_PAYMENT:Z

    goto :goto_0
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 562
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/fabzat/shop/model/FZPendingOrder;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fabzat/shop/model/FZPendingOrder;

    iput-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    .line 564
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZPendingOrder;->getUploadToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fabzat/shop/manager/FZCartManager;->makeUploadZipFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 565
    .local v1, "f":Ljava/io/File;
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    invoke-virtual {v2, v1}, Lcom/fabzat/shop/model/FZPendingOrder;->setFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 580
    const-string v0, "fz_progressbar"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZPendingOrder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/fabzat/shop/activities/FZOrderDialog;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZCartActivity;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    invoke-direct {v0, p0, v1, v2}, Lcom/fabzat/shop/activities/FZOrderDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;Lcom/fabzat/shop/model/FZUser;Lcom/fabzat/shop/model/FZPendingOrder;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->n:Lcom/fabzat/shop/activities/FZOrderDialog;

    .line 585
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->n:Lcom/fabzat/shop/activities/FZOrderDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->show()V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    const-string v0, "fz_alert_msg_errorOrder"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fabzat/shop/utils/FZTools;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpdateAddressCreate(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 418
    sget-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Updated an address"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {p0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->h:Lcom/fabzat/shop/model/FZUser;

    .line 421
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->e()V

    .line 423
    return-void
.end method

.method public onUpload(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 610
    if-eqz p1, :cond_0

    .line 612
    sget-object v0, Lcom/fabzat/shop/activities/FZCartActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Uploaded, loading payment screen"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->n:Lcom/fabzat/shop/activities/FZOrderDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZOrderDialog;->dismiss()V

    .line 616
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOAD_PAYMENT:Z

    .line 617
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->s:Lcom/fabzat/shop/model/FZPendingOrder;

    invoke-static {v0}, Lcom/fabzat/shop/activities/FZPaymentActivity;->setOrder(Lcom/fabzat/shop/model/FZPendingOrder;)V

    .line 618
    const/16 v0, 0x29a

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->setResult(I)V

    .line 619
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZCartActivity;->finish()V

    .line 622
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->q:Lcom/fabzat/shop/adapters/FZDiscountAdapter;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/fabzat/shop/adapters/FZDiscountAdapter;

    invoke-direct {v0, p0, p0}, Lcom/fabzat/shop/adapters/FZDiscountAdapter;-><init>(Lcom/fabzat/shop/activities/FZActivity;Lcom/fabzat/shop/adapters/FZDiscountAdapter$FZDiscountListener;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->q:Lcom/fabzat/shop/adapters/FZDiscountAdapter;

    .line 134
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->q:Lcom/fabzat/shop/adapters/FZDiscountAdapter;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    invoke-virtual {v1}, Lcom/fabzat/shop/adapters/FZCartAdapter;->hasOneProduct()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/adapters/FZDiscountAdapter;->showDiscount(Z)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->p:Lcom/fabzat/shop/adapters/FZCartAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    invoke-virtual {v0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->getSelectedAddressId()I

    move-result v0

    if-lez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZCartActivity;->o:Lcom/fabzat/shop/adapters/FZAddressAdapter;

    invoke-virtual {v0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->getSelectedAddress()Lcom/fabzat/shop/model/FZAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZCartActivity;->onFZAddressClick(Lcom/fabzat/shop/model/FZAddress;)V

    .line 142
    :cond_1
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->onWindowFocusChanged(Z)V

    .line 144
    return-void
.end method
