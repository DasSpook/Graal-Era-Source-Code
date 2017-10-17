.class public Lcom/threed/jpct/Polyline;
.super Ljava/lang/Object;
.source "Polyline.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private buffer:[F

.field private color:Lcom/threed/jpct/RGBColor;

.field private length:I

.field private maxLength:I

.field private percentage:F

.field private pointMode:Z

.field private transparencyMode:I

.field private vertices:Lcom/threed/jpct/FloatBufferWrapper;

.field private visible:Z

.field private width:F


# direct methods
.method public constructor <init>([Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/RGBColor;)V
    .locals 7
    .param p1, "points"    # [Lcom/threed/jpct/SimpleVector;
    .param p2, "color"    # Lcom/threed/jpct/RGBColor;

    .prologue
    const/4 v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    .line 17
    iput v5, p0, Lcom/threed/jpct/Polyline;->length:I

    .line 18
    iput v5, p0, Lcom/threed/jpct/Polyline;->maxLength:I

    .line 19
    sget-object v2, Lcom/threed/jpct/RGBColor;->WHITE:Lcom/threed/jpct/RGBColor;

    iput-object v2, p0, Lcom/threed/jpct/Polyline;->color:Lcom/threed/jpct/RGBColor;

    .line 20
    iput v3, p0, Lcom/threed/jpct/Polyline;->width:F

    .line 21
    iput v5, p0, Lcom/threed/jpct/Polyline;->transparencyMode:I

    .line 22
    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    .line 23
    iput v3, p0, Lcom/threed/jpct/Polyline;->percentage:F

    .line 24
    iput-boolean v6, p0, Lcom/threed/jpct/Polyline;->visible:Z

    .line 25
    iput-boolean v5, p0, Lcom/threed/jpct/Polyline;->pointMode:Z

    .line 36
    new-instance v2, Lcom/threed/jpct/FloatBufferWrapper;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    iput-object v2, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    .line 37
    array-length v0, p1

    .line 38
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 44
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v2}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    .line 45
    array-length v2, p1

    iput v2, p0, Lcom/threed/jpct/Polyline;->length:I

    .line 46
    iget v2, p0, Lcom/threed/jpct/Polyline;->length:I

    iput v2, p0, Lcom/threed/jpct/Polyline;->maxLength:I

    .line 47
    invoke-virtual {p0, p2}, Lcom/threed/jpct/Polyline;->setColor(Lcom/threed/jpct/RGBColor;)V

    .line 48
    return-void

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    aget-object v3, p1, v1

    iget v3, v3, Lcom/threed/jpct/SimpleVector;->x:F

    aput v3, v2, v5

    .line 40
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    aget-object v3, p1, v1

    iget v3, v3, Lcom/threed/jpct/SimpleVector;->y:F

    aput v3, v2, v6

    .line 41
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    const/4 v3, 0x2

    aget-object v4, p1, v1

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->z:F

    aput v4, v2, v3

    .line 42
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v3, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    invoke-virtual {v2, v3}, Lcom/threed/jpct/FloatBufferWrapper;->put([F)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getColor()Lcom/threed/jpct/RGBColor;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/threed/jpct/Polyline;->color:Lcom/threed/jpct/RGBColor;

    return-object v0
.end method

.method getData()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/threed/jpct/Polyline;->percentage:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 82
    iget v0, p0, Lcom/threed/jpct/Polyline;->length:I

    .line 84
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/threed/jpct/Polyline;->length:I

    int-to-float v0, v0

    iget v1, p0, Lcom/threed/jpct/Polyline;->percentage:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getPercentage()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/threed/jpct/Polyline;->percentage:F

    return v0
.end method

.method public getTransparencyMode()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/threed/jpct/Polyline;->transparencyMode:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/threed/jpct/Polyline;->width:F

    return v0
.end method

.method public isPointMode()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/threed/jpct/Polyline;->pointMode:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/threed/jpct/Polyline;->visible:Z

    return v0
.end method

.method public setColor(Lcom/threed/jpct/RGBColor;)V
    .locals 0
    .param p1, "color"    # Lcom/threed/jpct/RGBColor;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/threed/jpct/Polyline;->color:Lcom/threed/jpct/RGBColor;

    .line 95
    return-void
.end method

.method public setPercentage(F)V
    .locals 1
    .param p1, "percentage"    # F

    .prologue
    .line 157
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 158
    const/4 p1, 0x0

    .line 162
    :cond_0
    :goto_0
    iput p1, p0, Lcom/threed/jpct/Polyline;->percentage:F

    .line 163
    return-void

    .line 159
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 160
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setPointMode(Z)V
    .locals 0
    .param p1, "pointMode"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/threed/jpct/Polyline;->pointMode:Z

    .line 202
    return-void
.end method

.method public setTransparencyMode(I)V
    .locals 0
    .param p1, "transparencyMode"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/threed/jpct/Polyline;->transparencyMode:I

    .line 138
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/threed/jpct/Polyline;->visible:Z

    .line 183
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 117
    iput p1, p0, Lcom/threed/jpct/Polyline;->width:F

    .line 118
    return-void
.end method

.method public update([Lcom/threed/jpct/SimpleVector;)V
    .locals 6
    .param p1, "newPoints"    # [Lcom/threed/jpct/SimpleVector;

    .prologue
    const/4 v5, 0x0

    .line 58
    array-length v2, p1

    iget v3, p0, Lcom/threed/jpct/Polyline;->maxLength:I

    if-le v2, v3, :cond_0

    .line 59
    const-string v2, "New data\'s size exceeds the size of the Polyline!"

    invoke-static {v2, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    array-length v0, p1

    .line 63
    .local v0, "end":I
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v2}, Lcom/threed/jpct/FloatBufferWrapper;->clear()V

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 70
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v2}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    .line 71
    iput v0, p0, Lcom/threed/jpct/Polyline;->length:I

    goto :goto_0

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    aget-object v3, p1, v1

    iget v3, v3, Lcom/threed/jpct/SimpleVector;->x:F

    aput v3, v2, v5

    .line 66
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    const/4 v3, 0x1

    aget-object v4, p1, v1

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->y:F

    aput v4, v2, v3

    .line 67
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    const/4 v3, 0x2

    aget-object v4, p1, v1

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->z:F

    aput v4, v2, v3

    .line 68
    iget-object v2, p0, Lcom/threed/jpct/Polyline;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v3, p0, Lcom/threed/jpct/Polyline;->buffer:[F

    invoke-virtual {v2, v3}, Lcom/threed/jpct/FloatBufferWrapper;->put([F)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
