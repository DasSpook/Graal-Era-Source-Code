.class public Lcom/fabzat/shop/utils/ui/FZImage;
.super Landroid/widget/RelativeLayout;
.source "FZImage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private D:Landroid/widget/ProgressBar;

.field private dY:Landroid/widget/ImageView;

.field private dZ:Landroid/view/animation/Animation;

.field private ea:Landroid/view/animation/Animation;

.field private eb:Z

.field private ec:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/fabzat/shop/utils/ui/FZImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/utils/ui/FZImage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xa

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dZ:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 45
    const v1, 0x10a0001

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dZ:Landroid/view/animation/Animation;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->ea:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    .line 48
    const/high16 v1, 0x10a0000

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->ea:Landroid/view/animation/Animation;

    .line 51
    :cond_1
    iput-boolean v5, p0, Lcom/fabzat/shop/utils/ui/FZImage;->eb:Z

    .line 53
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    .line 54
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/utils/ui/FZImage;->addView(Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/utils/ui/FZImage;->addView(Landroid/view/View;)V

    .line 59
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 60
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 62
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 63
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 64
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 65
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    return-void
.end method

.method private W()V
    .locals 3

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->eb:Z

    if-nez v0, :cond_1

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->eb:Z

    .line 154
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->ec:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0xff0100

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 157
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->ea:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    :cond_1
    return-void
.end method

.method private c(II)V
    .locals 3
    .param p1, "dHeight"    # I
    .param p2, "dWidth"    # I

    .prologue
    .line 114
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZImage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drawable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ImageView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->eb:Z

    return v0
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 131
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dZ:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fabzat/shop/utils/ui/FZImage;->c(II)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZImage;->W()V

    .line 94
    :cond_0
    return-void

    .line 87
    :cond_1
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Bitmap is null!"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dZ:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fabzat/shop/utils/ui/FZImage;->c(II)V

    .line 101
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/fabzat/shop/utils/ui/FZImage;->W()V

    .line 105
    :cond_0
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 127
    return-void
.end method

.method public setProgressMargin(I)V
    .locals 3
    .param p1, "margin"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 74
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 76
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 77
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "type"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 187
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->ec:Z

    .line 172
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    if-eqz p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0xff0100

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 182
    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 138
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 139
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    iget-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImage;->dY:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void
.end method
