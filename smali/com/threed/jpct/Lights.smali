.class Lcom/threed/jpct/Lights;
.super Ljava/lang/Object;
.source "Lights.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7d1d24608bb62e3bL


# instance fields
.field attenuation:[F

.field bOrg:[F

.field discardDistance:[F

.field distanceOverride:[F

.field gOrg:[F

.field isRemoved:[Z

.field isVisible:[Z

.field lightCnt:I

.field private mat5:Lcom/threed/jpct/Matrix;

.field maxLights:I

.field rOrg:[F

.field rgbScale:I

.field transform:[Lcom/threed/jpct/Matrix;

.field xOrg:[F

.field xTr:[F

.field yOrg:[F

.field yTr:[F

.field zOrg:[F

.field zTr:[F


# direct methods
.method constructor <init>(I)V
    .locals 5
    .param p1, "max"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    .line 54
    const/4 v1, 0x1

    iput v1, p0, Lcom/threed/jpct/Lights;->rgbScale:I

    .line 56
    iput p1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    .line 57
    iput v4, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    .line 59
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->xOrg:[F

    .line 60
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->yOrg:[F

    .line 61
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->zOrg:[F

    .line 63
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->xTr:[F

    .line 64
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->yTr:[F

    .line 65
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->zTr:[F

    .line 67
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->bOrg:[F

    .line 68
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->gOrg:[F

    .line 69
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->rOrg:[F

    .line 71
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [Lcom/threed/jpct/Matrix;

    iput-object v1, p0, Lcom/threed/jpct/Lights;->transform:[Lcom/threed/jpct/Matrix;

    .line 73
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/threed/jpct/Lights;->isVisible:[Z

    .line 75
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->attenuation:[F

    .line 76
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->discardDistance:[F

    .line 78
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Lights;->distanceOverride:[F

    .line 80
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/threed/jpct/Lights;->isRemoved:[Z

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/Lights;->maxLights:I

    if-lt v0, v1, :cond_0

    .line 88
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Lights;->attenuation:[F

    aput v3, v1, v0

    .line 84
    iget-object v1, p0, Lcom/threed/jpct/Lights;->discardDistance:[F

    aput v3, v1, v0

    .line 85
    iget-object v1, p0, Lcom/threed/jpct/Lights;->distanceOverride:[F

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v1, v0

    .line 86
    iget-object v1, p0, Lcom/threed/jpct/Lights;->isRemoved:[Z

    aput-boolean v4, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isFine(I)Z
    .locals 3
    .param p1, "ln"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 270
    if-gez p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    iget v2, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/threed/jpct/Lights;->isRemoved:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 276
    :cond_2
    iget v2, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    if-ge p1, v2, :cond_3

    move v0, v1

    .line 277
    goto :goto_0

    .line 279
    :cond_3
    const-string v2, "Tried to modify an undefined light source!"

    invoke-static {v2, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method addLight(FFFFFF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "r"    # F
    .param p5, "g"    # F
    .param p6, "b"    # F

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x40000000    # -2.0f

    .line 161
    iget v1, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    .line 163
    .local v1, "lc":I
    iget v2, p0, Lcom/threed/jpct/Lights;->maxLights:I

    if-lt v1, v2, :cond_0

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/threed/jpct/Lights;->maxLights:I

    if-lt v0, v2, :cond_2

    .line 176
    .end local v0    # "i":I
    :cond_0
    :goto_1
    iget v2, p0, Lcom/threed/jpct/Lights;->maxLights:I

    if-ge v1, v2, :cond_5

    .line 177
    iget-object v2, p0, Lcom/threed/jpct/Lights;->xOrg:[F

    aput p1, v2, v1

    .line 178
    iget-object v2, p0, Lcom/threed/jpct/Lights;->yOrg:[F

    aput p2, v2, v1

    .line 179
    iget-object v2, p0, Lcom/threed/jpct/Lights;->zOrg:[F

    aput p3, v2, v1

    .line 181
    iget-object v2, p0, Lcom/threed/jpct/Lights;->rOrg:[F

    aput p4, v2, v1

    .line 182
    iget-object v2, p0, Lcom/threed/jpct/Lights;->gOrg:[F

    aput p5, v2, v1

    .line 183
    iget-object v2, p0, Lcom/threed/jpct/Lights;->bOrg:[F

    aput p6, v2, v1

    .line 185
    iget-object v2, p0, Lcom/threed/jpct/Lights;->isVisible:[Z

    aput-boolean v5, v2, v1

    .line 187
    iget-object v2, p0, Lcom/threed/jpct/Lights;->transform:[Lcom/threed/jpct/Matrix;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 188
    iget-object v2, p0, Lcom/threed/jpct/Lights;->transform:[Lcom/threed/jpct/Matrix;

    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 193
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding Lightsource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 195
    iget v2, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    if-ne v1, v2, :cond_1

    .line 196
    iget v2, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/threed/jpct/Lights;->lightCnt:I

    .line 202
    :cond_1
    :goto_3
    return v1

    .line 165
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/threed/jpct/Lights;->isRemoved:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    .line 166
    move v1, v0

    .line 167
    iget-object v2, p0, Lcom/threed/jpct/Lights;->isRemoved:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 168
    iget-object v2, p0, Lcom/threed/jpct/Lights;->attenuation:[F

    aput v4, v2, v1

    .line 169
    iget-object v2, p0, Lcom/threed/jpct/Lights;->discardDistance:[F

    aput v4, v2, v1

    .line 170
    iget-object v2, p0, Lcom/threed/jpct/Lights;->distanceOverride:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v2, v1

    goto :goto_1

    .line 164
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/threed/jpct/Lights;->transform:[Lcom/threed/jpct/Matrix;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/threed/jpct/Matrix;->setIdentity()V

    goto :goto_2

    .line 199
    :cond_5
    const-string v2, "Maximum number of Lightsources reached...ignoring additional ones!"

    invoke-static {v2, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method getAttenuation(I)F
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Lights;->attenuation:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method getDiscardDistance(I)F
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Lights;->discardDistance:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method getDistanceOverride(I)F
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/threed/jpct/Lights;->distanceOverride:[F

    aget v0, v0, p1

    return v0
.end method

.method getIntensity(I)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Lights;->rOrg:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/threed/jpct/Lights;->gOrg:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/threed/jpct/Lights;->bOrg:[F

    aget v2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    goto :goto_0
.end method

.method getPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 2
    .param p1, "number"    # I
    .param p2, "s"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 113
    move-object v0, p2

    .line 114
    .local v0, "res":Lcom/threed/jpct/SimpleVector;
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/threed/jpct/Lights;->zOrg:[F

    aget v1, v1, p1

    iput v1, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 116
    iget-object v1, p0, Lcom/threed/jpct/Lights;->xOrg:[F

    aget v1, v1, p1

    iput v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 117
    iget-object v1, p0, Lcom/threed/jpct/Lights;->yOrg:[F

    aget v1, v1, p1

    iput v1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 119
    :cond_0
    return-object v0
.end method

.method remove(I)V
    .locals 2
    .param p1, "ln"    # I

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/threed/jpct/Lights;->isRemoved:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 249
    iget-object v0, p0, Lcom/threed/jpct/Lights;->isVisible:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 251
    :cond_0
    return-void
.end method

.method setAttenuation(IF)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "ld"    # F

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 132
    const/high16 p2, -0x40800000    # -1.0f

    .line 134
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 135
    const/high16 p2, 0x3f800000    # 1.0f

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/Lights;->attenuation:[F

    aput p2, v0, p1

    .line 139
    :cond_2
    return-void
.end method

.method setDiscardDistance(IF)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "dd"    # F

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 144
    const/high16 p2, -0x40000000    # -2.0f

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Lights;->discardDistance:[F

    aput p2, v0, p1

    .line 148
    :cond_1
    return-void
.end method

.method setDistanceOverride(IF)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "dd"    # F

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/threed/jpct/Lights;->distanceOverride:[F

    aput p2, v0, p1

    .line 154
    :cond_0
    return-void
.end method

.method setLightIntensity(IFFF)V
    .locals 1
    .param p1, "ln"    # I
    .param p2, "r"    # F
    .param p3, "g"    # F
    .param p4, "b"    # F

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/threed/jpct/Lights;->rOrg:[F

    aput p2, v0, p1

    .line 256
    iget-object v0, p0, Lcom/threed/jpct/Lights;->gOrg:[F

    aput p3, v0, p1

    .line 257
    iget-object v0, p0, Lcom/threed/jpct/Lights;->bOrg:[F

    aput p4, v0, p1

    .line 259
    :cond_0
    return-void
.end method

.method setPosition(IFFF)V
    .locals 1
    .param p1, "ln"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/threed/jpct/Lights;->zOrg:[F

    aput p4, v0, p1

    .line 264
    iget-object v0, p0, Lcom/threed/jpct/Lights;->xOrg:[F

    aput p2, v0, p1

    .line 265
    iget-object v0, p0, Lcom/threed/jpct/Lights;->yOrg:[F

    aput p3, v0, p1

    .line 267
    :cond_0
    return-void
.end method

.method setRGBScale(I)V
    .locals 2
    .param p1, "scale"    # I

    .prologue
    .line 91
    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 92
    iput p1, p0, Lcom/threed/jpct/Lights;->rgbScale:I

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This RGB scaling ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is not supported!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method setVisibility(IZ)V
    .locals 1
    .param p1, "ln"    # I
    .param p2, "mode"    # Z

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/threed/jpct/Lights;->isFine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/threed/jpct/Lights;->isVisible:[Z

    aput-boolean p2, v0, p1

    .line 244
    :cond_0
    return-void
.end method

.method transformLights(Lcom/threed/jpct/Camera;)V
    .locals 22
    .param p1, "cam"    # Lcom/threed/jpct/Camera;

    .prologue
    .line 206
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    .line 208
    .local v5, "mat2":Lcom/threed/jpct/Matrix;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Lights;->lightCnt:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v4, v0, :cond_0

    .line 238
    return-void

    .line 209
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->isVisible:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v4

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->isRemoved:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v4

    if-nez v18, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/Camera;->backBx:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/Camera;->backBy:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/Camera;->backBz:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v6, v18, v19

    .line 216
    .local v6, "s00":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v9, v18, v19

    .line 217
    .local v9, "s10":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget v10, v18, v19

    .line 218
    .local v10, "s11":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget v13, v18, v19

    .line 219
    .local v13, "s21":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v14, v18, v19

    .line 220
    .local v14, "s22":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v11, v18, v19

    .line 221
    .local v11, "s12":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v12, v18, v19

    .line 222
    .local v12, "s20":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v8, v18, v19

    .line 223
    .local v8, "s02":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget v7, v18, v19

    .line 225
    .local v7, "s01":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v1, v18, v19

    .line 226
    .local v1, "bx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget v2, v18, v19

    .line 227
    .local v2, "by":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v3, v18, v19

    .line 229
    .local v3, "bz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->xOrg:[F

    move-object/from16 v18, v0

    aget v15, v18, v4

    .line 230
    .local v15, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->yOrg:[F

    move-object/from16 v18, v0

    aget v16, v18, v4

    .line 231
    .local v16, "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->zOrg:[F

    move-object/from16 v18, v0

    aget v17, v18, v4

    .line 233
    .local v17, "z1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->xTr:[F

    move-object/from16 v18, v0

    mul-float v19, v15, v6

    mul-float v20, v16, v9

    add-float v19, v19, v20

    mul-float v20, v17, v12

    add-float v19, v19, v20

    add-float v19, v19, v1

    aput v19, v18, v4

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->yTr:[F

    move-object/from16 v18, v0

    mul-float v19, v15, v7

    mul-float v20, v16, v10

    add-float v19, v19, v20

    mul-float v20, v17, v13

    add-float v19, v19, v20

    add-float v19, v19, v2

    aput v19, v18, v4

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Lights;->zTr:[F

    move-object/from16 v18, v0

    mul-float v19, v15, v8

    mul-float v20, v16, v11

    add-float v19, v19, v20

    mul-float v20, v17, v14

    add-float v19, v19, v20

    add-float v19, v19, v3

    aput v19, v18, v4

    .line 208
    .end local v1    # "bx":F
    .end local v2    # "by":F
    .end local v3    # "bz":F
    .end local v6    # "s00":F
    .end local v7    # "s01":F
    .end local v8    # "s02":F
    .end local v9    # "s10":F
    .end local v10    # "s11":F
    .end local v11    # "s12":F
    .end local v12    # "s20":F
    .end local v13    # "s21":F
    .end local v14    # "s22":F
    .end local v15    # "x1":F
    .end local v16    # "y1":F
    .end local v17    # "z1":F
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method
