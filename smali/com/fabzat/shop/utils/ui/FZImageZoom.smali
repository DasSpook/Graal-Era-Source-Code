.class public Lcom/fabzat/shop/utils/ui/FZImageZoom;
.super Landroid/view/View;
.source "FZImageZoom.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private ed:Landroid/graphics/drawable/Drawable;

.field private ee:I

.field private ef:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/fabzat/shop/utils/ui/FZImageZoom;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/16 v1, 0x14

    iput v1, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ee:I

    .line 29
    const/16 v1, 0xa

    iput v1, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ef:I

    .line 35
    const-string v1, "FZImageZoom"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStyleables(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "ta":Landroid/content/res/TypedArray;
    const-string v1, "FZImageZoom_src"

    invoke-static {v1}, Lcom/fabzat/shop/utils/FZTools;->getStyleable(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ed:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fabzat/shop/utils/ui/FZImageZoom;->setFocusable(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZImageZoom;->getWidth()I

    move-result v1

    .line 54
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZImageZoom;->getHeight()I

    move-result v0

    .line 55
    .local v0, "h":I
    sub-int v3, v1, v0

    div-int/lit8 v2, v3, 0x6

    .line 57
    .local v2, "widthOffset":I
    iget-object v3, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ed:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ee:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    iget v6, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ee:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iget-object v3, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method public setSmallLayout(Z)V
    .locals 1
    .param p1, "isSmall"    # Z

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ef:I

    .line 46
    :cond_0
    return-void
.end method

.method public setZoomFactor(I)V
    .locals 3
    .param p1, "factor"    # I

    .prologue
    .line 76
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Image zoom factor = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput p1, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ef:I

    .line 78
    return-void
.end method

.method public zoom(I)V
    .locals 3
    .param p1, "factor"    # I

    .prologue
    .line 70
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ef:I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ee:I

    .line 71
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Image zoom factor = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZImageZoom;->invalidate()V

    .line 73
    return-void
.end method

.method public zoom(II)V
    .locals 3
    .param p1, "factor"    # I
    .param p2, "total"    # I

    .prologue
    .line 63
    iget v0, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ef:I

    sub-int v1, p2, p1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->ee:I

    .line 64
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/ui/FZImageZoom;->invalidate()V

    .line 66
    sget-object v0, Lcom/fabzat/shop/utils/ui/FZImageZoom;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zoom factor = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
