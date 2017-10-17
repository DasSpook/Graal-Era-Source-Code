.class public Lcom/threed/jpct/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# static fields
.field private static final HRT:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lcom/threed/jpct/Primitives;->HRT:F

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static final createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "numRotations"    # I
    .param p1, "latheVertexList"    # [Lcom/threed/jpct/SimpleVector;
    .param p2, "scale"    # F

    .prologue
    .line 276
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method private static final createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;
    .locals 25
    .param p0, "numRotations"    # I
    .param p1, "latheVertexList"    # [Lcom/threed/jpct/SimpleVector;
    .param p2, "scale"    # F
    .param p3, "scaleHeight"    # F

    .prologue
    .line 282
    const/4 v13, 0x0

    .line 283
    .local v13, "TOP":I
    const/4 v12, 0x1

    .line 285
    .local v12, "BOTTOM":I
    new-instance v2, Lcom/threed/jpct/Object3D;

    mul-int/lit8 v3, p0, 0x2

    mul-int/lit8 v4, p0, 0x2

    move-object/from16 v0, p1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 286
    .local v2, "obj":Lcom/threed/jpct/Object3D;
    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v3, v3, p0

    add-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Lcom/threed/jpct/SimpleVector;

    move-object/from16 v24, v0

    .line 288
    .local v24, "vertexList":[Lcom/threed/jpct/SimpleVector;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, p3

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v4

    aput-object v4, v24, v3

    .line 289
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, -0x41000000    # -0.5f

    mul-float v5, v5, p3

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v4

    aput-object v4, v24, v3

    .line 291
    const/16 v17, 0x2

    .line 292
    .local v17, "currentVertex":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, p0

    if-lt v0, v1, :cond_0

    .line 299
    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, p0

    if-lt v0, v1, :cond_2

    .line 313
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v21

    if-lt v0, v3, :cond_3

    .line 326
    return-object v2

    .line 293
    .end local v21    # "j":I
    :cond_0
    const/16 v22, 0x0

    .local v22, "p":I
    :goto_3
    move-object/from16 v0, p1

    array-length v3, v0

    move/from16 v0, v22

    if-lt v0, v3, :cond_1

    .line 292
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 294
    :cond_1
    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, p0

    int-to-float v4, v0

    div-float v23, v3, v4

    .line 295
    .local v23, "stage":F
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "currentVertex":I
    .local v18, "currentVertex":I
    aget-object v3, p1, v22

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v23

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/threed/jpct/SimpleVector;->rotate(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    aput-object v3, v24, v17

    .line 293
    add-int/lit8 v22, v22, 0x1

    move/from16 v17, v18

    .end local v18    # "currentVertex":I
    .restart local v17    # "currentVertex":I
    goto :goto_3

    .line 300
    .end local v22    # "p":I
    .end local v23    # "stage":F
    :cond_2
    add-int/lit8 v3, v20, 0x0

    rem-int v3, v3, p0

    move-object/from16 v0, p1

    array-length v4, v0

    mul-int/2addr v3, v4

    add-int/lit8 v14, v3, 0x2

    .line 301
    .local v14, "a":I
    add-int/lit8 v3, v20, 0x1

    rem-int v3, v3, p0

    move-object/from16 v0, p1

    array-length v4, v0

    mul-int/2addr v3, v4

    add-int/lit8 v16, v3, 0x2

    .line 303
    .local v16, "c":I
    const/4 v3, 0x0

    aget-object v3, v24, v3

    iget v3, v3, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v3, v3, p2

    const/4 v4, 0x0

    aget-object v4, v24, v4

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v4, v4, p2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    iget v5, v5, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v5, v5, p2

    aget-object v6, v24, v16

    iget v6, v6, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v6, v6, p2

    aget-object v7, v24, v16

    iget v7, v7, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v7, v7, p2

    aget-object v8, v24, v16

    iget v8, v8, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v8, v8, p2

    .line 304
    aget-object v9, v24, v14

    iget v9, v9, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v9, v9, p2

    aget-object v10, v24, v14

    iget v10, v10, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v10, v10, p2

    aget-object v11, v24, v14

    iget v11, v11, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v11, v11, p2

    .line 303
    invoke-virtual/range {v2 .. v11}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFF)I

    .line 306
    move-object/from16 v0, p1

    array-length v3, v0

    add-int/2addr v3, v14

    add-int/lit8 v15, v3, -0x1

    .line 307
    .local v15, "b":I
    move-object/from16 v0, p1

    array-length v3, v0

    add-int v3, v3, v16

    add-int/lit8 v19, v3, -0x1

    .line 309
    .local v19, "d":I
    const/4 v3, 0x1

    aget-object v3, v24, v3

    iget v3, v3, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v3, v3, p2

    const/4 v4, 0x1

    aget-object v4, v24, v4

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v4, v4, p2

    const/4 v5, 0x1

    aget-object v5, v24, v5

    iget v5, v5, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v5, v5, p2

    aget-object v6, v24, v15

    iget v6, v6, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v6, v6, p2

    aget-object v7, v24, v15

    iget v7, v7, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v7, v7, p2

    aget-object v8, v24, v15

    iget v8, v8, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v8, v8, p2

    .line 310
    aget-object v9, v24, v19

    iget v9, v9, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v9, v9, p2

    aget-object v10, v24, v19

    iget v10, v10, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v10, v10, p2

    aget-object v11, v24, v19

    iget v11, v11, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v11, v11, p2

    .line 309
    invoke-virtual/range {v2 .. v11}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFF)I

    .line 299
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 314
    .end local v14    # "a":I
    .end local v15    # "b":I
    .end local v16    # "c":I
    .end local v19    # "d":I
    .restart local v21    # "j":I
    :cond_3
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, p0

    if-lt v0, v1, :cond_4

    .line 313
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 315
    :cond_4
    add-int/lit8 v3, v20, 0x0

    rem-int v3, v3, p0

    move-object/from16 v0, p1

    array-length v4, v0

    mul-int/2addr v3, v4

    add-int v3, v3, v21

    add-int/lit8 v14, v3, 0x2

    .line 316
    .restart local v14    # "a":I
    add-int/lit8 v15, v14, 0x1

    .line 317
    .restart local v15    # "b":I
    add-int/lit8 v3, v20, 0x1

    rem-int v3, v3, p0

    move-object/from16 v0, p1

    array-length v4, v0

    mul-int/2addr v3, v4

    add-int v3, v3, v21

    add-int/lit8 v16, v3, 0x2

    .line 318
    .restart local v16    # "c":I
    add-int/lit8 v19, v16, 0x1

    .line 320
    .restart local v19    # "d":I
    aget-object v3, v24, v14

    iget v3, v3, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v3, v3, p2

    aget-object v4, v24, v14

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v4, v4, p2

    aget-object v5, v24, v14

    iget v5, v5, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v5, v5, p2

    aget-object v6, v24, v19

    iget v6, v6, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v6, v6, p2

    aget-object v7, v24, v19

    iget v7, v7, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v7, v7, p2

    aget-object v8, v24, v19

    iget v8, v8, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v8, v8, p2

    .line 321
    aget-object v9, v24, v15

    iget v9, v9, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v9, v9, p2

    aget-object v10, v24, v15

    iget v10, v10, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v10, v10, p2

    aget-object v11, v24, v15

    iget v11, v11, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v11, v11, p2

    .line 320
    invoke-virtual/range {v2 .. v11}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFF)I

    .line 322
    aget-object v3, v24, v14

    iget v3, v3, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v3, v3, p2

    aget-object v4, v24, v14

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v4, v4, p2

    aget-object v5, v24, v14

    iget v5, v5, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v5, v5, p2

    aget-object v6, v24, v16

    iget v6, v6, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v6, v6, p2

    aget-object v7, v24, v16

    iget v7, v7, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v7, v7, p2

    aget-object v8, v24, v16

    iget v8, v8, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v8, v8, p2

    .line 323
    aget-object v9, v24, v19

    iget v9, v9, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v9, v9, p2

    aget-object v10, v24, v19

    iget v10, v10, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v10, v10, p2

    aget-object v11, v24, v19

    iget v11, v11, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v11, v11, p2

    .line 322
    invoke-virtual/range {v2 .. v11}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFF)I

    .line 314
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4
.end method

