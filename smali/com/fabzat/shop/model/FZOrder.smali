.class public Lcom/fabzat/shop/model/FZOrder;
.super Ljava/lang/Object;
.source "FZOrder.java"


# instance fields
.field cX:I

.field cY:Ljava/lang/String;

.field cZ:I

.field da:D

.field db:D

.field dc:D

.field dd:D

.field de:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/fabzat/shop/model/FZOrder;->cZ:I

    return v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fabzat/shop/model/FZOrder;->cY:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentDiscount()D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZOrder;->da:D

    return-wide v0
.end method

.method public getShippingPercent_discount()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZOrder;->db:D

    return-wide v0
.end method

.method public getShopId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/fabzat/shop/model/FZOrder;->cX:I

    return v0
.end method

.method public getTotalAll()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZOrder;->de:D

    return-wide v0
.end method

.method public getTotalBase()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZOrder;->dc:D

    return-wide v0
.end method

.method public getTotalShipping_base()D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZOrder;->dd:D

    return-wide v0
.end method

.method public setAddressId(I)V
    .locals 0
    .param p1, "address_id"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/fabzat/shop/model/FZOrder;->cZ:I

    .line 31
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency_code"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fabzat/shop/model/FZOrder;->cY:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPercentDiscount(D)V
    .locals 0
    .param p1, "percent_discount"    # D

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZOrder;->da:D

    .line 37
    return-void
.end method

.method public setShippingPercent_discount(D)V
    .locals 0
    .param p1, "shipping_percent_discount"    # D

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZOrder;->db:D

    .line 43
    return-void
.end method

.method public setShopid(I)V
    .locals 0
    .param p1, "shop_id"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/fabzat/shop/model/FZOrder;->cX:I

    .line 19
    return-void
.end method

.method public setTotalAll(D)V
    .locals 0
    .param p1, "total_all"    # D

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZOrder;->de:D

    .line 61
    return-void
.end method

.method public setTotalBase(D)V
    .locals 0
    .param p1, "total_base"    # D

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZOrder;->dc:D

    .line 49
    return-void
.end method

.method public setTotalShipping_base(D)V
    .locals 0
    .param p1, "total_shipping_base"    # D

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZOrder;->dd:D

    .line 55
    return-void
.end method
