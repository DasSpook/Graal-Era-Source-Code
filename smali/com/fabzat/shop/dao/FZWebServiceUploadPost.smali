.class public Lcom/fabzat/shop/dao/FZWebServiceUploadPost;
.super Lcom/fabzat/shop/dao/FZWebServicePost;
.source "FZWebServiceUploadPost.java"

# interfaces
.implements Lcom/fabzat/shop/dao/connection/FZOnProgressListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private cx:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "progressListener"    # Lcom/fabzat/shop/dao/connection/FZOnProgressListener;
    .param p3, "wsUrl"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p3}, Lcom/fabzat/shop/dao/FZWebServicePost;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->cx:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    .line 33
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 40
    :try_start_0
    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_context:Landroid/content/Context;

    invoke-static {v7}, Lcom/fabzat/shop/utils/FZTools;->isConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 41
    new-instance v7, Lcom/fabzat/shop/model/FZError;

    new-instance v8, Lcom/fabzat/shop/model/FZNoConnectionException;

    iget-object v9, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_context:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/fabzat/shop/model/FZNoConnectionException;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/fabzat/shop/model/FZNoConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_error:Lcom/fabzat/shop/model/FZError;

    .line 42
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 92
    :goto_0
    return-object v7

    .line 45
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->createHttpClient(Z)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 47
    .local v3, "http":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_wsUrl:Ljava/lang/String;

    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    sget-object v7, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Hitting: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_wsUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/fabzat/shop/dao/connection/FZHttpEntity;

    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_entityBuilder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-virtual {v7}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-direct {v1, v7, p0}, Lcom/fabzat/shop/dao/connection/FZHttpEntity;-><init>(Lorg/apache/http/HttpEntity;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;)V

    .line 51
    .local v1, "entity":Lcom/fabzat/shop/dao/connection/FZHttpEntity;
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 53
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->onUpdateProgress(I)V

    .line 54
    invoke-interface {v3, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 56
    .local v6, "rep":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 57
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/fabzat/shop/utils/FZTools;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_response:Ljava/lang/String;

    .line 58
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 60
    sget-object v7, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_response:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 65
    .local v2, "gson":Lcom/google/gson/Gson;
    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_response:Ljava/lang/String;

    const-class v8, Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v2, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fabzat/shop/model/FZError;

    iput-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_error:Lcom/fabzat/shop/model/FZError;

    .line 67
    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_error:Lcom/fabzat/shop/model/FZError;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_error:Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZError;->hasError()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    sget-object v7, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->LOG_TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_error:Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v8}, Lcom/fabzat/shop/model/FZError;->getError()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 73
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v7, :cond_2

    .line 80
    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    iget-object v8, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_response:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/fabzat/shop/dao/FZWebServiceListener;->onReceive(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    :cond_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 82
    .end local v1    # "entity":Lcom/fabzat/shop/dao/connection/FZHttpEntity;
    .end local v3    # "http":Lorg/apache/http/client/HttpClient;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "rep":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    :cond_3
    iget-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v7, :cond_4

    .line 87
    new-instance v7, Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->_error:Lcom/fabzat/shop/model/FZError;

    .line 89
    :cond_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->cx:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->cx:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fabzat/shop/dao/connection/FZOnProgressListener;->onUpdateProgress(I)V

    .line 104
    :cond_0
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public onUpdateProgress(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/dao/FZWebServiceUploadPost;->publishProgress([Ljava/lang/Object;)V

    .line 98
    return-void
.end method
