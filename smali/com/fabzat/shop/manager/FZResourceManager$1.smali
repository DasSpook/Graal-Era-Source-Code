.class Lcom/fabzat/shop/manager/FZResourceManager$1;
.super Ljava/lang/Object;
.source "FZResourceManager.java"

# interfaces
.implements Lcom/fabzat/shop/dao/FZWebServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fabzat/shop/manager/FZResourceManager;->loadRemoteResources(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cO:Lcom/fabzat/shop/manager/FZResourceManager;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/manager/FZResourceManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fabzat/shop/manager/FZResourceManager$1;->cO:Lcom/fabzat/shop/manager/FZResourceManager;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 3
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 209
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->u()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading resources : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZResourceManager$1;->cO:Lcom/fabzat/shop/manager/FZResourceManager;

    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADING_ERROR:Lcom/fabzat/shop/model/FZResourceState;

    invoke-static {v0, v1}, Lcom/fabzat/shop/manager/FZResourceManager;->a(Lcom/fabzat/shop/manager/FZResourceManager;Lcom/fabzat/shop/model/FZResourceState;)V

    .line 213
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 186
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 187
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v3, p0, Lcom/fabzat/shop/manager/FZResourceManager$1;->cO:Lcom/fabzat/shop/manager/FZResourceManager;

    new-instance v2, Lcom/fabzat/shop/manager/FZResourceManager$1$1;

    invoke-direct {v2, p0}, Lcom/fabzat/shop/manager/FZResourceManager$1$1;-><init>(Lcom/fabzat/shop/manager/FZResourceManager$1;)V

    invoke-virtual {v2}, Lcom/fabzat/shop/manager/FZResourceManager$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/fabzat/shop/manager/FZResourceManager;->a(Lcom/fabzat/shop/manager/FZResourceManager;Ljava/util/List;)V

    .line 190
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Resources loaded"

    invoke-static {v2, v3}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/fabzat/shop/manager/FZResourceManager$1;->cO:Lcom/fabzat/shop/manager/FZResourceManager;

    sget-object v3, Lcom/fabzat/shop/model/FZResourceState;->LOADED:Lcom/fabzat/shop/model/FZResourceState;

    invoke-static {v2, v3}, Lcom/fabzat/shop/manager/FZResourceManager;->a(Lcom/fabzat/shop/manager/FZResourceManager;Lcom/fabzat/shop/model/FZResourceState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error loading resources"

    invoke-static {v2, v3}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/fabzat/shop/manager/FZResourceManager$1;->cO:Lcom/fabzat/shop/manager/FZResourceManager;

    sget-object v3, Lcom/fabzat/shop/model/FZResourceState;->LOADING_ERROR:Lcom/fabzat/shop/model/FZResourceState;

    invoke-static {v2, v3}, Lcom/fabzat/shop/manager/FZResourceManager;->a(Lcom/fabzat/shop/manager/FZResourceManager;Lcom/fabzat/shop/model/FZResourceState;)V

    goto :goto_0
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 181
    return-void
.end method
