.class public Lcom/fabzat/shop/model/FZ3DResource;
.super Ljava/lang/Object;
.source "FZ3DResource.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x348889780265214bL


# instance fields
.field private localPath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private preview:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/fabzat/shop/model/FZ3DResource;->localPath:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "preview"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/fabzat/shop/model/FZ3DResource;->name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/fabzat/shop/model/FZ3DResource;->path:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/fabzat/shop/model/FZ3DResource;->preview:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public get3DModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fabzat/shop/model/FZ3DResource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getForPreview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fabzat/shop/model/FZ3DResource;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/fabzat/shop/model/FZ3DResource;->localPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fabzat/shop/model/FZ3DResource;->localPath:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    new-instance v0, Lcom/fabzat/shop/manager/FZFileManager;

    invoke-direct {v0}, Lcom/fabzat/shop/manager/FZFileManager;-><init>()V

    .line 74
    .local v0, "manager":Lcom/fabzat/shop/manager/FZFileManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->getFolderPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fabzat/shop/model/FZ3DResource;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fabzat/shop/manager/FZFileManager;->getObjectFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/model/FZ3DResource;->localPath:Ljava/lang/String;

    .line 77
    .end local v0    # "manager":Lcom/fabzat/shop/manager/FZFileManager;
    :cond_1
    iget-object v1, p0, Lcom/fabzat/shop/model/FZ3DResource;->localPath:Ljava/lang/String;

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fabzat/shop/model/FZ3DResource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isPathRemote()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/fabzat/shop/model/FZ3DResource;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/fabzat/shop/model/FZ3DResource;->path:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fabzat/shop/model/FZ3DResource;->path:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public set3DModelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_3dModelName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fabzat/shop/model/FZ3DResource;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "_path"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fabzat/shop/model/FZ3DResource;->path:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .locals 0
    .param p1, "_preview"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fabzat/shop/model/FZ3DResource;->preview:Ljava/lang/String;

    .line 59
    return-void
.end method