.method public static getBox(FF)Lcom/threed/jpct/Object3D;
    .locals 6
    .param p0, "scale"    # F
    .param p1, "scaleHeight"    # F

    .prologue
    const/4 v5, 0x0

    .line 218
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    .line 219
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/threed/jpct/SimpleVector;

    const/4 v2, 0x0

    sget v3, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, p1

    invoke-static {v3, v4, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v4, -0x41000000    # -0.5f

    mul-float/2addr v4, p1

    invoke-static {v3, v4, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getCone(F)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "scale"    # F

    .prologue
    .line 70
    const/16 v0, 0x5a

    invoke-static {v0, p0}, Lcom/threed/jpct/Primitives;->getCone(IF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getCone(IF)Lcom/threed/jpct/Object3D;
    .locals 4
    .param p0, "faces"    # I
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 83
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v3, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getCone(IFF)Lcom/threed/jpct/Object3D;
    .locals 5
    .param p0, "faces"    # I
    .param p1, "scale"    # F
    .param p2, "scaleHeight"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 99
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    mul-float v2, v4, p2

    const/4 v3, 0x0

    invoke-static {v4, v2, v3}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0, p1, p2}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getCube(F)Lcom/threed/jpct/Object3D;
    .locals 6
    .param p0, "scale"    # F

    .prologue
    const/4 v5, 0x0

    .line 203
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    .line 204
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/threed/jpct/SimpleVector;

    const/4 v2, 0x0

    sget v3, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v4, -0x41000000    # -0.5f

    invoke-static {v3, v4, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getCylinder(F)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "scale"    # F

    .prologue
    .line 111
    const/16 v0, 0x5a

    invoke-static {v0, p0}, Lcom/threed/jpct/Primitives;->getCylinder(IF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getCylinder(IF)Lcom/threed/jpct/Object3D;
    .locals 5
    .param p0, "faces"    # I
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 124
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    invoke-static {v3, v3, v4}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, -0x41000000    # -0.5f

    invoke-static {v3, v2, v4}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getCylinder(IFF)Lcom/threed/jpct/Object3D;
    .locals 5
    .param p0, "faces"    # I
    .param p1, "scale"    # F
    .param p2, "scaleHeight"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 140
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    mul-float v2, v3, p2

    invoke-static {v3, v2, v4}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, -0x41000000    # -0.5f

    mul-float/2addr v2, p2

    invoke-static {v3, v2, v4}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0, p1, p2}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getDoubleCone(F)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "scale"    # F

    .prologue
    .line 178
    const/16 v0, 0x5a

    invoke-static {v0, p0}, Lcom/threed/jpct/Primitives;->getDoubleCone(IF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getDoubleCone(IF)Lcom/threed/jpct/Object3D;
    .locals 4
    .param p0, "faces"    # I
    .param p1, "scale"    # F

    .prologue
    const/4 v3, 0x0

    .line 191
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v3}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getEllipsoid(FF)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "scale"    # F
    .param p1, "scaleHeight"    # F

    .prologue
    .line 253
    const/16 v0, 0x14

    invoke-static {v0, p0, p1}, Lcom/threed/jpct/Primitives;->getEllipsoid(IFF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getEllipsoid(IFF)Lcom/threed/jpct/Object3D;
    .locals 9
    .param p0, "faces"    # I
    .param p1, "scale"    # F
    .param p2, "scaleHeight"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 265
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p1, v4

    .line 266
    new-array v3, p0, [Lcom/threed/jpct/SimpleVector;

    .line 267
    .local v3, "vertexList":[Lcom/threed/jpct/SimpleVector;
    const v1, 0x40490fdb    # (float)Math.PI

    .line 268
    .local v1, "pi":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    .line 272
    invoke-static {p0, v3, p1, p2}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object v4

    return-object v4

    .line 269
    :cond_0
    int-to-float v4, v0

    add-float/2addr v4, v8

    array-length v5, v3

    int-to-float v5, v5

    add-float/2addr v5, v8

    div-float v2, v4, v5

    .line 270
    .local v2, "stage":F
    mul-float v4, v2, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v7

    mul-float v5, v2, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v7

    mul-float/2addr v5, p2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v4

    aput-object v4, v3, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getPlane(IF)Lcom/threed/jpct/Object3D;
    .locals 36
    .param p0, "quads"    # I
    .param p1, "scale"    # F

    .prologue
    .line 33
    move/from16 v0, p1

    neg-float v5, v0

    move/from16 v0, p0

    int-to-float v8, v0

    mul-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v5, v8

    .line 34
    .local v3, "startx":F
    move v4, v3

    .line 35
    .local v4, "starty":F
    const/4 v6, 0x0

    .line 36
    .local v6, "tx":F
    const/4 v7, 0x0

    .line 37
    .local v7, "ty":F
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p0

    int-to-float v8, v0

    div-float v33, v5, v8

    .line 38
    .local v33, "dtex":F
    new-instance v2, Lcom/threed/jpct/Object3D;

    mul-int v5, p0, p0

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v2, v5}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 39
    .local v2, "obj":Lcom/threed/jpct/Object3D;
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, p0

    if-lt v0, v1, :cond_0

    .line 59
    return-object v2

    .line 40
    :cond_0
    const/16 v35, 0x0

    .local v35, "p":I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, p0

    if-lt v0, v1, :cond_1

    .line 54
    add-float v4, v4, p1

    .line 55
    move/from16 v0, p1

    neg-float v5, v0

    move/from16 v0, p0

    int-to-float v8, v0

    mul-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v5, v8

    .line 56
    const/4 v6, 0x0

    .line 57
    add-float v7, v7, v33

    .line 39
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 41
    :cond_1
    add-float v16, v6, v33

    .line 42
    .local v16, "dtx":F
    add-float v12, v7, v33

    .line 43
    .local v12, "dty":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v16, v5

    if-lez v5, :cond_2

    .line 44
    const/high16 v16, 0x3f800000    # 1.0f

    .line 46
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v12, v5

    if-lez v5, :cond_3

    .line 47
    const/high16 v12, 0x3f800000    # 1.0f

    .line 49
    :cond_3
    const/4 v5, 0x0

    add-float v9, v4, p1

    const/4 v10, 0x0

    add-float v13, v3, p1

    const/4 v15, 0x0

    move v8, v3

    move v11, v6

    move v14, v4

    move/from16 v17, v7

    invoke-virtual/range {v2 .. v17}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFF)I

    .line 50
    add-float v19, v4, p1

    const/16 v20, 0x0

    add-float v23, v3, p1

    add-float v24, v4, p1

    const/16 v25, 0x0

    add-float v28, v3, p1

    const/16 v30, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v21, v6

    move/from16 v22, v12

    move/from16 v26, v16

    move/from16 v27, v12

    move/from16 v29, v4

    move/from16 v31, v16

    move/from16 v32, v7

    invoke-virtual/range {v17 .. v32}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFF)I

    .line 51
    add-float v3, v3, p1

    .line 52
    add-float v6, v6, v33

    .line 40
    add-int/lit8 v35, v35, 0x1

    goto :goto_1
.end method

.method public static getPyramide(F)Lcom/threed/jpct/Object3D;
    .locals 6
    .param p0, "scale"    # F

    .prologue
    .line 152
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    .line 153
    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/threed/jpct/SimpleVector;

    const/4 v2, 0x0

    sget v3, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getPyramide(FF)Lcom/threed/jpct/Object3D;
    .locals 6
    .param p0, "scale"    # F
    .param p1, "scaleHeight"    # F

    .prologue
    .line 166
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    .line 167
    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/threed/jpct/SimpleVector;

    const/4 v2, 0x0

    sget v3, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, p1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getSphere(F)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "scale"    # F

    .prologue
    .line 230
    const/16 v0, 0x14

    invoke-static {v0, p0}, Lcom/threed/jpct/Primitives;->getSphere(IF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static getSphere(IF)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "faces"    # I
    .param p1, "scale"    # F

    .prologue
    .line 243
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/threed/jpct/Primitives;->getEllipsoid(IFF)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method
