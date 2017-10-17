.class public Lcom/facebook/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source "ProfilePictureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    }
.end annotation


# static fields
.field private static final BITMAP_HEIGHT_KEY:Ljava/lang/String; = "ProfilePictureView_height"

.field private static final BITMAP_KEY:Ljava/lang/String; = "ProfilePictureView_bitmap"

.field private static final BITMAP_WIDTH_KEY:Ljava/lang/String; = "ProfilePictureView_width"

.field public static final CUSTOM:I = -0x1

.field private static final IS_CROPPED_DEFAULT_VALUE:Z = true

.field private static final IS_CROPPED_KEY:Ljava/lang/String; = "ProfilePictureView_isCropped"

.field public static final LARGE:I = -0x4

.field private static final MIN_SIZE:I = 0x1

.field public static final NORMAL:I = -0x3

.field private static final PENDING_REFRESH_KEY:Ljava/lang/String; = "ProfilePictureView_refresh"

.field private static final PRESET_SIZE_KEY:Ljava/lang/String; = "ProfilePictureView_presetSize"

.field private static final PROFILE_ID_KEY:Ljava/lang/String; = "ProfilePictureView_profileId"

.field public static final SMALL:I = -0x2

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "ProfilePictureView_superState"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private image:Landroid/widget/ImageView;

.field private imageContents:Landroid/graphics/Bitmap;

.field private isCropped:Z

.field private lastRequest:Lcom/facebook/widget/ImageRequest;

.field private onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

.field private presetSizeType:I

.field private profileId:Ljava/lang/String;

.field private queryHeight:I

.field private queryWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/facebook/widget/ProfilePictureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 106
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    .line 107
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    .line 122
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    .line 107
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    .line 134
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 135
    invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    .line 107
    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    .line 148
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 149
    invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/ProfilePictureView;Lcom/facebook/widget/ImageResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/ProfilePictureView;
    .param p1, "x1"    # Lcom/facebook/widget/ImageResponse;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->processResponse(Lcom/facebook/widget/ImageResponse;)V

    return-void
.end method

.method private getPresetSizeInPixels(Z)I
    .locals 3
    .param p1, "forcePreset"    # Z

    .prologue
    const/4 v1, 0x0

    .line 497
    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    packed-switch v2, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    return v1

    .line 499
    :pswitch_0
    sget v0, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_small:I

    .line 518
    .local v0, "dimensionId":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 502
    .end local v0    # "dimensionId":I
    :pswitch_1
    sget v0, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    .line 503
    .restart local v0    # "dimensionId":I
    goto :goto_1

    .line 505
    .end local v0    # "dimensionId":I
    :pswitch_2
    sget v0, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_large:I

    .line 506
    .restart local v0    # "dimensionId":I
    goto :goto_1

    .line 508
    .end local v0    # "dimensionId":I
    :pswitch_3
    if-eqz p1, :cond_0

    .line 511
    sget v0, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    .line 512
    .restart local v0    # "dimensionId":I
    goto :goto_1

    .line 497
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 358
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->removeAllViews()V

    .line 360
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    .line 362
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 366
    .local v0, "imageLayout":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 371
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/facebook/widget/ProfilePictureView;->addView(Landroid/view/View;)V

    .line 372
    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/android/R$styleable;->com_facebook_profile_picture_view:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 376
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/ProfilePictureView;->setPresetSize(I)V

    .line 377
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    .line 378
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    return-void
.end method

.method private processResponse(Lcom/facebook/widget/ImageResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/facebook/widget/ImageResponse;

    .prologue
    .line 443
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->getRequest()Lcom/facebook/widget/ImageRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/widget/ImageRequest;

    if-ne v3, v4, :cond_0

    .line 444
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/widget/ImageRequest;

    .line 445
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 446
    .local v2, "responseImage":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 447
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 448
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    .line 449
    .local v1, "listener":Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    if-eqz v1, :cond_1

    .line 450
    new-instance v3, Lcom/facebook/FacebookException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in downloading profile picture for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v3}, Lcom/facebook/widget/ProfilePictureView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 463
    .end local v0    # "error":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    .end local v2    # "responseImage":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 453
    .restart local v0    # "error":Ljava/lang/Exception;
    .restart local v1    # "listener":Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    .restart local v2    # "responseImage":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v3, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x6

    sget-object v5, Lcom/facebook/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    .end local v1    # "listener":Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    :cond_2
    if-eqz v2, :cond_0

    .line 456
    invoke-direct {p0, v2}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 458
    invoke-virtual {p1}, Lcom/facebook/widget/ImageResponse;->isCachedRedirect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/facebook/widget/ProfilePictureView;->sendImageRequest(Z)V

    goto :goto_0
