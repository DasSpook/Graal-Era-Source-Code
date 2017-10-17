.class public Lcom/distimo/sdk/air/functions/LogBannerClickFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/distimo/sdk/DistimoSDK;->onBannerClick(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
