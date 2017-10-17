.class public Lcom/fabzat/shop/activities/FZUpdateAddressDialog;
.super Lcom/fabzat/shop/activities/FZDialog;
.source "FZUpdateAddressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;,
        Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;
    }
.end annotation


# instance fields
.field private T:Landroid/view/View;

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

.field private bw:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;

.field private bx:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

.field private by:Lcom/fabzat/shop/model/FZAddress;

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
.method public constructor <init>(Lcom/fabzat/shop/activities/FZActivity;Lcom/fabzat/shop/model/FZAddress;)V
    .locals 2
    .param p2, "address"    # Lcom/fabzat/shop/model/FZAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fabzat/shop/activities/FZActivity;",
            ":",
            "Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;",
            ">(TT;",
            "Lcom/fabzat/shop/model/FZAddress;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "activity":Lcom/fabzat/shop/activities/FZActivity;, "TT;"
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;-><init>(Lcom/fabzat/shop/activities/FZActivity;)V

    .line 72
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->bw:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;

    .line 73
    iput-object p2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    .line 75
    const-string v0, "fz_address"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->setContentView(Ljava/lang/String;)V

    .line 77
    const-string v0, "fz_progressbar"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->T:Landroid/view/View;

    .line 78
    const-string v0, "fz_firstname"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ad:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 79
    const-string v0, "fz_lastname"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ae:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 80
    const-string v0, "fz_address_line1"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->af:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 81
    const-string v0, "fz_address_line2"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ag:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 82
    const-string v0, "fz_address_city"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ah:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 83
    const-string v0, "fz_address_postalcode"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ai:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 84
    const-string v0, "fz_address_state"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZEditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->aj:Lcom/fabzat/shop/utils/ui/FZEditText;

    .line 85
    const-string v0, "fz_address_country"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ak:Landroid/widget/EditText;

    .line 87
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZContainer;->getCountries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->countries:Ljava/util/Map;

    .line 88
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->p()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->am:[Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->C()V

    .line 92
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ak:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 93
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ak:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ak:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const-string v0, "fz_navbar_title_addAddress"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->setWindowTitle(Ljava/lang/String;)V

    .line 97
    const-string v0, "fz_navbar_btn_validate"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->setNextButton(I)V

    .line 99
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v0}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    .line 101
    const-string v0, "fz_next_btn"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const-string v0, "fz_btn_delete"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->af:Lcom/fabzat/shop/utils/ui/FZEditText;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZAddress;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ag:Lcom/fabzat/shop/utils/ui/FZEditText;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZAddress;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ad:Lcom/fabzat/shop/utils/ui/FZEditText;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZAddress;->getFirstname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ae:Lcom/fabzat/shop/utils/ui/FZEditText;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZAddress;->getLastname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ah:Lcom/fabzat/shop/utils/ui/FZEditText;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->aj:Lcom/fabzat/shop/utils/ui/FZEditText;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZAddress;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ai:Lcom/fabzat/shop/utils/ui/FZEditText;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ak:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->countries:Ljava/util/Map;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZAddress;->getCountryIdStr()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCountry;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCountry;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZAddress;->getCountryId()I

    move-result v0

    iput v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->al:I

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->countries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 140
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCountry;

    .line 141
    .local v0, "c":Lcom/fabzat/shop/model/FZCountry;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCountry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCountry;->getId()I

    move-result v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->al:I

    return-void
.end method

.method private a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z
    .locals 1
    .param p1, "field"    # Lcom/fabzat/shop/utils/ui/FZEditText;

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/fabzat/shop/utils/ui/FZEditText;->isFilled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/fabzat/shop/utils/ui/FZEditText;->showError()V

    .line 297
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->am:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ak:Landroid/widget/EditText;

    return-object v0
.end method

.method private p()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->countries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 127
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZCountry;

    .line 128
    .local v1, "c":Lcom/fabzat/shop/model/FZCountry;
    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCountry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->hideKeyboard()V

    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->am:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 157
    const v1, 0x104000a

    new-instance v2, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$1;

    invoke-direct {v2, p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$1;-><init>(Lcom/fabzat/shop/activities/FZUpdateAddressDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 166
    return-void
.end method

.method private r()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->af:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ad:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ae:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ah:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ai:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->a(Lcom/fabzat/shop/utils/ui/FZEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ak:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ak:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ak:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->af:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v2}, Lcom/fabzat/shop/utils/ui/FZEditText;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private s()Lcom/fabzat/shop/model/FZAddress;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->af:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setAddress1(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ag:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setAddress2(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ad:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setFirstname(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ae:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setLastname(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ah:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setCity(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->ai:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setPostalCode(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->aj:Lcom/fabzat/shop/utils/ui/FZEditText;

    invoke-virtual {v1}, Lcom/fabzat/shop/utils/ui/FZEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setState(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    iget v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->al:I

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZAddress;->setCountryId(I)V

    .line 318
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "fz_address_country"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->getId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->q()V

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "fz_btn_delete"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->getId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->hideKeyboard()V

    .line 180
    sget-object v1, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bB:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->bx:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    .line 181
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->T:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_REMOVE_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1, v2}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v1, v2, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 186
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 187
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->by:Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addAddress(Lcom/fabzat/shop/model/FZAddress;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    .line 190
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "fz_next_btn"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->getId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->hideKeyboard()V

    .line 199
    sget-object v1, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bA:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->bx:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    .line 201
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->T:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_UPDATE_ADDRESS:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-static {v1, v2}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0    # "url":Ljava/lang/String;
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v1, v2, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 206
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v3, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 207
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 209
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->s()Lcom/fabzat/shop/model/FZAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addAddress(Lcom/fabzat/shop/model/FZAddress;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    .line 210
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 213
    .end local v0    # "url":Ljava/lang/String;
    :cond_3
    const-string v1, "fz_alert_msg_fieldsNotBlank"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->showMessage(I)V

    goto :goto_0
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 2
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZDialog;->onError(Lcom/fabzat/shop/model/FZException;)V

    .line 261
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 323
    if-eqz p2, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->q()V

    .line 325
    :cond_0
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 226
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZUser;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    .line 228
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->logged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->_activity:Lcom/fabzat/shop/activities/FZActivity;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/model/FZUser;->storeUser(Landroid/content/Context;)V

    .line 231
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->dismiss()V

    .line 234
    :cond_0
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->bw:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->bx:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    sget-object v1, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bA:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    if-ne v0, v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->bw:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->isLogged()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;->onUpdateAddressCreate(Z)V

    .line 251
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->dismiss()V

    .line 252
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->bx:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    sget-object v1, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;->bB:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$a;

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->bw:Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZUpdateAddressDialog;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->logged()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fabzat/shop/activities/FZUpdateAddressDialog$FZOnUpdateAddressListener;->onDeleteAddressCreate(Z)V

    goto :goto_0
.end method
