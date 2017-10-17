.class public Lcom/distimo/sdk/air/DistimoSDKContext;
.super Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "init"

    new-instance v2, Lcom/distimo/sdk/air/functions/InitFunction;

    invoke-direct {v2}, Lcom/distimo/sdk/air/functions/InitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    new-instance v2, Lcom/distimo/sdk/air/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distimo/sdk/air/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logUserRegistered"

    new-instance v2, Lcom/distimo/sdk/air/functions/LogUserRegisteredFunction;

    invoke-direct {v2}, Lcom/distimo/sdk/air/functions/LogUserRegisteredFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logInAppPurchase"

    new-instance v2, Lcom/distimo/sdk/air/functions/LogInAppPurchaseFunction;

    invoke-direct {v2}, Lcom/distimo/sdk/air/functions/LogInAppPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logInAppPurchaseRefunded"

    new-instance v2, Lcom/distimo/sdk/air/functions/LogInAppPurchaseRefundedFunction;

    invoke-direct {v2}, Lcom/distimo/sdk/air/functions/LogInAppPurchaseRefundedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logExternalPurchaseWithCurrency"

    new-instance v2, Lcom/distimo/sdk/air/functions/LogExternalPurchaseWithCurrencyFunction;

    invoke-direct {v2}, Lcom/distimo/sdk/air/functions/LogExternalPurchaseWithCurrencyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logBannerClick"

    new-instance v2, Lcom/distimo/sdk/air/functions/LogBannerClickFunction;

    invoke-direct {v2}, Lcom/distimo/sdk/air/functions/LogBannerClickFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUserID"

    new-instance v2, Lcom/distimo/sdk/air/functions/SetUserIDFunction;

    invoke-direct {v2}, Lcom/distimo/sdk/air/functions/SetUserIDFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "openAppLink"

    new-instance v2, Lcom/distimo/sdk/air/functions/OpenAppLinkFunction;

    invoke-direct {v2}, Lcom/distimo/sdk/air/functions/OpenAppLinkFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
