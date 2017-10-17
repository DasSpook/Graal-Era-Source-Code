.class Lcom/tapjoy/TJPoints$1;
.super Ljava/lang/Object;
.source "TJPoints.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJPoints;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
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
    .line 71
    iput-object p1, p0, Lcom/tapjoy/TJPoints$1;->this$0:Lcom/tapjoy/TJPoints;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 77
    .local v1, "returnValue":Z
    new-instance v2, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v2}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "get_vg_store_items/user_account?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 80
    .local v0, "response":Lcom/tapjoy/TapjoyHttpURLResponse;
    iget-object v2, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/tapjoy/TJPoints$1;->this$0:Lcom/tapjoy/TJPoints;

    iget-object v3, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tapjoy/TJPoints;->access$000(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z

    move-result v1

    .line 86
    :cond_0
    if-nez v1, :cond_1

    .line 87
    invoke-static {}, Lcom/tapjoy/TJPoints;->access$100()Lcom/tapjoy/TapjoyNotifier;

    move-result-object v2

    const-string v3, "Failed to retrieve points from server"

    invoke-interface {v2, v3}, Lcom/tapjoy/TapjoyNotifier;->getUpdatePointsFailed(Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void
.end method
