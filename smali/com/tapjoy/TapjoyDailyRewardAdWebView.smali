.class public Lcom/tapjoy/TapjoyDailyRewardAdWebView;
.super Lcom/tapjoy/TJAdUnitView;
.source "TapjoyDailyRewardAdWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyDailyRewardAdWebView$1;,
        Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/tapjoy/TJAdUnitView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    iget-object v1, p0, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;-><init>(Lcom/tapjoy/TapjoyDailyRewardAdWebView;Lcom/tapjoy/TapjoyDailyRewardAdWebView$1;)V

    .line 46
    .local v0, "refreshTask":Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    .end local v0    # "refreshTask":Lcom/tapjoy/TapjoyDailyRewardAdWebView$RefreshTask;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x2

    .line 17
    invoke-super {p0, p1}, Lcom/tapjoy/TJAdUnitView;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 19
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidOpen(I)V

    .line 20
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 25
    invoke-super {p0}, Lcom/tapjoy/TJAdUnitView;->onDestroy()V

    .line 27
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDailyRewardAdWebView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewWillClose(I)V

    .line 30
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(I)V

    .line 32
    :cond_0
    return-void
.end method
