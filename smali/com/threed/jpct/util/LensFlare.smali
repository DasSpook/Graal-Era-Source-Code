.class public Lcom/threed/jpct/util/LensFlare;
.super Ljava/lang/Object;
.source "LensFlare.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private burst:Lcom/threed/jpct/Texture;

.field private cover:Z

.field private globalScale:F

.field private halo1:Lcom/threed/jpct/Texture;

.field private halo2:Lcom/threed/jpct/Texture;

.field private halo3:Lcom/threed/jpct/Texture;

.field private light2D:Lcom/threed/jpct/SimpleVector;

.field private maxDistance:F

.field private revertDirection:Z

.field private scales:[[F

.field private sunPos:Lcom/threed/jpct/SimpleVector;

.field private tmp1:Lcom/threed/jpct/SimpleVector;

.field private tmp2:Lcom/threed/jpct/SimpleVector;

.field private tmp3:Lcom/threed/jpct/SimpleVector;

.field private trans:I

.field private types:[Lcom/threed/jpct/Texture;

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/threed/jpct/SimpleVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "lightPos"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "burst"    # Ljava/lang/String;
    .param p3, "halo1"    # Ljava/lang/String;
    .param p4, "halo2"    # Ljava/lang/String;
    .param p5, "halo3"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v3, p0, Lcom/threed/jpct/util/LensFlare;->burst:Lcom/threed/jpct/Texture;

    .line 23
    iput-object v3, p0, Lcom/threed/jpct/util/LensFlare;->halo1:Lcom/threed/jpct/Texture;

    .line 24
    iput-object v3, p0, Lcom/threed/jpct/util/LensFlare;->halo2:Lcom/threed/jpct/Texture;

    .line 25
    iput-object v3, p0, Lcom/threed/jpct/util/LensFlare;->halo3:Lcom/threed/jpct/Texture;

    .line 26
    iput-object v3, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    .line 28
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/threed/jpct/Texture;

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    .line 29
    const/4 v1, 0x7

    filled-new-array {v1, v7}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    .line 30
    iput v6, p0, Lcom/threed/jpct/util/LensFlare;->globalScale:F

    .line 31
    iput v5, p0, Lcom/threed/jpct/util/LensFlare;->trans:I

    .line 32
    iput-boolean v5, p0, Lcom/threed/jpct/util/LensFlare;->cover:Z

    .line 33
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    .line 34
    iput-boolean v4, p0, Lcom/threed/jpct/util/LensFlare;->revertDirection:Z

    .line 36
    iput-boolean v4, p0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    .line 37
    iput-object v3, p0, Lcom/threed/jpct/util/LensFlare;->light2D:Lcom/threed/jpct/SimpleVector;

    .line 39
    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->tmp1:Lcom/threed/jpct/SimpleVector;

    .line 40
    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    .line 41
    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->tmp3:Lcom/threed/jpct/SimpleVector;

    .line 52
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    .line 53
    .local v0, "tm":Lcom/threed/jpct/TextureManager;
    invoke-virtual {v0, p2}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->burst:Lcom/threed/jpct/Texture;

    .line 54
    invoke-virtual {v0, p3}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->halo1:Lcom/threed/jpct/Texture;

    .line 55
    invoke-virtual {v0, p4}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->halo2:Lcom/threed/jpct/Texture;

    .line 56
    invoke-virtual {v0, p5}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->halo3:Lcom/threed/jpct/Texture;

    .line 57
    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1, p1}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    .line 59
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    iget-object v2, p0, Lcom/threed/jpct/util/LensFlare;->burst:Lcom/threed/jpct/Texture;

    aput-object v2, v1, v4

    .line 60
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    iget-object v2, p0, Lcom/threed/jpct/util/LensFlare;->halo1:Lcom/threed/jpct/Texture;

    aput-object v2, v1, v5

    .line 61
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    iget-object v2, p0, Lcom/threed/jpct/util/LensFlare;->burst:Lcom/threed/jpct/Texture;

    aput-object v2, v1, v7

    .line 62
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/threed/jpct/util/LensFlare;->halo2:Lcom/threed/jpct/Texture;

    aput-object v3, v1, v2

    .line 63
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/threed/jpct/util/LensFlare;->burst:Lcom/threed/jpct/Texture;

    aput-object v3, v1, v2

    .line 64
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/threed/jpct/util/LensFlare;->halo3:Lcom/threed/jpct/Texture;

    aput-object v3, v1, v2

    .line 65
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/threed/jpct/util/LensFlare;->burst:Lcom/threed/jpct/Texture;

    aput-object v3, v1, v2

    .line 67
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object v1, v1, v4

    aput v6, v1, v4

    .line 68
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object v1, v1, v4

    aput v6, v1, v5

    .line 69
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object v1, v1, v5

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v1, v4

    .line 70
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object v1, v1, v5

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v1, v5

    .line 71
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object v1, v1, v7

    const/high16 v2, 0x40400000    # 3.0f

    aput v2, v1, v4

    .line 72
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object v1, v1, v7

    const/high16 v2, 0x3e800000    # 0.25f

    aput v2, v1, v5

    .line 73
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    aput v2, v1, v4

    .line 74
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aput v6, v1, v5

    .line 75
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/high16 v2, -0x40000000    # -2.0f

    aput v2, v1, v4

    .line 76
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v1, v5

    .line 77
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/high16 v2, -0x3f800000    # -4.0f

    aput v2, v1, v4

    .line 78
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    aput v2, v1, v5

    .line 79
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/high16 v2, -0x3f500000    # -5.5f

    aput v2, v1, v4

    .line 80
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    aput v2, v1, v5

    .line 81
    return-void
.end method


# virtual methods
.method public render(Lcom/threed/jpct/FrameBuffer;)V
    .locals 27
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/util/LensFlare;->light2D:Lcom/threed/jpct/SimpleVector;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    if-eqz v2, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/LensFlare;->tmp1:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v21, v0

    .line 179
    .local v21, "lp":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/util/LensFlare;->light2D:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/FrameBuffer;->getCenterX()F

    move-result v22

    .line 181
    .local v22, "mx":F
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/FrameBuffer;->getCenterY()F

    move-result v23

    .line 182
    .local v23, "my":F
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    .line 184
    .local v15, "cp":Lcom/threed/jpct/SimpleVector;
    const/4 v2, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 185
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v15, v2}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 186
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 187
    move-object/from16 v17, v21

    .line 188
    .local v17, "dir":Lcom/threed/jpct/SimpleVector;
    invoke-virtual/range {v17 .. v17}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v20

    .line 189
    .local v20, "len":F
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v17

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v16, v0

    .line 191
    .local v16, "d":Lcom/threed/jpct/SimpleVector;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4, v5}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 193
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    array-length v2, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_1

    .line 206
    .end local v15    # "cp":Lcom/threed/jpct/SimpleVector;
    .end local v16    # "d":Lcom/threed/jpct/SimpleVector;
    .end local v17    # "dir":Lcom/threed/jpct/SimpleVector;
    .end local v18    # "i":I
    .end local v20    # "len":F
    .end local v21    # "lp":Lcom/threed/jpct/SimpleVector;
    .end local v22    # "mx":F
    .end local v23    # "my":F
    :cond_0
    return-void

    .line 194
    .restart local v15    # "cp":Lcom/threed/jpct/SimpleVector;
    .restart local v16    # "d":Lcom/threed/jpct/SimpleVector;
    .restart local v17    # "dir":Lcom/threed/jpct/SimpleVector;
    .restart local v18    # "i":I
    .restart local v20    # "len":F
    .restart local v21    # "lp":Lcom/threed/jpct/SimpleVector;
    .restart local v22    # "mx":F
    .restart local v23    # "my":F
    :cond_1
    invoke-virtual/range {v16 .. v17}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    aget-object v3, v2, v18

    .line 196
    .local v3, "t":Lcom/threed/jpct/Texture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object v2, v2, v18

    const/4 v4, 0x0

    aget v19, v2, v4

    .line 197
    .local v19, "l":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object v2, v2, v18

    const/4 v4, 0x1

    aget v2, v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/util/LensFlare;->globalScale:F

    mul-float v24, v2, v4

    .line 198
    .local v24, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v2, v2, v19

    mul-float v2, v2, v20

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 199
    invoke-virtual {v3}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v8

    .line 200
    .local v8, "tw":I
    invoke-virtual {v3}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v9

    .line 201
    .local v9, "th":I
    move-object/from16 v0, v16

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    shr-int/lit8 v4, v8, 0x1

    int-to-float v4, v4

    mul-float v4, v4, v24

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v25, v0

    .line 202
    .local v25, "x":I
    move-object/from16 v0, v16

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    shr-int/lit8 v4, v9, 0x1

    int-to-float v4, v4

    mul-float v4, v4, v24

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v26, v0

    .line 203
    .local v26, "y":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v22

    float-to-int v2, v0

    add-int v6, v25, v2

    move/from16 v0, v23

    float-to-int v2, v0

    add-int v7, v26, v2

    int-to-float v2, v8

    mul-float v2, v2, v24

    float-to-int v10, v2

    int-to-float v2, v9

    mul-float v2, v2, v24

    float-to-int v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/threed/jpct/util/LensFlare;->trans:I

    const/4 v13, 0x1

    sget-object v14, Lcom/threed/jpct/RGBColor;->WHITE:Lcom/threed/jpct/RGBColor;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v14}, Lcom/threed/jpct/FrameBuffer;->blit(Lcom/threed/jpct/Texture;IIIIIIIIIZLcom/threed/jpct/RGBColor;)V

    .line 193
    add-int/lit8 v18, v18, 0x1

    goto :goto_0
