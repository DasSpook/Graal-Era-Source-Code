.class public Lcom/fabzat/shop/manager/FZCartManager;
.super Ljava/lang/Object;
.source "FZCartManager.java"


# static fields
.field private static cI:Lcom/fabzat/shop/manager/FZCartManager;


# instance fields
.field private bQ:Lcom/fabzat/shop/model/FZCart;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/fabzat/shop/model/FZCart;

    invoke-direct {v0}, Lcom/fabzat/shop/model/FZCart;-><init>()V

    iput-object v0, p0, Lcom/fabzat/shop/manager/FZCartManager;->bQ:Lcom/fabzat/shop/model/FZCart;

    .line 28
    return-void
.end method

.method private N()Lcom/fabzat/shop/model/FZCart;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZCartManager;->bQ:Lcom/fabzat/shop/model/FZCart;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/fabzat/shop/manager/FZCartManager;->getCart()Lcom/fabzat/shop/model/FZCart;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/fabzat/shop/manager/FZCartManager;->getCart()Lcom/fabzat/shop/model/FZCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCart;->clear()V

    .line 24
    :cond_0
    return-void
.end method

.method public static getCart()Lcom/fabzat/shop/model/FZCart;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fabzat/shop/manager/FZCartManager;->cI:Lcom/fabzat/shop/manager/FZCartManager;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/fabzat/shop/manager/FZCartManager;

    invoke-direct {v0}, Lcom/fabzat/shop/manager/FZCartManager;-><init>()V

    sput-object v0, Lcom/fabzat/shop/manager/FZCartManager;->cI:Lcom/fabzat/shop/manager/FZCartManager;

    .line 18
    :cond_0
    sget-object v0, Lcom/fabzat/shop/manager/FZCartManager;->cI:Lcom/fabzat/shop/manager/FZCartManager;

    invoke-direct {v0}, Lcom/fabzat/shop/manager/FZCartManager;->N()Lcom/fabzat/shop/model/FZCart;

    move-result-object v0

    return-object v0
.end method

.method public static makeUploadZipFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/fabzat/shop/manager/FZFileManager;

    invoke-direct {v0}, Lcom/fabzat/shop/manager/FZFileManager;-><init>()V

    invoke-static {}, Lcom/fabzat/shop/manager/FZCartManager;->getCart()Lcom/fabzat/shop/model/FZCart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZCart;->line()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/fabzat/shop/manager/FZFileManager;->setUploadFolder(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
