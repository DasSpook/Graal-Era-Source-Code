.class Lcom/tapjoy/TapjoyVideo$2;
.super Ljava/lang/Object;
.source "TapjoyVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideo;->cacheVideos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideo;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    .line 547
    const-string v8, "TapjoyVideo"

    const-string v9, "--- cacheAllVideos called ---"

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-wide/16 v0, 0x1f4

    .line 550
    .local v0, "SLEEP_TIME":J
    const-wide/16 v2, 0x2710

    .line 551
    .local v2, "TIMEOUT":J
    const/4 v5, 0x0

    .line 554
    .local v5, "elapsed":I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$400(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 558
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 559
    int-to-long v8, v5

    add-long/2addr v8, v12

    long-to-int v5, v8

    .line 562
    int-to-long v8, v5

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 564
    const-string v8, "TapjoyVideo"

    const-string v9, "Error during cacheVideos.  Timeout while waiting for initVideos to finish."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_1
    return-void

    .line 568
    :catch_0
    move-exception v4

    .line 570
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "TapjoyVideo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in cacheAllVideos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v8, "TapjoyVideo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cacheVideos connection_type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v8, "TapjoyVideo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cache3g: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v10}, Lcom/tapjoy/TapjoyVideo;->access$600(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v8, "TapjoyVideo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cacheWifi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v10}, Lcom/tapjoy/TapjoyVideo;->access$700(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$600(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mobile"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$700(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 582
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, "state":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 587
    const-string v8, "TapjoyVideo"

    const-string v9, "Media storage unavailable.  Aborting caching videos."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->videoNotifierError(I)V

    goto/16 :goto_1

    .line 595
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$800(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$900(Lcom/tapjoy/TapjoyVideo;)I

    move-result v9

    if-ge v8, v9, :cond_6

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$1000(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 597
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$1100(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$1000(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/TapjoyVideoObject;

    iget-object v7, v8, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    .line 598
    .local v7, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v8, v7}, Lcom/tapjoy/TapjoyVideo;->access$1200(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V

    goto :goto_2

    .line 603
    .end local v6    # "state":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_5
    const-string v8, "TapjoyVideo"

    const-string v9, " * Skipping caching videos because of video flags and connection_type..."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_6
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$1300(Lcom/tapjoy/TapjoyVideo;)V

    goto/16 :goto_1
.end method
