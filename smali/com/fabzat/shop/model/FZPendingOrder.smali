.class public Lcom/fabzat/shop/model/FZPendingOrder;
.super Ljava/lang/Object;
.source "FZPendingOrder.java"


# instance fields
.field private file:Ljava/io/File;

.field private id:I

.field private uploadToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fabzat/shop/model/FZPendingOrder;->file:Ljava/io/File;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/fabzat/shop/model/FZPendingOrder;->id:I

    return v0
.end method

.method public getUploadToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fabzat/shop/model/FZPendingOrder;->uploadToken:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/fabzat/shop/model/FZPendingOrder;->id:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZPendingOrder;->uploadToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZPendingOrder;->uploadToken:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZPendingOrder;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/model/FZPendingOrder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fabzat/shop/model/FZPendingOrder;->file:Ljava/io/File;

    .line 32
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/fabzat/shop/model/FZPendingOrder;->id:I

    .line 16
    return-void
.end method

.method public setUploadToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadToken"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fabzat/shop/model/FZPendingOrder;->uploadToken:Ljava/lang/String;

    .line 22
    return-void
.end method
