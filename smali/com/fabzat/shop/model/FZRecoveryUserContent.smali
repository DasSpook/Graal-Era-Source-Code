.class public Lcom/fabzat/shop/model/FZRecoveryUserContent;
.super Ljava/lang/Object;
.source "FZRecoveryUserContent.java"


# instance fields
.field private id:I

.field private password:Ljava/lang/String;

.field private tokenLink:Ljava/lang/String;

.field private tokenMail:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addParamPassword(Lcom/fabzat/shop/dao/FZWebServicePost;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 2
    .param p1, "post"    # Lcom/fabzat/shop/dao/FZWebServicePost;

    .prologue
    .line 35
    const-string v0, "consumer[password]"

    iget-object v1, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->id:I

    return v0
.end method

.method public getTokenLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->tokenLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->tokenMail:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->id:I

    .line 15
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->password:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setTokenLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "token_link"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->tokenLink:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setTokenMail(Ljava/lang/String;)V
    .locals 0
    .param p1, "token_mail"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->tokenMail:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fabzat/shop/model/FZRecoveryUserContent;->username:Ljava/lang/String;

    .line 18
    return-void
.end method
