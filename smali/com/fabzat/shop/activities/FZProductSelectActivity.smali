.class public Lcom/fabzat/shop/activities/FZProductSelectActivity;
.super Lcom/fabzat/shop/activities/FZActivity;
.source "FZProductSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;
.implements Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field public static LOAD_PAYMENT:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static synthetic f:[I


# instance fields
.field private aF:I

.field private aG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZ3DResource;",
            ">;"
        }
    .end annotation
.end field

.field private aH:Lcom/fabzat/shop/utils/ui/FZHorizontalPager;

.field private aI:I

.field private aJ:Landroid/view/View;

.field private aK:I

.field private aL:Landroid/view/LayoutInflater;

.field private aM:I

.field private aN:Lcom/fabzat/shop/utils/ui/FZImage;

.field private aO:Lcom/fabzat/shop/utils/ui/FZTextView;

.field private aP:Landroid/widget/ImageView;

.field private aQ:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOG_TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZActivity;-><init>()V

    .line 49
    const v0, -0xff0100

    iput v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aF:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aK:I

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZProductSelectActivity;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aK:I

    return v0
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZProductSelectActivity;Lcom/fabzat/shop/model/FZ3DResource;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->a(Lcom/fabzat/shop/model/FZ3DResource;)V

    return-void
.end method

