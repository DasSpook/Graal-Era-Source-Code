.class public Lcom/fabzat/shop/activities/FZNewAddressDialog;
.super Lcom/fabzat/shop/activities/FZDialog;
.source "FZNewAddressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/activities/FZNewAddressDialog$FZOnNewAddressListener;
    }
.end annotation


# instance fields
.field private T:Landroid/view/View;

.field private ac:Lcom/fabzat/shop/activities/FZNewAddressDialog$FZOnNewAddressListener;

.field private ad:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private ae:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private af:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private ag:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private ah:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private ai:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private aj:Lcom/fabzat/shop/utils/ui/FZEditText;

.field private ak:Landroid/widget/EditText;

.field private al:I

.field private am:[Ljava/lang/String;

.field private countries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fabzat/shop/model/FZCountry;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/fabzat/shop/model/FZUser;


# direct methods
.method public constructor <init>(Lcom/fabzat/shop/activities/FZActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fabzat/shop/activities/FZActivity;",
            ":",
            "Lcom/fabzat/shop/activities/FZNewAddressDialog$FZOnNewAddressListener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "context":Lcom/fabzat/shop/activities/FZActivity;, "TT;"
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    .line 66
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ac:Lcom/fabzat/shop/activities/FZNewAddressDialog$FZOnNewAddressListener;

    .line 68
    const-string v0, "fz_address"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->setContentView(Ljava/lang/String;)V

    .line 71
    const-string v0, "fz_progressbar"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->T:Landroid/view/View;

    .line 72
    const-string v0, "fz_firstname"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ad:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 73
    const-string v0, "fz_lastname"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ae:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 74
    const-string v0, "fz_address_line1"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->af:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 75
    const-string v0, "fz_address_line2"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ag:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 76
    const-string v0, "fz_address_city"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ah:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 77
    const-string v0, "fz_address_postalcode"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ai:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 78
    const-string v0, "fz_address_state"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->aj:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 79
    const-string v0, "fz_address_country"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ak:Landroid/widget/EditText;

    .line 82
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZContainer;->getCountries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->countries:Ljava/util/Map;

    .line 83
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->p()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->am:[Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ak:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 88
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ak:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ak:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const-string v0, "fz_navbar_title_addAddress"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->setWindowTitle(Ljava/lang/String;)V

    .line 92
    const-string v0, "fz_navbar_btn_validate"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->setNextButton(I)V

    .line 94
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    .line 96
    const-string v0, "fz_next_btn"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const-string v0, "fz_btn_delete"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZNewAddressDialog;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->countries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 119
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCountry;

    .line 120
    .local v0, "c":Lcom/fabzat/shop/model/FZCountry;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCountry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCountry;->getId()I

    move-result v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZNewAddressDialog;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->al:I

    return-void
.end method

.method private a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z
    .locals 1
    .param p1, "field"    # Lcom/fabzat/shop/utils/ui/FZEditText;

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/fabzat/shop/utils/ui/FZEditText;->isFilled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/fabzat/shop/utils/ui/FZEditText;->showError()V

    .line 253
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZNewAddressDialog;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->am:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/fabzat/shop/activities/FZNewAddressDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ak:Landroid/widget/EditText;

    return-object v0
.end method

.method private p()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->countries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 107
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZCountry;

    .line 108
    .local v1, "c":Lcom/fabzat/shop/model/FZCountry;
    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCountry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->hideKeyboard()V

    .line 132
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->am:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    const v1, 0x104000a

    new-instance v2, Lcom/fabzat/shop/activities/FZNewAddressDialog$1;

    invoke-direct {v2, p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog$1;-><init>(Lcom/fabzat/shop/activities/FZNewAddressDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 143
    return-void
.end method

.method private r()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->af:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ad:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ae:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ah:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ai:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ak:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ak:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ak:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->af:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v2}, Lcom/fabzat/shop/utils/ui/FZEditText;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private s()Lcom/fabzat/shop/model/FZAddress;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Lcom/fabzat/shop/model/FZAddress;

    invoke-direct {v0}, Lcom/fabzat/shop/model/FZAddress;-><init>()V

    .line 266
    .local v0, "_address":Lcom/fabzat/shop/model/FZAddress;
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->af:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setAddress1(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ag:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setAddress2(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ad:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setFirstname(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ae:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setLastname(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ah:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setCity(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ai:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setPostalCode(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->aj:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setState(Ljava/lang/String;)V

    .line 273
    iget v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->al:I

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setCountryId(I)V

    .line 275
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "fz_address_country"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->getId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->q()V

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "fz_next_btn"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->getId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->hideKeyboard()V

    .line 162
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->T:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_ADD_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1, v2}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v1, v2, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 169
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 170
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 172
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->s()Lcom/fabzat/shop/model/FZAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addAddress(Lcom/fabzat/shop/model/FZAddress;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    .line 173
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    const-string v1, "fz_alert_msg_fieldsNotBlank"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->showMessage(I)V

    goto :goto_0
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 2
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;->onError(Lcom/fabzat/shop/model/FZException;)V

    .line 217
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 280
    if-eqz p2, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->q()V

    .line 282
    :cond_0
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 187
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZUser;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    .line 188
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZUser;->logged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->storeUser(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZNewAddressDialog;->dismiss()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ac:Lcom/fabzat/shop/activities/FZNewAddressDialog$FZOnNewAddressListener;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->ac:Lcom/fabzat/shop/activities/FZNewAddressDialog$FZOnNewAddressListener;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZNewAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->isLogged()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fabzat/shop/activities/FZNewAddressDialog$FZOnNewAddressListener;->onNewAddressCreate(Z)V

    .line 208
    :cond_1
    return-void
.end method
