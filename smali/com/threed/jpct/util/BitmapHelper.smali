.class public Lcom/threed/jpct/util/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# static fields
.field private static callCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/util/BitmapHelper;->callCount:I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanUp()V
    .locals 2

    .prologue
    .line 80
    sget v0, Lcom/threed/jpct/util/BitmapHelper;->callCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/threed/jpct/util/BitmapHelper;->callCount:I

    .line 81
    sget v0, Lcom/threed/jpct/util/BitmapHelper;->callCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 85
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 86
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/util/BitmapHelper;->callCount:I

    .line 89
    :cond_0
    return-void
.end method

.method public static convert(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "dable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-static {}, Lcom/threed/jpct/util/BitmapHelper;->cleanUp()V

    .line 53
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 54
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 55
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    return-object v0
.end method

.method public static loadImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    instance-of v2, p0, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_0

    .line 33
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x800

    invoke-direct {v1, p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p0, v1

    .line 35
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-static {}, Lcom/threed/jpct/util/BitmapHelper;->cleanUp()V

    .line 36
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 38
    return-object v0
.end method

.method public static rescale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
