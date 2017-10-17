.class public Lcom/tapjoy/TapjoyConnectCore$ConnectThread;
.super Ljava/lang/Object;
.source "TapjoyConnectCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xc8

    const/4 v10, 0x1

    .line 1702
    const-string v6, "TapjoyConnect"

    const-string v7, "starting connect call..."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v0, "https://connect.tapjoy.com/"

    .line 1707
    .local v0, "connectHostURL":Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://ws.tapjoyads.com/"

    if-eq v6, v7, :cond_0

    .line 1708
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v0

    .line 1711
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$300()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "connect?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 1714
    .local v1, "httpResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    if-eqz v1, :cond_4

    iget v6, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v6, v11, :cond_4

    .line 1716
    iget-object v6, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->access$400(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1718
    const-string v6, "TapjoyConnect"

    const-string v7, "Successfully connected to tapjoy site."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$600()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1721
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$600()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v6

    invoke-interface {v6}, Lcom/tapjoy/TapjoyConnectNotifier;->connectSuccess()V

    .line 1731
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$700()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1733
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v2

    .line 1734
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "package_names"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$700()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7, v10}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v3, v6, v8

    .line 1738
    .local v3, "time":J
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$700()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/tapjoy/TapjoyConnectCore;->access$800(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1739
    .local v5, "verifier":Ljava/lang/String;
    const-string v6, "timestamp"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7, v10}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1740
    const-string v6, "verifier"

    invoke-static {v2, v6, v5, v10}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1742
    new-instance v6, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v6}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "apps_installed?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 1745
    if-eqz v1, :cond_2

    iget v6, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v6, v11, :cond_2

    .line 1746
    const-string v6, "TapjoyConnect"

    const-string v7, "Successfully pinged sdkless api."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "time":J
    .end local v5    # "verifier":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1726
    :cond_3
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$600()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1727
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$600()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v6

    invoke-interface {v6}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    goto :goto_0

    .line 1752
    :cond_4
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$600()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1753
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$600()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v6

    invoke-interface {v6}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    goto :goto_1
.end method
