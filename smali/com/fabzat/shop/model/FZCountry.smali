.class public Lcom/fabzat/shop/model/FZCountry;
.super Ljava/lang/Object;
.source "FZCountry.java"


# instance fields
.field cV:Ljava/lang/String;

.field cW:Z

.field id:I

.field label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCountry;->cV:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/fabzat/shop/model/FZCountry;->id:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fabzat/shop/model/FZCountry;->label:Ljava/lang/String;

    return-object v0
.end method

.method public isDelivered()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/fabzat/shop/model/FZCountry;->cW:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fabzat/shop/model/FZCountry;->cV:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setDelivered(Z)V
    .locals 0
    .param p1, "isDelivered"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/fabzat/shop/model/FZCountry;->cW:Z

    .line 32
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/fabzat/shop/model/FZCountry;->id:I

    .line 14
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fabzat/shop/model/FZCountry;->label:Ljava/lang/String;

    .line 26
    return-void
.end method
