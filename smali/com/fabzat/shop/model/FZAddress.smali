.class public Lcom/fabzat/shop/model/FZAddress;
.super Ljava/lang/Object;
.source "FZAddress.java"


# static fields
.field private static final RETURN:Ljava/lang/String; = "\n"

.field private static final SPACE:Ljava/lang/String; = " "


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private countryId:I

.field private firstname:Ljava/lang/String;

.field private id:I

.field private lastname:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->address1:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 28
    const-string v0, ""

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->address1:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->address2:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    const-string v0, ""

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->address2:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->city:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    const-string v0, ""

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->city:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCountryId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/fabzat/shop/model/FZAddress;->countryId:I

    return v0
.end method

.method public getCountryIdStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/fabzat/shop/model/FZAddress;->countryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->firstname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 44
    const-string v0, ""

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->firstname:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/fabzat/shop/model/FZAddress;->id:I

    return v0
.end method

.method public getLastname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->lastname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    const-string v0, ""

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->lastname:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->postalCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    const-string v0, ""

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->postalCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPreview()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZAddress;->getFirstname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZAddress;->getLastname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZAddress;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fabzat/shop/model/FZAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->state:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    const-string v0, ""

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/model/FZAddress;->state:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "_address1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fabzat/shop/model/FZAddress;->address1:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "_address2"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fabzat/shop/model/FZAddress;->address2:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "_city"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fabzat/shop/model/FZAddress;->city:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setCountryId(I)V
    .locals 0
    .param p1, "_countryId"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/fabzat/shop/model/FZAddress;->countryId:I

    .line 90
    return-void
.end method

.method public setFirstname(Ljava/lang/String;)V
    .locals 0
    .param p1, "_firstname"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fabzat/shop/model/FZAddress;->firstname:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/fabzat/shop/model/FZAddress;->id:I

    .line 25
    return-void
.end method

.method public setLastname(Ljava/lang/String;)V
    .locals 0
    .param p1, "_lastname"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fabzat/shop/model/FZAddress;->lastname:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "_postalCode"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fabzat/shop/model/FZAddress;->postalCode:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "_state"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fabzat/shop/model/FZAddress;->state:Ljava/lang/String;

    .line 73
    return-void
.end method
