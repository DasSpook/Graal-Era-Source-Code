.class public Lcom/fabzat/shop/activities/FZSizeSelectActivity;
.super Lcom/fabzat/shop/activities/FZActivity;
.source "FZSizeSelectActivity.java"

# interfaces
.implements Lcom/fabzat/shop/dao/connection/FZOnProgressListener;
.implements Lcom/fabzat/shop/utils/opengl/FZRendererListener;
.implements Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;,
        Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private aV:Lcom/fabzat/shop/model/FZ3DResource;

.field private aW:Landroid/opengl/GLSurfaceView;

.field private aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

.field private aY:Landroid/os/Handler;

.field private aZ:F

.field private ba:F

.field private bb:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

.field private bc:Lcom/fabzat/shop/activities/FZWaitDialog;

.field private bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

.field private be:Lcom/fabzat/shop/adapters/FZWheelAdapter;

.field private bf:Lcom/fabzat/shop/utils/ui/FZImageZoom;

.field private bg:Landroid/widget/TextView;

.field private bh:Landroid/widget/TextView;

.field private bi:Landroid/widget/TextView;

.field private bj:[F

.field private bk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZSizePrice;",
            ">;"
        }
    .end annotation
.end field

.field private bl:D

.field bm:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->LOG_TAG:Ljava/lang/String;

    .line 686
    const-string v0, "fabjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    .line 347
    new-instance v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$1;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bm:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method private A()I
    .locals 8

    .prologue
    .line 414
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v4

    .line 416
    .local v4, "shop":Lcom/fabzat/shop/model/FZContainer;
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v5}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getSelection()I

    move-result v3

    .line 417
    .local v3, "selectionIndex":I
    const/4 v2, 0x0

    .line 419
    .local v2, "count":I
    invoke-virtual {v4}, Lcom/fabzat/shop/model/FZContainer;->getComponents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 428
    const/4 v5, -0x1

    :goto_0
    return v5

    .line 419
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZComponent;

    .line 420
    .local v0, "comp":Lcom/fabzat/shop/model/FZComponent;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZComponent;->getComponentComputed()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/model/FZComponentComputed;

    .line 421
    .local v1, "compC":Lcom/fabzat/shop/model/FZComponentComputed;
    if-ne v2, v3, :cond_2

    .line 422
    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZComponentComputed;->getId()I

    move-result v5

    goto :goto_0

    .line 424
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private a(DLcom/fabzat/shop/activities/FZSizeSelectActivity$a;)D
    .locals 4
    .param p1, "volume"    # D
    .param p3, "axis"    # Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bj:[F

    invoke-static {p3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;)I

    move-result v1

    aget v0, v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aY:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZSizeSelectActivity;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aW:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZSizeSelectActivity;Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZSizeSelectActivity;[F)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bj:[F

    return-void
.end method

.method static synthetic b(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    return-object v0
.end method

.method static synthetic c(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->setIndeterminate()V

    return-void
.end method

.method static synthetic d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    return-object v0
.end method

.method static synthetic e(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aW:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic f(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->z()V

    return-void
.end method

.method static synthetic g(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/utils/ui/FZWheelSelecter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    return-object v0
.end method

.method static synthetic h(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/activities/FZWaitDialog;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    return-object v0
.end method

.method static synthetic i(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)I
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->A()I

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)D
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bl:D

    return-wide v0
.end method

.method static synthetic k(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/adapters/FZWheelAdapter;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->be:Lcom/fabzat/shop/adapters/FZWheelAdapter;

    return-object v0
.end method

.method static synthetic l(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bk:Ljava/util/List;

    return-object v0
.end method

.method private setIndeterminate()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZWaitDialog;->setIndeterminate()V

    .line 725
    :cond_0
    return-void
.end method

.method private y()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 310
    const-string v1, "fz_size"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 312
    .local v0, "tv":Lcom/fabzat/shop/utils/ui/FZTextView;
    sget v1, Lcom/fabzat/shop/utils/FZConstants;->SCREEN_SIZE:I

    if-ne v1, v3, :cond_1

    .line 314
    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZTextView;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setTextSize(F)V

    .line 315
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bf:Lcom/fabzat/shop/utils/ui/FZImageZoom;

    invoke-virtual {v1, v3}, Lcom/fabzat/shop/utils/ui/FZImageZoom;->setSmallLayout(Z)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    sget v1, Lcom/fabzat/shop/utils/FZConstants;->SCREEN_SIZE:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 318
    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZTextView;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setTextSize(F)V

    goto :goto_0

    .line 319
    :cond_2
    sget v1, Lcom/fabzat/shop/utils/FZConstants;->SCREEN_SIZE:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/fabzat/shop/utils/ui/FZTextView;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZTextView;->setTextSize(F)V

    goto :goto_0
.end method

.method private z()V
    .locals 23

    .prologue
    .line 365
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fabzat/shop/manager/FZShopManager;->getShop()Lcom/fabzat/shop/model/FZContainer;

    move-result-object v16

    .line 367
    .local v16, "shop":Lcom/fabzat/shop/model/FZContainer;
    new-instance v15, Lcom/fabzat/shop/model/FZLocaleInfo;

    invoke-direct {v15}, Lcom/fabzat/shop/model/FZLocaleInfo;-><init>()V

    .line 368
    .local v15, "localInfo":Lcom/fabzat/shop/model/FZLocaleInfo;
    invoke-virtual {v15}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/fabzat/shop/model/FZSizePrice;->CURRENCY:Ljava/lang/String;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bk:Ljava/util/List;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 371
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bk:Ljava/util/List;

    .line 375
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/fabzat/shop/model/FZContainer;->getComponents()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_2

    .line 397
    new-instance v19, Lcom/fabzat/shop/activities/FZSizeSelectActivity$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$6;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 407
    return-void

    .line 373
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bk:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 375
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fabzat/shop/model/FZComponent;

    .line 376
    .local v13, "comp":Lcom/fabzat/shop/model/FZComponent;
    invoke-virtual {v13}, Lcom/fabzat/shop/model/FZComponent;->getComponentComputed()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fabzat/shop/model/FZComponentComputed;

    .line 377
    .local v14, "compC":Lcom/fabzat/shop/model/FZComponentComputed;
    invoke-virtual {v14}, Lcom/fabzat/shop/model/FZComponentComputed;->getVolumeDouble()D

    move-result-wide v17

    .line 381
    .local v17, "volume":D
    sget-object v21, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->bp:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->a(DLcom/fabzat/shop/activities/FZSizeSelectActivity$a;)D

    move-result-wide v5

    .line 382
    .local v5, "x":D
    sget-object v21, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->bq:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->a(DLcom/fabzat/shop/activities/FZSizeSelectActivity$a;)D

    move-result-wide v7

    .line 383
    .local v7, "y":D
    sget-object v21, Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;->br:Lcom/fabzat/shop/activities/FZSizeSelectActivity$a;

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->a(DLcom/fabzat/shop/activities/FZSizeSelectActivity$a;)D

    move-result-wide v9

    .line 386
    .local v9, "z":D
    invoke-virtual {v14}, Lcom/fabzat/shop/model/FZComponentComputed;->getPublicPriceId()I

    move-result v21

    invoke-virtual {v15}, Lcom/fabzat/shop/model/FZLocaleInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/fabzat/shop/model/FZContainer;->getPrice(ILjava/lang/String;)D

    move-result-wide v11

    .line 388
    .local v11, "price":D
    new-instance v4, Lcom/fabzat/shop/model/FZSizePrice;

    invoke-direct/range {v4 .. v12}, Lcom/fabzat/shop/model/FZSizePrice;-><init>(DDDD)V

    .line 389
    .local v4, "fzPrice":Lcom/fabzat/shop/model/FZSizePrice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bk:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public native calculateVolume(Ljava/lang/String;)[F
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZWaitDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZWaitDialog;->dismiss()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    invoke-virtual {v0}, Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;->unload()V

    .line 258
    :cond_1
    iput-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    .line 259
    iput-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->be:Lcom/fabzat/shop/adapters/FZWheelAdapter;

    .line 260
    invoke-super {p0}, Lcom/fabzat/shop/activities/FZActivity;->finish()V

    .line 261
    return-void
.end method

.method public hideInfo()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZWaitDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZWaitDialog;->dismiss()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setSoundEnabled(Z)V

    .line 334
    new-instance v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$5;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$5;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v0, 0x29a

    .line 275
    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 277
    invoke-virtual {p0, p2}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->setResult(I)V

    .line 278
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->finish()V

    .line 280
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOAD_PAYMENT:Z

    .line 269
    invoke-super {p0}, Lcom/fabzat/shop/activities/FZActivity;->onBackPressed()V

    .line 270
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "fz_size_select"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->setContentView(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->_resManager:Lcom/fabzat/shop/manager/FZResourceManager;

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZResourceManager;->getState()Lcom/fabzat/shop/model/FZResourceState;

    move-result-object v0

    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADED:Lcom/fabzat/shop/model/FZResourceState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZShopManager;->isDefined()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->finish()V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->_resManager:Lcom/fabzat/shop/manager/FZResourceManager;

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZResourceManager;->getSelectedResource()Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aY:Landroid/os/Handler;

    .line 131
    const-string v0, "fz_navbar_title_chooseSize"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    const-string v0, "fz_hand"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZImageZoom;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bf:Lcom/fabzat/shop/utils/ui/FZImageZoom;

    .line 134
    const-string v0, "fz_size_selecter"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    .line 136
    new-instance v0, Lcom/fabzat/shop/adapters/FZWheelAdapter;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/adapters/FZWheelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->be:Lcom/fabzat/shop/adapters/FZWheelAdapter;

    .line 137
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->be:Lcom/fabzat/shop/adapters/FZWheelAdapter;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->setListener(Lcom/fabzat/shop/utils/ui/FZWheelSelecter$FZWheelListener;)V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$2;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V

    .line 152
    const-wide/16 v2, 0x1f4

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    const-string v0, "fz_size"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bh:Landroid/widget/TextView;

    .line 155
    const-string v0, "fz_price"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bg:Landroid/widget/TextView;

    .line 156
    const-string v0, "fz_dimensions"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bi:Landroid/widget/TextView;

    .line 162
    new-instance v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$3;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->setNextButton(Landroid/view/View$OnClickListener;)V

    .line 214
    const-string v0, "fz_btn_info"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity$4;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$4;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    if-eqz v0, :cond_4

    .line 224
    new-instance v0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bb:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    .line 225
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bb:Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;

    invoke-virtual {v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->start()V

    .line 231
    :goto_1
    invoke-static {}, Lcom/fabzat/shop/manager/FZShopManager;->getInstance()Lcom/fabzat/shop/manager/FZShopManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZShopManager;->isLive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 233
    const-string v0, "fz_preprod"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_3
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->y()V

    .line 241
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZResourceManager;->hasSingleResource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x1

    invoke-static {p0, v0, v4}, Lcom/fabzat/shop/activities/FZIntroDialog;->launch(Lcom/fabzat/shop/activities/FZActivity;ZZ)V

    goto/16 :goto_0

    .line 228
    :cond_4
    const-string v0, "fz_alert_msg_errorModelLoad"

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fabzat/shop/utils/FZTools;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aY:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bm:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aY:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    :cond_0
    invoke-super {p0}, Lcom/fabzat/shop/activities/FZActivity;->onDestroy()V

    .line 580
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 558
    invoke-super {p0}, Lcom/fabzat/shop/activities/FZActivity;->onPause()V

    .line 559
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aW:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aW:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 561
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 565
    invoke-super {p0}, Lcom/fabzat/shop/activities/FZActivity;->onResume()V

    .line 566
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aW:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aW:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 568
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 572
    invoke-super {p0}, Lcom/fabzat/shop/activities/FZActivity;->onStop()V

    .line 573
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v2, 0x1

    .line 588
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    if-nez v3, :cond_0

    .line 589
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 635
    :goto_0
    return v2

    .line 592
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aZ:F

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->ba:F

    .line 597
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    invoke-virtual {v3, v2}, Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;->setObjectTouched(Z)V

    .line 598
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aY:Landroid/os/Handler;

    iget-object v4, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bm:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 604
    iput v4, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aZ:F

    .line 605
    iput v4, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->ba:F

    .line 607
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    invoke-virtual {v3, v6, v6}, Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;->setTouchedDelta(FF)V

    .line 611
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aY:Landroid/os/Handler;

    iget-object v4, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bm:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 616
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aZ:F

    sub-float v0, v3, v4

    .line 618
    .local v0, "dX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->ba:F

    sub-float v1, v3, v4

    .line 620
    .local v1, "dY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aZ:F

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->ba:F

    .line 624
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->aX:Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;

    div-float v4, v0, v5

    div-float v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;->setTouchedDelta(FF)V

    goto :goto_0

    .line 630
    .end local v0    # "dX":F
    .end local v1    # "dY":F
    :cond_3
    const-wide/16 v2, 0xf

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_1
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 631
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onUpdateProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 697
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-virtual {v0, p1}, Lcom/fabzat/shop/activities/FZWaitDialog;->setProgress(I)V

    .line 699
    :cond_0
    return-void
.end method

.method public onWheelPositionChange(ZI)V
    .locals 8
    .param p1, "up"    # Z
    .param p2, "pos"    # I

    .prologue
    .line 644
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bk:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 646
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bf:Lcom/fabzat/shop/utils/ui/FZImageZoom;

    invoke-virtual {v2, p2}, Lcom/fabzat/shop/utils/ui/FZImageZoom;->zoom(I)V

    .line 649
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bk:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bk:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 p2, v2, -0x1

    .line 654
    :cond_0
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bk:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZSizePrice;

    .line 656
    .local v0, "sizePrice":Lcom/fabzat/shop/model/FZSizePrice;
    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZSizePrice;->getY()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bl:D

    .line 657
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bh:Landroid/widget/TextView;

    .line 658
    const-string v3, "%.1f\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 659
    iget-wide v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bl:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 660
    const-string v6, "fz_label_cart_line_size_unit"

    invoke-virtual {p0, v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 658
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 657
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    const-string v2, "fz_label_cart_line_size_unit"

    invoke-virtual {p0, v2}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "unit":Ljava/lang/String;
    iget-object v2, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZSizePrice;->getX()D

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/fabzat/shop/utils/FZTools;->formatSize(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 665
    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZSizePrice;->getY()D

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/fabzat/shop/utils/FZTools;->formatSize(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 666
    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fabzat/shop/model/FZSizePrice;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/fabzat/shop/utils/FZTools;->formatSize(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    .end local v0    # "sizePrice":Lcom/fabzat/shop/model/FZSizePrice;
    .end local v1    # "unit":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public showInfo(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 706
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    if-nez v1, :cond_0

    .line 707
    new-instance v1, Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/activities/FZWaitDialog;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZWaitDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZWaitDialog;->show()V

    .line 712
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bc:Lcom/fabzat/shop/activities/FZWaitDialog;

    invoke-virtual {v1, v0}, Lcom/fabzat/shop/activities/FZWaitDialog;->setInfo(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public updateViewPositions()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 286
    const-string v6, "fz_top_bar"

    invoke-virtual {p0, v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 287
    .local v5, "top":Landroid/view/View;
    const/4 v6, 0x5

    invoke-static {p0, v6}, Lcom/fabzat/shop/utils/FZTools;->spToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 289
    .local v1, "margin":I
    const-string v6, "fz_size_info"

    invoke-virtual {p0, v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, "infoView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 291
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p0}, Lcom/fabzat/shop/utils/FZTools;->getScreenMaximum(Landroid/app/Activity;)I

    move-result v6

    iget-object v7, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v7}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, v1

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 292
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 293
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v6}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getMiddle()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 294
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 297
    const-string v6, "fz_price_info"

    invoke-virtual {p0, v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 298
    .local v4, "priceView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 299
    .local v3, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p0}, Lcom/fabzat/shop/utils/FZTools;->getScreenMaximum(Landroid/app/Activity;)I

    move-result v6

    iget-object v7, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v7}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 300
    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->bd:Lcom/fabzat/shop/utils/ui/FZWheelSelecter;

    invoke-virtual {v6}, Lcom/fabzat/shop/utils/ui/FZWheelSelecter;->getMiddle()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 301
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 303
    return-void
.end method
