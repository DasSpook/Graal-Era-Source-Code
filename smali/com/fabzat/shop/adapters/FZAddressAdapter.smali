.class public Lcom/fabzat/shop/adapters/FZAddressAdapter;
.super Ljava/lang/Object;
.source "FZAddressAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;
    }
.end annotation


# instance fields
.field private bE:Landroid/view/LayoutInflater;

.field private bF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZAddress;",
            ">;"
        }
    .end annotation
.end field

.field private bG:Ljava/util/Map;
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

.field private bH:Landroid/view/ViewGroup;

.field private bI:Landroid/view/ViewGroup;

.field private bJ:I

.field private bK:Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/fabzat/shop/model/FZAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bE:Landroid/view/LayoutInflater;

    .line 50
    iput-object p2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    .line 51
    const-string v0, "fz_address_linear1"

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bH:Landroid/view/ViewGroup;

    .line 52
    const-string v0, "fz_address_linear2"

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bI:Landroid/view/ViewGroup;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    .line 54
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZContainer;->getCountries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bG:Ljava/util/Map;

    .line 55
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    .line 269
    iget v1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    invoke-direct {p0, v1}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->c(I)Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "tv":Landroid/view/View;
    const-string v1, "fz_background_address_box_on"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getDrawable(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 271
    return-void
.end method

.method private a(Lcom/fabzat/shop/model/FZAddress;)Z
    .locals 3
    .param p1, "address"    # Lcom/fabzat/shop/model/FZAddress;

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getCountryId()I

    move-result v1

    .line 118
    .local v1, "countryId":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "country":Ljava/lang/String;
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bG:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fabzat/shop/model/FZCountry;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZCountry;->isDelivered()Z

    move-result v2

    return v2
.end method

.method private b(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->c(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 153
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bE:Landroid/view/LayoutInflater;

    const-string v6, "fz_address_new_box"

    invoke-static {v6}, Lcom/fabzat/shop/utils/FZTools;->getLayout(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 174
    :goto_0
    div-int/lit8 v5, p1, 0x2

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 175
    .local v4, "v":Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void

    .line 160
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bE:Landroid/view/LayoutInflater;

    const-string v6, "fz_address_box"

    invoke-static {v6}, Lcom/fabzat/shop/utils/FZTools;->getLayout(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 163
    div-int/lit8 v5, p1, 0x2

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "fz_address"

    invoke-static {v6}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 164
    .local v3, "tv":Lcom/fabzat/shop/utils/ui/FZTextView;
    invoke-direct {p0, p1}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->d(I)Lcom/fabzat/shop/model/FZAddress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fabzat/shop/model/FZAddress;->getPreview()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "preview":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/fabzat/shop/utils/ui/FZTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    div-int/lit8 v5, p1, 0x2

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "fz_address_modify"

    invoke-static {v6}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "pen":Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private c(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 187
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bH:Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bI:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private d(I)Lcom/fabzat/shop/model/FZAddress;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZAddress;

    return-object v0
.end method

.method private getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    .line 92
    invoke-virtual {p0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->setLayout()V

    .line 94
    return-void
.end method

.method public getSelectedAddress()Lcom/fabzat/shop/model/FZAddress;
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->isSelectedAddressValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    iget v1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZAddress;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedAddressId()I
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->isSelectedAddressValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    iget v1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZAddress;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZAddress;->getId()I

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isSelectedAddressValid()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    .line 105
    :cond_0
    iget v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    if-gez v0, :cond_1

    move v0, v1

    .line 108
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    iget v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZAddress;

    invoke-direct {p0, v0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->a(Lcom/fabzat/shop/model/FZAddress;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bK:Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 237
    .local v0, "position":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "fz_address_modify"

    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->getId(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 238
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bK:Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;

    if-eqz v2, :cond_0

    .line 239
    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bK:Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;

    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fabzat/shop/model/FZAddress;

    invoke-interface {v3, v0, v2}, Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;->onFZAddressModifyClick(ILcom/fabzat/shop/model/FZAddress;)V

    .line 263
    .end local v0    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local v0    # "position":I
    :cond_1
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 246
    iget v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    if-ltz v2, :cond_2

    .line 247
    iget v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    invoke-direct {p0, v2}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->c(I)Landroid/view/ViewGroup;

    move-result-object v2

    iget v3, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 248
    .local v1, "tv":Landroid/view/View;
    const-string v2, "fz_address_box"

    invoke-static {v2}, Lcom/fabzat/shop/utils/FZTools;->getDrawable(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    .end local v1    # "tv":Landroid/view/View;
    :cond_2
    iput v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    .line 254
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->D()V

    .line 256
    iget-object v3, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bK:Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;

    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fabzat/shop/model/FZAddress;

    invoke-interface {v3, v2}, Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;->onFZAddressClick(Lcom/fabzat/shop/model/FZAddress;)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v2, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bK:Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;

    invoke-interface {v2}, Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;->onFZAddressAddClick()V

    goto :goto_0
.end method

.method public setAddresses(Ljava/util/List;)Lcom/fabzat/shop/adapters/FZAddressAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZAddress;",
            ">;)",
            "Lcom/fabzat/shop/adapters/FZAddressAdapter;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/fabzat/shop/model/FZAddress;>;"
    iput-object p1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    .line 74
    return-object p0
.end method

.method public setLayout()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bH:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 197
    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bI:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 213
    return-void

    .line 201
    :cond_0
    invoke-direct {p0, v0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->b(I)V

    .line 203
    iget v1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bF:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZAddress;

    invoke-direct {p0, v1}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->a(Lcom/fabzat/shop/model/FZAddress;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iput v0, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bJ:I

    .line 206
    invoke-direct {p0}, Lcom/fabzat/shop/adapters/FZAddressAdapter;->D()V

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setListener(Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;)Lcom/fabzat/shop/adapters/FZAddressAdapter;
    .locals 0
    .param p1, "listener"    # Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/fabzat/shop/adapters/FZAddressAdapter;->bK:Lcom/fabzat/shop/adapters/FZAddressAdapter$FZOnAddressClickListener;

    .line 64
    return-object p0
.end method
