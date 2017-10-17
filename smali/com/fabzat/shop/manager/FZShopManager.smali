.class public Lcom/fabzat/shop/manager/FZShopManager;
.super Ljava/lang/Object;
.source "FZShopManager.java"


# static fields
.field private static _instance:Lcom/fabzat/shop/manager/FZShopManager;


# instance fields
.field private _shop:Lcom/fabzat/shop/model/FZContainer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fabzat/shop/manager/FZShopManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fabzat/shop/manager/FZShopManager;->_instance:Lcom/fabzat/shop/manager/FZShopManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/fabzat/shop/manager/FZShopManager;

    invoke-direct {v0}, Lcom/fabzat/shop/manager/FZShopManager;-><init>()V

    sput-object v0, Lcom/fabzat/shop/manager/FZShopManager;->_instance:Lcom/fabzat/shop/manager/FZShopManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/fabzat/shop/manager/FZShopManager;->_instance:Lcom/fabzat/shop/manager/FZShopManager;

    return-object v0
.end method


# virtual methods
.method public getShop()Lcom/fabzat/shop/model/FZContainer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZShopManager;->_shop:Lcom/fabzat/shop/model/FZContainer;

    return-object v0
.end method

.method public isDefined()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZShopManager;->_shop:Lcom/fabzat/shop/model/FZContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/manager/FZShopManager;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZContainer;->isDefined()Z

    move-result v0

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
    .line 59
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZShopManager;->_shop:Lcom/fabzat/shop/model/FZContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/manager/FZShopManager;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZContainer;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShop(Ljava/lang/String;)Lcom/fabzat/shop/model/FZContainer;
    .locals 2
    .param p1, "jsonShop"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 38
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZContainer;

    iput-object v1, p0, Lcom/fabzat/shop/manager/FZShopManager;->_shop:Lcom/fabzat/shop/model/FZContainer;

    .line 40
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZShopManager;->_shop:Lcom/fabzat/shop/model/FZContainer;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZShopManager;->_shop:Lcom/fabzat/shop/model/FZContainer;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZContainer;->init()V

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZShopManager;->_shop:Lcom/fabzat/shop/model/FZContainer;

    return-object v1
.end method
