.class public Lcom/tapjoy/TapjoyURLConnection;
.super Ljava/lang/Object;
.source "TapjoyURLConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyURLConnection"

.field public static final TYPE_GET:I = 0x0

.field public static final TYPE_POST:I = 0x1

.field public static unitTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyURLConnection;->unitTestMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 214
    .local v1, "contentLength":Ljava/lang/String;
    move-object v4, p1

    .line 217
    .local v4, "requestURL":Ljava/lang/String;
    :try_start_0
    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    const-string v5, "TapjoyURLConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestURL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 222
    .local v3, "httpURL":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 223
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v5, 0x3a98

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 224
    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 225
    const-string v5, "content-length"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 232
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "httpURL":Ljava/net/URL;
    :goto_0
    const-string v5, "TapjoyURLConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content-length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-object v1

    .line 227
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "TapjoyURLConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRedirectFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "getRedirectOnly"    # Z

    .prologue
    .line 63
    new-instance v16, Lcom/tapjoy/TapjoyHttpURLResponse;

    invoke-direct/range {v16 .. v16}, Lcom/tapjoy/TapjoyHttpURLResponse;-><init>()V

    .line 64
    .local v16, "tapjoyResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    const/4 v3, 0x0

    .line 65
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 66
    .local v9, "rd":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 67
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 71
    .local v8, "line":Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "requestURL":Ljava/lang/String;
    const-string v18, "TapjoyURLConnection"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-nez p3, :cond_2

    const-string v17, "get"

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-boolean v17, Lcom/tapjoy/TapjoyURLConnection;->unitTestMode:Z

    if-eqz v17, :cond_4

    .line 78
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 81
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 83
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v11, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 84
    .local v11, "request":Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v2, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 92
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpPost;
    .local v13, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    .line 94
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v9    # "rd":Ljava/io/BufferedReader;
    .local v10, "rd":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 127
    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .end local v10    # "rd":Ljava/io/BufferedReader;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    if-nez p4, :cond_8

    .line 129
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 131
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .local v15, "sb":Ljava/lang/StringBuilder;
    :goto_3
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 133
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 164
    :catch_0
    move-exception v5

    move-object v10, v9

    .line 166
    .end local v9    # "rd":Ljava/io/BufferedReader;
    .end local v12    # "requestURL":Ljava/lang/String;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    :goto_4
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz v3, :cond_d

    :try_start_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    .line 175
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 176
    .end local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 178
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :goto_5
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 180
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 186
    :catch_1
    move-exception v6

    .line 188
    .local v6, "ex":Ljava/lang/Exception;
    :goto_6
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception trying to get error code/content: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_7
    const-string v17, "TapjoyURLConnection"

    const-string v18, "--------------------"

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "response status: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "response size: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->contentLength:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v17, "TapjoyURLConnection"

    const-string v18, "response: "

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 198
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "redirectURL: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    const-string v17, "TapjoyURLConnection"

    const-string v18, "--------------------"

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-object v16

    .line 73
    .restart local v12    # "requestURL":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string v17, "post"

    goto/16 :goto_0

    .line 88
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :cond_3
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v11, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 89
    .local v11, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v2, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    goto/16 :goto_1

    .line 98
    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 99
    .local v7, "httpURL":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 102
    if-eqz p4, :cond_5

    .line 103
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 105
    :cond_5
    const/16 v17, 0x3a98

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 106
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 109
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 111
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 114
    :cond_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 116
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    .line 119
    if-nez p4, :cond_0

    .line 122
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v9    # "rd":Ljava/io/BufferedReader;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 136
    .end local v7    # "httpURL":Ljava/net/URL;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v14, v15

    .line 139
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    :try_start_7
    move-object/from16 v0, v16

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    move/from16 v17, v0

    const/16 v18, 0x12e

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 140
    const-string v17, "Location"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    .line 142
    :cond_9
    const-string v17, "content-length"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v4

    .line 144
    .local v4, "contentLength":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 148
    :try_start_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->contentLength:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 156
    :cond_a
    :goto_8
    if-eqz v9, :cond_b

    .line 158
    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 159
    const/4 v9, 0x0

    .line 162
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 150
    :catch_2
    move-exception v5

    .line 152
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_8

    .line 164
    .end local v4    # "contentLength":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "requestURL":Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object v15, v14

    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object v10, v9

    .end local v9    # "rd":Ljava/io/BufferedReader;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 183
    .end local v10    # "rd":Ljava/io/BufferedReader;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    :try_start_a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_7

    .line 186
    .end local v9    # "rd":Ljava/io/BufferedReader;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v6

    move-object v14, v15

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    move-object v9, v10

    .end local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v6

    move-object v14, v15

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_6

    .end local v9    # "rd":Ljava/io/BufferedReader;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_d
    move-object v14, v15

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    move-object v9, v10

    .end local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_7
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tapjoy/TapjoyHttpURLResponse;"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 38
    invoke-static {p2, v1}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/util/Map;I)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/tapjoy/TapjoyHttpURLResponse;"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method
