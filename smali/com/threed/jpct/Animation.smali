.class public final Lcom/threed/jpct/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KEYFRAMESONLY:I = 0x4

.field public static final LINEAR:I = 0x0

.field public static final USE_CLAMPING:I = 0x1

.field public static final USE_WRAPPING:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field aktFrames:I

.field anzAnim:I

.field cacheIndices:Z

.field endFrame:I

.field endFrames:[I

.field firstCall:Z

.field keyFrames:[Lcom/threed/jpct/Mesh;

.field private transient lastFrame:I

.field maxFrames:I

.field mode:I

.field realFirstCall:Z

.field seqNames:[Ljava/lang/String;

.field startFrames:[I

.field wrapMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "keyframeCount"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v3, p0, Lcom/threed/jpct/Animation;->lastFrame:I

    .line 64
    iput-boolean v1, p0, Lcom/threed/jpct/Animation;->cacheIndices:Z

    .line 66
    iput-boolean v1, p0, Lcom/threed/jpct/Animation;->firstCall:Z

    .line 68
    iput-boolean v1, p0, Lcom/threed/jpct/Animation;->realFirstCall:Z

    .line 80
    iput p1, p0, Lcom/threed/jpct/Animation;->maxFrames:I

    .line 81
    new-array v1, p1, [Lcom/threed/jpct/Mesh;

    iput-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    .line 82
    iput v2, p0, Lcom/threed/jpct/Animation;->endFrame:I

    .line 83
    iput v2, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    .line 84
    iput v2, p0, Lcom/threed/jpct/Animation;->mode:I

    .line 85
    iput v2, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    .line 86
    iput v2, p0, Lcom/threed/jpct/Animation;->wrapMode:I

    .line 87
    sget v1, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    .line 88
    sget v1, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    .line 89
    sget v1, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    if-lt v0, v1, :cond_0

    .line 95
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    aput v3, v1, v0

    .line 92
    iget-object v1, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    aput v3, v1, v0

    .line 93
    iget-object v1, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addKeyFrame(Lcom/threed/jpct/Mesh;)V
    .locals 4
    .param p1, "keyFrame"    # Lcom/threed/jpct/Mesh;

    .prologue
    const/4 v3, 0x0

    .line 262
    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    if-nez v0, :cond_0

    .line 263
    const-string v0, "Can\'t add a keyframe without a sub-sequence being created!"

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    iget v1, p0, Lcom/threed/jpct/Animation;->endFrame:I

    aput v1, v0, v3

    .line 279
    return-void

    .line 265
    :cond_0
    iget v0, p1, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v0, :cond_2

    .line 266
    iget v0, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    iget v1, p0, Lcom/threed/jpct/Animation;->maxFrames:I

    if-ge v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    iget v1, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    aput-object p1, v0, v1

    .line 268
    iget v0, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    .line 269
    iget-object v0, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    iget v1, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    iget v2, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    aput v2, v0, v1

    .line 270
    iget v0, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    iput v0, p0, Lcom/threed/jpct/Animation;->endFrame:I

    goto :goto_0

    .line 272
    :cond_1
    const-string v0, "Too many keyframes defined!"

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 275
    :cond_2
    const-string v0, "Bounding box missing in this mesh!"

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public createSubSequence(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 201
    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    if-ge v0, v1, :cond_0

    .line 202
    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    .line 203
    iget-object v0, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    iget v1, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    iget v2, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    aput v2, v0, v1

    .line 204
    iget-object v0, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    iget v1, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    aput-object p1, v0, v1

    .line 205
    iget-object v0, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    aput v3, v0, v3

    .line 206
    iget-object v0, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    aput v3, v0, v3

    .line 207
    iget-object v0, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    const-string v1, "complete"

    aput-object v1, v0, v3

    .line 211
    :goto_0
    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    return v0

    .line 209
    :cond_0
    const-string v0, "Too many sub-sequences defined. Modify configuration to allow a higher number."

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method doAnimation(Lcom/threed/jpct/Object3D;IF)V
    .locals 9
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "seq"    # I
    .param p3, "index"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 315
    iput-boolean v7, p0, Lcom/threed/jpct/Animation;->realFirstCall:Z

    .line 317
    iget-boolean v0, p0, Lcom/threed/jpct/Animation;->firstCall:Z

    if-eqz v0, :cond_1

    .line 318
    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v0, :cond_1

    .line 319
    cmpl-float v0, p3, v1

    if-nez v0, :cond_4

    .line 320
    const p3, 0x38d1b717    # 1.0E-4f

    .line 326
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/threed/jpct/Animation;->firstCall:Z

    .line 330
    :cond_1
    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    if-gt p2, v0, :cond_7

    .line 332
    cmpl-float v0, p3, v8

    if-lez v0, :cond_5

    .line 333
    const/high16 p3, 0x3f800000    # 1.0f

    .line 340
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    aget v5, v0, p2

    .line 341
    .local v5, "endFrame":I
    iget-object v0, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    aget v4, v0, p2

    .line 345
    .local v4, "startFrame":I
    sub-int v0, v5, v4

    iget v1, p0, Lcom/threed/jpct/Animation;->wrapMode:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    int-to-float v1, v4

    add-float v6, v0, v1

    .line 347
    .local v6, "frame":F
    iget v0, p0, Lcom/threed/jpct/Animation;->wrapMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 349
    int-to-float v0, v5

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_6

    .line 350
    add-int/lit8 v0, v5, -0x1

    int-to-float v6, v0

    .line 358
    :cond_3
    :goto_2
    float-to-int v2, v6

    .line 359
    .local v2, "iFrame":I
    int-to-float v0, v2

    sub-float v3, v6, v0

    .line 361
    .local v3, "inter":F
    iget v0, p0, Lcom/threed/jpct/Animation;->mode:I

    sparse-switch v0, :sswitch_data_0

    .line 370
    const-string v0, "Unsupported interpolation mode used!"

    invoke-static {v0, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 378
    .end local v2    # "iFrame":I
    .end local v3    # "inter":F
    .end local v4    # "startFrame":I
    .end local v5    # "endFrame":I
    .end local v6    # "frame":F
    :goto_3
    return-void

    .line 322
    :cond_4
    cmpl-float v0, p3, v8

    if-nez v0, :cond_0

    .line 323
    const p3, 0x3f7fff58    # 0.99999f

    goto :goto_0

    .line 335
    :cond_5
    cmpg-float v0, p3, v1

    if-gez v0, :cond_2

    .line 336
    const/4 p3, 0x0

    goto :goto_1

    .line 352
    .restart local v4    # "startFrame":I
    .restart local v5    # "endFrame":I
    .restart local v6    # "frame":F
    :cond_6
    int-to-float v0, v4

    cmpg-float v0, v6, v0

    if-gez v0, :cond_3

    .line 353
    int-to-float v6, v4

    goto :goto_2

    .restart local v2    # "iFrame":I
    .restart local v3    # "inter":F
    :sswitch_0
    move-object v0, p0

    move-object v1, p1

    .line 363
    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Animation;->interpolateLinear(Lcom/threed/jpct/Object3D;IFII)V

    goto :goto_3

    .line 367
    :sswitch_1
    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/threed/jpct/Animation;->interpolateNone(Lcom/threed/jpct/Object3D;III)V

    goto :goto_3

    .line 375
    .end local v2    # "iFrame":I
    .end local v3    # "inter":F
    .end local v4    # "startFrame":I
    .end local v5    # "endFrame":I
    .end local v6    # "frame":F
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sub-sequence number "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 361
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public getKeyFrames()[Lcom/threed/jpct/Mesh;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget v1, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    new-array v0, v1, [Lcom/threed/jpct/Mesh;

    .line 182
    .local v0, "ret":[Lcom/threed/jpct/Mesh;
    iget-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    iget v2, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "seq"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSequence(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v2, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    array-length v0, v2

    .line 167
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 172
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 168
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSequenceBorders(I)[I
    .locals 3
    .param p1, "seq"    # I

    .prologue
    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/threed/jpct/Animation;->startFrames:[I

    aget v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/threed/jpct/Animation;->endFrames:[I

    aget v2, v2, p1

    aput v2, v0, v1

    return-object v0
.end method

.method public getSequenceCount()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/threed/jpct/Animation;->anzAnim:I

    return v0
.end method

.method interpolateLinear(Lcom/threed/jpct/Object3D;IFII)V
    .locals 30
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "frame"    # I
    .param p3, "inter"    # F
    .param p4, "startFrame"    # I
    .param p5, "endFrame"    # I

    .prologue
    .line 382
    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v4, v28, p3

    .line 383
    .local v4, "first":F
    move/from16 v27, p3

    .line 385
    .local v27, "second":F
    move/from16 v26, p2

    .line 386
    .local v26, "sF":I
    add-int/lit8 v2, p2, 0x1

    .line 387
    .local v2, "eF":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Animation;->wrapMode:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 389
    move/from16 v0, p5

    if-lt v2, v0, :cond_2

    .line 390
    add-int/lit8 v2, p5, -0x1

    .line 396
    :cond_0
    :goto_0
    move/from16 v0, v26

    move/from16 v1, p5

    if-lt v0, v1, :cond_3

    .line 397
    add-int/lit8 v26, p5, -0x1

    .line 421
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    .line 422
    .local v19, "objobjMesh":Lcom/threed/jpct/Mesh;
    move-object/from16 v0, v19

    iget v3, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 423
    .local v3, "end":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    .line 425
    .local v6, "keyFrames":[Lcom/threed/jpct/Mesh;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v23, v0

    .line 426
    .local v23, "objobjMeshxOrg":[F
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v24, v0

    .line 427
    .local v24, "objobjMeshyOrg":[F
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v25, v0

    .line 429
    .local v25, "objobjMeshzOrg":[F
    aget-object v28, v6, v26

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v16, v0

    .line 430
    .local v16, "keyFramesxOrg":[F
    aget-object v28, v6, v26

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v17, v0

    .line 431
    .local v17, "keyFramesyOrg":[F
    aget-object v28, v6, v26

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v18, v0

    .line 433
    .local v18, "keyFrameszOrg":[F
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v20, v0

    .line 434
    .local v20, "objobjMeshnxOrg":[F
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v21, v0

    .line 435
    .local v21, "objobjMeshnyOrg":[F
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v22, v0

    .line 437
    .local v22, "objobjMeshnzOrg":[F
    aget-object v28, v6, v26

    move-object/from16 v0, v28

    iget-object v13, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 438
    .local v13, "keyFramesnxOrg":[F
    aget-object v28, v6, v26

    move-object/from16 v0, v28

    iget-object v14, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 439
    .local v14, "keyFramesnyOrg":[F
    aget-object v28, v6, v26

    move-object/from16 v0, v28

    iget-object v15, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 441
    .local v15, "keyFramesnzOrg":[F
    aget-object v28, v6, v2

    move-object/from16 v0, v28

    iget-object v10, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 442
    .local v10, "keyFrameseFxOrg":[F
    aget-object v28, v6, v2

    move-object/from16 v0, v28

    iget-object v11, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 443
    .local v11, "keyFrameseFyOrg":[F
    aget-object v28, v6, v2

    move-object/from16 v0, v28

    iget-object v12, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 445
    .local v12, "keyFrameseFzOrg":[F
    aget-object v28, v6, v2

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 446
    .local v7, "keyFrameseFnxOrg":[F
    aget-object v28, v6, v2

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 447
    .local v8, "keyFrameseFnyOrg":[F
    aget-object v28, v6, v2

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 449
    .local v9, "keyFrameseFnzOrg":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-lt v5, v3, :cond_8

    .line 458
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->modified:Z

    .line 459
    return-void

    .line 392
    .end local v3    # "end":I
    .end local v5    # "i":I
    .end local v6    # "keyFrames":[Lcom/threed/jpct/Mesh;
    .end local v7    # "keyFrameseFnxOrg":[F
    .end local v8    # "keyFrameseFnyOrg":[F
    .end local v9    # "keyFrameseFnzOrg":[F
    .end local v10    # "keyFrameseFxOrg":[F
    .end local v11    # "keyFrameseFyOrg":[F
    .end local v12    # "keyFrameseFzOrg":[F
    .end local v13    # "keyFramesnxOrg":[F
    .end local v14    # "keyFramesnyOrg":[F
    .end local v15    # "keyFramesnzOrg":[F
    .end local v16    # "keyFramesxOrg":[F
    .end local v17    # "keyFramesyOrg":[F
    .end local v18    # "keyFrameszOrg":[F
    .end local v19    # "objobjMesh":Lcom/threed/jpct/Mesh;
    .end local v20    # "objobjMeshnxOrg":[F
    .end local v21    # "objobjMeshnyOrg":[F
    .end local v22    # "objobjMeshnzOrg":[F
    .end local v23    # "objobjMeshxOrg":[F
    .end local v24    # "objobjMeshyOrg":[F
    .end local v25    # "objobjMeshzOrg":[F
    :cond_2
    move/from16 v0, p4

    if-ge v2, v0, :cond_0

    .line 393
    move/from16 v2, p4

    goto/16 :goto_0

    .line 399
    :cond_3
    move/from16 v0, v26

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    .line 400
    move/from16 v26, p4

    goto/16 :goto_1

    .line 405
    :cond_4
    move/from16 v0, p5

    if-lt v2, v0, :cond_6

    .line 406
    move/from16 v2, p4

    .line 412
    :cond_5
    :goto_3
    move/from16 v0, v26

    move/from16 v1, p5

    if-lt v0, v1, :cond_7

    .line 413
    move/from16 v26, p4

    goto/16 :goto_1

    .line 408
    :cond_6
    move/from16 v0, p4

    if-ge v2, v0, :cond_5

    .line 409
    add-int/lit8 v2, p5, -0x1

    goto :goto_3

    .line 415
    :cond_7
    move/from16 v0, v26

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    .line 416
    add-int/lit8 v26, p5, -0x1

    goto/16 :goto_1

    .line 450
    .restart local v3    # "end":I
    .restart local v5    # "i":I
    .restart local v6    # "keyFrames":[Lcom/threed/jpct/Mesh;
    .restart local v7    # "keyFrameseFnxOrg":[F
    .restart local v8    # "keyFrameseFnyOrg":[F
    .restart local v9    # "keyFrameseFnzOrg":[F
    .restart local v10    # "keyFrameseFxOrg":[F
    .restart local v11    # "keyFrameseFyOrg":[F
    .restart local v12    # "keyFrameseFzOrg":[F
    .restart local v13    # "keyFramesnxOrg":[F
    .restart local v14    # "keyFramesnyOrg":[F
    .restart local v15    # "keyFramesnzOrg":[F
    .restart local v16    # "keyFramesxOrg":[F
    .restart local v17    # "keyFramesyOrg":[F
    .restart local v18    # "keyFrameszOrg":[F
    .restart local v19    # "objobjMesh":Lcom/threed/jpct/Mesh;
    .restart local v20    # "objobjMeshnxOrg":[F
    .restart local v21    # "objobjMeshnyOrg":[F
    .restart local v22    # "objobjMeshnzOrg":[F
    .restart local v23    # "objobjMeshxOrg":[F
    .restart local v24    # "objobjMeshyOrg":[F
    .restart local v25    # "objobjMeshzOrg":[F
    :cond_8
    aget v28, v16, v5

    mul-float v28, v28, v4

    aget v29, v10, v5

    mul-float v29, v29, v27

    add-float v28, v28, v29

    aput v28, v23, v5

    .line 451
    aget v28, v17, v5

    mul-float v28, v28, v4

    aget v29, v11, v5

    mul-float v29, v29, v27

    add-float v28, v28, v29

    aput v28, v24, v5

    .line 452
    aget v28, v18, v5

    mul-float v28, v28, v4

    aget v29, v12, v5

    mul-float v29, v29, v27

    add-float v28, v28, v29

    aput v28, v25, v5

    .line 454
    aget v28, v13, v5

    mul-float v28, v28, v4

    aget v29, v7, v5

    mul-float v29, v29, v27

    add-float v28, v28, v29

    aput v28, v20, v5

    .line 455
    aget v28, v14, v5

    mul-float v28, v28, v4

    aget v29, v8, v5

    mul-float v29, v29, v27

    add-float v28, v28, v29

    aput v28, v21, v5

    .line 456
    aget v28, v15, v5

    mul-float v28, v28, v4

    aget v29, v9, v5

    mul-float v29, v29, v27

    add-float v28, v28, v29

    aput v28, v22, v5

    .line 449
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method interpolateNone(Lcom/threed/jpct/Object3D;III)V
    .locals 19
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "frame"    # I
    .param p3, "startFrame"    # I
    .param p4, "endFrame"    # I

    .prologue
    .line 462
    move/from16 v16, p2

    .line 463
    .local v16, "sF":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Animation;->wrapMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 465
    move/from16 v0, v16

    move/from16 v1, p4

    if-lt v0, v1, :cond_2

    .line 466
    add-int/lit8 v16, p4, -0x1

    .line 483
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v2, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 485
    .local v2, "end":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 486
    .local v13, "objobjMeshxOrg":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 487
    .local v14, "objobjMeshyOrg":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 489
    .local v15, "objobjMeshzOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 490
    .local v7, "keyFramesxOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 491
    .local v8, "keyFramesyOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 493
    .local v9, "keyFrameszOrg":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 494
    .local v10, "objobjMeshnxOrg":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 495
    .local v11, "objobjMeshnyOrg":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 497
    .local v12, "objobjMeshnzOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 498
    .local v4, "keyFramesnxOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 499
    .local v5, "keyFramesnyOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 501
    .local v6, "keyFramesnzOrg":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v2, :cond_5

    .line 511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Animation;->lastFrame:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 512
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->modified:Z

    .line 513
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/Animation;->lastFrame:I

    .line 515
    :cond_1
    return-void

    .line 468
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "keyFramesnxOrg":[F
    .end local v5    # "keyFramesnyOrg":[F
    .end local v6    # "keyFramesnzOrg":[F
    .end local v7    # "keyFramesxOrg":[F
    .end local v8    # "keyFramesyOrg":[F
    .end local v9    # "keyFrameszOrg":[F
    .end local v10    # "objobjMeshnxOrg":[F
    .end local v11    # "objobjMeshnyOrg":[F
    .end local v12    # "objobjMeshnzOrg":[F
    .end local v13    # "objobjMeshxOrg":[F
    .end local v14    # "objobjMeshyOrg":[F
    .end local v15    # "objobjMeshzOrg":[F
    :cond_2
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 469
    move/from16 v16, p3

    goto/16 :goto_0

    .line 474
    :cond_3
    move/from16 v0, v16

    move/from16 v1, p4

    if-lt v0, v1, :cond_4

    .line 475
    move/from16 v16, p3

    goto/16 :goto_0

    .line 477
    :cond_4
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 478
    add-int/lit8 v16, p4, -0x1

    goto/16 :goto_0

    .line 502
    .restart local v2    # "end":I
    .restart local v3    # "i":I
    .restart local v4    # "keyFramesnxOrg":[F
    .restart local v5    # "keyFramesnyOrg":[F
    .restart local v6    # "keyFramesnzOrg":[F
    .restart local v7    # "keyFramesxOrg":[F
    .restart local v8    # "keyFramesyOrg":[F
    .restart local v9    # "keyFrameszOrg":[F
    .restart local v10    # "objobjMeshnxOrg":[F
    .restart local v11    # "objobjMeshnyOrg":[F
    .restart local v12    # "objobjMeshnzOrg":[F
    .restart local v13    # "objobjMeshxOrg":[F
    .restart local v14    # "objobjMeshyOrg":[F
    .restart local v15    # "objobjMeshzOrg":[F
    :cond_5
    aget v17, v7, v3

    aput v17, v13, v3

    .line 503
    aget v17, v8, v3

    aput v17, v14, v3

    .line 504
    aget v17, v9, v3

    aput v17, v15, v3

    .line 506
    aget v17, v4, v3

    aput v17, v10, v3

    .line 507
    aget v17, v5, v3

    aput v17, v11, v3

    .line 508
    aget v17, v6, v3

    aput v17, v12, v3

    .line 501
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public remove(I)V
    .locals 4
    .param p1, "seq"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/threed/jpct/Animation;->getSequenceBorders(I)[I

    move-result-object v1

    .line 130
    .local v1, "poss":[I
    const/4 v2, 0x0

    aget v0, v1, v2

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x1

    aget v2, v1, v2

    if-lt v0, v2, :cond_0

    .line 133
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V
    .locals 7
    .param p1, "rot"    # Lcom/threed/jpct/Matrix;
    .param p2, "xRot"    # F
    .param p3, "yRot"    # F
    .param p4, "zRot"    # F
    .param p5, "scale"    # F

    .prologue
    .line 295
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    if-lt v6, v0, :cond_0

    .line 300
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v0, v0, v6

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v0, v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Mesh;->rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V

    .line 295
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public setCaching(Z)V
    .locals 0
    .param p1, "usesCache"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/threed/jpct/Animation;->cacheIndices:Z

    .line 106
    return-void
.end method

.method public setClampingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 234
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 235
    const-string v0, "Clamping-mode not supported!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iput p1, p0, Lcom/threed/jpct/Animation;->wrapMode:I

    goto :goto_0
.end method

.method public setInterpolationMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/threed/jpct/Animation;->mode:I

    .line 292
    return-void
.end method

.method public strip()V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    if-lt v0, v1, :cond_0

    .line 118
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/threed/jpct/Mesh;->strip()V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V
    .locals 2
    .param p1, "translationMatrix"    # Lcom/threed/jpct/Matrix;
    .param p2, "originMatrix"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    if-lt v0, v1, :cond_0

    .line 308
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/threed/jpct/Mesh;->translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V

    .line 303
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method validate(Lcom/threed/jpct/Object3D;)V
    .locals 6
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    const/4 v5, 0x1

    .line 518
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v2

    .line 519
    .local v2, "objMesh":Lcom/threed/jpct/Mesh;
    if-nez v2, :cond_1

    .line 529
    :cond_0
    return-void

    .line 522
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/threed/jpct/Animation;->aktFrames:I

    if-ge v0, v3, :cond_0

    .line 523
    iget-object v3, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v1, v3, v0

    .line 524
    .local v1, "mesh":Lcom/threed/jpct/Mesh;
    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_2

    .line 525
    const-string v3, "The animation shares a mesh with the animated object...fixing this...!"

    invoke-static {v3, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 526
    iget-object v3, p0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    invoke-virtual {v1, v5}, Lcom/threed/jpct/Mesh;->cloneMesh(Z)Lcom/threed/jpct/Mesh;

    move-result-object v4

    aput-object v4, v3, v0

    .line 522
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
