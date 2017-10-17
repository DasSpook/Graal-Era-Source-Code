.class final Lcom/threed/jpct/OcTreeNode;
.super Ljava/lang/Object;
.source "OcTreeNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static nodeID:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field childCnt:I

.field children:[Lcom/threed/jpct/OcTreeNode;

.field id:I

.field pList:[Lcom/threed/jpct/SimpleVector;

.field parent:Lcom/threed/jpct/OcTreeNode;

.field pointCnt:I

.field pointList:[I

.field polyCnt:I

.field polyList:[I

.field xHigh:F

.field xLow:F

.field yHigh:F

.field yLow:F

.field zHigh:F

.field zLow:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/OcTreeNode;->nodeID:I

    .line 10
    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v4, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    .line 24
    const/4 v1, -0x1

    iput v1, p0, Lcom/threed/jpct/OcTreeNode;->id:I

    .line 26
    iput v3, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    .line 28
    iput v3, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    .line 30
    iput-object v4, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    .line 32
    iput-object v4, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    .line 37
    iput v3, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    .line 38
    iput-object v4, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    .line 39
    new-array v1, v6, [Lcom/threed/jpct/SimpleVector;

    iput-object v1, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 43
    iput-object v4, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    .line 44
    sget v1, Lcom/threed/jpct/OcTreeNode;->nodeID:I

    iput v1, p0, Lcom/threed/jpct/OcTreeNode;->id:I

    .line 45
    sget v1, Lcom/threed/jpct/OcTreeNode;->nodeID:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/threed/jpct/OcTreeNode;->nodeID:I

    .line 46
    iput v3, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    .line 47
    iput v3, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    .line 48
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    invoke-static {v5, v5, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notInList([III)Z
    .locals 2
    .param p1, "list"    # [I
    .param p2, "size"    # I
    .param p3, "element"    # I

    .prologue
    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 190
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 186
    :cond_0
    aget v1, p1, v0

    if-ne p3, v1, :cond_1

    .line 187
    const/4 v1, 0x0

    goto :goto_1

    .line 185
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static resetNodeID()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/OcTreeNode;->nodeID:I

    .line 195
    return-void
.end method


# virtual methods
.method addChild(Lcom/threed/jpct/OcTreeNode;)V
    .locals 2
    .param p1, "node"    # Lcom/threed/jpct/OcTreeNode;

    .prologue
    const/16 v1, 0x8

    .line 202
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    if-nez v0, :cond_0

    .line 203
    new-array v0, v1, [Lcom/threed/jpct/OcTreeNode;

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    .line 205
    :cond_0
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    if-ge v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    aput-object p1, v0, v1

    .line 207
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    .line 208
    invoke-virtual {p1, p0}, Lcom/threed/jpct/OcTreeNode;->setParent(Lcom/threed/jpct/OcTreeNode;)V

    .line 210
    :cond_1
    return-void
.end method

.method addTriangle(IIIII)V
    .locals 2
    .param p1, "max"    # I
    .param p2, "number"    # I
    .param p3, "p0"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    if-nez v0, :cond_0

    .line 156
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    .line 157
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    aput p2, v0, v1

    .line 161
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    invoke-direct {p0, v0, v1, p3}, Lcom/threed/jpct/OcTreeNode;->notInList([III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    aput p3, v0, v1

    .line 163
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    invoke-direct {p0, v0, v1, p4}, Lcom/threed/jpct/OcTreeNode;->notInList([III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    aput p4, v0, v1

    .line 167
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    invoke-direct {p0, v0, v1, p5}, Lcom/threed/jpct/OcTreeNode;->notInList([III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    aput p5, v0, v1

    .line 171
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    .line 173
    :cond_3
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    .line 174
    return-void
.end method

.method completeFit(FFFFFFFFF)Z
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F
    .param p9, "z3"    # F

    .prologue
    .line 261
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpl-float v0, p7, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float v0, p7, v0

    if-gtz v0, :cond_0

    .line 262
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float v0, p5, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float v0, p5, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float v0, p8, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float v0, p8, v0

    if-gtz v0, :cond_0

    .line 263
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float v0, p6, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float v0, p9, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float v0, p9, v0

    if-gtz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method extendDimensions(FFFFFFFFF)V
    .locals 11
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F
    .param p9, "z3"    # F

    .prologue
    .line 289
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 290
    iput p1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    .line 292
    :cond_0
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpg-float v1, p4, v1

    if-gez v1, :cond_1

    .line 293
    iput p4, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    .line 295
    :cond_1
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpg-float v1, p7, v1

    if-gez v1, :cond_2

    .line 296
    move/from16 v0, p7

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    .line 299
    :cond_2
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    .line 300
    iput p2, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    .line 302
    :cond_3
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpg-float v1, p5, v1

    if-gez v1, :cond_4

    .line 303
    move/from16 v0, p5

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    .line 305
    :cond_4
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpg-float v1, p8, v1

    if-gez v1, :cond_5

    .line 306
    move/from16 v0, p8

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    .line 309
    :cond_5
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_6

    .line 310
    iput p3, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    .line 312
    :cond_6
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpg-float v1, p6, v1

    if-gez v1, :cond_7

    .line 313
    move/from16 v0, p6

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    .line 315
    :cond_7
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpg-float v1, p9, v1

    if-gez v1, :cond_8

    .line 316
    move/from16 v0, p9

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    .line 319
    :cond_8
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_9

    .line 320
    iput p1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    .line 322
    :cond_9
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpl-float v1, p4, v1

    if-lez v1, :cond_a

    .line 323
    iput p4, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    .line 325
    :cond_a
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpl-float v1, p7, v1

    if-lez v1, :cond_b

    .line 326
    move/from16 v0, p7

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    .line 329
    :cond_b
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_c

    .line 330
    iput p2, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    .line 332
    :cond_c
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpl-float v1, p5, v1

    if-lez v1, :cond_d

    .line 333
    move/from16 v0, p5

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    .line 335
    :cond_d
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpl-float v1, p8, v1

    if-lez v1, :cond_e

    .line 336
    move/from16 v0, p8

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    .line 339
    :cond_e
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_f

    .line 340
    iput p3, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    .line 342
    :cond_f
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpl-float v1, p6, v1

    if-lez v1, :cond_10

    .line 343
    move/from16 v0, p6

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    .line 345
    :cond_10
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpl-float v1, p9, v1

    if-lez v1, :cond_11

    .line 346
    move/from16 v0, p9

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    .line 349
    :cond_11
    iget v2, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    iget v3, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    iget v4, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    iget v5, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    iget v6, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    iget v7, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    .line 351
    iget-object v1, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    if-eqz v1, :cond_12

    .line 352
    iget-object v1, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/threed/jpct/OcTreeNode;->extendDimensions(FFFFFFFFF)V

    .line 355
    :cond_12
    return-void
.end method

.method getChildCount()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    return v0
.end method

.method getChildren()[Lcom/threed/jpct/OcTreeNode;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    return-object v0
.end method

.method getID()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->id:I

    return v0
.end method

.method getParent()Lcom/threed/jpct/OcTreeNode;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    return-object v0
.end method

.method getPointCount()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    return v0
.end method

.method getPoints()[I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    return-object v0
.end method

.method getPolyCount()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    return v0
.end method

.method getPolygons()[I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    return-object v0
.end method

.method isLeaf()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible(Lcom/threed/jpct/Matrix;FF)I
    .locals 38
    .param p1, "transform"    # Lcom/threed/jpct/Matrix;
    .param p2, "divX"    # F
    .param p3, "divY"    # F

    .prologue
    .line 56
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 58
    .local v8, "mat":[[F
    const/16 v36, 0x0

    aget-object v36, v8, v36

    const/16 v37, 0x0

    aget v23, v36, v37

    .line 59
    .local v23, "s00":F
    const/16 v36, 0x1

    aget-object v36, v8, v36

    const/16 v37, 0x0

    aget v26, v36, v37

    .line 60
    .local v26, "s10":F
    const/16 v36, 0x1

    aget-object v36, v8, v36

    const/16 v37, 0x1

    aget v27, v36, v37

    .line 61
    .local v27, "s11":F
    const/16 v36, 0x2

    aget-object v36, v8, v36

    const/16 v37, 0x1

    aget v30, v36, v37

    .line 62
    .local v30, "s21":F
    const/16 v36, 0x2

    aget-object v36, v8, v36

    const/16 v37, 0x2

    aget v31, v36, v37

    .line 63
    .local v31, "s22":F
    const/16 v36, 0x1

    aget-object v36, v8, v36

    const/16 v37, 0x2

    aget v28, v36, v37

    .line 64
    .local v28, "s12":F
    const/16 v36, 0x2

    aget-object v36, v8, v36

    const/16 v37, 0x0

    aget v29, v36, v37

    .line 65
    .local v29, "s20":F
    const/16 v36, 0x0

    aget-object v36, v8, v36

    const/16 v37, 0x2

    aget v25, v36, v37

    .line 66
    .local v25, "s02":F
    const/16 v36, 0x0

    aget-object v36, v8, v36

    const/16 v37, 0x1

    aget v24, v36, v37

    .line 68
    .local v24, "s01":F
    const/16 v36, 0x3

    aget-object v36, v8, v36

    const/16 v37, 0x0

    aget v2, v36, v37

    .line 69
    .local v2, "bx":F
    const/16 v36, 0x3

    aget-object v36, v8, v36

    const/16 v37, 0x1

    aget v3, v36, v37

    .line 70
    .local v3, "by":F
    const/16 v36, 0x3

    aget-object v36, v8, v36

    const/16 v37, 0x2

    aget v4, v36, v37

    .line 72
    .local v4, "bz":F
    const/4 v13, 0x0

    .line 73
    .local v13, "obbZClipped":I
    const/4 v14, 0x0

    .line 74
    .local v14, "obbZFarClipped":I
    const/4 v9, 0x0

    .line 75
    .local v9, "obbXnClipped":I
    const/4 v10, 0x0

    .line 76
    .local v10, "obbXpClipped":I
    const/4 v11, 0x0

    .line 77
    .local v11, "obbYnClipped":I
    const/4 v12, 0x0

    .line 79
    .local v12, "obbYpClipped":I
    move/from16 v5, p2

    .line 80
    .local v5, "divXD":F
    move/from16 v6, p3

    .line 82
    .local v6, "divYD":F
    const/16 v16, 0x0

    .line 83
    .local v16, "oneMissed":Z
    const/4 v15, 0x0

    .line 85
    .local v15, "oneFound":Z
    const/16 v17, 0x0

    .local v17, "p":I
    :goto_0
    const/16 v36, 0x8

    move/from16 v0, v17

    move/from16 v1, v36

    if-lt v0, v1, :cond_0

    .line 143
    const/16 v36, 0x8

    move/from16 v0, v36

    if-eq v12, v0, :cond_9

    const/16 v36, 0x8

    move/from16 v0, v36

    if-eq v10, v0, :cond_9

    const/16 v36, 0x8

    move/from16 v0, v36

    if-eq v11, v0, :cond_9

    const/16 v36, 0x8

    move/from16 v0, v36

    if-eq v9, v0, :cond_9

    const/16 v36, 0x8

    move/from16 v0, v36

    if-eq v13, v0, :cond_9

    const/16 v36, 0x8

    move/from16 v0, v36

    if-eq v14, v0, :cond_9

    const/4 v7, 0x0

    .line 145
    .local v7, "invisible":Z
    :goto_1
    if-nez v7, :cond_b

    .line 146
    if-nez v12, :cond_a

    if-nez v10, :cond_a

    if-nez v11, :cond_a

    if-nez v9, :cond_a

    if-nez v13, :cond_a

    if-nez v14, :cond_a

    .line 147
    const/16 v36, 0x3e7

    .line 151
    .end local v7    # "invisible":Z
    :goto_2
    return v36

    .line 87
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    move-object/from16 v36, v0

    aget-object v22, v36, v17

    .line 89
    .local v22, "ps":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v32, v0

    .line 90
    .local v32, "x1":F
    move-object/from16 v0, v22

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v33, v0

    .line 91
    .local v33, "y1":F
    move-object/from16 v0, v22

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v34, v0

    .line 93
    .local v34, "z1":F
    mul-float v36, v32, v23

    mul-float v37, v33, v26

    add-float v36, v36, v37

    mul-float v37, v34, v29

    add-float v36, v36, v37

    add-float v18, v36, v2

    .line 94
    .local v18, "p1x":F
    mul-float v36, v32, v25

    mul-float v37, v33, v28

    add-float v36, v36, v37

    mul-float v37, v34, v31

    add-float v36, v36, v37

    add-float v20, v36, v4

    .line 96
    .local v20, "p1z":F
    const/16 v35, 0x0

    .line 98
    .local v35, "zMissed":Z
    sget v36, Lcom/threed/jpct/Config;->nearPlane:F

    cmpg-float v36, v20, v36

    if-gez v36, :cond_2

    .line 99
    add-int/lit8 v13, v13, 0x1

    .line 100
    const/4 v15, 0x1

    .line 110
    :goto_3
    mul-float v21, v20, v5

    .line 111
    .local v21, "p1zh":F
    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v36, v0

    cmpg-float v36, v18, v36

    if-gez v36, :cond_4

    .line 112
    add-int/lit8 v9, v9, 0x1

    .line 113
    const/4 v15, 0x1

    .line 137
    :cond_1
    :goto_4
    if-eqz v15, :cond_8

    if-eqz v16, :cond_8

    .line 138
    const/16 v36, 0x1

    goto :goto_2

    .line 102
    .end local v21    # "p1zh":F
    :cond_2
    sget v36, Lcom/threed/jpct/Config;->farPlane:F

    cmpl-float v36, v20, v36

    if-lez v36, :cond_3

    .line 103
    add-int/lit8 v14, v14, 0x1

    .line 104
    const/4 v15, 0x1

    goto :goto_3

    .line 106
    :cond_3
    const/16 v35, 0x1

    goto :goto_3

    .line 115
    .restart local v21    # "p1zh":F
    :cond_4
    cmpl-float v36, v18, v21

    if-lez v36, :cond_5

    .line 116
    add-int/lit8 v10, v10, 0x1

    .line 117
    const/4 v15, 0x1

    goto :goto_4

    .line 119
    :cond_5
    mul-float v21, v20, v6

    .line 120
    mul-float v36, v32, v24

    mul-float v37, v33, v27

    add-float v36, v36, v37

    mul-float v37, v34, v30

    add-float v36, v36, v37

    add-float v19, v36, v3

    .line 121
    .local v19, "p1y":F
    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v36, v0

    cmpg-float v36, v19, v36

    if-gez v36, :cond_6

    .line 122
    add-int/lit8 v11, v11, 0x1

    .line 123
    const/4 v15, 0x1

    goto :goto_4

    .line 125
    :cond_6
    cmpl-float v36, v19, v21

    if-lez v36, :cond_7

    .line 126
    add-int/lit8 v12, v12, 0x1

    .line 127
    const/4 v15, 0x1

    goto :goto_4

    .line 129
    :cond_7
    if-eqz v35, :cond_1

    .line 130
    const/16 v16, 0x1

    goto :goto_4

    .line 85
    .end local v19    # "p1y":F
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 143
    .end local v18    # "p1x":F
    .end local v20    # "p1z":F
    .end local v21    # "p1zh":F
    .end local v22    # "ps":Lcom/threed/jpct/SimpleVector;
    .end local v32    # "x1":F
    .end local v33    # "y1":F
    .end local v34    # "z1":F
    .end local v35    # "zMissed":Z
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 149
    .restart local v7    # "invisible":Z
    :cond_a
    const/16 v36, 0x1

    goto/16 :goto_2

    .line 151
    :cond_b
    const/16 v36, 0x0

    goto/16 :goto_2
.end method

.method packPoints()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    iget v2, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    mul-int/lit8 v2, v2, 0x3

    if-eq v1, v2, :cond_0

    .line 178
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    new-array v0, v1, [I

    .line 179
    .local v0, "tmpPoints":[I
    iget-object v1, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget v2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    .line 182
    .end local v0    # "tmpPoints":[I
    :cond_0
    return-void
.end method

.method partialFit(FFFFFFFFF)Z
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F
    .param p9, "z3"    # F

    .prologue
    const/4 v0, 0x1

    .line 272
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float v1, p5, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float v1, p5, v1

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float v1, p6, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float v1, p6, v1

    if-lez v1, :cond_0

    .line 278
    :cond_2
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpl-float v1, p7, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float v1, p7, v1

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float v1, p8, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float v1, p8, v1

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float v1, p9, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float v1, p9, v1

    if-lez v1, :cond_0

    .line 281
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeChild(Lcom/threed/jpct/OcTreeNode;)V
    .locals 5
    .param p1, "node"    # Lcom/threed/jpct/OcTreeNode;

    .prologue
    .line 213
    const/4 v1, -0x1

    .line 214
    .local v1, "nodePos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    if-lt v0, v2, :cond_1

    .line 220
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 221
    move v0, v1

    :goto_2
    iget v2, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_3

    .line 224
    iget v2, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    .line 226
    :cond_0
    return-void

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    move v1, v0

    .line 217
    goto :goto_1

    .line 214
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    iget-object v3, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method setDimensions(FFFFFF)V
    .locals 6
    .param p1, "xLow"    # F
    .param p2, "yLow"    # F
    .param p3, "zLow"    # F
    .param p4, "xHigh"    # F
    .param p5, "yHigh"    # F
    .param p6, "zHigh"    # F

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 358
    iput p1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    .line 359
    iput p2, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    .line 360
    iput p3, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    .line 361
    iput p4, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    .line 362
    iput p5, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    .line 363
    iput p6, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    .line 365
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v1

    iput p1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 366
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v1

    iput p2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 367
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v1

    iput p6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 369
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iput p1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 370
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iput p2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 371
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iput p3, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 373
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput p4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 374
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput p2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 375
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput p3, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 377
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput p4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 378
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput p2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 379
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput p6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 381
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v2

    iput p1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 382
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v2

    iput p5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 383
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v2

    iput p6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 385
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v3

    iput p1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 386
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v3

    iput p5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 387
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v3

    iput p3, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 389
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v4

    iput p4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 390
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v4

    iput p5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 391
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v4

    iput p3, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 393
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v5

    iput p4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 394
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v5

    iput p5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 395
    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v0, v0, v5

    iput p6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 396
    return-void
.end method

.method setParent(Lcom/threed/jpct/OcTreeNode;)V
    .locals 0
    .param p1, "parent"    # Lcom/threed/jpct/OcTreeNode;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    .line 230
    return-void
.end method

.method sphereIntersectsNode(FFFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "rad"    # F

    .prologue
    .line 285
    add-float v0, p1, p4

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    sub-float v0, p1, p4

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    add-float v0, p2, p4

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    sub-float v0, p2, p4

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    add-float v0, p3, p4

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    sub-float v0, p3, p4

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
