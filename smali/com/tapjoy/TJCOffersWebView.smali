.class public Lcom/tapjoy/TJCOffersWebView;
.super Lcom/tapjoy/TJAdUnitView;
.source "TJCOffersWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Offers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-super {p0, p1}, Lcom/tapjoy/TJAdUnitView;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 25
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidOpen(I)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0}, Lcom/tapjoy/TJAdUnitView;->onDestroy()V

    .line 50
    iget-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->skipOfferWall:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewWillClose(I)V

    .line 53
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(I)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-super {p0}, Lcom/tapjoy/TJAdUnitView;->onResume()V

    .line 34
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->pauseCalled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->redirectedActivity:Z

    if-ne v0, v1, :cond_0

    .line 36
    const-string v0, "Offers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume reload offer wall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/tapjoy/TJCOffersWebView;->historyIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/TJCOffersWebView;->historyIndex:I

    .line 42
    :cond_0
    return-void
.end method
