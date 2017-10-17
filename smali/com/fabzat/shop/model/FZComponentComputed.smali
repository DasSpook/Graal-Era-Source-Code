.class public Lcom/fabzat/shop/model/FZComponentComputed;
.super Ljava/lang/Object;
.source "FZComponentComputed.java"


# instance fields
.field private description:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected id:I

.field private label:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected publicPriceId:I

.field private shippingPriceId:I

.field private volume:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->description:Ljava/util/Map;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->id:I

    return v0
.end method

.method public getLabel(Lcom/fabzat/shop/model/FZLocaleInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Lcom/fabzat/shop/model/FZLocaleInfo;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->label:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZLocaleInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->label:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZLocaleInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->label:Ljava/util/Map;

    const-string v1, "EN"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLabel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->label:Ljava/util/Map;

    return-object v0
.end method

.method public getPublicPriceId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->publicPriceId:I

    return v0
.end method

.method public getShippingPriceId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->shippingPriceId:I

    return v0
.end method

.method public getVolume()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->volume:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeDouble()D
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fabzat/shop/model/FZComponentComputed;->volume:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setDescription(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "description":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fabzat/shop/model/FZComponentComputed;->description:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/fabzat/shop/model/FZComponentComputed;->id:I

    .line 19
    return-void
.end method

.method public setLabel(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "label":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fabzat/shop/model/FZComponentComputed;->label:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public setPublicPriceId(I)V
    .locals 0
    .param p1, "publishedPriceId"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/fabzat/shop/model/FZComponentComputed;->publicPriceId:I

    .line 25
    return-void
.end method

.method public setVolume(Ljava/lang/String;)V
    .locals 0
    .param p1, "volume"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fabzat/shop/model/FZComponentComputed;->volume:Ljava/lang/String;

    .line 52
    return-void
.end method
