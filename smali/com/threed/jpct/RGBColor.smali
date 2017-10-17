.class public Lcom/threed/jpct/RGBColor;
.super Ljava/lang/Object;
.source "RGBColor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLACK:Lcom/threed/jpct/RGBColor;

.field public static final BLUE:Lcom/threed/jpct/RGBColor;

.field private static final COLOR_INV:F = 0.003921569f

.field public static final GREEN:Lcom/threed/jpct/RGBColor;

.field public static final RED:Lcom/threed/jpct/RGBColor;

.field public static final WHITE:Lcom/threed/jpct/RGBColor;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field alpha:I

.field blue:I

.field green:I

.field nalpha:F

.field nblue:F

.field ngreen:F

.field nred:F

.field red:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 10
    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v1, v1, v1}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->BLACK:Lcom/threed/jpct/RGBColor;

    .line 11
    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v2, v2, v2}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->WHITE:Lcom/threed/jpct/RGBColor;

    .line 12
    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v2, v1, v1}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->RED:Lcom/threed/jpct/RGBColor;

    .line 13
    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v1, v2, v1}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->GREEN:Lcom/threed/jpct/RGBColor;

    .line 14
    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v1, v1, v2}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    sput-object v0, Lcom/threed/jpct/RGBColor;->BLUE:Lcom/threed/jpct/RGBColor;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/threed/jpct/RGBColor;->red:I

    .line 19
    iput v1, p0, Lcom/threed/jpct/RGBColor;->blue:I

    .line 21
    iput v1, p0, Lcom/threed/jpct/RGBColor;->green:I

    .line 22
    iput v1, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    .line 24
    iput v0, p0, Lcom/threed/jpct/RGBColor;->nred:F

    .line 25
    iput v0, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    .line 26
    iput v0, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    .line 27
    iput v0, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    .line 32
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 41
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/RGBColor;-><init>(IIII)V

    .line 42
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I

    .prologue
    const/16 v3, 0xff

    const v2, 0x3b808081

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/threed/jpct/RGBColor;->red:I

    .line 19
    iput v1, p0, Lcom/threed/jpct/RGBColor;->blue:I

    .line 21
    iput v1, p0, Lcom/threed/jpct/RGBColor;->green:I

    .line 22
    iput v1, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    .line 24
    iput v0, p0, Lcom/threed/jpct/RGBColor;->nred:F

    .line 25
    iput v0, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    .line 26
    iput v0, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    .line 27
    iput v0, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    .line 52
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    .line 53
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/RGBColor;->blue:I

    .line 54
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/RGBColor;->green:I

    .line 55
    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    .line 57
    iget v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/threed/jpct/RGBColor;->nred:F

    .line 58
    iget v0, p0, Lcom/threed/jpct/RGBColor;->blue:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    .line 59
    iget v0, p0, Lcom/threed/jpct/RGBColor;->green:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    .line 60
    iget v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    .line 61
    return-void
.end method


# virtual methods
.method public getARGB()I
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/threed/jpct/RGBColor;->red:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/RGBColor;->green:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/RGBColor;->blue:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    return v0
.end method

.method public getBlue()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/threed/jpct/RGBColor;->blue:I

    return v0
.end method

.method public getGreen()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/threed/jpct/RGBColor;->green:I

    return v0
.end method

.method public getNormalizedAlpha()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    return v0
.end method

.method public getNormalizedBlue()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    return v0
.end method

.method public getNormalizedGreen()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    return v0
.end method

.method public getNormalizedRed()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/threed/jpct/RGBColor;->nred:F

    return v0
.end method

.method public getRGB()I
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/threed/jpct/RGBColor;->green:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/RGBColor;->blue:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getRed()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    return v0
.end method

.method public setTo(IIII)V
    .locals 4
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    const v1, 0x3b808081

    .line 71
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    .line 72
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/RGBColor;->blue:I

    .line 73
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/RGBColor;->green:I

    .line 74
    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    .line 76
    iget v0, p0, Lcom/threed/jpct/RGBColor;->red:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/RGBColor;->nred:F

    .line 77
    iget v0, p0, Lcom/threed/jpct/RGBColor;->blue:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/RGBColor;->nblue:F

    .line 78
    iget v0, p0, Lcom/threed/jpct/RGBColor;->green:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/RGBColor;->ngreen:F

    .line 79
    iget v0, p0, Lcom/threed/jpct/RGBColor;->alpha:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/RGBColor;->nalpha:F

    .line 80
    return-void
.end method
