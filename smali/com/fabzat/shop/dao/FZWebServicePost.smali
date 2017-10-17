.class public Lcom/fabzat/shop/dao/FZWebServicePost;
.super Landroid/os/AsyncTask;
.source "FZWebServicePost.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected _context:Landroid/content/Context;

.field protected _entityBuilder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

.field protected _error:Lcom/fabzat/shop/model/FZError;

.field protected _listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

.field protected _response:Ljava/lang/String;

.field protected _wsUrl:Ljava/lang/String;

.field private cs:Z

.field private cv:Z

.field private cw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/fabzat/shop/dao/FZWebServicePost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/dao/FZWebServicePost;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/fabzat/shop/dao/FZWebServiceListener;Ljava/lang/String;Lorg/apache/http/entity/mime/MultipartEntityBuilder;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/fabzat/shop/dao/FZWebServiceListener;
    .param p3, "wsUrl"    # Ljava/lang/String;
    .param p4, "builder"    # Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    iput-object p3, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_wsUrl:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_entityBuilder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 75
    iput-object p2, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    .line 76
    iput-object p1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "wsUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_wsUrl:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    .line 67
    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_entityBuilder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 69
    invoke-direct {p0}, Lcom/fabzat/shop/dao/FZWebServicePost;->init()V

    .line 70
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v1, Lcom/fabzat/shop/model/FZError;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    .line 86
    iput-boolean v3, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cs:Z

    .line 87
    iput-boolean v3, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cv:Z

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cw:Z

    .line 90
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 91
    .local v0, "utf8":Ljava/nio/charset/Charset;
    iget-object v1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_entityBuilder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 94
    const-string v1, "shop[id]"

    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZContainer;->getId()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 95
    return-void
.end method


