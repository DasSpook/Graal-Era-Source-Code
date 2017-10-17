.class public Lcom/fabzat/shop/model/FZCartLine;
.super Ljava/lang/Object;
.source "FZCartLine.java"


# instance fields
.field private _archiveFile:Ljava/lang/String;

.field private _archivePathFile:Ljava/lang/String;

.field private _compId:I

.field private _description:Ljava/lang/String;

.field private _imgPreview:Ljava/lang/String;

.field private _label:Ljava/lang/String;

.field private _quantity:I

.field private _shippingUnitPrice:D

.field private _unitPrice:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add()V
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    .line 46
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 71
    instance-of v2, p1, Lcom/fabzat/shop/model/FZCartLine;

    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/fabzat/shop/model/FZCartLine;

    .line 76
    .local v0, "line":Lcom/fabzat/shop/model/FZCartLine;
    iget-object v2, p0, Lcom/fabzat/shop/model/FZCartLine;->_label:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/fabzat/shop/model/FZCartLine;->_imgPreview:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->getImgPreview()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget v2, p0, Lcom/fabzat/shop/model/FZCartLine;->_compId:I

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->getCompId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 79
    iget v2, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 76
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getArchiveFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_archiveFile:Ljava/lang/String;

    return-object v0
.end method

.method public getArchivePathFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_archivePathFile:Ljava/lang/String;

    return-object v0
.end method

.method public getCompId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_compId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getImgPreview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_imgPreview:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_label:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    return v0
.end method

.method public getShippingUnitPrice()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_shippingUnitPrice:D

    return-wide v0
.end method

.method public getUnitPrice()D
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_unitPrice:D

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    .line 55
    iget v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    if-gez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZCartLine;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setArchiveFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "_archiveFile"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fabzat/shop/model/FZCartLine;->_archiveFile:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setArchivePathFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "_archivePathFile"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/fabzat/shop/model/FZCartLine;->_archivePathFile:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCompId(I)V
    .locals 0
    .param p1, "_compId"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/fabzat/shop/model/FZCartLine;->_compId:I

    .line 33
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "_description"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fabzat/shop/model/FZCartLine;->_description:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setImgPreview(Ljava/lang/String;)V
    .locals 0
    .param p1, "_imgPreview"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fabzat/shop/model/FZCartLine;->_imgPreview:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "_label"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fabzat/shop/model/FZCartLine;->_label:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "_quantity"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/fabzat/shop/model/FZCartLine;->_quantity:I

    .line 39
    return-void
.end method

.method public setShippingUnitPrice(D)V
    .locals 0
    .param p1, "_shippingUnitPrice"    # D

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZCartLine;->_shippingUnitPrice:D

    .line 88
    return-void
.end method

.method public setUnitPrice(D)V
    .locals 0
    .param p1, "_unitPrice"    # D

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/fabzat/shop/model/FZCartLine;->_unitPrice:D

    .line 96
    return-void
.end method
