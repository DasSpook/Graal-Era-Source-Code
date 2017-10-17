.class Lcom/tapjoy/TJPoints$3;
.super Ljava/lang/Object;
.source "TJPoints.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJPoints;->awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
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
    .line 153
    iput-object p1, p0, Lcom/tapjoy/TJPoints$3;->this$0:Lcom/tapjoy/TJPoints;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 156
    const/4 v2, 0x0

    .line 158
    .local v2, "returnValue":Z
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "guid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v3, v6, v8

    .line 162
    .local v3, "time":J
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v5

    .line 163
    .local v5, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "tap_points"

    iget-object v7, p0, Lcom/tapjoy/TJPoints$3;->this$0:Lcom/tapjoy/TJPoints;

    iget v7, v7, Lcom/tapjoy/TJPoints;->awardTapPoints:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v10}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    const-string v6, "guid"

    invoke-static {v5, v6, v0, v10}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    const-string v6, "timestamp"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v10}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    const-string v6, "verifier"

    iget-object v7, p0, Lcom/tapjoy/TJPoints$3;->this$0:Lcom/tapjoy/TJPoints;

    iget v7, v7, Lcom/tapjoy/TJPoints;->awardTapPoints:I

    invoke-static {v3, v4, v7, v0}, Lcom/tapjoy/TapjoyConnectCore;->getAwardPointsVerifier(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v10}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    new-instance v6, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v6}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "points/award?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 172
    .local v1, "response":Lcom/tapjoy/TapjoyHttpURLResponse;
    iget-object v6, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 174
    iget-object v6, p0, Lcom/tapjoy/TJPoints$3;->this$0:Lcom/tapjoy/TJPoints;

    iget-object v7, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/tapjoy/TJPoints;->access$400(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z

    move-result v2

    .line 178
    :cond_0
    if-nez v2, :cond_1

    .line 179
    invoke-static {}, Lcom/tapjoy/TJPoints;->access$500()Lcom/tapjoy/TapjoyAwardPointsNotifier;

    move-result-object v6

    const-string v7, "Failed to award points."

    invoke-interface {v6, v7}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponseFailed(Ljava/lang/String;)V

    .line 180
    :cond_1
    return-void
.end method
