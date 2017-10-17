.class Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;
.super Landroid/os/AsyncTask;
.source "TapjoyDisplayAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyDisplayAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBannerAdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/tapjoy/TapjoyHttpURLResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyDisplayAd;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyDisplayAd$1;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 440
    const/4 v3, 0x0

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    .line 441
    .local v1, "url":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v2, p1, v3

    check-cast v2, Ljava/util/Map;

    .line 442
    .local v2, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$1000()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 443
    .local v0, "httpResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->doInBackground([Ljava/lang/Object;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tapjoy/TapjoyHttpURLResponse;)V
    .locals 8
    .param p1, "httpResponse"    # Lcom/tapjoy/TapjoyHttpURLResponse;

    .prologue
    const/4 v1, 0x0

    .line 290
    if-eqz p1, :cond_0

    .line 292
    iget v0, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    packed-switch v0, :pswitch_data_0

    .line 430
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$300()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v0

    const-string v1, "No ad to display."

    invoke-interface {v0, v1}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TapjoyDisplayAd;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$400()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 300
    const-string v0, "Banner Ad"

    const-string v1, "unexpected 200 response with no content"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$300()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v0

    const-string v1, "No ad to display."

    invoke-interface {v0, v1}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 307
    .local v7, "webSettings":Landroid/webkit/WebSettings;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    sget-object v2, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {v0, v2}, Lcom/tapjoy/mraid/view/MraidView;->setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V

    .line 310
    const-string v0, "Banner Ad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$500()I

    move-result v0

    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$600()I

    move-result v2

    invoke-direct {v6, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 314
    .local v6, "layout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, v6}, Lcom/tapjoy/mraid/view/MraidView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/tapjoy/mraid/view/MraidView;->setInitialScale(I)V

    .line 320
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tapjoy/mraid/view/MraidView;->setBackgroundColor(I)V

    .line 321
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v2, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "Banner Ad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMraid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v3, v3, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v2, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;-><init>(Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/mraid/view/MraidView;->setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, v2, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/TapjoyDisplayAd;->lastAd:Landroid/graphics/Bitmap;

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, v2, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    iput-object v2, v0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    .line 409
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$300()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, v2, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponse(Landroid/view/View;)V

    .line 412
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 415
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iput-object v1, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v0}, Lcom/tapjoy/TapjoyDisplayAd;->access$800(Lcom/tapjoy/TapjoyDisplayAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 421
    const-string v0, "Banner Ad"

    const-string v2, "will refresh banner ad in 60000ms..."

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    .line 423
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;

    iget-object v3, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {v2, v3, v1}, Lcom/tapjoy/TapjoyDisplayAd$RefreshTimer;-><init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 280
    check-cast p1, Lcom/tapjoy/TapjoyHttpURLResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->onPostExecute(Lcom/tapjoy/TapjoyHttpURLResponse;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 280
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 286
    return-void
.end method
