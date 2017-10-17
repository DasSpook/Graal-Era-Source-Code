.class Lcom/tapjoy/TapjoyDailyRewardAd$1;
.super Ljava/lang/Object;
.source "TapjoyDailyRewardAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyDailyRewardAd;->getDailyRewardAdLegacy(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyDailyRewardAd;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyDailyRewardAd;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tapjoy/TapjoyDailyRewardAd$1;->this$0:Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reengagement_rewards?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyDailyRewardAd$1;->this$0:Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-static {v3}, Lcom/tapjoy/TapjoyDailyRewardAd;->access$000(Lcom/tapjoy/TapjoyDailyRewardAd;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 97
    .local v0, "httpResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    if-eqz v0, :cond_0

    .line 99
    iget v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    sparse-switch v1, :sswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 104
    :sswitch_0
    iget-object v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TapjoyDailyRewardAd;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/tapjoy/TapjoyDailyRewardAd;->access$200()Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/tapjoy/TapjoyDailyRewardAdNotifier;->getDailyRewardAdResponse()V

    goto :goto_0

    .line 110
    :sswitch_1
    invoke-static {}, Lcom/tapjoy/TapjoyDailyRewardAd;->access$200()Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyDailyRewardAdNotifier;->getDailyRewardAdResponseFailed(I)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyDailyRewardAd;->access$200()Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyDailyRewardAdNotifier;->getDailyRewardAdResponseFailed(I)V

    goto :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcc -> :sswitch_1
    .end sparse-switch
.end method