.end method

.method private refreshImage(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->updateImageQueryParameters()Z

    move-result v0

    .line 385
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    if-nez v1, :cond_2

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->setBlankProfilePicture()V

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    .line 390
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/widget/ProfilePictureView;->sendImageRequest(Z)V

    goto :goto_0
.end method

.method private sendImageRequest(Z)V
    .locals 7
    .param p1, "allowCachedResponse"    # Z

    .prologue
    .line 410
    :try_start_0
    new-instance v2, Lcom/facebook/widget/ImageRequest$Builder;

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    iget v6, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    invoke-static {v4, v5, v6}, Lcom/facebook/widget/ImageRequest;->getProfilePictureUrl(Ljava/lang/String;II)Ljava/net/URL;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/widget/ImageRequest$Builder;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    .line 414
    .local v2, "requestBuilder":Lcom/facebook/widget/ImageRequest$Builder;
    invoke-virtual {v2, p1}, Lcom/facebook/widget/ImageRequest$Builder;->setAllowCachedRedirects(Z)Lcom/facebook/widget/ImageRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/facebook/widget/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/widget/ImageRequest$Builder;

    move-result-object v3

    new-instance v4, Lcom/facebook/widget/ProfilePictureView$1;

    invoke-direct {v4, p0}, Lcom/facebook/widget/ProfilePictureView$1;-><init>(Lcom/facebook/widget/ProfilePictureView;)V

    invoke-virtual {v3, v4}, Lcom/facebook/widget/ImageRequest$Builder;->setCallback(Lcom/facebook/widget/ImageRequest$Callback;)Lcom/facebook/widget/ImageRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/widget/ImageRequest$Builder;->build()Lcom/facebook/widget/ImageRequest;

    move-result-object v1

    .line 428
    .local v1, "request":Lcom/facebook/widget/ImageRequest;
    iget-object v3, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/widget/ImageRequest;

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/widget/ImageRequest;

    invoke-static {v3}, Lcom/facebook/widget/ImageDownloader;->cancelRequest(Lcom/facebook/widget/ImageRequest;)Z

    .line 431
    :cond_0
    iput-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/widget/ImageRequest;

    .line 433
    invoke-static {v1}, Lcom/facebook/widget/ImageDownloader;->downloadAsync(Lcom/facebook/widget/ImageRequest;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v1    # "request":Lcom/facebook/widget/ImageRequest;
    .end local v2    # "requestBuilder":Lcom/facebook/widget/ImageRequest$Builder;
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v3, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x6

    sget-object v5, Lcom/facebook/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBlankProfilePicture()V
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->isCropped()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_picture_blank_square:I

    .line 398
    .local v0, "blankImageResource":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 399
    return-void

    .line 395
    .end local v0    # "blankImageResource":I
    :cond_0
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_picture_blank_portrait:I

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "imageBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 403
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    .line 404
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 406
    :cond_0
    return-void
.end method

.method private updateImageQueryParameters()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getHeight()I

    move-result v1

    .line 467
    .local v1, "newHeightPx":I
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getWidth()I

    move-result v2

    .line 468
    .local v2, "newWidthPx":I
    if-lt v2, v0, :cond_0

    if-ge v1, v0, :cond_1

    :cond_0
    move v0, v4

    .line 492
    :goto_0
    return v0

    .line 473
    :cond_1
    invoke-direct {p0, v4}, Lcom/facebook/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v3

    .line 474
    .local v3, "presetSize":I
    if-eqz v3, :cond_2

    .line 475
    move v2, v3

    .line 476
    move v1, v3

    .line 481
    :cond_2
    if-gt v2, v1, :cond_5

    .line 482
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->isCropped()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    .line 487
    :goto_1
    iget v5, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    if-ne v2, v5, :cond_3

    iget v5, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    if-eq v1, v5, :cond_7

    .line 489
    .local v0, "changed":Z
    :cond_3
    :goto_2
    iput v2, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    .line 490
    iput v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    goto :goto_0

    .end local v0    # "changed":Z
    :cond_4
    move v1, v4

    .line 482
    goto :goto_1

    .line 484
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->isCropped()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v1

    :goto_3
    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    move v0, v4

    .line 487
    goto :goto_2
.end method


# virtual methods
.method public final getOnErrorListener()Lcom/facebook/widget/ProfilePictureView$OnErrorListener;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    return-object v0
.end method

.method public final getPresetSize()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    return v0
.end method

.method public final getProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public final isCropped()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/widget/ImageRequest;

    .line 354
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 294
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    .line 298
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    const/high16 v5, 0x40000000    # 2.0f

    .line 259
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 260
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 261
    .local v0, "customMeasure":Z
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 262
    .local v1, "newHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 263
    .local v2, "newWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v6, :cond_0

    .line 265
    invoke-direct {p0, v7}, Lcom/facebook/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v1

    .line 266
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 267
    const/4 v0, 0x1

    .line 270
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v5, :cond_1

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v6, :cond_1

    .line 272
    invoke-direct {p0, v7}, Lcom/facebook/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v2

    .line 273
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 274
    const/4 v0, 0x1

    .line 277
    :cond_1
    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p0, v2, v1}, Lcom/facebook/widget/ProfilePictureView;->setMeasuredDimension(II)V

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/ProfilePictureView;->measureChildren(II)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/os/Bundle;

    if-eq v1, v2, :cond_1

    .line 328
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 330
    check-cast v0, Landroid/os/Bundle;

    .line 331
    .local v0, "instanceState":Landroid/os/Bundle;
    const-string v1, "ProfilePictureView_superState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 333
    const-string v1, "ProfilePictureView_profileId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    .line 334
    const-string v1, "ProfilePictureView_presetSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    .line 335
    const-string v1, "ProfilePictureView_isCropped"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    .line 336
    const-string v1, "ProfilePictureView_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    .line 337
    const-string v1, "ProfilePictureView_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    .line 339
    const-string v1, "ProfilePictureView_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    const-string v1, "ProfilePictureView_refresh"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 307
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 308
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, "instanceState":Landroid/os/Bundle;
    const-string v2, "ProfilePictureView_superState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 310
    const-string v2, "ProfilePictureView_profileId"

    iget-object v3, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v2, "ProfilePictureView_presetSize"

    iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v2, "ProfilePictureView_isCropped"

    iget-boolean v3, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    const-string v2, "ProfilePictureView_bitmap"

    iget-object v3, p0, Lcom/facebook/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 314
    const-string v2, "ProfilePictureView_width"

    iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->queryWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v2, "ProfilePictureView_height"

    iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->queryHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v3, "ProfilePictureView_refresh"

    iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->lastRequest:Lcom/facebook/widget/ImageRequest;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    return-object v0

    .line 316
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final setCropped(Z)V
    .locals 1
    .param p1, "showCroppedVersion"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/facebook/widget/ProfilePictureView;->isCropped:Z

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    .line 201
    return-void
.end method

.method public final setOnErrorListener(Lcom/facebook/widget/ProfilePictureView$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/widget/ProfilePictureView$OnErrorListener;

    .line 247
    return-void
.end method

.method public final setPresetSize(I)V
    .locals 2
    .param p1, "sizeType"    # I

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use a predefined preset size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_0
    iput p1, p0, Lcom/facebook/widget/ProfilePictureView;->presetSizeType:I

    .line 179
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->requestLayout()V

    .line 180
    return-void

    .line 167
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setProfileId(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "force":Z
    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->setBlankProfilePicture()V

    .line 223
    const/4 v0, 0x1

    .line 226
    :cond_1
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    .line 227
    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->refreshImage(Z)V

    .line 228
    return-void
.end method
