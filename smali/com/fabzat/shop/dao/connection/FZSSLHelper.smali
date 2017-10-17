.class public Lcom/fabzat/shop/dao/connection/FZSSLHelper;
.super Ljava/lang/Object;
.source "FZSSLHelper.java"


# static fields
.field public static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field private static cF:Ljava/security/cert/Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/fabzat/shop/dao/connection/FZSSLHelper$1;

    invoke-direct {v0}, Lcom/fabzat/shop/dao/connection/FZSSLHelper$1;-><init>()V

    sput-object v0, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private M()Ljavax/net/ssl/SSLContext;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 224
    :try_start_0
    invoke-direct {p0}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    .line 227
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "tmfAlgorithm":Ljava/lang/String;
    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 229
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 232
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 233
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v4    # "tmfAlgorithm":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    .line 239
    goto :goto_0
.end method

.method private getKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "keyStoreType":Ljava/lang/String;
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 246
    .local v0, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v0, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 247
    const-string v2, "ca"

    sget-object v3, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->cF:Ljava/security/cert/Certificate;

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 248
    return-object v0
.end method

.method public static getNewHttpClient(Z)Lorg/apache/http/client/HttpClient;
    .locals 12
    .param p0, "largeTimeout"    # Z

    .prologue
    const/16 v6, 0x1388

    .line 261
    :try_start_0
    sget-boolean v8, Lcom/fabzat/shop/utils/FZConstants;->SSL_ACCEPT_ALL:Z

    if-eqz v8, :cond_1

    .line 263
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 264
    .local v7, "trustStore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 266
    new-instance v4, Lcom/fabzat/shop/dao/connection/FZSSLSocketFactory;

    invoke-direct {v4, v7}, Lcom/fabzat/shop/dao/connection/FZSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 273
    .end local v7    # "trustStore":Ljava/security/KeyStore;
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 275
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 276
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 277
    const-string v8, "UTF-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 280
    if-eqz p0, :cond_2

    move v5, v6

    .line 281
    .local v5, "timeoutConnection":I
    :goto_1
    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 284
    if-eqz p0, :cond_0

    const/16 v6, 0x61a8

    .line 285
    .local v6, "timeoutSocket":I
    :cond_0
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 288
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 289
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 290
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v4, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 292
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 294
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 297
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5    # "timeoutConnection":I
    .end local v6    # "timeoutSocket":I
    :goto_2
    return-object v8

    .line 269
    :cond_1
    new-instance v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v8, Lcom/fabzat/shop/dao/connection/FZSSLHelper;

    invoke-direct {v8}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;-><init>()V

    invoke-direct {v8}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    goto :goto_0

    .line 280
    .restart local v2    # "params":Lorg/apache/http/params/HttpParams;
    :cond_2
    const/16 v5, 0xbb8

    goto :goto_1

    .line 295
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "FZSSL"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;)Ljava/security/cert/Certificate;
    .locals 7
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 65
    :try_start_0
    invoke-static {}, Lcom/fabzat/shop/utils/FZTools;->isPriorToHoneycomb()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const/4 v3, 0x1

    sput-boolean v3, Lcom/fabzat/shop/utils/FZConstants;->SSL_ACCEPT_ALL:Z

    .line 68
    :cond_0
    const/4 v3, 0x0

    sput-object v3, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->cF:Ljava/security/cert/Certificate;

    .line 71
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 72
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "fabzat_com"

    invoke-static {v5}, Lcom/fabzat/shop/utils/FZTools;->getRaw(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    sput-object v3, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->cF:Ljava/security/cert/Certificate;

    .line 78
    const-class v3, Lcom/fabzat/shop/dao/connection/FZSSLHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "ca="

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->cF:Ljava/security/cert/Certificate;

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v3, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->cF:Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 91
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 82
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    .line 83
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 84
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 91
    goto :goto_0
.end method

.method public static trustAllHosts()V
    .locals 5

    .prologue
    .line 96
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/fabzat/shop/dao/connection/FZSSLHelper$2;

    invoke-direct {v4}, Lcom/fabzat/shop/dao/connection/FZSSLHelper$2;-><init>()V

    aput-object v4, v2, v3

    .line 116
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 117
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 119
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 145
    .local v2, "http":Ljava/net/HttpURLConnection;
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "conn":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    sget-boolean v4, Lcom/fabzat/shop/utils/FZConstants;->SSL_ACCEPT_ALL:Z

    if-eqz v4, :cond_0

    .line 151
    invoke-static {}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->trustAllHosts()V

    .line 153
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 154
    .local v3, "https":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v4, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 155
    move-object v2, v3

    .line 177
    .end local v3    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    const/16 v4, 0xbb8

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 180
    return-object v2

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->M()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 162
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 163
    .restart local v3    # "https":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v4, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 165
    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 169
    :cond_1
    move-object v2, v3

    .line 173
    goto :goto_0

    .line 174
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .end local v3    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .end local v2    # "http":Ljava/net/HttpURLConnection;
    check-cast v2, Ljava/net/HttpURLConnection;

    .restart local v2    # "http":Ljava/net/HttpURLConnection;
    goto :goto_0
.end method

.method public getSimpleHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 196
    .local v1, "http":Ljava/net/HttpURLConnection;
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "conn":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-static {}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->trustAllHosts()V

    .line 202
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 203
    .local v2, "https":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v3, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 204
    move-object v1, v2

    .line 210
    .end local v2    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    const/16 v3, 0xbb8

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 213
    return-object v1

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1    # "http":Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .restart local v1    # "http":Ljava/net/HttpURLConnection;
    goto :goto_0
.end method