# virtual methods
.method public addAddress(Lcom/fabzat/shop/model/FZAddress;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "info"    # Lcom/fabzat/shop/model/FZAddress;

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/fabzat/shop/dao/FZPostHelper;->addAddress(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZAddress;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public addApplicationInfo(Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "info"    # Lcom/fabzat/shop/model/FZApplicationInfo;

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/fabzat/shop/dao/FZPostHelper;->addApplicationInfo(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZApplicationInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 170
    sget-object v0, Lcom/fabzat/shop/dao/FZWebServicePost;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_entityBuilder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    sget-object v1, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 172
    return-object p0
.end method

.method public addLocalInfo(Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "info"    # Lcom/fabzat/shop/model/FZLocaleInfo;

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/fabzat/shop/dao/FZPostHelper;->addLocalInfo(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZLocaleInfo;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public addOrder(Lcom/fabzat/shop/model/FZOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "info"    # Lcom/fabzat/shop/model/FZOrder;

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/fabzat/shop/dao/FZPostHelper;->addOrder(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public addOrderLines(Lcom/fabzat/shop/model/FZCart;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "info"    # Lcom/fabzat/shop/model/FZCart;

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/fabzat/shop/dao/FZPostHelper;->addOrderLines(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZCart;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public addParam(Ljava/lang/String;D)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 129
    invoke-static {p2, p3}, Lcom/fabzat/shop/utils/FZTools;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 130
    return-object p0
.end method

.method public addParam(Ljava/lang/String;I)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fabzat/shop/dao/FZWebServicePost;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;

    .line 125
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_entityBuilder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    sget-object v1, Lorg/apache/http/entity/ContentType;->APPLICATION_JSON:Lorg/apache/http/entity/ContentType;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addTextBody(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/ContentType;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 119
    sget-object v0, Lcom/fabzat/shop/dao/FZWebServicePost;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object p0
.end method

.method public addPendingOrder(Lcom/fabzat/shop/model/FZPendingOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "info"    # Lcom/fabzat/shop/model/FZPendingOrder;

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/fabzat/shop/dao/FZPostHelper;->addPendingOrder(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZPendingOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public addPendingOrderNoFile(Lcom/fabzat/shop/model/FZPendingOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "info"    # Lcom/fabzat/shop/model/FZPendingOrder;

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcom/fabzat/shop/dao/FZPostHelper;->addPendingOrderNoFile(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZPendingOrder;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public addRecoveryUserContent(Lcom/fabzat/shop/model/FZRecoveryUserContent;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "info"    # Lcom/fabzat/shop/model/FZRecoveryUserContent;

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/fabzat/shop/dao/FZPostHelper;->addRecoveryUserContent(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZRecoveryUserContent;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public addUserInfo(Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 1
    .param p1, "info"    # Lcom/fabzat/shop/model/FZUser;

    .prologue
    .line 142
    invoke-static {p0, p1}, Lcom/fabzat/shop/dao/FZPostHelper;->addUserInfo(Lcom/fabzat/shop/dao/FZWebServicePost;Lcom/fabzat/shop/model/FZUser;)Lcom/fabzat/shop/dao/FZWebServicePost;

    move-result-object v0

    return-object v0
.end method

.method public allowRetries(Z)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 0
    .param p1, "allowRetry"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cw:Z

    .line 114
    return-object p0
.end method

.method protected createHttpClient(Z)Lorg/apache/http/client/HttpClient;
    .locals 1
    .param p1, "largeTimeout"    # Z

    .prologue
    .line 181
    invoke-static {p1}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->getNewHttpClient(Z)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 191
    :try_start_0
    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/fabzat/shop/utils/FZTools;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 192
    new-instance v6, Lcom/fabzat/shop/model/FZError;

    new-instance v7, Lcom/fabzat/shop/model/FZNoConnectionException;

    iget-object v8, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/fabzat/shop/model/FZNoConnectionException;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZNoConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    .line 193
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cs:Z

    .line 194
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 262
    :goto_0
    return-object v6

    .line 198
    :cond_0
    iget-boolean v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cv:Z

    invoke-virtual {p0, v6}, Lcom/fabzat/shop/dao/FZWebServicePost;->createHttpClient(Z)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 200
    .local v2, "http":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_wsUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 201
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    sget-object v6, Lcom/fabzat/shop/dao/FZWebServicePost;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Hitting: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_wsUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_entityBuilder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-virtual {v6}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 205
    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 207
    .local v5, "rep":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 208
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_response:Ljava/lang/String;

    .line 209
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 211
    sget-object v6, Lcom/fabzat/shop/dao/FZWebServicePost;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_response:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 215
    :try_start_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 216
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_response:Ljava/lang/String;

    const-class v7, Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v1, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fabzat/shop/model/FZError;

    iput-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    .line 218
    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v6}, Lcom/fabzat/shop/model/FZError;->hasError()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 220
    sget-object v6, Lcom/fabzat/shop/dao/FZWebServicePost;->LOG_TAG:Ljava/lang/String;

    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZError;->getError()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    goto/16 :goto_0

    .line 224
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v6

    .line 230
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v6, :cond_2

    .line 231
    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_response:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/fabzat/shop/dao/FZWebServiceListener;->onReceive(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 262
    :cond_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 234
    .end local v2    # "http":Lorg/apache/http/client/HttpClient;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "rep":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Ljava/net/ConnectException;
    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 238
    :cond_3
    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v6, :cond_4

    .line 239
    new-instance v6, Lcom/fabzat/shop/model/FZError;

    new-instance v7, Lcom/fabzat/shop/model/FZNoConnectionException;

    iget-object v8, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/fabzat/shop/model/FZNoConnectionException;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZNoConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    .line 241
    :cond_4
    iput-boolean v10, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cs:Z

    .line 242
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 243
    .end local v0    # "e":Ljava/net/ConnectException;
    :catch_2
    move-exception v0

    .line 244
    .local v0, "e":Ljava/net/SocketTimeoutException;
    if-eqz v0, :cond_5

    .line 245
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 247
    :cond_5
    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v6, :cond_6

    .line 248
    new-instance v6, Lcom/fabzat/shop/model/FZError;

    new-instance v7, Lcom/fabzat/shop/model/FZNoConnectionException;

    iget-object v8, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/fabzat/shop/model/FZNoConnectionException;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZNoConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    .line 250
    :cond_6
    iput-boolean v10, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cs:Z

    .line 251
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 252
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_7

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    :cond_7
    iget-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v6, :cond_8

    .line 257
    new-instance v6, Lcom/fabzat/shop/model/FZError;

    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    const-string v8, "fz_alert_title_errorConnect"

    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    .line 259
    :cond_8
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fabzat/shop/dao/FZWebServicePost;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 286
    new-instance v0, Lcom/fabzat/shop/dao/FZWebServicePost;

    iget-object v1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_wsUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_entityBuilder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Lcom/fabzat/shop/dao/FZWebServiceListener;Ljava/lang/String;Lorg/apache/http/entity/mime/MultipartEntityBuilder;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/dao/FZWebServicePost;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cs:Z

    if-eqz v0, :cond_2

    .line 270
    iget-boolean v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cw:Z

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/fabzat/shop/utils/FZTools;->retryConnection(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZTools;->showConnectionErrorDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    iget-object v1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_response:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/fabzat/shop/dao/FZWebServiceListener;->onReceiveUI(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    new-instance v1, Lcom/fabzat/shop/model/FZException;

    iget-object v2, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_error:Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v2}, Lcom/fabzat/shop/model/FZError;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fabzat/shop/model/FZException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/fabzat/shop/dao/FZWebServiceListener;->onError(Lcom/fabzat/shop/model/FZException;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/fabzat/shop/dao/FZWebServicePost;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 0
    .param p1, "listener"    # Lcom/fabzat/shop/dao/FZWebServiceListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    .line 104
    return-object p0
.end method

.method public setLongTimeout(Z)Lcom/fabzat/shop/dao/FZWebServicePost;
    .locals 0
    .param p1, "isTimeoutLong"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/fabzat/shop/dao/FZWebServicePost;->cv:Z

    .line 109
    return-object p0
.end method
