.class Lcom/tapjoy/TapjoyFullScreenAd$1;
.super Ljava/lang/Object;
.source "TapjoyFullScreenAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAdLegacy(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyFullScreenAd;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyFullScreenAd;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tapjoy/TapjoyFullScreenAd$1;->this$0:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "get_offers/featured.html?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyFullScreenAd$1;->this$0:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-static {v3}, Lcom/tapjoy/TapjoyFullScreenAd;->access$000(Lcom/tapjoy/TapjoyFullScreenAd;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 148
    .local v0, "httpResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyFullScreenAd;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    if-eqz v0, :cond_3

    .line 152
    iget v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    packed-switch v1, :pswitch_data_0

    .line 165
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    const-string v2, "Error retrieving full screen ad data from the server."

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$400()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$400()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponseFailed(I)V

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TapjoyFullScreenAd;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponse(Lcom/tapjoy/TapjoyFeaturedAppObject;)V

    .line 160
    :cond_2
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$400()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$400()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponse()V

    goto :goto_0

    .line 175
    :cond_3
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 176
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v1

    const-string v2, "Error retrieving full screen ad data from the server."

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    .line 178
    :cond_4
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$400()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$400()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponseFailed(I)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
