.class Lcom/tapjoy/TJAdUnitJSBridge$3;
.super Ljava/lang/Object;
.source "TJAdUnitJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->displayRichMedia(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitJSBridge;

.field final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->val$json:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 374
    const/4 v3, 0x0

    .line 378
    .local v3, "html":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->val$json:Lorg/json/JSONObject;

    const-string v4, "html"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 386
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    :cond_0
    new-instance v1, Lcom/tapjoy/mraid/view/MraidView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;-><init>(Landroid/content/Context;)V

    .line 395
    .local v1, "banner":Lcom/tapjoy/mraid/view/MraidView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->access$300(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    .line 396
    .local v10, "webSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 397
    sget-object v2, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V

    .line 400
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v2, 0x280

    const/16 v4, 0x64

    invoke-direct {v8, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 401
    .local v8, "layout":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v8}, Lcom/tapjoy/mraid/view/MraidView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->setInitialScale(I)V

    .line 407
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->setBackgroundColor(I)V

    .line 408
    const/4 v2, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 412
    .local v11, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 413
    .local v9, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v1, v9}, Lcom/tapjoy/TapjoyUtil;->scaleDisplayAd(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->access$102(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/view/View;)Landroid/view/View;

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    int-to-double v14, v9

    const-wide/high16 v16, 0x4084000000000000L    # 640.0

    div-double v14, v14, v16

    mul-double/2addr v12, v14

    double-to-int v6, v12

    invoke-direct {v5, v9, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    return-void

    .line 380
    .end local v1    # "banner":Lcom/tapjoy/mraid/view/MraidView;
    .end local v8    # "layout":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "screenWidth":I
    .end local v10    # "webSettings":Landroid/webkit/WebSettings;
    .end local v11    # "windowManager":Landroid/view/WindowManager;
    :catch_0
    move-exception v7

    .line 382
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
