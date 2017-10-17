.class public Lcom/threed/jpct/SimpleVector;
.super Ljava/lang/Object;
.source "SimpleVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DOWN:Lcom/threed/jpct/SimpleVector;

.field public static final ORIGIN:Lcom/threed/jpct/SimpleVector;

.field private static globalTmpMat:Lcom/threed/jpct/Matrix; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private array:[F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v0, Lcom/threed/jpct/SimpleVector;->globalTmpMat:Lcom/threed/jpct/Matrix;

    .line 19
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0, v2, v2, v2}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    sput-object v0, Lcom/threed/jpct/SimpleVector;->ORIGIN:Lcom/threed/jpct/SimpleVector;

    .line 36
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v2}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    sput-object v0, Lcom/threed/jpct/SimpleVector;->DOWN:Lcom/threed/jpct/SimpleVector;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    .line 92
    iput v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 93
    iput v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 94
    iput v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 95
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    .line 71
    double-to-float v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 72
    double-to-float v0, p3

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 73
    double-to-float v0, p5

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 74
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    .line 52
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 53
    iput p2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 54
    iput p3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "s"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    .line 83
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 84
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 85
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 86
    return-void
.end method

.method public constructor <init>([F)V
    .locals 4
    .param p1, "vector"    # [F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    .line 105
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 106
    aget v0, p1, v3

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 107
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 108
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    iput v2, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 111
    iput v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 112
    iput v2, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 113
    const-string v0, "Source-array needs to have a length of 3"

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _calcAngle(Lcom/threed/jpct/SimpleVector;)F
    .locals 6
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 516
    iget v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v5, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v5, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 517
    .local v0, "dot":F
    iget v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 518
    .local v1, "lt":F
    iget v3, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v5, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v5, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 520
    .local v2, "lv":F
    mul-float v3, v1, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v0, v3

    .line 522
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 523
    const/high16 v0, -0x40800000    # -1.0f

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 525
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 526
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private acosFast(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 534
    const v0, -0x40cd473e

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const v1, 0x3f5f66f3

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    const v1, 0x3fc90fdb

    add-float/2addr v0, v1

    return v0
.end method

.method public static create()Lcom/threed/jpct/SimpleVector;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0, v1, v1, v1}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    return-object v0
.end method

.method public static create(FFF)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 149
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0, p0, p1, p2}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    return-object v0
.end method

.method public static create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4
    .param p0, "sv"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 134
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method add(FFF)V
    .locals 1
    .param p1, "vecx"    # F
    .param p2, "vecy"    # F
    .param p3, "vecz"    # F

    .prologue
    .line 586
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 587
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 588
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 589
    return-void
.end method

.method public add(Lcom/threed/jpct/SimpleVector;)V
    .locals 2
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 580
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 581
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 582
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 583
    return-void
.end method

