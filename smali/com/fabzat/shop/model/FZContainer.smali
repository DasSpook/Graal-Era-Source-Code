.class public Lcom/fabzat/shop/model/FZContainer;
.super Ljava/lang/Object;
.source "FZContainer.java"


# instance fields
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

.field private shop:Lcom/fabzat/shop/model/FZShop;

.field private tiersPrice:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private tiersShipping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponent()Lcom/fabzat/shop/model/FZComponent;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZShop;->getComponent()Lcom/fabzat/shop/model/FZComponent;

    move-result-object v0

    goto :goto_0
.end method

.method public getComponentComputed(I)Lcom/fabzat/shop/model/FZComponentComputed;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZContainer;->getComponent()Lcom/fabzat/shop/model/FZComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZComponent;->getComponentComputed()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZComponentComputed;

    .line 88
    .local v0, "comp":Lcom/fabzat/shop/model/FZComponentComputed;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZComponentComputed;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZShop;->getComponents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCountries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fabzat/shop/model/FZCountry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->countries:Ljava/util/Map;

    return-object v0
.end method

.method public getCountry(Ljava/lang/String;)Lcom/fabzat/shop/model/FZCountry;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->countries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCountry;

    return-object v0
.end method

.method public getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->countries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCountry;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCountry;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZShop;->getId()I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPercentDiscount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZShop;->getPercentDiscount()I

    move-result v0

    return v0
.end method

.method public getPercentShippingDiscount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZShop;->getPercentShippingDiscount()I

    move-result v0

    return v0
.end method

.method public getPrice(ILjava/lang/String;)D
    .locals 3
    .param p1, "priceId"    # I
    .param p2, "currency"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/fabzat/shop/model/FZContainer;->tiersPrice:Ljava/util/Map;

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 48
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getTiersShipping(ILcom/fabzat/shop/model/FZLocaleInfo;Ljava/lang/String;)D
    .locals 2
    .param p1, "id"    # I
    .param p2, "info"    # Lcom/fabzat/shop/model/FZLocaleInfo;
    .param p3, "_countryCode"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->tiersShipping:Ljava/util/Map;

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 73
    invoke-virtual {p2}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 74
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 71
    return-wide v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZContainer;->getComponent()Lcom/fabzat/shop/model/FZComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZContainer;->getComponent()Lcom/fabzat/shop/model/FZComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZComponent;->getComponentComputed()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 19
    :cond_0
    return-void
.end method

.method public isDefined()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZContainer;->getComponent()Lcom/fabzat/shop/model/FZComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/fabzat/shop/model/FZContainer;->shop:Lcom/fabzat/shop/model/FZShop;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZShop;->isLive()Z

    move-result v0

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
