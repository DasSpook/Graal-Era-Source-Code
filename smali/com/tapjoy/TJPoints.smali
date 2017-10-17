.class public Lcom/tapjoy/TJPoints;
.super Ljava/lang/Object;
.source "TJPoints.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyPoints"

.field private static tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

.field private static tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

.field private static tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

.field private static tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;


# instance fields
.field awardTapPoints:I

.field context:Landroid/content/Context;

.field spendTapPoints:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJPoints;->spendTapPoints:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJPoints;->awardTapPoints:I

    .line 31
    iput-object p1, p0, Lcom/tapjoy/TJPoints;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJPoints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/tapjoy/TJPoints;->handleGetPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/tapjoy/TapjoyNotifier;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/tapjoy/TJPoints;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJPoints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/tapjoy/TJPoints;->handleSpendPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Lcom/tapjoy/TapjoySpendPointsNotifier;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/tapjoy/TJPoints;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJPoints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/tapjoy/TJPoints;->handleAwardPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Lcom/tapjoy/TapjoyAwardPointsNotifier;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/tapjoy/TJPoints;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    return-object v0
.end method

.method private handleAwardPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 342
    const-string v2, ""

    .line 345
    .local v2, "message":Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 347
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 349
    const-string v6, "Success"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 356
    const-string v6, "TapPoints"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "pointsTotal":Ljava/lang/String;
    const-string v6, "CurrencyName"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tapjoy/TJPoints;->saveTapPointsTotal(I)V

    .line 369
    sget-object v6, Lcom/tapjoy/TJPoints;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v0, v7}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponse(Ljava/lang/String;I)V

    .line 393
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v5

    .line 374
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v4    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing tags."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 379
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 381
    const-string v6, "Message"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 382
    const-string v6, "TapjoyPoints"

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v6, Lcom/tapjoy/TJPoints;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    invoke-interface {v6, v2}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_3
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing <Success> tag."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized handleGetPointsResponse(Ljava/lang/String;)Z
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 205
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_1

    .line 207
    const-string v7, "Success"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "nodeValue":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 214
    const-string v7, "TapPoints"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "points":Ljava/lang/String;
    const-string v7, "CurrencyName"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 218
    .local v3, "name":Ljava/lang/String;
    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 223
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 224
    .local v5, "pointTotal":I
    invoke-virtual {p0}, Lcom/tapjoy/TJPoints;->getLocalTapPointsTotal()I

    move-result v2

    .line 231
    .local v2, "lastLocalPointTotal":I
    sget-object v7, Lcom/tapjoy/TJPoints;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    if-eqz v7, :cond_0

    .line 234
    const/16 v7, -0x270f

    if-eq v2, v7, :cond_0

    .line 237
    if-le v5, v2, :cond_0

    .line 239
    const-string v7, "TapjoyPoints"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "earned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v7, Lcom/tapjoy/TJPoints;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    sub-int v8, v5, v2

    invoke-interface {v7, v8}, Lcom/tapjoy/TapjoyEarnedPointsNotifier;->earnedTapPoints(I)V

    .line 246
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/tapjoy/TJPoints;->saveTapPointsTotal(I)V

    .line 249
    sget-object v7, Lcom/tapjoy/TJPoints;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v3, v8}, Lcom/tapjoy/TapjoyNotifier;->getUpdatePoints(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    const/4 v7, 0x1

    .line 269
    .end local v2    # "lastLocalPointTotal":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    .end local v5    # "pointTotal":I
    .end local v6    # "points":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v7

    .line 253
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "nodeValue":Ljava/lang/String;
    .restart local v6    # "points":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "TapjoyPoints"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing XML and calling notifier: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    .end local v6    # "points":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 260
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "nodeValue":Ljava/lang/String;
    .restart local v6    # "points":Ljava/lang/String;
    :cond_2
    const-string v7, "TapjoyPoints"

    const-string v8, "Invalid XML: Missing tags."

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 203
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    .end local v6    # "points":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 265
    .restart local v0    # "document":Lorg/w3c/dom/Document;
    .restart local v4    # "nodeValue":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v7, "TapjoyPoints"

    const-string v8, "Invalid XML: Missing <Success> tag."

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleSpendPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 280
    const-string v2, ""

    .line 283
    .local v2, "message":Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 285
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 287
    const-string v6, "Success"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    const-string v6, "TapPoints"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "pointsTotal":Ljava/lang/String;
    const-string v6, "CurrencyName"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tapjoy/TJPoints;->saveTapPointsTotal(I)V

    .line 307
    sget-object v6, Lcom/tapjoy/TJPoints;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v0, v7}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponse(Ljava/lang/String;I)V

    .line 331
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v5

    .line 312
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v4    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing tags."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 317
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 319
    const-string v6, "Message"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 320
    const-string v6, "TapjoyPoints"

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v6, Lcom/tapjoy/TJPoints;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-interface {v6, v2}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_3
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing <Success> tag."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .prologue
    .line 142
    if-gez p1, :cond_0

    .line 144
    const-string v0, "TapjoyPoints"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 148
    :cond_0
    iput p1, p0, Lcom/tapjoy/TJPoints;->awardTapPoints:I

    .line 150
    sput-object p2, Lcom/tapjoy/TJPoints;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .line 152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJPoints$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJPoints$3;-><init>(Lcom/tapjoy/TJPoints;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getLocalTapPointsTotal()I
    .locals 5

    .prologue
    .line 55
    iget-object v2, p0, Lcom/tapjoy/TJPoints;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "last_tap_points"

    const/16 v3, -0x270f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "total":I
    return v1
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 68
    sput-object p1, Lcom/tapjoy/TJPoints;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJPoints$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJPoints$1;-><init>(Lcom/tapjoy/TJPoints;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method

.method public saveTapPointsTotal(I)V
    .locals 5
    .param p1, "total"    # I

    .prologue
    .line 40
    iget-object v2, p0, Lcom/tapjoy/TJPoints;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_tap_points"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .prologue
    .line 191
    sput-object p1, Lcom/tapjoy/TJPoints;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .line 192
    return-void
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 100
    if-gez p1, :cond_0

    .line 102
    const-string v0, "TapjoyPoints"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJPoints;->spendTapPoints:Ljava/lang/String;

    .line 108
    sput-object p2, Lcom/tapjoy/TJPoints;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJPoints$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJPoints$2;-><init>(Lcom/tapjoy/TJPoints;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
