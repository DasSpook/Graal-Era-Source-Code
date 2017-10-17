.class public Lcom/threed/jpct/Texture;
.super Ljava/lang/Object;
.source "Texture.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x10

.field public static final DEFAULT_WIDTH:I = 0x10

.field static MARKER_DELETE_AND_UPLOAD:I = 0x0

.field static MARKER_NOTHING:I = 0x0

.field private static final TEXTURE_SIZES:[I

.field private static defaultTo4bpp:Z = false

.field private static defaultToKeepPixels:Z = false

.field private static defaultToMipmapping:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field alpha:Z

.field bilinear:Z

.field convertTo4444:Z

.field private depthBuffer:Lcom/threed/jpct/DepthBuffer;

.field enabled:Z

.field etc1:Z

.field transient fbo:I

.field private glIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field private isConverted:Z

.field private isLoaded:Z

.field isShadowMap:Z

.field isUnicolor:Z

.field private keepPixels:Z

.field transient lastHandlerId:I

.field private lastRenderer:I

.field private lastRendererMarker:I

.field private marker:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private markerGL:I

.field mipmap:Z

.field transient myEffect:Lcom/threed/jpct/ITextureEffect;

.field nPot:Z

.field private openGLID:I

.field transient renderBuffer:I

.field repeat:Z

.field private storeTexels:[I

.field texels:[I

.field width:I

.field zippedTexels:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/threed/jpct/Texture;->TEXTURE_SIZES:[I

    .line 38
    sput-boolean v1, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    .line 40
    sput-boolean v1, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    .line 42
    sput-boolean v2, Lcom/threed/jpct/Texture;->defaultToKeepPixels:Z

    .line 44
    sput v1, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    .line 46
    sput v2, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    .line 22
    return-void

    .line 26
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
    .end array-data
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v6, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 56
    iput-boolean v4, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 58
    iput-boolean v4, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    .line 60
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 62
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 64
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 66
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 68
    iput-boolean v4, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 70
    iput-boolean v4, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 72
    iput-boolean v4, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 74
    iput-object v6, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    .line 76
    iput v5, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 78
    iput v5, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 80
    iput v5, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 82
    iput-boolean v4, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 86
    iput-object v6, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 88
    iput-boolean v4, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 90
    iput v4, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 92
    iput v4, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 94
    iput v5, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 96
    iput v5, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 98
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 102
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 104
    iput-object v6, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 107
    iput v7, p0, Lcom/threed/jpct/Texture;->width:I

    .line 108
    iput v7, p0, Lcom/threed/jpct/Texture;->height:I

    .line 110
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->isLoaded:Z

    .line 111
    iget v2, p0, Lcom/threed/jpct/Texture;->width:I

    iget v3, p0, Lcom/threed/jpct/Texture;->height:I

    mul-int v0, v2, v3

    .line 112
    .local v0, "end":I
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    .line 113
    iput-boolean v4, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 114
    invoke-direct {p0}, Lcom/threed/jpct/Texture;->resetIDs()V

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 118
    sget-boolean v2, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 119
    sget-boolean v2, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    invoke-virtual {p0, v2}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 120
    sget-boolean v2, Lcom/threed/jpct/Texture;->defaultToKeepPixels:Z

    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 121
    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    aput v5, v2, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 246
    sget-object v0, Lcom/threed/jpct/RGBColor;->BLACK:Lcom/threed/jpct/RGBColor;

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/Texture;-><init>(IILcom/threed/jpct/RGBColor;)V

    .line 247
    return-void
.end method

.method public constructor <init>(III)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "alpha"    # I

    .prologue
    .line 262
    sget-object v3, Lcom/threed/jpct/RGBColor;->BLACK:Lcom/threed/jpct/RGBColor;

    invoke-direct {p0, p1, p2, v3}, Lcom/threed/jpct/Texture;-><init>(IILcom/threed/jpct/RGBColor;)V

    .line 263
    iget-object v3, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v1, v3

    .line 264
    .local v1, "end":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 265
    and-int/lit16 v3, p3, 0xff

    shl-int/lit8 v0, v3, 0x18

    .line 266
    .local v0, "al":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 269
    return-void

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/Texture;->texels:[I

    aget v4, v3, v2

    or-int/2addr v4, v0

    aput v4, v3, v2

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public constructor <init>(IILcom/threed/jpct/RGBColor;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "col"    # Lcom/threed/jpct/RGBColor;

    .prologue
    const/4 v3, 0x0

    .line 282
    invoke-static {p1, p2, p3, v3}, Lcom/threed/jpct/Texture;->createIntArray(IILcom/threed/jpct/RGBColor;Z)[I

    move-result-object v0

    invoke-static {p1}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result v1

    invoke-static {p2}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    .line 283
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/threed/jpct/RGBColor;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 286
    :cond_0
    return-void
.end method

.method constructor <init>(IILcom/threed/jpct/RGBColor;Z)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "col"    # Lcom/threed/jpct/RGBColor;
    .param p4, "npot"    # Z

    .prologue
    .line 289
    invoke-static {p1, p2, p3, p4}, Lcom/threed/jpct/Texture;->createIntArray(IILcom/threed/jpct/RGBColor;Z)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    .line 290
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/threed/jpct/RGBColor;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 293
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v3, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 56
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 58
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    .line 60
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 62
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 64
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 66
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 68
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 70
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 72
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 74
    iput-object v3, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    .line 76
    iput v0, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 78
    iput v0, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 80
    iput v0, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 82
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 86
    iput-object v3, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 88
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 90
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 92
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 94
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 96
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 98
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 104
    iput-object v3, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 178
    invoke-direct {p0, v3, p1}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;)V

    .line 179
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "useAlpha"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v3, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 56
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 58
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    .line 60
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 62
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 64
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 66
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 68
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 70
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 72
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 74
    iput-object v3, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    .line 76
    iput v0, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 78
    iput v0, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 80
    iput v0, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 82
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 86
    iput-object v3, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 88
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 90
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 92
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 94
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 96
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 98
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 104
    iput-object v3, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 198
    invoke-direct {p0, v3, p1, p2}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)V

    .line 199
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 215
    invoke-static {p1}, Lcom/threed/jpct/util/BitmapHelper;->convert(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "useAlpha"    # Z

    .prologue
    .line 234
    invoke-static {p1}, Lcom/threed/jpct/util/BitmapHelper;->convert(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/threed/jpct/Texture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v3, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 56
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 58
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    .line 60
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 62
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 64
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 66
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 68
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 70
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 72
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 74
    iput-object v3, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    .line 76
    iput v0, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 78
    iput v0, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 80
    iput v0, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 82
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 86
    iput-object v3, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 88
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 90
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 92
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 94
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 96
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 98
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 104
    iput-object v3, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 138
    invoke-direct {p0, p1, v3}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;)V

    .line 139
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "useAlpha"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v3, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 56
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 58
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    .line 60
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 62
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 64
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 66
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 68
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 70
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 72
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 74
    iput-object v3, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    .line 76
    iput v0, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 78
    iput v0, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 80
    iput v0, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 82
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 86
    iput-object v3, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 88
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 90
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 92
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 94
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 96
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 98
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 104
    iput-object v3, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 161
    invoke-direct {p0, p1, v3, p2}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)V

    .line 162
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 163
    return-void
.end method

.method constructor <init>([IIIZ)V
    .locals 5
    .param p1, "pixels"    # [I
    .param p2, "pw"    # I
    .param p3, "ph"    # I
    .param p4, "blitMode"    # Z

    .prologue
    const/16 v4, 0x800

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 56
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 58
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    .line 60
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 62
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 64
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 66
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 68
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 70
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 72
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 74
    iput-object v1, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    .line 76
    iput v0, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 78
    iput v0, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 80
    iput v0, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 82
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 86
    iput-object v1, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 88
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 90
    iput v2, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 92
    iput v2, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 94
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 96
    iput v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 98
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 104
    iput-object v1, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 370
    if-eqz p4, :cond_2

    .line 371
    if-gt p2, v4, :cond_1

    if-gt p3, v4, :cond_1

    .line 372
    invoke-static {p2}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/Texture;->width:I

    .line 373
    invoke-static {p3}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/Texture;->height:I

    .line 375
    iget v0, p0, Lcom/threed/jpct/Texture;->width:I

    iget v1, p0, Lcom/threed/jpct/Texture;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    .line 376
    invoke-virtual {p0, p1, p2, p3}, Lcom/threed/jpct/Texture;->refill([III)V

    .line 387
    :goto_0
    iput-boolean v3, p0, Lcom/threed/jpct/Texture;->isLoaded:Z

    .line 388
    sget-boolean v0, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 389
    sget-boolean v0, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 390
    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v0, :cond_0

    .line 391
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/threed/jpct/Texture;->resetIDs()V

    .line 394
    return-void

    .line 379
    :cond_1
    const-string v0, "Unsupported bitmap size for blitting!"

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 382
    :cond_2
    iput p2, p0, Lcom/threed/jpct/Texture;->width:I

    .line 383
    iput p3, p0, Lcom/threed/jpct/Texture;->height:I

    .line 384
    iput-object p1, p0, Lcom/threed/jpct/Texture;->texels:[I

    goto :goto_0
.end method

.method private static adjustSize(I)I
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/threed/jpct/Texture;->TEXTURE_SIZES:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 861
    .end local p0    # "size":I
    :goto_1
    return p0

    .line 857
    .restart local p0    # "size":I
    :cond_0
    sget-object v1, Lcom/threed/jpct/Texture;->TEXTURE_SIZES:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_1

    .line 858
    sget-object v1, Lcom/threed/jpct/Texture;->TEXTURE_SIZES:[I

    aget p0, v1, v0

    goto :goto_1

    .line 854
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clip(I)I
    .locals 1
    .param p1, "col"    # I

    .prologue
    .line 885
    if-gez p1, :cond_0

    .line 886
    const/4 p1, 0x0

    .line 888
    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 889
    const/16 p1, 0xff

    .line 891
    :cond_1
    return p1
.end method

.method private static createIntArray(IILcom/threed/jpct/RGBColor;Z)[I
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "col"    # Lcom/threed/jpct/RGBColor;
    .param p3, "npot"    # Z

    .prologue
    .line 296
    if-nez p2, :cond_1

    .line 297
    const/4 v3, 0x0

    .line 320
    :cond_0
    :goto_0
    return-object v3

    .line 300
    :cond_1
    move v4, p0

    .line 301
    .local v4, "w":I
    move v1, p1

    .line 303
    .local v1, "h":I
    if-nez p3, :cond_2

    .line 304
    invoke-static {v4}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result v4

    .line 305
    invoke-static {v1}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result v1

    .line 308
    :cond_2
    mul-int v5, v4, v1

    new-array v3, v5, [I

    .line 309
    .local v3, "pixels":[I
    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getAlpha()I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v6

    or-int v0, v5, v6

    .line 310
    .local v0, "color":I
    if-eqz v0, :cond_3

    .line 311
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v3

    if-lt v2, v5, :cond_4

    .line 316
    .end local v2    # "i":I
    :cond_3
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Created a "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " texture using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 312
    .restart local v2    # "i":I
    :cond_4
    aput v0, v3, v2

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static createSingleColoredTexture(Lcom/threed/jpct/RGBColor;)Lcom/threed/jpct/Texture;
    .locals 8
    .param p0, "col"    # Lcom/threed/jpct/RGBColor;

    .prologue
    const/16 v7, 0x100

    const/16 v6, 0x10

    .line 874
    new-array v2, v7, [I

    .line 875
    .local v2, "pixels":[I
    invoke-virtual {p0}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    invoke-virtual {p0}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v5

    or-int v0, v4, v5

    .line 876
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 879
    new-instance v3, Lcom/threed/jpct/Texture;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v6, v6, v4}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    .line 880
    .local v3, "t":Lcom/threed/jpct/Texture;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/threed/jpct/Texture;->isUnicolor:Z

    .line 881
    return-object v3

    .line 877
    .end local v3    # "t":Lcom/threed/jpct/Texture;
    :cond_0
    aput v0, v2, v1

    .line 876
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static defaultTo4bpp(Z)V
    .locals 0
    .param p0, "doit"    # Z

    .prologue
    .line 487
    sput-boolean p0, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    .line 488
    return-void
.end method

.method public static defaultToKeepPixels(Z)V
    .locals 0
    .param p0, "doit"    # Z

    .prologue
    .line 497
    sput-boolean p0, Lcom/threed/jpct/Texture;->defaultToKeepPixels:Z

    .line 498
    return-void
.end method

.method public static defaultToMipmapping(Z)V
    .locals 0
    .param p0, "doit"    # Z

    .prologue
    .line 508
    sput-boolean p0, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    .line 509
    return-void
.end method

.method private loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 783
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)V

    .line 784
    return-void
.end method

.method private loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)V
    .locals 14
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "alpha"    # Z

    .prologue
    .line 787
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->isLoaded:Z

    .line 788
    const-string v2, "Loading Texture..."

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 792
    move-object/from16 v1, p2

    .line 793
    .local v1, "image":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 794
    .local v12, "recycleMe":Z
    if-nez v1, :cond_0

    .line 795
    :try_start_0
    invoke-static {p1}, Lcom/threed/jpct/util/BitmapHelper;->loadImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 796
    const/4 v12, 0x1

    .line 799
    :cond_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_6

    .line 801
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 802
    .local v11, "h":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 804
    .local v13, "w":I
    iput v13, p0, Lcom/threed/jpct/Texture;->width:I

    .line 805
    iput v11, p0, Lcom/threed/jpct/Texture;->height:I

    .line 806
    const/4 v10, 0x0

    .line 808
    .local v10, "faulty":Z
    const/4 v2, 0x1

    if-eq v13, v2, :cond_1

    const/4 v2, 0x2

    if-eq v13, v2, :cond_1

    const/4 v2, 0x4

    if-eq v13, v2, :cond_1

    const/16 v2, 0x8

    if-eq v13, v2, :cond_1

    const/16 v2, 0x10

    if-eq v13, v2, :cond_1

    const/16 v2, 0x20

    if-eq v13, v2, :cond_1

    const/16 v2, 0x40

    if-eq v13, v2, :cond_1

    const/16 v2, 0x80

    if-eq v13, v2, :cond_1

    const/16 v2, 0x100

    if-eq v13, v2, :cond_1

    const/16 v2, 0x200

    if-eq v13, v2, :cond_1

    const/16 v2, 0x400

    if-eq v13, v2, :cond_1

    const/16 v2, 0x800

    if-eq v13, v2, :cond_1

    const/16 v2, 0x1000

    if-eq v13, v2, :cond_1

    const/16 v2, 0x2000

    if-eq v13, v2, :cond_1

    .line 809
    const/4 v10, 0x1

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported Texture width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 813
    :cond_1
    const/4 v2, 0x1

    if-eq v11, v2, :cond_2

    const/4 v2, 0x2

    if-eq v11, v2, :cond_2

    const/4 v2, 0x4

    if-eq v11, v2, :cond_2

    const/16 v2, 0x8

    if-eq v11, v2, :cond_2

    const/16 v2, 0x10

    if-eq v11, v2, :cond_2

    const/16 v2, 0x20

    if-eq v11, v2, :cond_2

    const/16 v2, 0x40

    if-eq v11, v2, :cond_2

    const/16 v2, 0x80

    if-eq v11, v2, :cond_2

    const/16 v2, 0x100

    if-eq v11, v2, :cond_2

    const/16 v2, 0x200

    if-eq v11, v2, :cond_2

    const/16 v2, 0x400

    if-eq v11, v2, :cond_2

    const/16 v2, 0x800

    if-eq v11, v2, :cond_2

    const/16 v2, 0x1000

    if-eq v11, v2, :cond_2

    const/16 v2, 0x2000

    if-eq v11, v2, :cond_2

    .line 814
    const/4 v10, 0x1

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported Texture height: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 818
    :cond_2
    if-eqz v10, :cond_3

    .line 819
    const/16 v2, 0x10

    iput v2, p0, Lcom/threed/jpct/Texture;->width:I

    .line 820
    const/16 v2, 0x10

    iput v2, p0, Lcom/threed/jpct/Texture;->height:I

    .line 821
    const/16 v2, 0x10

    const/16 v3, 0x10

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 824
    :cond_3
    iget v2, p0, Lcom/threed/jpct/Texture;->width:I

    iget v3, p0, Lcom/threed/jpct/Texture;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Texture loaded..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pixels!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 828
    iget-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/threed/jpct/Texture;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/threed/jpct/Texture;->width:I

    iget v8, p0, Lcom/threed/jpct/Texture;->height:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 829
    if-eqz v12, :cond_4

    .line 830
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 832
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->isLoaded:Z

    .line 840
    .end local v10    # "faulty":Z
    .end local v11    # "h":I
    .end local v13    # "w":I
    :goto_0
    sget-boolean v2, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 841
    sget-boolean v2, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    invoke-virtual {p0, v2}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 842
    sget-boolean v2, Lcom/threed/jpct/Texture;->defaultToKeepPixels:Z

    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_1
    iget-boolean v2, p0, Lcom/threed/jpct/Texture;->isLoaded:Z

    if-eqz v2, :cond_5

    .line 849
    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 851
    :cond_5
    return-void

    .line 834
    :cond_6
    :try_start_1
    const-string v2, "File not found - replacement texture used instead!"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 835
    const/16 v2, 0x8

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    .line 836
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->isLoaded:Z

    .line 837
    const/4 v2, 0x2

    iput v2, p0, Lcom/threed/jpct/Texture;->width:I

    .line 838
    const/4 v2, 0x2

    iput v2, p0, Lcom/threed/jpct/Texture;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v9

    .line 845
    .local v9, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v9, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;I)V

    goto :goto_1
.end method

.method private resetIDs()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 865
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 866
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 867
    iput v1, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 868
    iput v1, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 869
    iget-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 870
    iget-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 871
    return-void
.end method

.method private final setMarker(I)V
    .locals 1
    .param p1, "mark"    # I

    .prologue
    .line 753
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/threed/jpct/Texture;->setMarker(II)V

    .line 754
    return-void
.end method


# virtual methods
.method public add(Lcom/threed/jpct/Texture;F)V
    .locals 16
    .param p1, "ta"    # Lcom/threed/jpct/Texture;
    .param p2, "weight"    # F

    .prologue
    .line 333
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/threed/jpct/Texture;->texels:[I

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v13, :cond_1

    .line 334
    :cond_0
    const-string v13, "Textures contains no texel data!"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 362
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Texture;->getArraySize()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/Texture;->getArraySize()I

    move-result v14

    if-eq v13, v14, :cond_2

    .line 339
    const-string v13, "Texture sizes don\'t match"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 342
    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/threed/jpct/Texture;->texels:[I

    .line 343
    .local v12, "tatex":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v13, v12

    if-lt v9, v13, :cond_3

    .line 361
    sget v13, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/threed/jpct/Texture;->setMarker(I)V

    goto :goto_0

    .line 344
    :cond_3
    aget v6, v12, v9

    .line 345
    .local v6, "col2":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/Texture;->texels:[I

    aget v5, v13, v9

    .line 346
    .local v5, "col1":I
    shr-int/lit8 v1, v5, 0x18

    .line 347
    .local v1, "a1":I
    const/high16 v13, 0xff0000

    and-int/2addr v13, v5

    shr-int/lit8 v10, v13, 0x10

    .line 348
    .local v10, "r1":I
    const v13, 0xff00

    and-int/2addr v13, v5

    shr-int/lit8 v7, v13, 0x8

    .line 349
    .local v7, "g1":I
    and-int/lit16 v3, v5, 0xff

    .line 350
    .local v3, "b1":I
    shr-int/lit8 v2, v6, 0x18

    .line 351
    .local v2, "a2":I
    const/high16 v13, 0xff0000

    and-int/2addr v13, v6

    shr-int/lit8 v11, v13, 0x10

    .line 352
    .local v11, "r2":I
    const v13, 0xff00

    and-int/2addr v13, v6

    shr-int/lit8 v8, v13, 0x8

    .line 353
    .local v8, "g2":I
    and-int/lit16 v4, v6, 0xff

    .line 355
    .local v4, "b2":I
    int-to-float v13, v2

    mul-float v13, v13, p2

    float-to-int v13, v13

    add-int/2addr v13, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/threed/jpct/Texture;->clip(I)I

    move-result v1

    .line 356
    int-to-float v13, v11

    mul-float v13, v13, p2

    float-to-int v13, v13

    add-int/2addr v13, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/threed/jpct/Texture;->clip(I)I

    move-result v10

    .line 357
    int-to-float v13, v8

    mul-float v13, v13, p2

    float-to-int v13, v13

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/threed/jpct/Texture;->clip(I)I

    move-result v7

    .line 358
    int-to-float v13, v4

    mul-float v13, v13, p2

    float-to-int v13, v13

    add-int/2addr v13, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/threed/jpct/Texture;->clip(I)I

    move-result v3

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/Texture;->texels:[I

    shl-int/lit8 v14, v1, 0x18

    shl-int/lit8 v15, v10, 0x10

    or-int/2addr v14, v15

    shl-int/lit8 v15, v7, 0x8

    or-int/2addr v14, v15

    or-int/2addr v14, v3

    aput v14, v13, v9

    .line 343
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public applyEffect()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    iget-object v1, p0, Lcom/threed/jpct/Texture;->texels:[I

    iget-object v2, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    invoke-interface {v0, v1, v2}, Lcom/threed/jpct/ITextureEffect;->apply([I[I)V

    .line 432
    iget-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    invoke-interface {v0}, Lcom/threed/jpct/ITextureEffect;->containsAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-boolean v0, p0, Lcom/threed/jpct/Texture;->alpha:Z

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 437
    :cond_0
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_1
    const-string v0, "The texture doesn\'t have an effect assigned to it!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method final clearIDs(I)V
    .locals 2
    .param p1, "renderer"    # I

    .prologue
    const/4 v1, -0x1

    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 718
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 719
    iput v1, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 720
    iput v1, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 721
    iget-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 723
    return-void
.end method

.method public compress()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/high16 v3, 0x42c80000    # 100.0f

    .line 531
    iget-object v1, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/Texture;->texels:[I

    invoke-static {v1}, Lcom/threed/jpct/ZipHelper;->zip([I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 536
    iget-object v1, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    array-length v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 538
    .local v0, "ratio":F
    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Texture compressed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float v2, v0, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") of uncompressed size!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 540
    iput-object v5, p0, Lcom/threed/jpct/Texture;->texels:[I

    goto :goto_0

    .line 542
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Texture not compressed, because compressed size was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float v2, v0, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    const-string v2, ") of uncompressed size!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 544
    iput-object v5, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    goto/16 :goto_0
.end method

.method public enable4bpp(Z)V
    .locals 1
    .param p1, "doit"    # Z

    .prologue
    .line 474
    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 475
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    .line 476
    return-void
.end method

.method public enableClamping()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 588
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    .line 589
    return-void
.end method

.method public getArraySize()I
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v0, :cond_0

    .line 555
    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getDepthBuffer()Lcom/threed/jpct/DepthBuffer;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/threed/jpct/Texture;->height:I

    return v0
.end method

.method final getMarker(I)I
    .locals 2
    .param p1, "renderer"    # I

    .prologue
    .line 741
    iget v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    if-eq v0, p1, :cond_1

    .line 742
    :cond_0
    iput p1, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 743
    iget-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    sget v0, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    iput v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 749
    :cond_1
    :goto_0
    iget v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    return v0

    .line 746
    :cond_2
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    iput v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    goto :goto_0
.end method

.method final getOpenGLID(I)I
    .locals 3
    .param p1, "renderer"    # I

    .prologue
    .line 701
    iget-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    if-eqz v1, :cond_1

    .line 702
    iget v1, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    if-ne p1, v1, :cond_0

    .line 703
    iget v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 713
    :goto_0
    return v1

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 706
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 708
    iput p1, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 709
    iget v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    goto :goto_0

    .line 713
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/threed/jpct/Texture;->width:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/threed/jpct/Texture;->enabled:Z

    return v0
.end method

.method public keepPixelData(Z)V
    .locals 0
    .param p1, "keepData"    # Z

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 656
    return-void
.end method

.method final refill([III)V
    .locals 7
    .param p1, "pixels"    # [I
    .param p2, "pw"    # I
    .param p3, "ph"    # I

    .prologue
    .line 772
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 779
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 780
    return-void

    .line 773
    :cond_0
    iget v4, p0, Lcom/threed/jpct/Texture;->width:I

    mul-int v2, v1, v4

    .line 774
    .local v2, "y1":I
    mul-int v3, p2, v1

    .line 775
    .local v3, "y2":I
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    if-lt v0, p2, :cond_1

    .line 772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    :cond_1
    iget-object v4, p0, Lcom/threed/jpct/Texture;->texels:[I

    add-int v5, v2, v0

    add-int v6, v3, v0

    aget v6, p1, v6

    aput v6, v4, v5

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeAlpha()V
    .locals 4

    .prologue
    .line 630
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 635
    sget v1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v1}, Lcom/threed/jpct/Texture;->setMarker(I)V

    .line 636
    return-void

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Texture;->texels:[I

    aget v2, v1, v0

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeEffect()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    .line 422
    iput-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 423
    return-void
.end method

.method public removePixels()V
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 645
    return-void
.end method

.method public setAsShadowMap(Z)V
    .locals 1
    .param p1, "isShadowMap"    # Z

    .prologue
    const/4 v0, 0x0

    .line 666
    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 667
    invoke-virtual {p0, v0}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 668
    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 669
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    .line 670
    return-void
.end method

.method public setClamping(Z)V
    .locals 1
    .param p1, "clamping"    # Z

    .prologue
    .line 597
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 598
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    .line 599
    return-void

    .line 597
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDepthBuffer(Lcom/threed/jpct/DepthBuffer;)V
    .locals 2
    .param p1, "depthBuffer"    # Lcom/threed/jpct/DepthBuffer;

    .prologue
    .line 685
    if-eqz p1, :cond_1

    .line 686
    invoke-virtual {p1}, Lcom/threed/jpct/DepthBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/DepthBuffer;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 687
    :cond_0
    const-string v0, "Size of depth buffer doesn\'t match texture size!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_1
    iput-object p1, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 693
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    goto :goto_0
.end method

.method public setEffect(Lcom/threed/jpct/ITextureEffect;)V
    .locals 4
    .param p1, "effect"    # Lcom/threed/jpct/ITextureEffect;

    .prologue
    const/4 v3, 0x0

    .line 405
    iget-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v0, :cond_0

    .line 407
    const-string v0, "Can\'t set a texture effect for a compressed texture!"

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 415
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 411
    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    iget-object v1, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    iget-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    :cond_1
    iput-object p1, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    .line 414
    iget-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    invoke-interface {v0, p0}, Lcom/threed/jpct/ITextureEffect;->init(Lcom/threed/jpct/Texture;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 452
    return-void
.end method

.method public setFiltering(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 610
    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 611
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    .line 612
    return-void
.end method

.method final setMarker(II)V
    .locals 2
    .param p1, "renderer"    # I
    .param p2, "mark"    # I

    .prologue
    .line 757
    sget v0, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    if-ne p2, v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 759
    sget v0, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    iput v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 760
    iput p1, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-ne p2, v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 764
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 765
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    goto :goto_0
.end method

.method public setMipmap(Z)V
    .locals 1
    .param p1, "mipmap"    # Z

    .prologue
    .line 622
    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 623
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    .line 624
    return-void
.end method

.method final setOpenGLID(II)V
    .locals 4
    .param p1, "renderer"    # I
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 726
    iput p2, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 727
    if-eqz p2, :cond_1

    .line 728
    iput p1, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 729
    iget-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 731
    iget-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    if-nez v0, :cond_0

    .line 732
    iput-object v3, p0, Lcom/threed/jpct/Texture;->texels:[I

    .line 733
    iput-object v3, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    invoke-direct {p0}, Lcom/threed/jpct/Texture;->resetIDs()V

    goto :goto_0
.end method

.method public setTextureCompression(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 521
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    .line 522
    return-void
.end method
