.class final Lcom/threed/jpct/CollisionInfo;
.super Ljava/lang/Object;
.source "CollisionInfo.java"


# instance fields
.field addRotMat:Lcom/threed/jpct/Matrix;

.field addTransMat:Lcom/threed/jpct/Matrix;

.field collision:Z

.field collisionObject:Lcom/threed/jpct/Object3D;

.field eRadius:Lcom/threed/jpct/SimpleVector;

.field eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

.field eSpaceVelocity:Lcom/threed/jpct/SimpleVector;

.field foundCollision:Z

.field intersectionPoint:Lcom/threed/jpct/SimpleVector;

.field private invERadiusOrgx:F

.field private invERadiusOrgy:F

.field private invERadiusOrgz:F

.field invERadiusx:F

.field invERadiusy:F

.field invERadiusz:F

.field isPartOfCollision:Z

.field nearestDistance:F

.field r3Destx:F

.field r3Desty:F

.field r3Destz:F

.field r3Pos:Lcom/threed/jpct/SimpleVector;

.field r3Velocity:Lcom/threed/jpct/SimpleVector;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/threed/jpct/CollisionInfo;->collisionObject:Lcom/threed/jpct/Object3D;

    .line 26
    iput-boolean v0, p0, Lcom/threed/jpct/CollisionInfo;->foundCollision:Z

    .line 28
    iput-boolean v0, p0, Lcom/threed/jpct/CollisionInfo;->collision:Z

    .line 30
    iput-boolean v0, p0, Lcom/threed/jpct/CollisionInfo;->isPartOfCollision:Z

    .line 34
    iput-object v1, p0, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    .line 36
    iput-object v1, p0, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    .line 10
    return-void
.end method


# virtual methods
.method calculateInverseAndDest()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrgx:F

    .line 63
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrgy:F

    .line 64
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrgz:F

    .line 66
    iget v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrgx:F

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    .line 67
    iget v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrgy:F

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    .line 68
    iget v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrgz:F

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/threed/jpct/CollisionInfo;->recalcDest()V

    .line 71
    return-void
.end method

.method getMaxRadius()F
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget-object v1, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method recalcDest()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget-object v1, p0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Destx:F

    .line 76
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget-object v1, p0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Desty:F

    .line 77
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget-object v1, p0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Destz:F

    .line 79
    :cond_0
    return-void
.end method

.method setIntersectionPoint(Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "sv"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 86
    return-void
.end method

.method setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 55
    iget v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrgx:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    .line 56
    iget v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrgy:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    .line 57
    iget v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrgz:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    .line 58
    return-void
.end method
