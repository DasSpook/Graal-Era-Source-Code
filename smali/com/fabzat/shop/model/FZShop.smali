.class public Lcom/fabzat/shop/model/FZShop;
.super Ljava/lang/Object;
.source "FZShop.java"


# instance fields
.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZComponent;",
            ">;"
        }
    .end annotation
.end field

.field private date:Lcom/fabzat/shop/model/FZDate;

.field private id:I

.field private isLive:Z

.field private percent_discount:I

.field private percent_shipping_discount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponent()Lcom/fabzat/shop/model/FZComponent;
    .locals 3

    .prologue
    .line 24
    iget-object v1, p0, Lcom/fabzat/shop/model/FZShop;->components:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/fabzat/shop/model/FZShop;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 29
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 25
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZComponent;

    .line 26
    .local v0, "comp":Lcom/fabzat/shop/model/FZComponent;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZComponent;->isIs3DObject()Z

    move-result v2

    if-eqz v2, :cond_0

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
    .line 20
    iget-object v0, p0, Lcom/fabzat/shop/model/FZShop;->components:Ljava/util/List;

    return-object v0
.end method

.method public getDate()Lcom/fabzat/shop/model/FZDate;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fabzat/shop/model/FZShop;->date:Lcom/fabzat/shop/model/FZDate;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/fabzat/shop/model/FZShop;->id:I

    return v0
.end method

.method public getPercentDiscount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fabzat/shop/model/FZShop;->percent_discount:I

    return v0
.end method

.method public getPercentShippingDiscount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fabzat/shop/model/FZShop;->percent_shipping_discount:I

    return v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/fabzat/shop/model/FZShop;->isLive:Z

    return v0
.end method
