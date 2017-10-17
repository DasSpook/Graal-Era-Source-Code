.class public Lcom/facebook/InsightsLogger;
.super Ljava/lang/Object;
.source "InsightsLogger.java"


# static fields
.field private static final EVENT_NAME_LOG_CONVERSION_PIXEL:Ljava/lang/String; = "fb_log_offsite_pixel"

.field private static final EVENT_NAME_LOG_MOBILE_PURCHASE:Ljava/lang/String; = "fb_mobile_purchase"

.field private static final EVENT_PARAMETER_CURRENCY:Ljava/lang/String; = "fb_currency"

.field private static final EVENT_PARAMETER_PIXEL_ID:Ljava/lang/String; = "fb_offsite_pixel_id"

.field private static final EVENT_PARAMETER_PIXEL_VALUE:Ljava/lang/String; = "fb_offsite_pixel_value"

.field private static appAuthSession:Lcom/facebook/Session;


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final clientToken:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final specifiedSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientToken"    # Ljava/lang/String;
    .param p3, "applicationId"    # Ljava/lang/String;
    .param p4, "session"    # Lcom/facebook/Session;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const-string v0, "clientToken"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-nez p3, :cond_0

    .line 77
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/facebook/InsightsLogger;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/facebook/InsightsLogger;->clientToken:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/facebook/InsightsLogger;->specifiedSession:Lcom/facebook/Session;

    .line 84
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # D
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/InsightsLogger;->buildJSONForEvent(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/InsightsLogger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/InsightsLogger;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/InsightsLogger;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/InsightsLogger;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/InsightsLogger;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/InsightsLogger;)Lcom/facebook/Session;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/InsightsLogger;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/InsightsLogger;->sessionToLogTo()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void
.end method

.method private static buildJSONForEvent(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;
    .locals 11
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "valueToSum"    # D
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 271
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 272
    .local v1, "eventObject":Lorg/json/JSONObject;
    const-string v8, "_eventName"

    invoke-virtual {v1, v8, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, p1, v8

    if-eqz v8, :cond_0

    .line 274
    const-string v8, "_valueToSum"

    invoke-virtual {v1, v8, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 277
    :cond_0
    if-eqz p3, :cond_2

    .line 279
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 280
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 281
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 283
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_1

    instance-of v8, v7, Ljava/lang/Number;

    if-nez v8, :cond_1

    .line 286
    const-string v8, "Parameter \'%s\' must be a string or a numeric type."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    .line 290
    :cond_1
    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v1    # "eventObject":Lorg/json/JSONObject;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "exception":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    .line 302
    const/4 v6, 0x0

    .line 306
    .end local v2    # "exception":Lorg/json/JSONException;
    .local v6, "result":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 294
    .end local v6    # "result":Ljava/lang/String;
    .restart local v1    # "eventObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 295
    .local v0, "eventArray":Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 297
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method private logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 7
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # D
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v0, Lcom/facebook/InsightsLogger$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/InsightsLogger$1;-><init>(Lcom/facebook/InsightsLogger;Ljava/lang/String;DLandroid/os/Bundle;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/InsightsLogger;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v0, Lcom/facebook/InsightsLogger;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/InsightsLogger;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientToken"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/facebook/InsightsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)Lcom/facebook/InsightsLogger;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientToken"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/facebook/Session;

    .prologue
    .line 136
    new-instance v0, Lcom/facebook/InsightsLogger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 353
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v1, "Insights"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private sessionToLogTo()Lcom/facebook/Session;
    .locals 8

    .prologue
    .line 316
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/facebook/InsightsLogger;->specifiedSession:Lcom/facebook/Session;

    .line 322
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 326
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 328
    :cond_2
    sget-object v3, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    if-nez v3, :cond_3

    .line 333
    const-string v3, "%s|%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/facebook/InsightsLogger;->clientToken:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "tokenString":Ljava/lang/String;
    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

    invoke-static {v2, v3, v4}, Lcom/facebook/AccessToken;->createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v1

    .line 336
    .local v1, "token":Lcom/facebook/AccessToken;
    new-instance v3, Lcom/facebook/Session;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    new-instance v6, Lcom/facebook/NonCachingTokenCachingStrategy;

    invoke-direct {v6}, Lcom/facebook/NonCachingTokenCachingStrategy;-><init>()V

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    sput-object v3, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    .line 337
    sget-object v3, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    .line 340
    .end local v1    # "token":Lcom/facebook/AccessToken;
    .end local v2    # "tokenString":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    .line 343
    :cond_4
    monitor-exit p0

    return-object v0

    .line 344
    .end local v0    # "session":Lcom/facebook/Session;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public logConversionPixel(Ljava/lang/String;D)V
    .locals 2
    .param p1, "pixelId"    # Ljava/lang/String;
    .param p2, "valueOfPixel"    # D

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    const-string v1, "pixelID cannot be null"

    invoke-static {v1}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "parameters":Landroid/os/Bundle;
    const-string v1, "fb_offsite_pixel_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "fb_offsite_pixel_value"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 199
    const-string v1, "fb_log_offsite_pixel"

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/facebook/InsightsLogger;->logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .locals 1
    .param p1, "purchaseAmount"    # Ljava/math/BigDecimal;
    .param p2, "currency"    # Ljava/util/Currency;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/InsightsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 148
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "purchaseAmount"    # Ljava/math/BigDecimal;
    .param p2, "currency"    # Ljava/util/Currency;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const-string v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 165
    :cond_0
    if-nez p2, :cond_1

    .line 166
    const-string v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    if-nez p3, :cond_2

    .line 171
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "parameters":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 173
    .restart local p3    # "parameters":Landroid/os/Bundle;
    :cond_2
    const-string v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "fb_mobile_purchase"

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/facebook/InsightsLogger;->logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_0
.end method
