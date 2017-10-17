.class public Lcom/tapjoy/TJAdUnitView;
.super Landroid/app/Activity;
.source "TJAdUnitView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TJAdUnitView"


# instance fields
.field protected bridge:Lcom/tapjoy/TJAdUnitJSBridge;

.field private callbackID:Ljava/lang/String;

.field private event:Lcom/tapjoy/TJEvent;

.field private eventData:Lcom/tapjoy/TJEventData;

.field protected historyIndex:I

.field private isLegacyView:Z

.field protected layout:Landroid/widget/RelativeLayout;

.field protected offersURL:Ljava/lang/String;

.field protected pauseCalled:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field protected redirectedActivity:Z

.field protected skipOfferWall:Z

.field protected url:Ljava/lang/String;

.field private viewType:I

.field protected webView:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    .line 44
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    .line 46
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->pauseCalled:Z

    .line 47
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->skipOfferWall:Z

    .line 49
    iput v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    .line 54
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    .line 58
    iput v0, p0, Lcom/tapjoy/TJAdUnitView;->historyIndex:I

    .line 269
    return-void
.end method

.method static synthetic access$100(Lcom/tapjoy/TJAdUnitView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;->handleBackKey()V

    return-void
.end method

.method static synthetic access$200(Lcom/tapjoy/TJAdUnitView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    return v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TJAdUnitView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;

    .prologue
    .line 40
    iget v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    return v0
.end method

.method static synthetic access$500(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnitView;->finishWithResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnitView;->handleTJVideoURL(Ljava/lang/String;)V

    return-void
.end method

.method private finishWithResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 612
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitView;->setResult(ILandroid/content/Intent;)V

    .line 614
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    .line 615
    return-void
.end method

.method private handleBackKey()V
    .locals 3

    .prologue
    .line 708
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 711
    iget-boolean v1, p0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 714
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 715
    .local v0, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    iget v2, p0, Lcom/tapjoy/TJAdUnitView;->historyIndex:I

    if-ne v1, v2, :cond_1

    .line 717
    if-eqz p0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    .line 737
    .end local v0    # "list":Landroid/webkit/WebBackForwardList;
    :cond_0
    :goto_0
    return-void

    .line 722
    .restart local v0    # "list":Landroid/webkit/WebBackForwardList;
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->goBack()V

    goto :goto_0

    .line 727
    .end local v0    # "list":Landroid/webkit/WebBackForwardList;
    :cond_2
    iget v1, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 730
    const-string v1, "offer_wall"

    invoke-direct {p0, v1}, Lcom/tapjoy/TJAdUnitView;->finishWithResult(Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_3
    if-eqz p0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    goto :goto_0
.end method

.method private handleTJVideoURL(Ljava/lang/String;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 457
    const/4 v9, 0x0

    .line 466
    .local v9, "index":I
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v12, "://"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v9, v0, v12

    .line 468
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 470
    .local v11, "source":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-static {v11, v0}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v10

    .line 472
    .local v10, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "video_id"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 473
    .local v1, "videoID":Ljava/lang/String;
    const-string v0, "amount"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 474
    .local v3, "amount":Ljava/lang/String;
    const-string v0, "currency_name"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 475
    .local v2, "currencyName":Ljava/lang/String;
    const-string v0, "click_url"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 476
    .local v4, "clickURL":Ljava/lang/String;
    const-string v0, "video_complete_url"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 477
    .local v5, "videoCompleteURL":Ljava/lang/String;
    const-string v0, "video_url"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 479
    .local v6, "videoURL":Ljava/lang/String;
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "video_id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "amount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currency_name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "click_url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "video_complete_url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "video_url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getInstance()Lcom/tapjoy/TapjoyVideo;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/tapjoy/TapjoyVideo;->startVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "TJAdUnitView"

    const-string v12, "Video started successfully"

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_0
    return-void

    .line 493
    :cond_0
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to play video: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v12, ""

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v12, "Unable to play video."

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v12, "OK"

    new-instance v13, Lcom/tapjoy/TJAdUnitView$1;

    invoke-direct {v13, p0}, Lcom/tapjoy/TJAdUnitView$1;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 504
    .local v7, "dialog":Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v8

    .line 508
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "TJAdUnitView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "e: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 598
    iget v1, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 601
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 602
    const-string v1, "callback_id"

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->callbackID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitView;->setResult(ILandroid/content/Intent;)V

    .line 606
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 607
    return-void
.end method

.method protected initUI()V
    .locals 13

    .prologue
    .line 84
    const-string v0, "TJAdUnitView"

    const-string v1, "initUI"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v10, 0x0

    .line 86
    .local v10, "loadURL":Z
    const/4 v8, 0x0

    .line 87
    .local v8, "html":Ljava/lang/String;
    const/4 v6, 0x0

    .line 89
    .local v6, "baseURL":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 92
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_5

    .line 95
    const-string v0, "DISPLAY_AD_URL"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->skipOfferWall:Z

    .line 98
    const-string v0, "DISPLAY_AD_URL"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    .line 114
    :cond_0
    :goto_0
    const-string v0, "tjevent"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJEventData;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    .line 116
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v0, v0, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    .line 119
    :cond_1
    const-string v0, "view_type"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    .line 121
    const-string v0, "html"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    const-string v0, "base_url"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    const-string v0, "url"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    .line 124
    const-string v0, "callback_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->callbackID:Ljava/lang/String;

    .line 125
    const-string v0, "legacy_view"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    .line 129
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-nez v0, :cond_5

    .line 131
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    .line 132
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v1, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;-><init>(Lcom/tapjoy/TJAdUnitView;Lcom/tapjoy/TJAdUnitView$1;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V

    .line 137
    iget v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 139
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v1, v1, Lcom/tapjoy/TJEventData;->baseURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v2, v2, Lcom/tapjoy/TJEventData;->httpResponse:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->getCallback()Lcom/tapjoy/TJEventCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-interface {v0, v1}, Lcom/tapjoy/TJEventCallback;->contentDidShow(Lcom/tapjoy/TJEvent;)V

    .line 181
    :goto_1
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    invoke-direct {v0, p0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/tapjoy/TJEventData;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x60000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v11, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 192
    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    .line 193
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 198
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 199
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 208
    :goto_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, v11}, Lcom/tapjoy/mraid/view/MraidView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 216
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitView;->setContentView(Landroid/view/View;)V

    .line 220
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    if-eqz v0, :cond_5

    if-eqz v10, :cond_5

    .line 223
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    .line 224
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 228
    .local v9, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 234
    .end local v9    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    return-void

    .line 102
    :cond_6
    const-string v0, "URL_PARAMS"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->skipOfferWall:Z

    .line 105
    const/4 v12, 0x0

    .line 106
    .local v12, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "URL_PARAMS"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    .end local v12    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v12, Ljava/util/HashMap;

    .line 108
    .restart local v12    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urlParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "get_offers/webpage?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v12, v1}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 153
    .end local v12    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 155
    const-string v0, "TJAdUnitView"

    const-string v1, "HTML data"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v1, v6

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_8
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 160
    :cond_9
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 164
    :cond_a
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 166
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 171
    :cond_b
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 173
    const-string v0, "TJAdUnitView"

    const-string v1, "Load Offer Wall URL"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->offersURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 204
    .restart local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 205
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 620
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 622
    const-string v1, "TJAdUnitView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v0, 0x0

    .line 626
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    .line 627
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 629
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "callback_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 631
    const-string v1, "TJAdUnitView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    const-string v2, "callback_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "result"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "result_string1"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "result_string2"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 239
    const-string v0, "TJAdUnitView"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->initUI()V

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 67
    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitView;->setTheme(I)V

    .line 74
    :goto_0
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TJAdUnitView onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->initUI()V

    .line 79
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitView;->requestWindowFeature(I)Z

    .line 71
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 518
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy isFinishing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    iget v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 526
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->destroy()V

    .line 529
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->getCallback()Lcom/tapjoy/TJEventCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->event:Lcom/tapjoy/TJEvent;

    invoke-interface {v0, v1}, Lcom/tapjoy/TJEventCallback;->contentDidDisappear(Lcom/tapjoy/TJEvent;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v0, v0, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TJEventManager;->remove(Ljava/lang/String;)V

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_2

    .line 539
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 552
    :cond_2
    :goto_1
    return-void

    .line 549
    :catch_0
    move-exception v0

    goto :goto_1

    .line 541
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 640
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 645
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView;->videoPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView;->videoViewCleanup()V

    .line 696
    :goto_0
    return v2

    .line 651
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v3, v3, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    if-eqz v3, :cond_2

    .line 653
    const-string v3, "TJAdUnitView"

    const-string v4, "customClose"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v3, v3, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    if-eqz v3, :cond_1

    .line 659
    const-string v3, "TJAdUnitView"

    const-string v4, "customClose called twice before first request completed"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;->handleBackKey()V

    goto :goto_0

    .line 664
    :cond_1
    const-string v3, "TJAdUnitView"

    const-string v4, "closeRequested..."

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v3}, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested()V

    .line 670
    new-instance v1, Lcom/tapjoy/TJAdUnitView$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnitView$2;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    .line 683
    .local v1, "timerTask":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 684
    .local v0, "timer":Ljava/util/Timer;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 691
    .end local v0    # "timer":Ljava/util/Timer;
    .end local v1    # "timerTask":Ljava/util/TimerTask;
    :cond_2
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitView;->handleBackKey()V

    goto :goto_0

    .line 696
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 557
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitView;->pauseCalled:Z

    .line 563
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 266
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, p1}, Lcom/tapjoy/mraid/view/MraidView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 267
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 571
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 576
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    iget v0, p0, Lcom/tapjoy/TJAdUnitView;->viewType:I

    if-ne v0, v3, :cond_0

    .line 583
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume bridge.didLaunchOtherActivity callbackID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v4, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 591
    :cond_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, p1}, Lcom/tapjoy/mraid/view/MraidView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 258
    return-void
.end method
