.class public Lcom/fabzat/shop/manager/FZUserInitializer;
.super Ljava/lang/Object;
.source "FZUserInitializer.java"

# interfaces
.implements Lcom/fabzat/shop/dao/FZWebServiceListener;


# instance fields
.field private _context:Landroid/content/Context;

.field private h:Lcom/fabzat/shop/model/FZUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->_context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 33
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fabzat/shop/model/FZUser;->getUser(Landroid/content/Context;)Lcom/fabzat/shop/model/FZUser;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->h:Lcom/fabzat/shop/model/FZUser;

    .line 35
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->isDefined()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/fabzat/shop/dao/FZUrlType;->CONSUMER_AUTH:Lcom/fabzat/shop/dao/FZUrlType;

    iget-object v2, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->_context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/fabzat/shop/dao/FZUrlHelper;->getUrl(Lcom/fabzat/shop/dao/FZUrlType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v2, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->_context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 40
    new-instance v2, Lcom/fabzat/shop/model/FZApplicationInfo;

    iget-object v3, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->_context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/fabzat/shop/model/FZApplicationInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v2}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v4}, Lcom/fabzat/shop/dao/FZWebServicePost;->allowRetries(Z)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    .line 44
    invoke-virtual {v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onError(Lcom/fabzat/shop/model/FZException;)V
    .locals 2
    .param p1, "ex"    # Lcom/fabzat/shop/model/FZException;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/model/FZUser;->destroy(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 51
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZUser;

    iput-object v1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->h:Lcom/fabzat/shop/model/FZUser;

    .line 54
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->h:Lcom/fabzat/shop/model/FZUser;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/fabzat/shop/model/FZUser;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fabzat/shop/model/FZUser;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->h:Lcom/fabzat/shop/model/FZUser;

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->h:Lcom/fabzat/shop/model/FZUser;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZUser;->logged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->h:Lcom/fabzat/shop/model/FZUser;

    iget-object v2, p0, Lcom/fabzat/shop/manager/FZUserInitializer;->_context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/fabzat/shop/model/FZUser;->storeUser(Landroid/content/Context;)V

    .line 62
    :cond_1
    return-void
.end method

.method public onReceiveUI(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method
