.class public Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigBroadcastReceiver.java"


# instance fields
.field private mLastOrientation:I

.field private mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/controller/Display;)V
    .locals 1
    .param p1, "mraidDisplayController"    # Lcom/tapjoy/mraid/controller/Display;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;

    .line 30
    iget-object v0, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Display;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mLastOrientation:I

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/controller/Display;->getOrientation()I

    move-result v1

    .line 41
    .local v1, "orientation":I
    iget v2, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mLastOrientation:I

    if-eq v1, v2, :cond_0

    .line 42
    iput v1, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mLastOrientation:I

    .line 43
    iget-object v2, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;

    iget v3, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mLastOrientation:I

    invoke-virtual {v2, v3}, Lcom/tapjoy/mraid/controller/Display;->onOrientationChanged(I)V

    .line 46
    .end local v1    # "orientation":I
    :cond_0
    return-void
.end method
