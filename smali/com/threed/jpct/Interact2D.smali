.class public final Lcom/threed/jpct/Interact2D;
.super Ljava/lang/Object;
.source "Interact2D.java"


# static fields
.field private static final VIEWPLANE_Z_VALUE:F = 1.0f

.field private static workMat:Lcom/threed/jpct/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v0, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static project3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "vertex"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-static {p0, p1, p2, v0, v0}, Lcom/threed/jpct/Interact2D;->project3D2DInternal(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized project3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 2
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "vertex"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 248
    const-class v0, Lcom/threed/jpct/Interact2D;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/threed/jpct/Interact2D;->project3D2DInternal(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static project3D2DInternal(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 32
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "vertex"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "mat"    # Lcom/threed/jpct/Matrix;
    .param p4, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    .line 328
    .local v9, "mat2":Lcom/threed/jpct/Matrix;
    const/4 v10, 0x0

    .line 330
    .local v10, "mat3":Lcom/threed/jpct/Matrix;
    if-eqz p4, :cond_0

    .line 331
    sget-object v10, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    .line 332
    invoke-virtual {v10}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 338
    :goto_0
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget-object v29, v29, v30

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->backBx:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    aput v31, v29, v30

    .line 339
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget-object v29, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->backBy:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    aput v31, v29, v30

    .line 340
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget-object v29, v29, v30

    const/16 v30, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->backBz:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    aput v31, v29, v30

    .line 342
    if-eqz p3, :cond_1

    .line 343
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 348
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 350
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-object v29, v29, v30

    const/16 v30, 0x2

    aget v22, v29, v30

    .line 351
    .local v22, "s22":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-object v29, v29, v30

    const/16 v30, 0x2

    aget v19, v29, v30

    .line 352
    .local v19, "s12":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x2

    aget v16, v29, v30

    .line 354
    .local v16, "s02":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget-object v29, v29, v30

    const/16 v30, 0x2

    aget v6, v29, v30

    .line 356
    .local v6, "bz":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v26, v0

    .line 357
    .local v26, "x1":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v27, v0

    .line 358
    .local v27, "y1":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v28, v0

    .line 360
    .local v28, "z1":F
    mul-float v29, v26, v16

    mul-float v30, v27, v19

    add-float v29, v29, v30

    mul-float v30, v28, v22

    add-float v29, v29, v30

    add-float v13, v29, v6

    .line 362
    .local v13, "p1z":F
    const/16 v29, 0x0

    cmpl-float v29, v13, v29

    if-lez v29, :cond_2

    .line 363
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v14, v29, v30

    .line 364
    .local v14, "s00":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v17, v29, v30

    .line 365
    .local v17, "s10":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-object v29, v29, v30

    const/16 v30, 0x1

    aget v18, v29, v30

    .line 366
    .local v18, "s11":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-object v29, v29, v30

    const/16 v30, 0x1

    aget v21, v29, v30

    .line 367
    .local v21, "s21":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v20, v29, v30

    .line 368
    .local v20, "s20":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x1

    aget v15, v29, v30

    .line 370
    .local v15, "s01":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v4, v29, v30

    .line 371
    .local v4, "bx":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget-object v29, v29, v30

    const/16 v30, 0x1

    aget v5, v29, v30

    .line 372
    .local v5, "by":F
    mul-float v29, v26, v14

    mul-float v30, v27, v17

    add-float v29, v29, v30

    mul-float v30, v28, v20

    add-float v29, v29, v30

    add-float v11, v29, v4

    .line 373
    .local v11, "p1x":F
    mul-float v29, v26, v15

    mul-float v30, v27, v18

    add-float v29, v29, v30

    mul-float v30, v28, v21

    add-float v29, v29, v30

    add-float v12, v29, v5

    .line 374
    .local v12, "p1y":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/FrameBuffer;->middleX:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/FrameBuffer;->middleX:F

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    sget v31, Lcom/threed/jpct/Config;->viewportOffsetX:F

    mul-float v30, v30, v31

    add-float v7, v29, v30

    .line 375
    .local v7, "cmx":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/FrameBuffer;->middleY:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/FrameBuffer;->middleY:F

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    sget v31, Lcom/threed/jpct/Config;->viewportOffsetY:F

    mul-float v30, v30, v31

    add-float v8, v29, v30

    .line 377
    .local v8, "cmy":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/FrameBuffer;->width:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/FrameBuffer;->height:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/Camera;->calcFOV(II)V

    .line 379
    const/high16 v29, 0x3f800000    # 1.0f

    div-float v25, v29, v13

    .line 380
    .local v25, "sz":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->scaleX:F

    move/from16 v29, v0

    mul-float v30, v11, v25

    mul-float v29, v29, v30

    add-float v23, v29, v7

    .line 381
    .local v23, "sx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->scaleY:F

    move/from16 v29, v0

    mul-float v30, v12, v25

    mul-float v29, v29, v30

    add-float v24, v29, v8

    .line 383
    .local v24, "sy":F
    move-object/from16 v0, p4

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 387
    .end local v4    # "bx":F
    .end local v5    # "by":F
    .end local v7    # "cmx":F
    .end local v8    # "cmy":F
    .end local v11    # "p1x":F
    .end local v12    # "p1y":F
    .end local v14    # "s00":F
    .end local v15    # "s01":F
    .end local v17    # "s10":F
    .end local v18    # "s11":F
    .end local v20    # "s20":F
    .end local v21    # "s21":F
    .end local v23    # "sx":F
    .end local v24    # "sy":F
    .end local v25    # "sz":F
    .end local p4    # "toFill":Lcom/threed/jpct/SimpleVector;
    :goto_2
    return-object p4

    .line 334
    .end local v6    # "bz":F
    .end local v13    # "p1z":F
    .end local v16    # "s02":F
    .end local v19    # "s12":F
    .end local v22    # "s22":F
    .end local v26    # "x1":F
    .end local v27    # "y1":F
    .end local v28    # "z1":F
    .restart local p4    # "toFill":Lcom/threed/jpct/SimpleVector;
    :cond_0
    new-instance v10, Lcom/threed/jpct/Matrix;

    .end local v10    # "mat3":Lcom/threed/jpct/Matrix;
    invoke-direct {v10}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 335
    .restart local v10    # "mat3":Lcom/threed/jpct/Matrix;
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object p4

    goto/16 :goto_0

    .line 345
    :cond_1
    move-object/from16 p3, v10

    goto/16 :goto_1

    .line 386
    .restart local v6    # "bz":F
    .restart local v13    # "p1z":F
    .restart local v16    # "s02":F
    .restart local v19    # "s12":F
    .restart local v22    # "s22":F
    .restart local v26    # "x1":F
    .restart local v27    # "y1":F
    .restart local v28    # "z1":F
    :cond_2
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 387
    const/16 p4, 0x0

    goto :goto_2
.end method

.method public static projectCenter3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 303
    if-nez p0, :cond_0

    iget-object v0, p2, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-nez v0, :cond_0

    .line 304
    const-string v0, "Object doesn\'t belong to a world!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 305
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 311
    :goto_0
    return-object v0

    .line 308
    :cond_0
    if-nez p0, :cond_1

    .line 309
    iget-object v0, p2, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object p0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    .line 311
    :cond_1
    invoke-virtual {p2}, Lcom/threed/jpct/Object3D;->getCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-virtual {p2}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/threed/jpct/Interact2D;->project3D2DInternal(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    goto :goto_0
.end method

.method public static projectCenter3D2D(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p0, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/threed/jpct/Interact2D;->projectCenter3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public static reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;II)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public static reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;
    .locals 6
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # F

    .prologue
    .line 171
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public static reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 8
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # F
    .param p5, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 194
    iget v4, p1, Lcom/threed/jpct/FrameBuffer;->width:I

    iget v5, p1, Lcom/threed/jpct/FrameBuffer;->height:I

    invoke-virtual {p0, v4, v5}, Lcom/threed/jpct/Camera;->calcFOV(II)V

    .line 195
    iget v4, p1, Lcom/threed/jpct/FrameBuffer;->middleX:F

    iget v5, p1, Lcom/threed/jpct/FrameBuffer;->middleX:F

    mul-float/2addr v5, v7

    sget v6, Lcom/threed/jpct/Config;->viewportOffsetX:F

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 196
    .local v0, "cmx":F
    iget v4, p1, Lcom/threed/jpct/FrameBuffer;->middleY:F

    iget v5, p1, Lcom/threed/jpct/FrameBuffer;->middleY:F

    mul-float/2addr v5, v7

    sget v6, Lcom/threed/jpct/Config;->viewportOffsetY:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 198
    .local v1, "cmy":F
    int-to-float v4, p2

    sub-float/2addr v4, v0

    mul-float/2addr v4, p4

    iget v5, p0, Lcom/threed/jpct/Camera;->scaleX:F

    div-float v2, v4, v5

    .line 199
    .local v2, "xf":F
    int-to-float v4, p3

    sub-float/2addr v4, v1

    mul-float/2addr v4, p4

    iget v5, p0, Lcom/threed/jpct/Camera;->scaleY:F

    div-float v3, v4, v5

    .line 200
    .local v3, "yf":F
    invoke-virtual {p5, v2, v3, p4}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 201
    return-object p5
.end method

.method public static reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 6
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 55
    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method static reproject2D3DBlit(FFLcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4
    .param p0, "scaleX"    # F
    .param p1, "scaleY"    # F
    .param p2, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # F
    .param p6, "fillMe"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 315
    if-nez p6, :cond_0

    .line 316
    new-instance p6, Lcom/threed/jpct/SimpleVector;

    .end local p6    # "fillMe":Lcom/threed/jpct/SimpleVector;
    invoke-direct {p6}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 318
    .restart local p6    # "fillMe":Lcom/threed/jpct/SimpleVector;
    :cond_0
    int-to-float v2, p3

    iget v3, p2, Lcom/threed/jpct/FrameBuffer;->middleX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p5

    div-float v0, v2, p0

    .line 319
    .local v0, "xf":F
    int-to-float v2, p4

    iget v3, p2, Lcom/threed/jpct/FrameBuffer;->middleY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p5

    div-float v1, v2, p1

    .line 320
    .local v1, "yf":F
    iput v0, p6, Lcom/threed/jpct/SimpleVector;->x:F

    .line 321
    iput v1, p6, Lcom/threed/jpct/SimpleVector;->y:F

    .line 322
    iput p5, p6, Lcom/threed/jpct/SimpleVector;->z:F

    .line 323
    return-object p6
.end method

.method public static reproject2D3DWS(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;II)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 74
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v1}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 75
    .local v0, "ray":Lcom/threed/jpct/SimpleVector;
    sget-object v1, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 76
    iget-object v1, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    sget-object v2, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 77
    return-object v0
.end method

.method public static reproject2D3DWS(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # F

    .prologue
    .line 122
    invoke-static {p0, p1, p2, p3, p4}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 123
    .local v0, "ray":Lcom/threed/jpct/SimpleVector;
    sget-object v1, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 124
    iget-object v1, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    sget-object v2, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 125
    return-object v0
.end method

.method public static reproject2D3DWS(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # F
    .param p5, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 148
    invoke-static/range {p0 .. p5}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 149
    .local v0, "ray":Lcom/threed/jpct/SimpleVector;
    sget-object v1, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 150
    iget-object v1, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    sget-object v2, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 151
    return-object v0
.end method

.method public static reproject2D3DWS(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 7
    .param p0, "camera"    # Lcom/threed/jpct/Camera;
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 98
    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v6

    .line 99
    .local v6, "ray":Lcom/threed/jpct/SimpleVector;
    sget-object v0, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 100
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    sget-object v1, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 101
    return-object v6
.end method