.end method

.method public setDirection(Z)V
    .locals 0
    .param p1, "lightToCam"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/threed/jpct/util/LensFlare;->revertDirection:Z

    .line 133
    return-void
.end method

.method public setGlobalScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 104
    iput p1, p0, Lcom/threed/jpct/util/LensFlare;->globalScale:F

    .line 105
    return-void
.end method

.method public setHiding(Z)V
    .locals 0
    .param p1, "hides"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/threed/jpct/util/LensFlare;->cover:Z

    .line 114
    return-void
.end method

.method public setLightPosition(Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "lightPos"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 97
    return-void
.end method

.method public setMaximumDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    .line 124
    return-void
.end method

.method public setTransparency(I)V
    .locals 0
    .param p1, "trans"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/threed/jpct/util/LensFlare;->trans:I

    .line 89
    return-void
.end method

.method public update(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V
    .locals 13
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "world"    # Lcom/threed/jpct/World;

    .prologue
    const v12, 0x5368d4a5    # 1.0E12f

    const/high16 v11, 0x40a00000    # 5.0f

    const/4 v6, 0x1

    const v10, 0x3f866666    # 1.05f

    const/high16 v9, -0x40800000    # -1.0f

    .line 142
    invoke-virtual {p2}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v0

    .line 143
    .local v0, "cam":Lcom/threed/jpct/Camera;
    iget-object v5, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    iget-object v7, p0, Lcom/threed/jpct/util/LensFlare;->tmp3:Lcom/threed/jpct/SimpleVector;

    invoke-static {v0, p1, v5, v7}, Lcom/threed/jpct/Interact2D;->project3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    iput-object v5, p0, Lcom/threed/jpct/util/LensFlare;->light2D:Lcom/threed/jpct/SimpleVector;

    .line 144
    iput-boolean v6, p0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    .line 145
    iget-boolean v5, p0, Lcom/threed/jpct/util/LensFlare;->cover:Z

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/threed/jpct/util/LensFlare;->tmp1:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v5}, Lcom/threed/jpct/Camera;->getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v1

    .line 147
    .local v1, "camPos":Lcom/threed/jpct/SimpleVector;
    iget-boolean v5, p0, Lcom/threed/jpct/util/LensFlare;->revertDirection:Z

    if-nez v5, :cond_3

    .line 149
    move-object v2, v1

    .line 150
    .local v2, "delta":Lcom/threed/jpct/SimpleVector;
    iget-object v5, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v5, v1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 151
    invoke-virtual {v2, v9}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 152
    iget-object v5, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v2, v5}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 153
    invoke-virtual {v2}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v4

    .line 154
    .local v4, "dlen":F
    iget-object v7, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v2, v2}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v8

    iget v5, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    mul-float v9, v4, v10

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_0
    invoke-virtual {p2, v7, v8, v5}, Lcom/threed/jpct/World;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F

    move-result v3

    .line 156
    .local v3, "dist":F
    cmpl-float v5, v3, v12

    if-eqz v5, :cond_2

    sub-float v5, v4, v11

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    .line 169
    .end local v1    # "camPos":Lcom/threed/jpct/SimpleVector;
    .end local v2    # "delta":Lcom/threed/jpct/SimpleVector;
    .end local v3    # "dist":F
    .end local v4    # "dlen":F
    :cond_0
    :goto_2
    return-void

    .line 154
    .restart local v1    # "camPos":Lcom/threed/jpct/SimpleVector;
    .restart local v2    # "delta":Lcom/threed/jpct/SimpleVector;
    .restart local v4    # "dlen":F
    :cond_1
    mul-float v5, v4, v10

    goto :goto_0

    .restart local v3    # "dist":F
    :cond_2
    move v5, v6

    .line 156
    goto :goto_1

    .line 159
    .end local v2    # "delta":Lcom/threed/jpct/SimpleVector;
    .end local v3    # "dist":F
    .end local v4    # "dlen":F
    :cond_3
    iget-object v5, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    iget-object v7, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v5, v7}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 160
    iget-object v5, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v5, v9}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 161
    move-object v2, v1

    .line 162
    .restart local v2    # "delta":Lcom/threed/jpct/SimpleVector;
    iget-object v5, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v2, v5}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 163
    invoke-virtual {v2}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v4

    .line 164
    .restart local v4    # "dlen":F
    iget-object v7, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v2, v2}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v8

    iget v5, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    mul-float v9, v4, v10

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_3
    invoke-virtual {p2, v7, v8, v5}, Lcom/threed/jpct/World;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F

    move-result v3

    .line 165
    .restart local v3    # "dist":F
    cmpl-float v5, v3, v12

    if-eqz v5, :cond_4

    sub-float v5, v4, v11

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_4

    const/4 v6, 0x0

    :cond_4
    iput-boolean v6, p0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    goto :goto_2

    .line 164
    .end local v3    # "dist":F
    :cond_5
    mul-float v5, v4, v10

    goto :goto_3
.end method