.method public calcAdd(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 5
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 472
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    return-object v0
.end method

.method public calcAngle(Lcom/threed/jpct/SimpleVector;)F
    .locals 2
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/threed/jpct/SimpleVector;->_calcAngle(Lcom/threed/jpct/SimpleVector;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public calcAngleFast(Lcom/threed/jpct/SimpleVector;)F
    .locals 1
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/threed/jpct/SimpleVector;->_calcAngle(Lcom/threed/jpct/SimpleVector;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/threed/jpct/SimpleVector;->acosFast(F)F

    move-result v0

    return v0
.end method

.method public calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 8
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 432
    iget v3, p1, Lcom/threed/jpct/SimpleVector;->x:F

    .line 433
    .local v3, "vx1":F
    iget v4, p1, Lcom/threed/jpct/SimpleVector;->y:F

    .line 434
    .local v4, "vy1":F
    iget v5, p1, Lcom/threed/jpct/SimpleVector;->z:F

    .line 436
    .local v5, "vz1":F
    iget v6, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v6, v5

    iget v7, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v7, v4

    sub-float v0, v6, v7

    .line 437
    .local v0, "resx":F
    iget v6, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v6, v3

    iget v7, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v7, v5

    sub-float v1, v6, v7

    .line 438
    .local v1, "resy":F
    iget v6, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v7, v3

    sub-float v2, v6, v7

    .line 439
    .local v2, "resz":F
    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v6

    return-object v6
.end method

.method public calcDot(Lcom/threed/jpct/SimpleVector;)F
    .locals 3
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 450
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 461
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lcom/threed/jpct/SimpleVector;)F
    .locals 1
    .param p1, "pos"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/threed/jpct/SimpleVector;->lengthBetween(Lcom/threed/jpct/SimpleVector;)F

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 209
    instance-of v2, p1, Lcom/threed/jpct/SimpleVector;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 210
    check-cast v0, Lcom/threed/jpct/SimpleVector;

    .line 211
    .local v0, "sv":Lcom/threed/jpct/SimpleVector;
    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 213
    .end local v0    # "sv":Lcom/threed/jpct/SimpleVector;
    :cond_0
    return v1
.end method

.method public getRotationMatrix()Lcom/threed/jpct/Matrix;
    .locals 2

    .prologue
    .line 630
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sget-object v1, Lcom/threed/jpct/SimpleVector;->DOWN:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {p0, v0, v1}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getRotationMatrix(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 1
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 656
    sget-object v0, Lcom/threed/jpct/SimpleVector;->DOWN:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {p0, p1, v0}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getRotationMatrix(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;
    .locals 23
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;
    .param p2, "up"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 673
    .local v4, "lavx":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 674
    .local v5, "lavy":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 676
    .local v6, "lavz":F
    const v2, 0x1e3ce508    # 1.0E-20f

    .line 678
    .local v2, "FIXER":F
    const/16 v20, 0x0

    cmpl-float v20, v4, v20

    if-nez v20, :cond_0

    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-nez v20, :cond_0

    .line 679
    const v20, 0x1e3ce508    # 1.0E-20f

    add-float v4, v4, v20

    .line 682
    :cond_0
    mul-float v20, v4, v4

    mul-float v21, v5, v5

    add-float v20, v20, v21

    mul-float v21, v6, v6

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v7, v0

    .line 683
    .local v7, "n":F
    const/16 v20, 0x0

    cmpl-float v20, v7, v20

    if-eqz v20, :cond_1

    .line 684
    div-float/2addr v4, v7

    .line 685
    div-float/2addr v5, v7

    .line 686
    div-float/2addr v6, v7

    .line 689
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 691
    .local v3, "cameraMat":[[F
    const/16 v20, 0x1

    aget-object v20, v3, v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 692
    const/16 v20, 0x1

    aget-object v20, v3, v20

    const/16 v21, 0x1

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    .line 693
    const/16 v20, 0x1

    aget-object v20, v3, v20

    const/16 v21, 0x2

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 695
    const/16 v20, 0x2

    aget-object v20, v3, v20

    const/16 v21, 0x0

    aput v4, v20, v21

    .line 696
    const/16 v20, 0x2

    aget-object v20, v3, v20

    const/16 v21, 0x1

    aput v5, v20, v21

    .line 697
    const/16 v20, 0x2

    aget-object v20, v3, v20

    const/16 v21, 0x2

    aput v6, v20, v21

    .line 699
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v17, v0

    .line 700
    .local v17, "x1":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v18, v0

    .line 701
    .local v18, "y1":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v19, v0

    .line 703
    .local v19, "z1":F
    move v14, v4

    .line 704
    .local v14, "vx1":F
    move v15, v5

    .line 705
    .local v15, "vy1":F
    move/from16 v16, v6

    .line 707
    .local v16, "vz1":F
    mul-float v20, v18, v16

    mul-float v21, v19, v15

    sub-float v8, v20, v21

    .line 708
    .local v8, "resx":F
    mul-float v20, v19, v14

    mul-float v21, v17, v16

    sub-float v10, v20, v21

    .line 709
    .local v10, "resy":F
    mul-float v20, v17, v15

    mul-float v21, v18, v14

    sub-float v12, v20, v21

    .line 711
    .local v12, "resz":F
    const/4 v9, 0x0

    .line 712
    .local v9, "resx2":F
    const/4 v11, 0x0

    .line 713
    .local v11, "resy2":F
    const/4 v13, 0x0

    .line 715
    .local v13, "resz2":F
    mul-float v20, v8, v8

    mul-float v21, v10, v10

    add-float v20, v20, v21

    mul-float v21, v12, v12

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v7, v0

    .line 716
    const/16 v20, 0x0

    cmpl-float v20, v7, v20

    if-eqz v20, :cond_2

    .line 717
    div-float/2addr v8, v7

    .line 718
    div-float/2addr v10, v7

    .line 719
    div-float/2addr v12, v7

    .line 722
    :cond_2
    mul-float v20, v15, v12

    mul-float v21, v16, v10

    sub-float v9, v20, v21

    .line 723
    mul-float v20, v16, v8

    mul-float v21, v14, v12

    sub-float v11, v20, v21

    .line 724
    mul-float v20, v14, v10

    mul-float v21, v15, v8

    sub-float v13, v20, v21

    .line 726
    mul-float v20, v9, v9

    mul-float v21, v11, v11

    add-float v20, v20, v21

    mul-float v21, v13, v13

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v7, v0

    .line 727
    const/16 v20, 0x0

    cmpl-float v20, v7, v20

    if-eqz v20, :cond_3

    .line 728
    div-float/2addr v9, v7

    .line 729
    div-float/2addr v11, v7

    .line 730
    div-float/2addr v13, v7

    .line 733
    :cond_3
    const/16 v20, 0x0

    aget-object v20, v3, v20

    const/16 v21, 0x0

    aput v8, v20, v21

    .line 734
    const/16 v20, 0x0

    aget-object v20, v3, v20

    const/16 v21, 0x1

    aput v10, v20, v21

    .line 735
    const/16 v20, 0x0

    aget-object v20, v3, v20

    const/16 v21, 0x2

    aput v12, v20, v21

    .line 737
    const/16 v20, 0x1

    aget-object v20, v3, v20

    const/16 v21, 0x0

    aput v9, v20, v21

    .line 738
    const/16 v20, 0x1

    aget-object v20, v3, v20

    const/16 v21, 0x1

    aput v11, v20, v21

    .line 739
    const/16 v20, 0x1

    aget-object v20, v3, v20

    const/16 v21, 0x2

    aput v13, v20, v21

    .line 741
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Matrix;->orthonormalize()V

    .line 742
    return-object p1
.end method

.method public getRotationMatrix(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;
    .locals 1
    .param p1, "up"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 642
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 223
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public length()F
    .locals 3

    .prologue
    .line 419
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method lengthBetween(Lcom/threed/jpct/SimpleVector;)F
    .locals 5
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 486
    iget v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v0, v3, v4

    .line 487
    .local v0, "x1":F
    iget v3, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v1, v3, v4

    .line 488
    .local v1, "y1":F
    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v2, v3, v4

    .line 489
    .local v2, "z1":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public makeEqualLength(Lcom/threed/jpct/SimpleVector;)V
    .locals 4
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 612
    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v1

    .line 613
    .local v1, "lVec":F
    invoke-virtual {p0}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v0

    .line 614
    .local v0, "lThis":F
    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    .line 616
    .local v2, "r":Lcom/threed/jpct/SimpleVector;
    invoke-virtual {v2, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 617
    iget v3, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iput v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 618
    iget v3, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iput v3, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 619
    iget v3, v2, Lcom/threed/jpct/SimpleVector;->z:F

    iput v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 621
    .end local v2    # "r":Lcom/threed/jpct/SimpleVector;
    :cond_0
    return-void
.end method

.method public matMul(Lcom/threed/jpct/Matrix;)V
    .locals 14
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 557
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 558
    .local v0, "matmat":[[F
    aget-object v1, v0, v11

    .line 559
    .local v1, "matmat0":[F
    aget-object v2, v0, v12

    .line 560
    .local v2, "matmat1":[F
    aget-object v3, v0, v13

    .line 561
    .local v3, "matmat2":[F
    const/4 v8, 0x3

    aget-object v4, v0, v8

    .line 563
    .local v4, "matmat3":[F
    iget v8, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aget v9, v1, v11

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aget v10, v2, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aget v10, v3, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aget v9, v4, v11

    add-float v5, v8, v9

    .line 564
    .local v5, "xr":F
    iget v8, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aget v9, v1, v12

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aget v10, v2, v12

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aget v10, v3, v12

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aget v9, v4, v12

    add-float v6, v8, v9

    .line 565
    .local v6, "yr":F
    iget v8, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aget v9, v1, v13

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aget v10, v2, v13

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aget v10, v3, v13

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aget v9, v4, v13

    add-float v7, v8, v9

    .line 567
    .local v7, "zr":F
    iput v5, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 568
    iput v6, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 569
    iput v7, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 570
    return-void
.end method

.method public normalize()Lcom/threed/jpct/SimpleVector;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 379
    iget v2, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 380
    .local v1, "n":F
    cmpl-float v2, v1, v5

    if-eqz v2, :cond_0

    .line 381
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v1

    .line 382
    .local v0, "dn":F
    iget v2, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v4, v0

    invoke-static {v2, v3, v4}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    .line 384
    .end local v0    # "dn":F
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v5, v5, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    goto :goto_0
.end method

.method public normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 6
    .param p1, "sv"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    const/4 v5, 0x0

    .line 400
    if-nez p1, :cond_0

    .line 401
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    .line 403
    :cond_0
    iget v2, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 404
    .local v1, "n":F
    cmpl-float v2, v1, v5

    if-eqz v2, :cond_1

    .line 405
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v1

    .line 406
    .local v0, "dn":F
    iget v2, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v4, v0

    invoke-virtual {p1, v2, v3, v4}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 410
    .end local v0    # "dn":F
    :goto_0
    return-object p1

    .line 408
    :cond_1
    invoke-virtual {p1, v5, v5, v5}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    goto :goto_0
.end method

.method public reflect(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 2
    .param p1, "faceNormal"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/threed/jpct/SimpleVector;->calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 311
    .local v0, "cross":Lcom/threed/jpct/SimpleVector;
    invoke-virtual {p1, v0}, Lcom/threed/jpct/SimpleVector;->calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 312
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 313
    invoke-virtual {v0, p0}, Lcom/threed/jpct/SimpleVector;->calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 314
    return-object v0
.end method

.method public rotate(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 14
    .param p1, "rotVector"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 238
    iget v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 239
    .local v3, "oldX":F
    iget v4, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 240
    .local v4, "oldY":F
    iget v5, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 242
    .local v5, "oldZ":F
    iget v12, p1, Lcom/threed/jpct/SimpleVector;->x:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 243
    .local v9, "sinX":F
    iget v12, p1, Lcom/threed/jpct/SimpleVector;->x:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v0, v12

    .line 244
    .local v0, "cosX":F
    iget v12, p1, Lcom/threed/jpct/SimpleVector;->y:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v10, v12

    .line 245
    .local v10, "sinY":F
    iget v12, p1, Lcom/threed/jpct/SimpleVector;->y:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v1, v12

    .line 246
    .local v1, "cosY":F
    iget v12, p1, Lcom/threed/jpct/SimpleVector;->z:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v11, v12

    .line 247
    .local v11, "sinZ":F
    iget v12, p1, Lcom/threed/jpct/SimpleVector;->z:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 249
    .local v2, "cosZ":F
    mul-float v12, v3, v2

    mul-float v13, v4, v11

    sub-float v6, v12, v13

    .line 250
    .local v6, "rotatedX":F
    mul-float v12, v3, v11

    mul-float v13, v4, v2

    add-float v7, v12, v13

    .line 252
    .local v7, "rotatedY":F
    move v3, v6

    .line 253
    move v4, v7

    .line 255
    mul-float v12, v3, v1

    mul-float v13, v5, v10

    sub-float v6, v12, v13

    .line 256
    mul-float v12, v3, v10

    mul-float v13, v5, v1

    add-float v8, v12, v13

    .line 258
    .local v8, "rotatedZ":F
    move v5, v8

    .line 260
    mul-float v12, v4, v0

    mul-float v13, v5, v9

    sub-float v7, v12, v13

    .line 261
    mul-float v12, v4, v9

    mul-float v13, v5, v0

    add-float v8, v12, v13

    .line 263
    invoke-static {v6, v7, v8}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v12

    return-object v12
.end method

.method public rotate(Lcom/threed/jpct/Matrix;)V
    .locals 10
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 276
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 277
    .local v0, "matmat":[[F
    iget v4, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aget-object v5, v0, v7

    aget v5, v5, v7

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aget-object v6, v0, v8

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aget-object v6, v0, v9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 278
    .local v1, "xr":F
    iget v4, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aget-object v5, v0, v7

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aget-object v6, v0, v8

    aget v6, v6, v8

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aget-object v6, v0, v9

    aget v6, v6, v8

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 279
    .local v2, "yr":F
    iget v4, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aget-object v5, v0, v7

    aget v5, v5, v9

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aget-object v6, v0, v8

    aget v6, v6, v9

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aget-object v6, v0, v9

    aget v6, v6, v9

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 280
    .local v3, "zr":F
    iput v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 281
    iput v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 282
    iput v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 283
    return-void
.end method

.method public rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 2
    .param p1, "axis"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "angle"    # F

    .prologue
    .line 295
    sget-object v1, Lcom/threed/jpct/SimpleVector;->globalTmpMat:Lcom/threed/jpct/Matrix;

    monitor-enter v1

    .line 296
    :try_start_0
    sget-object v0, Lcom/threed/jpct/SimpleVector;->globalTmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 297
    sget-object v0, Lcom/threed/jpct/SimpleVector;->globalTmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Matrix;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    .line 298
    sget-object v0, Lcom/threed/jpct/SimpleVector;->globalTmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {p0, v0}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 295
    monitor-exit v1

    .line 300
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rotateX(F)V
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 325
    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 326
    .local v1, "oldY":F
    iget v2, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 328
    .local v2, "oldZ":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 329
    .local v3, "sinX":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 331
    .local v0, "cosX":F
    mul-float v4, v1, v0

    mul-float v5, v2, v3

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 332
    mul-float v4, v1, v3

    mul-float v5, v2, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 333
    return-void
.end method

.method public rotateY(F)V
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 343
    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 344
    .local v1, "oldX":F
    iget v2, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 346
    .local v2, "oldZ":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 347
    .local v3, "sinY":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 349
    .local v0, "cosY":F
    mul-float v4, v1, v0

    mul-float v5, v2, v3

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 350
    mul-float v4, v1, v3

    mul-float v5, v2, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 351
    return-void
.end method

.method public rotateZ(F)V
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 361
    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 362
    .local v2, "oldY":F
    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 364
    .local v1, "oldX":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 365
    .local v3, "sinZ":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 367
    .local v0, "cosZ":F
    mul-float v4, v1, v0

    mul-float v5, v2, v3

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 368
    mul-float v4, v1, v3

    mul-float v5, v2, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 369
    return-void
.end method

.method public scalarMul(F)V
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 544
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 545
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 546
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 547
    return-void
.end method

.method public set(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 156
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 157
    iput p2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 158
    iput p3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 159
    return-void
.end method

.method public set(Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "s"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 166
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 167
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 168
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 169
    return-void
.end method

.method public sub(Lcom/threed/jpct/SimpleVector;)V
    .locals 2
    .param p1, "vec"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 599
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 600
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 601
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 602
    return-void
.end method

.method public toArray()[F
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aput v1, v0, v2

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aput v1, v0, v3

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aput v1, v0, v4

    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aput v1, v0, v2

    .line 184
    iget-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aput v1, v0, v3

    .line 185
    iget-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aput v1, v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
