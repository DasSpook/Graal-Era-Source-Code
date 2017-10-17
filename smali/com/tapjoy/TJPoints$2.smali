.class Lcom/tapjoy/TJPoints$2;
.super Ljava/lang/Object;
.source "TJPoints.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJPoints;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJPoints;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJPoints;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tapjoy/TJPoints$2;->this$0:Lcom/tapjoy/TJPoints;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 117
    .local v1, "returnValue":Z
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    .line 118
    .local v2, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "tap_points"

    iget-object v4, p0, Lcom/tapjoy/TJPoints$2;->this$0:Lcom/tapjoy/TJPoints;

    iget-object v4, v4, Lcom/tapjoy/TJPoints;->spendTapPoints:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    new-instance v3, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v3}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "points/spend?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 122
    .local v0, "response":Lcom/tapjoy/TapjoyHttpURLResponse;
    iget-object v3, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/tapjoy/TJPoints$2;->this$0:Lcom/tapjoy/TJPoints;

    iget-object v4, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tapjoy/TJPoints;->access$200(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z

    move-result v1

    .line 128
    :cond_0
    if-nez v1, :cond_1

    .line 129
    invoke-static {}, Lcom/tapjoy/TJPoints;->access$300()Lcom/tapjoy/TapjoySpendPointsNotifier;

    move-result-object v3

    const-string v4, "Failed to spend points."

    invoke-interface {v3, v4}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponseFailed(Ljava/lang/String;)V

    .line 130
    :cond_1
    return-void
.end method
