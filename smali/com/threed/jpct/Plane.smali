.class Lcom/threed/jpct/Plane;
.super Ljava/lang/Object;
.source "Plane.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private equation3:F

.field normal:Lcom/threed/jpct/SimpleVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Plane;->equation3:F

    .line 12
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "point"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "normal"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Plane;->equation3:F

    .line 12
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/threed/jpct/Plane;->setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "p0"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "p1"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "p2"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Plane;->equation3:F

    .line 12
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/threed/jpct/Plane;->setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    .line 59
    return-void
.end method


# virtual methods
.method public distanceTo(Lcom/threed/jpct/SimpleVector;)F
    .locals 3
    .param p1, "point"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/Plane;->equation3:F

    add-float/2addr v0, v1

    return v0
.end method

.method public isFrontFacingTo(FFF)Z
    .locals 2
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "pointZ"    # F

    .prologue
    .line 132
    iget-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontFacingTo(Lcom/threed/jpct/SimpleVector;)Z
    .locals 3
    .param p1, "point"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTo(FFFFFFFFF)V
    .locals 17
    .param p1, "p0x"    # F
    .param p2, "p0y"    # F
    .param p3, "p0z"    # F
    .param p4, "p1x"    # F
    .param p5, "p1y"    # F
    .param p6, "p1z"    # F
    .param p7, "p2x"    # F
    .param p8, "p2y"    # F
    .param p9, "p2z"    # F

    .prologue
    .line 76
    sub-float v5, p4, p1

    .line 77
    .local v5, "x0":F
    sub-float v8, p5, p2

    .line 78
    .local v8, "y0":F
    sub-float v11, p6, p3

    .line 80
    .local v11, "z0":F
    sub-float v6, p7, p1

    .line 81
    .local v6, "x1":F
    sub-float v9, p8, p2

    .line 82
    .local v9, "y1":F
    sub-float v12, p9, p3

    .line 84
    .local v12, "z1":F
    mul-float v13, v8, v12

    mul-float v14, v11, v9

    sub-float v4, v13, v14

    .line 85
    .local v4, "x":F
    mul-float v13, v11, v6

    mul-float v14, v5, v12

    sub-float v7, v13, v14

    .line 86
    .local v7, "y":F
    mul-float v13, v5, v9

    mul-float v14, v8, v6

    sub-float v10, v13, v14

    .line 95
    .local v10, "z":F
    mul-float v13, v4, v4

    mul-float v14, v7, v7

    add-float/2addr v13, v14

    mul-float v14, v10, v10

    add-float v3, v13, v14

    .line 96
    .local v3, "val":F
    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v1, v13

    .line 97
    .local v1, "n":F
    const/4 v13, 0x0

    cmpl-float v13, v1, v13

    if-eqz v13, :cond_0

    .line 98
    const/high16 v13, 0x3f800000    # 1.0f

    div-float v2, v13, v1

    .line 99
    .local v2, "nt":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    mul-float v14, v4, v2

    mul-float v15, v7, v2

    mul-float v16, v10, v2

    invoke-virtual/range {v13 .. v16}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 104
    .end local v2    # "nt":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v13, v13, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v13, v13, p1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v14, v14, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v14, v14, p2

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v14, v14, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v14, v14, p3

    add-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/threed/jpct/Plane;->equation3:F

    .line 105
    return-void

    .line 102
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    goto :goto_0
.end method

.method public setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 3
    .param p1, "point"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "normal"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p2}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 44
    iget v0, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->z:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/threed/jpct/Plane;->equation3:F

    .line 45
    return-void
.end method

.method public setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 10
    .param p1, "p0"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "p1"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "p2"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 72
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, p2, Lcom/threed/jpct/SimpleVector;->z:F

    iget v7, p3, Lcom/threed/jpct/SimpleVector;->x:F

    iget v8, p3, Lcom/threed/jpct/SimpleVector;->y:F

    iget v9, p3, Lcom/threed/jpct/SimpleVector;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/threed/jpct/Plane;->setTo(FFFFFFFFF)V

    .line 73
    return-void
.end method
