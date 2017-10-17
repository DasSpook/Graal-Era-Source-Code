.class public Lcom/fabzat/shop/model/FZCart;
.super Ljava/lang/Object;
.source "FZCart.java"


# instance fields
.field private _lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZCartLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZCartLine;
    .locals 3
    .param p1, "line"    # Lcom/fabzat/shop/model/FZCartLine;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 109
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCartLine;

    .line 110
    .local v0, "l":Lcom/fabzat/shop/model/FZCartLine;
    invoke-virtual {v0, p1}, Lcom/fabzat/shop/model/FZCartLine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private d(Lcom/fabzat/shop/model/FZCartLine;)Z
    .locals 3
    .param p1, "line"    # Lcom/fabzat/shop/model/FZCartLine;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 118
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCartLine;

    .line 119
    .local v0, "l":Lcom/fabzat/shop/model/FZCartLine;
    invoke-virtual {v0, p1}, Lcom/fabzat/shop/model/FZCartLine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addCartLine(Lcom/fabzat/shop/model/FZCartLine;)V
    .locals 1
    .param p1, "line"    # Lcom/fabzat/shop/model/FZCartLine;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-direct {p0, p1}, Lcom/fabzat/shop/model/FZCart;->d(Lcom/fabzat/shop/model/FZCartLine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-direct {p0, p1}, Lcom/fabzat/shop/model/FZCart;->c(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZCartLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->add()V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    :cond_0
    return-void
.end method

.method public get(I)Lcom/fabzat/shop/model/FZCartLine;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCartLine;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOneProduct()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZCartLine;

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 83
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLastLine(Lcom/fabzat/shop/model/FZCartLine;)Z
    .locals 3
    .param p1, "line"    # Lcom/fabzat/shop/model/FZCartLine;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 69
    invoke-direct {p0, p1}, Lcom/fabzat/shop/model/FZCart;->d(Lcom/fabzat/shop/model/FZCartLine;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/fabzat/shop/model/FZCart;->c(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZCartLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZCartLine;->getQuantity()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 71
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 69
    goto :goto_0

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public line()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZCartLine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public substractCartLine(Lcom/fabzat/shop/model/FZCartLine;)Z
    .locals 2
    .param p1, "line"    # Lcom/fabzat/shop/model/FZCartLine;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/fabzat/shop/model/FZCart;->d(Lcom/fabzat/shop/model/FZCartLine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/fabzat/shop/model/FZCart;->c(Lcom/fabzat/shop/model/FZCartLine;)Lcom/fabzat/shop/model/FZCartLine;

    move-result-object v0

    .line 49
    .local v0, "l":Lcom/fabzat/shop/model/FZCartLine;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZCartLine;->remove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/fabzat/shop/model/FZCart;->_lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    .end local v0    # "l":Lcom/fabzat/shop/model/FZCartLine;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
