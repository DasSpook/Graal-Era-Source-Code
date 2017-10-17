.class public Lcom/fabzat/shop/dao/FZPostHelper;
.super Ljava/lang/Object;
.source "FZPostHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAddress(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZAddress;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 3
    .param p0, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;
    .param p1, "info"    # Lcom/fabzat/shop/model/FZAddress;

    .prologue
    .line 54
    const-string v0, "consumer[address][id]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 55
    const-string v1, "consumer[address][address1]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 56
    const-string v1, "consumer[address][address2]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 57
    const-string v1, "consumer[address][firstname]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getFirstname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 58
    const-string v1, "consumer[address][lastname]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getLastname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 59
    const-string v1, "consumer[address][postal_code]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 60
    const-string v1, "consumer[address][state]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 61
    const-string v1, "consumer[address][city]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 62
    const-string v1, "consumer[address][countryId]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZAddress;->getCountryId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public static addApplicationInfo(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 3
    .param p0, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;
    .param p1, "info"    # Lcom/fabzat/shop/model/FZApplicationInfo;

    .prologue
    .line 27
    .line 28
    const-string v0, "app[platform]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZApplicationInfo;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 29
    const-string v1, "app[version]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZApplicationInfo;->getVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 27
    return-object v0
.end method

.method public static addLocalInfo(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 3
    .param p0, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;
    .param p1, "info"    # Lcom/fabzat/shop/model/FZLocaleInfo;

    .prologue
    .line 33
    .line 34
    const-string v0, "locals[lang]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZLocaleInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 35
    const-string v1, "locals[original_lang]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZLocaleInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 36
    const-string v1, "_locale"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZLocaleInfo;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 37
    const-string v1, "locals[currency]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static addOrder(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 5
    .param p0, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;
    .param p1, "info"    # Lcom/fabzat/shop/model/FZOrder;

    .prologue
    .line 66
    const-string v0, "order[shop_id]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZOrder;->getShopId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 67
    const-string v1, "order[currency_code]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZOrder;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 68
    const-string v1, "order[address_id]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZOrder;->getAddressId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 69
    const-string v1, "order[percent_discount]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZOrder;->getPercentDiscount()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;D)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 70
    const-string v1, "order[shipping_percent_discount]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZOrder;->getShippingPercent_discount()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;D)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 71
    const-string v1, "order[total_base]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZOrder;->getTotalBase()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 72
    const-string v1, "order[total_shipping_base]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZOrder;->getTotalShipping_base()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 73
    const-string v1, "order[total_all]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZOrder;->getTotalAll()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public static addOrderLines(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZCart;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 9
    .param p0, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;
    .param p1, "info"    # Lcom/fabzat/shop/model/FZCart;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZCart;->line()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    return-object p0

    .line 81
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZCartLine;

    .line 83
    .local v1, "line":Lcom/fabzat/shop/model/FZCartLine;
    const-string v3, "order[lines][%d][unit_price]"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCartLine;->getUnitPrice()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 84
    const-string v3, "order[lines][%d][shipping_unit_price]"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCartLine;->getShippingUnitPrice()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 85
    const-string v3, "order[lines][%d][quantity]"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 86
    const-string v3, "order[lines][%d][component_computed_id]"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCartLine;->getCompId()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 87
    const-string v3, "order[lines][%d][label]"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCartLine;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 88
    const-string v3, "order[lines][%d][game_base_file]"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCartLine;->getArchiveFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 89
    const-string v3, "order[lines][%d][game_control_file]"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCartLine;->getImgPreview()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fabzat/shop/manager/FZFileManager;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static addPendingOrder(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZPendingOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 3
    .param p0, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;
    .param p1, "info"    # Lcom/fabzat/shop/model/FZPendingOrder;

    .prologue
    .line 98
    const-string v0, "order[id]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZPendingOrder;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 99
    const-string v1, "order[uploadToken]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZPendingOrder;->getUploadToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 100
    const-string v1, "uploadFile"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZPendingOrder;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addFile(Ljava/lang/String;Ljava/io/File;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public static addPendingOrderNoFile(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZPendingOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 3
    .param p0, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;
    .param p1, "info"    # Lcom/fabzat/shop/model/FZPendingOrder;

    .prologue
    .line 104
    const-string v0, "order[id]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZPendingOrder;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 105
    const-string v1, "order[uploadToken]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZPendingOrder;->getUploadToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method public static addRecoveryUserContent(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZRecoveryUserContent;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 3
    .param p0, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;
    .param p1, "info"    # Lcom/fabzat/shop/model/FZRecoveryUserContent;

    .prologue
    .line 46
    const-string v0, "consumer[id]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZRecoveryUserContent;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 47
    const-string v1, "consumer[username]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZRecoveryUserContent;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 48
    const-string v1, "consumer[token_link]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZRecoveryUserContent;->getTokenLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    .line 49
    const-string v1, "consumer[token_mail]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZRecoveryUserContent;->getTokenMail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 50
    invoke-virtual {p1, p0}, Lcom/fabzat/shop/model/FZRecoveryUserContent;->addParamPassword(Lcom/fabzat/shop/dao/FZWebServicePost;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public static addUserInfo(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 2
    .param p0, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;
    .param p1, "info"    # Lcom/fabzat/shop/model/FZUser;

    .prologue
    .line 41
    const-string v0, "consumer[username]"

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZUser;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 42
    invoke-virtual {p1, p0}, Lcom/fabzat/shop/model/FZUser;->addParamPassword(Lcom/fabzat/shop/dao/FZWebServicePost;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method
