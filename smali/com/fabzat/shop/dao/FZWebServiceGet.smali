.class public Lcom/fabzat/shop/dao/FZWebServiceGet;
.super Landroid/os/AsyncTask;
.source "FZWebServiceGet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private _context:Landroid/content/Context;

.field protected _error:Lcom/fabzat/shop/model/FZError;

.field private _listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

.field private _response:Ljava/lang/String;

.field private _wsUrl:Ljava/lang/String;

.field private cr:I

.field private cs:Z

.field private ct:Z

.field private cu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/fabzat/shop/dao/FZWebServiceGet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/dao/FZWebServiceGet;->LOG_TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "wsUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_wsUrl:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_context:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/fabzat/shop/model/FZError;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    .line 54
    iput v2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cr:I

    .line 55
    iput-boolean v2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cs:Z

    .line 56
    iput-boolean v2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->ct:Z

    .line 57
    iput-boolean v2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cu:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "wsUrl"    # Ljava/lang/String;
    .param p3, "nb"    # I

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_wsUrl:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_context:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/fabzat/shop/model/FZError;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    .line 64
    iput p3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cr:I

    .line 65
    iput-boolean v2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cs:Z

    .line 66
    iput-boolean v2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->ct:Z

    .line 67
    iput-boolean v2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cu:Z

    .line 69
    const v0, 0x7fffffff

    if-lt p3, v0, :cond_0

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/dao/FZWebServiceGet;->cancel(Z)Z

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    new-instance v3, Lcom/fabzat/shop/model/FZError;

    new-instance v4, Lcom/fabzat/shop/model/FZNoConnectionException;

    iget-object v5, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/fabzat/shop/model/FZNoConnectionException;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/fabzat/shop/model/FZNoConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    .line 102
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cs:Z

    .line 103
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 173
    :goto_0
    return-object v3

    .line 109
    :cond_0
    iget-boolean v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cu:Z

    if-eqz v3, :cond_1

    .line 110
    new-instance v3, Lcom/fabzat/shop/dao/connection/FZSSLHelper;

    invoke-direct {v3}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;-><init>()V

    iget-object v4, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_wsUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->getSimpleHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 114
    .local v2, "http":Ljava/net/HttpURLConnection;
    :goto_1
    sget-object v3, Lcom/fabzat/shop/dao/FZWebServiceGet;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Hitting: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_wsUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/fabzat/shop/utils/FZTools;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_response:Ljava/lang/String;

    .line 119
    sget-object v3, Lcom/fabzat/shop/dao/FZWebServiceGet;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_response:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 124
    :try_start_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 125
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_response:Ljava/lang/String;

    const-class v4, Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fabzat/shop/model/FZError;

    iput-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    .line 127
    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZError;->hasError()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    sget-object v3, Lcom/fabzat/shop/dao/FZWebServiceGet;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    invoke-virtual {v4}, Lcom/fabzat/shop/model/FZError;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    .line 112
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    :cond_1
    :try_start_2
    new-instance v3, Lcom/fabzat/shop/dao/connection/FZSSLHelper;

    invoke-direct {v3}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;-><init>()V

    iget-object v4, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_wsUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .restart local v2    # "http":Ljava/net/HttpURLConnection;
    goto :goto_1

    .line 133
    :catch_0
    move-exception v3

    .line 140
    :cond_2
    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v3, :cond_3

    .line 141
    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    iget-object v4, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_response:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/fabzat/shop/dao/FZWebServiceListener;->onReceive(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 173
    :cond_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 144
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/net/SocketTimeoutException;
    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 148
    :cond_4
    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v3, :cond_5

    .line 149
    new-instance v3, Lcom/fabzat/shop/model/FZError;

    new-instance v4, Lcom/fabzat/shop/model/FZNoConnectionException;

    iget-object v5, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/fabzat/shop/model/FZNoConnectionException;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/fabzat/shop/model/FZNoConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    .line 151
    :cond_5
    iput-boolean v7, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cs:Z

    .line 152
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 153
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v0

    .line 154
    .local v0, "e":Ljava/net/ConnectException;
    if-eqz v0, :cond_6

    .line 155
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 157
    :cond_6
    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v3, :cond_7

    .line 158
    new-instance v3, Lcom/fabzat/shop/model/FZError;

    new-instance v4, Lcom/fabzat/shop/model/FZNoConnectionException;

    iget-object v5, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/fabzat/shop/model/FZNoConnectionException;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/fabzat/shop/model/FZNoConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    .line 160
    :cond_7
    iput-boolean v7, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cs:Z

    .line 161
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 163
    .end local v0    # "e":Ljava/net/ConnectException;
    :catch_3
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_8

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :cond_8
    iget-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v3, :cond_9

    .line 168
    new-instance v3, Lcom/fabzat/shop/model/FZError;

    iget-object v4, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_context:Landroid/content/Context;

    const-string v5, "fz_alert_title_errorConnect"

    invoke-static {v5}, Lcom/fabzat/shop/utils/FZTools;->getStringId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fabzat/shop/model/FZError;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

    .line 170
    :cond_9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fabzat/shop/dao/FZWebServiceGet;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public doNotReconnect()Lcom/fabzat/shop/dao/FZWebServiceGet;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->ct:Z

    .line 81
    return-object p0
.end method

.method public noSSL()Lcom/fabzat/shop/dao/FZWebServiceGet;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cu:Z

    .line 86
    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/fabzat/shop/dao/FZWebServiceGet;

    iget-object v1, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_wsUrl:Ljava/lang/String;

    iget v3, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cr:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/fabzat/shop/dao/FZWebServiceGet;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/dao/FZWebServiceGet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->cs:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->ct:Z

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/fabzat/shop/utils/FZTools;->retryConnection(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    iget-object v1, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_response:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/fabzat/shop/dao/FZWebServiceListener;->onReceiveUI(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    new-instance v1, Lcom/fabzat/shop/model/FZException;

    iget-object v2, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_error:Lcom/fabzat/shop/model/FZError;

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

    invoke-virtual {p0, p1}, Lcom/fabzat/shop/dao/FZWebServiceGet;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public setListener(Lcom/fabzat/shop/dao/FZWebServiceListener;)Lcom/fabzat/shop/dao/FZWebServiceGet;
    .locals 0
    .param p1, "listener"    # Lcom/fabzat/shop/dao/FZWebServiceListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fabzat/shop/dao/FZWebServiceGet;->_listener:Lcom/fabzat/shop/dao/FZWebServiceListener;

    .line 76
    return-object p0
.end method
