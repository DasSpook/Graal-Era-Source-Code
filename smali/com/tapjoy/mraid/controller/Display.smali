.class public Lcom/tapjoy/mraid/controller/Display;
.super Lcom/tapjoy/mraid/controller/Abstract;
.source "Display.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAID Display"


# instance fields
.field private bMaxSizeSet:Z

.field private context:Landroid/content/Context;

.field private mBroadCastReceiver:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

.field private mDensity:F

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 3
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/Display;->bMaxSizeSet:Z

    .line 38
    iput v2, p0, Lcom/tapjoy/mraid/controller/Display;->mMaxWidth:I

    .line 39
    iput v2, p0, Lcom/tapjoy/mraid/controller/Display;->mMaxHeight:I

    .line 55
    iput-object p2, p0, Lcom/tapjoy/mraid/controller/Display;->context:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mWindowManager:Landroid/view/WindowManager;

    .line 59
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    .line 62
    return-void
.end method

.method private getDeviceDimensions(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;)Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    .locals 4
    .param p1, "d"    # Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .prologue
    .line 288
    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    iget v3, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 289
    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    iget v3, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 290
    iget v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 291
    iget v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 292
    iget v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    if-gez v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v2

    iput v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 294
    :cond_0
    iget v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    if-gez v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v2

    iput v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 296
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 297
    .local v0, "loc":[I
    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2, v0}, Lcom/tapjoy/mraid/view/MraidView;->getLocationInWindow([I)V

    .line 298
    iget v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    if-gez v2, :cond_2

    .line 299
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 300
    :cond_2
    iget v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    if-gez v2, :cond_3

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "topStuff":I
    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int/2addr v2, v1

    iput v2, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 304
    .end local v1    # "topStuff":I
    :cond_3
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 361
    const-string v0, "MRAID Display"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->close()V

    .line 363
    return-void
.end method

.method public dimensions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ \"top\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"left\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"bottom\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"right\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 319
    const-string v4, "MRAID Display"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expand: properties: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    .local v3, "propertiesJSON":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 324
    .local v1, "dimensions":Lorg/json/JSONObject;
    const-string v4, "width"

    const-string v5, "width"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v4, "height"

    const-string v5, "height"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v4, "x"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v4, "y"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    const-class v4, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    invoke-static {v1, v4}, Lcom/tapjoy/mraid/controller/Display;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .line 332
    .local v0, "d":Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    iget-object v5, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0, v0}, Lcom/tapjoy/mraid/controller/Display;->getDeviceDimensions(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;)Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    move-result-object v6

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v7, Lcom/tapjoy/mraid/controller/Abstract$Properties;

    invoke-static {v4, v7}, Lcom/tapjoy/mraid/controller/Display;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;

    invoke-virtual {v5, v6, p1, v4}, Lcom/tapjoy/mraid/view/MraidView;->expand(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Lcom/tapjoy/mraid/controller/Abstract$Properties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 354
    .end local v0    # "d":Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    .end local v1    # "dimensions":Lorg/json/JSONObject;
    .end local v3    # "propertiesJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 347
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 352
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/Display;->bMaxSizeSet:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/mraid/controller/Display;->mMaxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/mraid/controller/Display;->mMaxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/Display;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 5

    .prologue
    .line 411
    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Display;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 412
    .local v0, "orientation":I
    const/4 v1, -0x1

    .line 413
    .local v1, "ret":I
    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    const-string v2, "MRAID Display"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOrientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return v1

    .line 415
    :pswitch_0
    const/4 v1, 0x0

    .line 416
    goto :goto_0

    .line 419
    :pswitch_1
    const/16 v1, 0x5a

    .line 420
    goto :goto_0

    .line 423
    :pswitch_2
    const/16 v1, 0xb4

    .line 424
    goto :goto_0

    .line 427
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 440
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 441
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 370
    const-string v0, "MRAID Display"

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->hide()V

    .line 372
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logHTML(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 505
    const-string v0, "MRAID Display"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireChangeEvent({ orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "script":Ljava/lang/String;
    const-string v1, "MRAID Display"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "back"    # Z
    .param p3, "forward"    # Z
    .param p4, "refresh"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 111
    const-string v3, "MRAID Display"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open: url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " back: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " forward: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refresh: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    const-string v3, "MRAID Display"

    const-string v4, "invalid URL"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Display;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 124
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Display;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-void

    .line 128
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 130
    const-string v3, "Select"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Display;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    const-string v4, "Invalid url"

    const-string v5, "open"

    invoke-virtual {v3, v4, v5}, Lcom/tapjoy/mraid/view/MraidView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/tapjoy/mraid/view/MraidView;->open(Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fullscreen"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 162
    const-string v0, "MRAID Display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openMap: url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->openMap(Ljava/lang/String;Z)V

    .line 164
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "autoPlay"    # Z
    .param p3, "controls"    # Z
    .param p4, "loop"    # Z
    .param p5, "position"    # Z
    .param p6, "startStyle"    # Ljava/lang/String;
    .param p7, "stopStyle"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 202
    const-string v0, "MRAID Display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAudio: url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " controls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    const-string v1, "Invalid url"

    const-string v2, "playAudio"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/mraid/view/MraidView;->playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "audioMuted"    # Z
    .param p3, "autoPlay"    # Z
    .param p4, "controls"    # Z
    .param p5, "loop"    # Z
    .param p6, "position"    # [I
    .param p7, "startStyle"    # Ljava/lang/String;
    .param p8, "stopStyle"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 241
    const-string v1, "MRAID Display"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideo: url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autoPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " controls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stopStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v7, 0x0

    .line 248
    .local v7, "d":Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    const/4 v1, 0x0

    aget v1, p6, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 249
    new-instance v7, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .end local v7    # "d":Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    invoke-direct {v7}, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;-><init>()V

    .line 250
    .restart local v7    # "d":Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    const/4 v1, 0x0

    aget v1, p6, v1

    iput v1, v7, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 251
    const/4 v1, 0x1

    aget v1, p6, v1

    iput v1, v7, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 252
    const/4 v1, 0x2

    aget v1, p6, v1

    iput v1, v7, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 253
    const/4 v1, 0x3

    aget v1, p6, v1

    iput v1, v7, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 254
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tapjoy/mraid/controller/Display;->getDeviceDimensions(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;)Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    move-result-object v7

    .line 257
    :cond_0
    const/4 v13, 0x0

    .line 258
    .local v13, "fileName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 260
    .local v12, "field":I
    const-string v1, "android.resource"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const-string v1, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v15, v1, 0x1

    .line 263
    .local v15, "start":I
    const-string v1, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 264
    .local v11, "end":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 266
    :try_start_0
    const-class v1, Landroid/R$raw;

    invoke-virtual {v1, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 271
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/mraid/controller/Display;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 272
    .local v14, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    .end local v11    # "end":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "start":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v8, "fullscreen"

    const-string v9, "exit"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/tapjoy/mraid/view/MraidView;->playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void

    .line 267
    .restart local v11    # "end":I
    .restart local v15    # "start":I
    :catch_0
    move-exception v10

    .line 269
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resize(Ljava/lang/String;)V
    .locals 11
    .param p1, "properties"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 75
    const/4 v9, 0x0

    .local v9, "width":I
    const/4 v7, 0x0

    .local v7, "height":I
    const/4 v3, 0x0

    .local v3, "offsetX":I
    const/4 v4, 0x0

    .line 76
    .local v4, "offsetY":I
    const/4 v5, 0x0

    .line 77
    .local v5, "customClosePosition":Ljava/lang/String;
    const/4 v6, 0x1

    .line 81
    .local v6, "allowOffScreen":Z
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v8, "propertiesJSON":Lorg/json/JSONObject;
    const-string v0, "width"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 83
    const-string v0, "height"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 84
    const-string v0, "offsetX"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 85
    const-string v0, "offsetY"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 86
    const-string v0, "customClosePosition"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    const-string v0, "allowOffScreen"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 91
    .end local v8    # "propertiesJSON":Lorg/json/JSONObject;
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    iget v1, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    int-to-float v2, v9

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/controller/Display;->mDensity:F

    int-to-float v10, v7

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tapjoy/mraid/view/MraidView;->resize(IIIILjava/lang/String;Z)V

    .line 93
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMaxSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 479
    const-string v0, "MRAID Display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/controller/Display;->bMaxSizeSet:Z

    .line 481
    iput p1, p0, Lcom/tapjoy/mraid/controller/Display;->mMaxWidth:I

    .line 482
    iput p2, p0, Lcom/tapjoy/mraid/controller/Display;->mMaxHeight:I

    .line 483
    return-void
.end method

.method public setOrientationProperties(ZLjava/lang/String;)V
    .locals 3
    .param p1, "allowOrientationChange"    # Z
    .param p2, "forceOrientation"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 176
    const-string v0, "MRAID Display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationProperties: allowOrientationChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forceOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->setOrientationProperties(ZLjava/lang/String;)V

    .line 178
    return-void
.end method

.method public show()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 379
    const-string v0, "MRAID Display"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->show()V

    .line 381
    return-void
.end method

.method public startConfigurationListener()V
    .locals 4

    .prologue
    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;-><init>(Lcom/tapjoy/mraid/controller/Display;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/Display;->stopConfigurationListener()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    .line 517
    return-void
.end method

.method public stopConfigurationListener()V
    .locals 2

    .prologue
    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Display;->mBroadCastReceiver:Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public useCustomClose(Z)V
    .locals 1
    .param p1, "input"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 148
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Display;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->showCloseImageButton()V

    goto :goto_0
.end method
