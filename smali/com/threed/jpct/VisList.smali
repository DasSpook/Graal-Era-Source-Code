.class final Lcom/threed/jpct/VisList;
.super Ljava/lang/Object;
.source "VisList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field anzpoly:I

.field private bucket:[I

.field lastCycle:J

.field private maxStages:I

.field private msgCnt:I

.field private pivotindex:I

.field size:I

.field stageCnt:[I

.field private toFill:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threed/jpct/Object3D;",
            ">;"
        }
    .end annotation
.end field

.field vertexIndex:[I

.field vnum:[I

.field vorg:[Lcom/threed/jpct/Object3D;

.field zValue:[F


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "maxpoly"    # I

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/threed/jpct/VisList;->lastCycle:J

    .line 37
    iput v2, p0, Lcom/threed/jpct/VisList;->msgCnt:I

    .line 39
    iput v2, p0, Lcom/threed/jpct/VisList;->maxStages:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    .line 43
    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/VisList;->bucket:[I

    .line 46
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    iput-object v0, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    .line 47
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/VisList;->vnum:[I

    .line 48
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    .line 49
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/VisList;->zValue:[F

    .line 50
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    .line 52
    iput p1, p0, Lcom/threed/jpct/VisList;->size:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    .line 54
    return-void
.end method

.method private findpivot(II)V
    .locals 4
    .param p1, "i2"    # I
    .param p2, "j2"    # I

    .prologue
    const/4 v3, -0x1

    .line 196
    iput v3, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    .line 197
    move v0, p1

    .line 198
    .local v0, "k":I
    iget-object v2, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v1, v2, p1

    .line 199
    .local v1, "zv":F
    :goto_0
    iget v2, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    if-ne v2, v3, :cond_0

    if-le v0, p2, :cond_1

    .line 209
    :cond_0
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 201
    iput v0, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    goto :goto_0

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v2, v2, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    .line 204
    iput p1, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    .line 206
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private flip(II)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "r"    # I

    .prologue
    .line 342
    iget-object v3, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v0, v3, p2

    .line 343
    .local v0, "fake1":F
    iget-object v3, p0, Lcom/threed/jpct/VisList;->zValue:[F

    iget-object v4, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v4, v4, p1

    aput v4, v3, p2

    .line 344
    iget-object v3, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aput v0, v3, p1

    .line 346
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v2, v3, p2

    .line 347
    .local v2, "fakeo":Lcom/threed/jpct/Object3D;
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    iget-object v4, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v4, v4, p1

    aput-object v4, v3, p2

    .line 348
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aput-object v2, v3, p1

    .line 350
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v1, v3, p2

    .line 351
    .local v1, "faken":I
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vnum:[I

    iget-object v4, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v4, v4, p1

    aput v4, v3, p2

    .line 352
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aput v1, v3, p1

    .line 354
    iget-object v3, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v1, v3, p2

    .line 355
    iget-object v3, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    iget-object v4, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v4, v4, p1

    aput v4, v3, p2

    .line 356
    iget-object v3, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aput v1, v3, p1

    .line 358
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v1, v3, p2

    .line 359
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    iget-object v4, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v4, v4, p1

    aput v4, v3, p2

    .line 360
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aput v1, v3, p1

    .line 361
    return-void
.end method

.method private fsort(II)V
    .locals 25
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 212
    move/from16 v7, p1

    .line 213
    .local v7, "k":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v2, v23, v24

    .line 214
    .local v2, "anmin":F
    const/4 v11, 0x0

    .line 215
    .local v11, "nmax":I
    move/from16 v10, p2

    .line 216
    .local v10, "n":I
    div-int/lit8 v9, v10, 0x14

    .line 217
    .local v9, "m":I
    const/16 v23, 0x1e

    move/from16 v0, v23

    if-ge v9, v0, :cond_0

    .line 218
    const/16 v9, 0x1e

    .line 221
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->bucket:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v9, v0, :cond_1

    .line 222
    new-array v0, v9, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/VisList;->bucket:[I

    .line 224
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/VisList;->bucket:[I

    .line 226
    .local v8, "l":[I
    array-length v5, v8

    .line 227
    .local v5, "he":I
    const/4 v4, 0x0

    .local v4, "h":I
    :goto_0
    if-lt v4, v5, :cond_3

    .line 231
    const/16 p1, 0x1

    :goto_1
    move/from16 v0, p1

    if-lt v0, v10, :cond_4

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    aget v23, v23, v11

    cmpl-float v23, v2, v23

    if-nez v23, :cond_7

    .line 306
    :cond_2
    return-void

    .line 228
    :cond_3
    const/16 v23, 0x0

    aput v23, v8, v4

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    aget v23, v23, p1

    cmpg-float v23, v23, v2

    if-gez v23, :cond_5

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    aget v2, v23, p1

    .line 235
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    aget v23, v23, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v24, v0

    aget v24, v24, v11

    cmpl-float v23, v23, v24

    if-lez v23, :cond_6

    .line 236
    move/from16 v11, p1

    .line 231
    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 243
    :cond_7
    int-to-float v0, v9

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v24, v0

    aget v24, v24, v11

    sub-float v24, v24, v2

    div-float v3, v23, v24

    .line 245
    .local v3, "c1":F
    const/16 p1, 0x0

    :goto_2
    move/from16 v0, p1

    if-lt v0, v10, :cond_9

    .line 250
    const/4 v7, 0x1

    :goto_3
    if-lt v7, v9, :cond_a

    .line 254
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v11, v1}, Lcom/threed/jpct/VisList;->flip(II)V

    .line 256
    const/4 v12, 0x0

    .line 263
    .local v12, "nmove":I
    const/16 p2, 0x0

    .line 264
    add-int/lit8 v7, v9, -0x1

    .line 266
    :cond_8
    add-int/lit8 v23, v10, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_2

    .line 267
    :goto_4
    aget v23, v8, v7

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    aget v21, v23, p2

    .line 273
    .local v21, "zf":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->vnum:[I

    move-object/from16 v23, v0

    aget v17, v23, p2

    .line 274
    .local v17, "vnumf":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->stageCnt:[I

    move-object/from16 v23, v0

    aget v13, v23, p2

    .line 275
    .local v13, "scf":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    move-object/from16 v23, v0

    aget v15, v23, p2

    .line 276
    .local v15, "vif":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    move-object/from16 v23, v0

    aget-object v19, v23, p2

    .line 278
    .local v19, "vorgf":Lcom/threed/jpct/Object3D;
    :goto_5
    aget v23, v8, v7

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 279
    sub-float v23, v21, v2

    mul-float v23, v23, v3

    move/from16 v0, v23

    float-to-int v7, v0

    .line 281
    aget v23, v8, v7

    add-int/lit8 v6, v23, -0x1

    .line 282
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    aget v22, v23, v6

    .line 283
    .local v22, "zh":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    aput v21, v23, v6

    .line 284
    move/from16 v21, v22

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->vnum:[I

    move-object/from16 v23, v0

    aget v18, v23, v6

    .line 287
    .local v18, "vnumh":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->vnum:[I

    move-object/from16 v23, v0

    aput v17, v23, v6

    .line 288
    move/from16 v17, v18

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->stageCnt:[I

    move-object/from16 v23, v0

    aget v14, v23, v6

    .line 291
    .local v14, "sch":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->stageCnt:[I

    move-object/from16 v23, v0

    aput v13, v23, v6

    .line 292
    move v13, v14

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    move-object/from16 v23, v0

    aget v16, v23, v6

    .line 295
    .local v16, "vih":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    move-object/from16 v23, v0

    aput v15, v23, v6

    .line 296
    move/from16 v15, v16

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    move-object/from16 v23, v0

    aget-object v20, v23, v6

    .line 299
    .local v20, "vorgh":Lcom/threed/jpct/Object3D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    move-object/from16 v23, v0

    aput-object v19, v23, v6

    .line 300
    move-object/from16 v19, v20

    .line 302
    aget v23, v8, v7

    add-int/lit8 v23, v23, -0x1

    aput v23, v8, v7

    .line 303
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 246
    .end local v6    # "index":I
    .end local v12    # "nmove":I
    .end local v13    # "scf":I
    .end local v14    # "sch":I
    .end local v15    # "vif":I
    .end local v16    # "vih":I
    .end local v17    # "vnumf":I
    .end local v18    # "vnumh":I
    .end local v19    # "vorgf":Lcom/threed/jpct/Object3D;
    .end local v20    # "vorgh":Lcom/threed/jpct/Object3D;
    .end local v21    # "zf":F
    .end local v22    # "zh":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    aget v23, v23, p1

    sub-float v23, v23, v2

    mul-float v23, v23, v3

    move/from16 v0, v23

    float-to-int v7, v0

    .line 247
    aget v23, v8, v7

    add-int/lit8 v23, v23, 0x1

    aput v23, v8, v7

    .line 245
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 251
    :cond_a
    aget v23, v8, v7

    add-int/lit8 v24, v7, -0x1

    aget v24, v8, v24

    add-int v23, v23, v24

    aput v23, v8, v7

    .line 250
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 268
    .restart local v12    # "nmove":I
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/VisList;->zValue:[F

    move-object/from16 v23, v0

    aget v23, v23, p2

    sub-float v23, v23, v2

    mul-float v23, v23, v3

    move/from16 v0, v23

    float-to-int v7, v0

    goto/16 :goto_4
.end method

.method private insertionSort(II)V
    .locals 10
    .param p1, "s"    # I
    .param p2, "e"    # I

    .prologue
    .line 311
    add-int/lit8 v0, p2, -0x3

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 339
    return-void

    .line 312
    :cond_0
    iget-object v8, p0, Lcom/threed/jpct/VisList;->zValue:[F

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v9, v9, v0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 314
    iget-object v8, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v7, v8, v0

    .line 315
    .local v7, "zValueHold":F
    iget-object v8, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v6, v8, v0

    .line 316
    .local v6, "vorgHold":Lcom/threed/jpct/Object3D;
    iget-object v8, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v5, v8, v0

    .line 317
    .local v5, "vnumHold":I
    iget-object v8, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v3, v8, v0

    .line 318
    .local v3, "stageCntHold":I
    iget-object v8, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v4, v8, v0

    .line 320
    .local v4, "vertexIndexHold":I
    move v1, v0

    .line 322
    .local v1, "j":I
    :goto_1
    iget-object v8, p0, Lcom/threed/jpct/VisList;->zValue:[F

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    cmpg-float v8, v8, v7

    if-ltz v8, :cond_2

    .line 332
    iget-object v8, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aput v7, v8, v1

    .line 333
    iget-object v8, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aput-object v6, v8, v1

    .line 334
    iget-object v8, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aput v5, v8, v1

    .line 335
    iget-object v8, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aput v3, v8, v1

    .line 336
    iget-object v8, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aput v4, v8, v1

    .line 311
    .end local v1    # "j":I
    .end local v3    # "stageCntHold":I
    .end local v4    # "vertexIndexHold":I
    .end local v5    # "vnumHold":I
    .end local v6    # "vorgHold":Lcom/threed/jpct/Object3D;
    .end local v7    # "zValueHold":F
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 323
    .restart local v1    # "j":I
    .restart local v3    # "stageCntHold":I
    .restart local v4    # "vertexIndexHold":I
    .restart local v5    # "vnumHold":I
    .restart local v6    # "vorgHold":Lcom/threed/jpct/Object3D;
    .restart local v7    # "zValueHold":F
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 324
    .local v2, "jo":I
    iget-object v8, p0, Lcom/threed/jpct/VisList;->zValue:[F

    iget-object v9, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v9, v9, v2

    aput v9, v8, v1

    .line 325
    iget-object v8, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    iget-object v9, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v9, v9, v2

    aput-object v9, v8, v1

    .line 326
    iget-object v8, p0, Lcom/threed/jpct/VisList;->vnum:[I

    iget-object v9, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v9, v9, v2

    aput v9, v8, v1

    .line 327
    iget-object v8, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    iget-object v9, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v9, v9, v2

    aput v9, v8, v1

    .line 328
    iget-object v8, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    iget-object v9, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v9, v9, v2

    aput v9, v8, v1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private partition(IIF)I
    .locals 5
    .param p1, "l"    # I
    .param p2, "r"    # I
    .param p3, "pivot"    # F

    .prologue
    .line 159
    :goto_0
    if-le p1, p2, :cond_0

    .line 191
    return p1

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v3, v3, p1

    cmpg-float v3, v3, p3

    if-gez v3, :cond_1

    .line 161
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v3, v3, p2

    cmpl-float v3, v3, p3

    if-ltz v3, :cond_2

    .line 164
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 166
    :cond_2
    iget-object v3, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v0, v3, p2

    .line 167
    .local v0, "fake1":F
    iget-object v3, p0, Lcom/threed/jpct/VisList;->zValue:[F

    iget-object v4, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v4, v4, p1

    aput v4, v3, p2

    .line 168
    iget-object v3, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aput v0, v3, p1

    .line 170
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v2, v3, p2

    .line 171
    .local v2, "fakeo":Lcom/threed/jpct/Object3D;
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    iget-object v4, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v4, v4, p1

    aput-object v4, v3, p2

    .line 172
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aput-object v2, v3, p1

    .line 174
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v1, v3, p2

    .line 175
    .local v1, "faken":I
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vnum:[I

    iget-object v4, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v4, v4, p1

    aput v4, v3, p2

    .line 176
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aput v1, v3, p1

    .line 178
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v1, v3, p2

    .line 179
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    iget-object v4, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v4, v4, p1

    aput v4, v3, p2

    .line 180
    iget-object v3, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aput v1, v3, p1

    .line 182
    iget-object v3, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v1, v3, p2

    .line 183
    iget-object v3, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    iget-object v4, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v4, v4, p1

    aput v4, v3, p2

    .line 184
    iget-object v3, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aput v1, v3, p1

    .line 186
    add-int/lit8 p1, p1, 0x1

    .line 187
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method private qsort(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/VisList;->findpivot(II)V

    .line 146
    iget v1, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/threed/jpct/VisList;->zValue:[F

    iget v2, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    aget v1, v1, v2

    invoke-direct {p0, p1, p2, v1}, Lcom/threed/jpct/VisList;->partition(IIF)I

    move-result v0

    .line 148
    .local v0, "k":I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v1}, Lcom/threed/jpct/VisList;->qsort(II)V

    .line 149
    invoke-direct {p0, v0, p2}, Lcom/threed/jpct/VisList;->qsort(II)V

    .line 151
    .end local v0    # "k":I
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized addToFill(Lcom/threed/jpct/Object3D;)V
    .locals 1
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method addToList(Lcom/threed/jpct/Object3D;FILcom/threed/jpct/CompiledInstance;)V
    .locals 5
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "mitz"    # F
    .param p3, "pt"    # I
    .param p4, "ci"    # Lcom/threed/jpct/CompiledInstance;

    .prologue
    .line 86
    iget v2, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    iget v3, p0, Lcom/threed/jpct/VisList;->size:I

    if-ge v2, v3, :cond_2

    .line 88
    invoke-virtual {p4}, Lcom/threed/jpct/CompiledInstance;->getPolyIndex()I

    move-result v0

    .line 89
    .local v0, "polyNum":I
    invoke-virtual {p4}, Lcom/threed/jpct/CompiledInstance;->getStageCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 91
    .local v1, "stgCnt":I
    iget v2, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    .line 93
    iget v2, p0, Lcom/threed/jpct/VisList;->maxStages:I

    if-le v1, v2, :cond_0

    .line 94
    iput v1, p0, Lcom/threed/jpct/VisList;->maxStages:I

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    iget v3, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    aput v1, v2, v3

    .line 98
    iget-object v2, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    iget v3, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    aput-object p1, v2, v3

    .line 99
    iget-object v2, p0, Lcom/threed/jpct/VisList;->vnum:[I

    iget v3, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    aput v0, v2, v3

    .line 101
    iget v2, p1, Lcom/threed/jpct/Object3D;->sortOffset:F

    add-float/2addr p2, v2

    .line 103
    iget-boolean v2, p1, Lcom/threed/jpct/Object3D;->isTrans:Z

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/threed/jpct/VisList;->zValue:[F

    iget v3, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    const v4, 0x49742400    # 1000000.0f

    sub-float/2addr v4, p2

    aput v4, v2, v3

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    iget v3, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    aput p3, v2, v3

    .line 116
    .end local v0    # "polyNum":I
    .end local v1    # "stgCnt":I
    :goto_1
    return-void

    .line 106
    .restart local v0    # "polyNum":I
    .restart local v1    # "stgCnt":I
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/VisList;->zValue:[F

    iget v3, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    aput p2, v2, v3

    goto :goto_0

    .line 111
    .end local v0    # "polyNum":I
    .end local v1    # "stgCnt":I
    :cond_2
    iget v2, p0, Lcom/threed/jpct/VisList;->msgCnt:I

    if-nez v2, :cond_3

    .line 112
    const-string v2, "You\'ve exceeded the configured instance limit for the visibility list. Consider adjusting Config.maxPolysVisible!"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 114
    :cond_3
    iget v2, p0, Lcom/threed/jpct/VisList;->msgCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/threed/jpct/VisList;->msgCnt:I

    goto :goto_1
.end method

.method clearList()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/VisList;->maxStages:I

    .line 75
    return-void
.end method

.method deepClear()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/threed/jpct/VisList;->clearList()V

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/VisList;->size:I

    if-lt v0, v1, :cond_0

    .line 82
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method declared-synchronized fillInstances()V
    .locals 6

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 130
    iget-object v5, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/Object3D;

    .line 122
    .local v3, "obj":Lcom/threed/jpct/Object3D;
    iget-boolean v5, v3, Lcom/threed/jpct/Object3D;->modified:Z

    if-eqz v5, :cond_1

    .line 123
    iget-object v5, v3, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 124
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_1
    if-lt v2, v4, :cond_2

    .line 127
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/threed/jpct/Object3D;->modified:Z

    .line 120
    .end local v2    # "ii":I
    .end local v4    # "size":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .restart local v2    # "ii":I
    .restart local v4    # "size":I
    :cond_2
    iget-object v5, v3, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/threed/jpct/CompiledInstance;

    invoke-virtual {v5}, Lcom/threed/jpct/CompiledInstance;->fill()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "ii":I
    .end local v3    # "obj":Lcom/threed/jpct/Object3D;
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/threed/jpct/VisList;->size:I

    return v0
.end method

.method sort(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 134
    sub-int v0, p2, p1

    sget v1, Lcom/threed/jpct/Config;->flashSortThreshold:I

    if-lt v0, v1, :cond_0

    .line 135
    add-int/lit8 p2, p2, 0x1

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/VisList;->fsort(II)V

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/VisList;->insertionSort(II)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/VisList;->qsort(II)V

    goto :goto_0
.end method
