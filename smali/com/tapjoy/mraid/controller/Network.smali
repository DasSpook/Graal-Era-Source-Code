.class public Lcom/tapjoy/mraid/controller/Network;
.super Lcom/tapjoy/mraid/controller/Abstract;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/controller/Network$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAID Network"


# instance fields
.field private mBroadCastReceiver:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkListenerCount:I


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 1
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    .line 32
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 33
    return-void
.end method


# virtual methods
.method public getNetwork()Ljava/lang/String;
    .locals 7

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 46
    .local v2, "ni":Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v4, p0, Lcom/tapjoy/mraid/controller/Network;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    :goto_0
    const-string v1, "unknown"

    .line 54
    .local v1, "networkType":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 55
    const-string v1, "offline"

    .line 73
    :cond_0
    :goto_1
    const-string v4, "MRAID Network"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNetwork: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-object v1

    .line 48
    .end local v1    # "networkType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "networkType":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/tapjoy/mraid/controller/Network$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 66
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 67
    .local v3, "type":I
    if-nez v3, :cond_2

    .line 68
    const-string v1, "cell"

    goto :goto_1

    .line 60
    .end local v3    # "type":I
    :pswitch_0
    const-string v1, "unknown"

    .line 61
    goto :goto_1

    .line 63
    :pswitch_1
    const-string v1, "offline"

    .line 64
    goto :goto_1

    .line 69
    .restart local v3    # "type":I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 70
    const-string v1, "wifi"

    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectionChanged()V
    .locals 3

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireChangeEvent({ network: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/Network;->getNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "script":Ljava/lang/String;
    const-string v1, "MRAID Network"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public startNetworkListener()V
    .locals 3

    .prologue
    .line 81
    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->mNetworkListenerCount:I

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;-><init>(Lcom/tapjoy/mraid/controller/Network;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->mFilter:Landroid/content/IntentFilter;

    .line 84
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->mNetworkListenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/Network;->mNetworkListenerCount:I

    .line 87
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Network;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method public stopAllListeners()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/mraid/controller/Network;->mNetworkListenerCount:I

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopNetworkListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->mNetworkListenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/Network;->mNetworkListenerCount:I

    .line 95
    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->mNetworkListenerCount:I

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iput-object v2, p0, Lcom/tapjoy/mraid/controller/Network;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    .line 98
    iput-object v2, p0, Lcom/tapjoy/mraid/controller/Network;->mFilter:Landroid/content/IntentFilter;

    .line 100
    :cond_0
    return-void
.end method