.method private a(Lcom/fabzat/shop/model/FZ3DResource;)V
    .locals 2
    .param p1, "resource"    # Lcom/fabzat/shop/model/FZ3DResource;

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->_resManager:Lcom/fabzat/shop/manager/FZResourceManager;

    invoke-virtual {v1, p1}, Lcom/fabzat/shop/manager/FZResourceManager;->setSelectedresource(Lcom/fabzat/shop/model/FZ3DResource;)V

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x29a

    invoke-virtual {p0, v0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Lcom/fabzat/shop/model/FZResourceState;)V
    .locals 2
    .param p1, "state"    # Lcom/fabzat/shop/model/FZResourceState;

    .prologue
    .line 243
    invoke-static {}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->c()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 247
    :pswitch_0
    sget-object v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Resources have not been initialized! Call setResources or setDistantResources before calling show."

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_1
    sget-object v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Resources have not been initialized! There was an error while loading."

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/fabzat/shop/activities/FZProductSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZProductSelectActivity$2;-><init>(Lcom/fabzat/shop/activities/FZProductSelectActivity;)V

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/manager/FZResourceManager;->removeListener(Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;)V

    .line 281
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->_resManager:Lcom/fabzat/shop/manager/FZResourceManager;

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZResourceManager;->getResources()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aG:Ljava/util/List;

    .line 284
    new-instance v0, Lcom/fabzat/shop/activities/FZProductSelectActivity$3;

    invoke-direct {v0, p0}, Lcom/fabzat/shop/activities/FZProductSelectActivity$3;-><init>(Lcom/fabzat/shop/activities/FZProductSelectActivity;)V

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 297
    :pswitch_3
    sget-object v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Resources are loading! Plug-in will show when loading has finished."

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/manager/FZResourceManager;->addListener(Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/fabzat/shop/activities/FZProductSelectActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aG:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/fabzat/shop/activities/FZProductSelectActivity;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->w()V

    return-void
.end method

.method static synthetic c()[I
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fabzat/shop/model/FZResourceState;->values()[Lcom/fabzat/shop/model/FZResourceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADED:Lcom/fabzat/shop/model/FZResourceState;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADING:Lcom/fabzat/shop/model/FZResourceState;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->LOADING_ERROR:Lcom/fabzat/shop/model/FZResourceState;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fabzat/shop/model/FZResourceState;->NOT_DEFINED:Lcom/fabzat/shop/model/FZResourceState;

    invoke-virtual {v1}, Lcom/fabzat/shop/model/FZResourceState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private w()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZResourceManager;->hasSingleResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aG:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/model/FZ3DResource;

    invoke-direct {p0, v0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->a(Lcom/fabzat/shop/model/FZ3DResource;)V

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->x()V

    goto :goto_0
.end method

.method private x()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aJ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aJ:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aG:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aM:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aI:I

    .line 157
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aH:Lcom/fabzat/shop/utils/ui/FZHorizontalPager;

    iget v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aI:I

    invoke-virtual {v0, v4, v1}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->setNbChild(II)V

    .line 158
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aH:Lcom/fabzat/shop/utils/ui/FZHorizontalPager;

    invoke-virtual {v0, p0, v4}, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;->setOnScreenSwitchListener(Lcom/fabzat/shop/utils/ui/FZHorizontalPager$OnScreenSwitchListener;I)V

    .line 160
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fabzat/shop/manager/FZResourceManager;->removeListener(Lcom/fabzat/shop/manager/FZResourceManager$FZResourceStateChangeListener;)V

    .line 323
    invoke-static {}, Lcom/fabzat/shop/utils/FZImageCache;->clear()V

    .line 324
    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->deleteMainFolderContent()V

    .line 325
    invoke-static {}, Lcom/fabzat/shop/manager/FZCartManager;->clear()V

    .line 327
    invoke-super {p0}, Lcom/fabzat/shop/activities/FZActivity;->finish()V

    .line 328
    return-void
.end method

.method public getView(ILandroid/view/View;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "ConvertView"    # Landroid/view/View;

    .prologue
    .line 358
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 359
    .local v5, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 361
    const/16 v9, 0x11

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v9, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aM:I

    if-lt v0, v9, :cond_0

    .line 414
    return-object v5

    .line 366
    :cond_0
    iget v9, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aM:I

    mul-int/2addr v9, p1

    add-int v2, v0, v9

    .line 368
    .local v2, "index":I
    iget-object v9, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aG:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 372
    iget-object v9, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aL:Landroid/view/LayoutInflater;

    const-string v10, "fz_preview_item"

    invoke-virtual {p0, v10}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->getLayout(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 373
    .local v4, "layout":Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aG:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fabzat/shop/model/FZ3DResource;

    .line 375
    .local v7, "res":Lcom/fabzat/shop/model/FZ3DResource;
    const-string v9, "fz_preview_image"

    invoke-virtual {p0, v9}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->getId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/utils/ui/FZImage;

    .line 376
    .local v1, "image":Lcom/fabzat/shop/utils/ui/FZImage;
    const-string v9, "fz_preview_name"

    invoke-virtual {p0, v9}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->getId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 377
    .local v8, "text":Landroid/widget/TextView;
    iget v9, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aK:I

    if-ne v2, v9, :cond_2

    const/4 v3, 0x1

    .line 380
    .local v3, "isSelected":Z
    :goto_1
    const/16 v9, 0x96

    invoke-virtual {v1, v9}, Lcom/fabzat/shop/utils/ui/FZImage;->setProgressMargin(I)V

    .line 381
    const-wide v9, 0x3fe3333333333333L    # 0.6

    invoke-static {p0}, Lcom/fabzat/shop/utils/FZTools;->getScreenMinimum(Landroid/app/Activity;)I

    move-result v11

    int-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v1, v9}, Lcom/fabzat/shop/utils/ui/FZImage;->setHeight(I)V

    .line 382
    new-instance v9, Lcom/fabzat/shop/utils/FZImageCache;

    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZ3DResource;->getForPreview()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v1, v10}, Lcom/fabzat/shop/utils/FZImageCache;-><init>(Lcom/fabzat/shop/utils/ui/FZImage;Ljava/lang/String;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    .line 383
    invoke-virtual {v9, v10}, Lcom/fabzat/shop/utils/FZImageCache;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 385
    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZ3DResource;->get3DModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    if-eqz v3, :cond_3

    .line 391
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/fabzat/shop/utils/ui/FZImage;->setSelected(Z)V

    .line 392
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget v10, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aF:I

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 401
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 402
    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    .line 407
    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    .line 406
    invoke-direct {v6, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 408
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .end local v1    # "image":Lcom/fabzat/shop/utils/ui/FZImage;
    .end local v3    # "isSelected":Z
    .end local v4    # "layout":Landroid/widget/LinearLayout;
    .end local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "res":Lcom/fabzat/shop/model/FZ3DResource;
    .end local v8    # "text":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 377
    .restart local v1    # "image":Lcom/fabzat/shop/utils/ui/FZImage;
    .restart local v4    # "layout":Landroid/widget/LinearLayout;
    .restart local v7    # "res":Lcom/fabzat/shop/model/FZ3DResource;
    .restart local v8    # "text":Landroid/widget/TextView;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 396
    .restart local v3    # "isSelected":Z
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/fabzat/shop/utils/ui/FZImage;->setSelected(Z)V

    .line 397
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Lcom/fabzat/shop/activities/FZActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 190
    const/16 v0, 0x29a

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOAD_PAYMENT:Z

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fabzat/shop/activities/FZPaymentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->finish()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-static {}, Lcom/fabzat/shop/manager/FZResourceManager;->getInstance()Lcom/fabzat/shop/manager/FZResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fabzat/shop/manager/FZResourceManager;->hasSingleResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aG:Ljava/util/List;

    if-nez v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 211
    .local v1, "index":I
    iget v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aK:I

    if-eq v1, v3, :cond_0

    .line 215
    const-string v3, "fz_preview_image"

    invoke-virtual {p0, v3}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fabzat/shop/utils/ui/FZImage;

    .line 216
    .local v0, "image":Lcom/fabzat/shop/utils/ui/FZImage;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/fabzat/shop/utils/ui/FZImage;->setSelected(Z)V

    .line 218
    const-string v3, "fz_preview_name"

    invoke-virtual {p0, v3}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 219
    .local v2, "text":Lcom/fabzat/shop/utils/ui/FZTextView;
    invoke-virtual {v2}, Lcom/fabzat/shop/utils/ui/FZTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aF:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 220
    invoke-virtual {v2}, Lcom/fabzat/shop/utils/ui/FZTextView;->invalidate()V

    .line 223
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aN:Lcom/fabzat/shop/utils/ui/FZImage;

    if-eqz v3, :cond_2

    .line 224
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aN:Lcom/fabzat/shop/utils/ui/FZImage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/fabzat/shop/utils/ui/FZImage;->setSelected(Z)V

    .line 226
    :cond_2
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aO:Lcom/fabzat/shop/utils/ui/FZTextView;

    if-eqz v3, :cond_3

    .line 227
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aO:Lcom/fabzat/shop/utils/ui/FZTextView;

    invoke-virtual {v3}, Lcom/fabzat/shop/utils/ui/FZTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 228
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aN:Lcom/fabzat/shop/utils/ui/FZImage;

    invoke-virtual {v3}, Lcom/fabzat/shop/utils/ui/FZImage;->invalidate()V

    .line 231
    :cond_3
    iput-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aN:Lcom/fabzat/shop/utils/ui/FZImage;

    .line 232
    iput-object v2, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aO:Lcom/fabzat/shop/utils/ui/FZTextView;

    .line 233
    iput v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aK:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x4

    .line 72
    invoke-super {p0, p1}, Lcom/fabzat/shop/activities/FZActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v1, "fz_product_select"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->setContentView(Ljava/lang/String;)V

    .line 77
    const-string v1, "fz_progressbar"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aJ:Landroid/view/View;

    .line 78
    const-string v1, "fz_select_pager"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fabzat/shop/utils/ui/FZHorizontalPager;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aH:Lcom/fabzat/shop/utils/ui/FZHorizontalPager;

    .line 79
    const-string v1, "fz_arrow_left"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aP:Landroid/widget/ImageView;

    .line 80
    const-string v1, "fz_arrow_right"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aQ:Landroid/widget/ImageView;

    .line 82
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aL:Landroid/view/LayoutInflater;

    .line 84
    const-string v1, "fz_navbar_title_choose3D"

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {p0}, Lcom/fabzat/shop/utils/FZTools;->getScreenWidth(Landroid/app/Activity;)I

    move-result v0

    .line 89
    .local v0, "w":I
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, v0

    mul-double/2addr v1, v3

    const/16 v3, 0xaf

    invoke-static {p0, v3}, Lcom/fabzat/shop/utils/FZTools;->spToPixels(Landroid/content/Context;I)I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aM:I

    .line 91
    iget v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aM:I

    if-le v1, v5, :cond_0

    .line 92
    iput v5, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aM:I

    .line 94
    :cond_0
    sget-object v1, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item per page = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->_resManager:Lcom/fabzat/shop/manager/FZResourceManager;

    invoke-virtual {v1}, Lcom/fabzat/shop/manager/FZResourceManager;->getState()Lcom/fabzat/shop/model/FZResourceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->a(Lcom/fabzat/shop/model/FZResourceState;)V

    .line 101
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fabzat/shop/activities/FZProductSelectActivity;->LOAD_PAYMENT:Z

    .line 103
    new-instance v1, Lcom/fabzat/shop/activities/FZProductSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/activities/FZProductSelectActivity$1;-><init>(Lcom/fabzat/shop/activities/FZProductSelectActivity;)V

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->setNextButton(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v1, Lcom/fabzat/shop/activities/FZIntroDialog;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/activities/FZIntroDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/fabzat/shop/activities/FZIntroDialog;->show()V

    .line 132
    return-void
.end method

.method public onDisplayView(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "ConvertView"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 345
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aP:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aQ:Landroid/widget/ImageView;

    iget v3, p0, Lcom/fabzat/shop/activities/FZProductSelectActivity;->aI:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    return-void

    :cond_0
    move v0, v2

    .line 345
    goto :goto_0

    :cond_1
    move v2, v1

    .line 346
    goto :goto_1
.end method

.method public onExitView(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "ConvertView"    # Landroid/view/View;

    .prologue
    .line 336
    return-void
.end method

.method public onStateChanged(Lcom/fabzat/shop/model/FZResourceState;)V
    .locals 0
    .param p1, "state"    # Lcom/fabzat/shop/model/FZResourceState;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/fabzat/shop/activities/FZProductSelectActivity;->a(Lcom/fabzat/shop/model/FZResourceState;)V

    .line 310
    return-void
.end method
