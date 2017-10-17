.class public Lcom/threed/jpct/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CAMERA_DONT_MOVE:I = 0x7

.field public static final CAMERA_MOVEDOWN:I = 0x3

.field public static final CAMERA_MOVEIN:I = 0x1

.field public static final CAMERA_MOVELEFT:I = 0x6

.field public static final CAMERA_MOVEOUT:I = 0x2

.field public static final CAMERA_MOVERIGHT:I = 0x5

.field public static final CAMERA_MOVEUP:I = 0x4

.field public static final DONT_SLIDE:Z = false

.field public static final ELLIPSOID_ALIGNED:I = 0x0

.field public static final ELLIPSOID_TRANSFORMED:I = 0x1

.field public static final SLIDE:Z = true

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected backBx:F

.field protected backBy:F

.field protected backBz:F

.field protected backMatrix:Lcom/threed/jpct/Matrix;

.field private cameraFOV:F

.field divx:F

.field divy:F

.field private ellipsoidMode:I

.field private higherLimit:F

.field protected lookAtTmp:Lcom/threed/jpct/Matrix;

.field private lowerLimit:F

.field private projectionMatrix:Lcom/threed/jpct/Matrix;

.field scaleX:F

.field scaleY:F

.field private workMatrix:[F

.field private yFOV:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Camera;->lookAtTmp:Lcom/threed/jpct/Matrix;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Camera;->ellipsoidMode:I

    .line 101
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Camera;->workMatrix:[F

    .line 102
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Camera;->projectionMatrix:Lcom/threed/jpct/Matrix;

    .line 111
    sget v0, Lcom/threed/jpct/Config;->defaultCameraFOV:F

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    .line 112
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/threed/jpct/Camera;->yFOV:F

    .line 113
    iput v1, p0, Lcom/threed/jpct/Camera;->scaleX:F

    .line 114
    iput v1, p0, Lcom/threed/jpct/Camera;->scaleY:F

    .line 115
    iput v1, p0, Lcom/threed/jpct/Camera;->divx:F

    .line 116
    iput v1, p0, Lcom/threed/jpct/Camera;->divy:F

    .line 117
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    .line 118
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    .line 119
    return-void
.end method

.method private frustum([FFFFFFF)V
    .locals 11
    .param p1, "matrix"    # [F
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F
    .param p6, "near"    # F
    .param p7, "far"    # F

    .prologue
    .line 887
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, p3, p2

    div-float v6, v9, v10

    .line 888
    .local v6, "rWidth":F
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, p5, p4

    div-float v5, v9, v10

    .line 889
    .local v5, "rHeight":F
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, p6, p7

    div-float v4, v9, v10

    .line 890
    .local v4, "rDepth":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, p6, v6

    mul-float v7, v9, v10

    .line 891
    .local v7, "x":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, p6, v5

    mul-float v8, v9, v10

    .line 892
    .local v8, "y":F
    const/high16 v9, 0x40000000    # 2.0f

    add-float v10, p3, p2

    mul-float/2addr v10, v6

    mul-float v0, v9, v10

    .line 893
    .local v0, "a":F
    add-float v9, p5, p4

    mul-float v1, v9, v5

    .line 894
    .local v1, "b":F
    add-float v9, p7, p6

    mul-float v2, v9, v4

    .line 895
    .local v2, "c":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, p7, p6

    mul-float/2addr v10, v4

    mul-float v3, v9, v10

    .line 896
    .local v3, "d":F
    const/4 v9, 0x0

    aput v7, p1, v9

    .line 897
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 898
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 899
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 900
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 901
    const/4 v9, 0x5

    aput v8, p1, v9

    .line 902
    const/4 v9, 0x6

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 903
    const/4 v9, 0x7

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 904
    const/16 v9, 0x8

    aput v0, p1, v9

    .line 905
    const/16 v9, 0x9

    aput v1, p1, v9

    .line 906
    const/16 v9, 0xa

    aput v2, p1, v9

    .line 907
    const/16 v9, 0xb

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, p1, v9

    .line 908
    const/16 v9, 0xc

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 909
    const/16 v9, 0xd

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 910
    const/16 v9, 0xe

    aput v3, p1, v9

    .line 911
    const/16 v9, 0xf

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 912
    return-void
.end method

.method private getVector(I)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 247
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/Camera;->getVector(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method private getVector(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 251
    iget-object v4, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v4, v4, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget v1, v4, p1

    .line 252
    .local v1, "x1":F
    iget-object v4, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v4, v4, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget v2, v4, p1

    .line 253
    .local v2, "y1":F
    iget-object v4, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v4, v4, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget v3, v4, p1

    .line 254
    .local v3, "z1":F
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    div-float v0, v4, v5

    .line 255
    .local v0, "n":F
    mul-float v4, v1, v0

    mul-float v5, v2, v0

    mul-float v6, v3, v0

    invoke-virtual {p2, v4, v5, v6}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 256
    return-object p2
.end method


# virtual methods
.method public adjustFovToNearPlane()V
    .locals 2

    .prologue
    .line 383
    sget-boolean v0, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-nez v0, :cond_0

    .line 384
    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    sget v1, Lcom/threed/jpct/Config;->nearPlane:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    .line 385
    iget v0, p0, Lcom/threed/jpct/Camera;->yFOV:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 386
    iget v0, p0, Lcom/threed/jpct/Camera;->yFOV:F

    sget v1, Lcom/threed/jpct/Config;->nearPlane:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/Camera;->yFOV:F

    .line 389
    :cond_0
    return-void
.end method

.method public align(Lcom/threed/jpct/Object3D;)V
    .locals 3
    .param p1, "object"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 526
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 527
    .local v0, "m":Lcom/threed/jpct/Matrix;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    .line 528
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->invert3x3()Lcom/threed/jpct/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    .line 529
    return-void
.end method

.method calcFOV(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 123
    iget v1, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    div-float v0, v1, v3

    .line 125
    .local v0, "fov":F
    sget-boolean v1, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/threed/jpct/Camera;->yFOV:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 126
    :cond_0
    iput v0, p0, Lcom/threed/jpct/Camera;->divx:F

    .line 127
    iput v0, p0, Lcom/threed/jpct/Camera;->divy:F

    .line 128
    iget v1, p0, Lcom/threed/jpct/Camera;->yFOV:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 129
    iget v1, p0, Lcom/threed/jpct/Camera;->yFOV:F

    div-float/2addr v1, v3

    iput v1, p0, Lcom/threed/jpct/Camera;->divy:F

    .line 135
    :cond_1
    :goto_0
    int-to-float v1, p1

    iget v2, p0, Lcom/threed/jpct/Camera;->divx:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/threed/jpct/Camera;->scaleX:F

    .line 136
    int-to-float v1, p2

    iget v2, p0, Lcom/threed/jpct/Camera;->divy:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/threed/jpct/Camera;->scaleY:F

    .line 138
    sget-boolean v1, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-nez v1, :cond_2

    .line 139
    iget v1, p0, Lcom/threed/jpct/Camera;->divx:F

    sget v2, Lcom/threed/jpct/Config;->nearPlane:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/threed/jpct/Camera;->divx:F

    .line 140
    iget v1, p0, Lcom/threed/jpct/Camera;->divy:F

    sget v2, Lcom/threed/jpct/Config;->nearPlane:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/threed/jpct/Camera;->divy:F

    .line 142
    :cond_2
    return-void

    .line 132
    :cond_3
    iput v0, p0, Lcom/threed/jpct/Camera;->divx:F

    .line 133
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/threed/jpct/Camera;->divy:F

    goto :goto_0
.end method

.method public convertDEGAngleIntoFOV(F)F
    .locals 8
    .param p1, "angle"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 280
    float-to-double v2, p1

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v2, v4

    .line 281
    .local v0, "a":D
    div-double v2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-float p1, v2

    .line 282
    return p1
.end method

.method public convertRADAngleIntoFOV(F)F
    .locals 4
    .param p1, "angle"    # F

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 268
    float-to-double v0, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 269
    return p1
.end method

.method public decreaseFOV(F)V
    .locals 2
    .param p1, "dec"    # F

    .prologue
    .line 415
    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    .line 416
    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    iget v1, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 417
    iget v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    iget v1, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 420
    iget v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    goto :goto_0
.end method

.method public getBack()Lcom/threed/jpct/Matrix;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getDirection()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/threed/jpct/Camera;->getVector(I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getDirection(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p1, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 217
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/threed/jpct/Camera;->getVector(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getEllipsoidMode()I
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/threed/jpct/Camera;->ellipsoidMode:I

    return v0
.end method

.method public getFOV()F
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    return v0
.end method

.method public getMaxFOV()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    return v0
.end method

.method public getMinFOV()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    return v0
.end method

.method public getPosition()Lcom/threed/jpct/SimpleVector;
    .locals 3

    .prologue
    .line 150
    iget v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    iget v1, p0, Lcom/threed/jpct/Camera;->backBy:F

    iget v2, p0, Lcom/threed/jpct/Camera;->backBz:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p1, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 162
    iget v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    iget v1, p0, Lcom/threed/jpct/Camera;->backBy:F

    iget v2, p0, Lcom/threed/jpct/Camera;->backBz:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 163
    return-object p1
.end method

.method public getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;)Lcom/threed/jpct/Matrix;
    .locals 2
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 829
    sget-boolean v0, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    sget v1, Lcom/threed/jpct/Config;->farPlane:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/threed/jpct/Camera;->getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;FF)Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    goto :goto_0
.end method

.method public getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;FF)Lcom/threed/jpct/Matrix;
    .locals 13
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "nearPlane"    # F
    .param p3, "farPlane"    # F

    .prologue
    .line 842
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v0

    int-to-float v11, v0

    .line 843
    .local v11, "h":F
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v0

    int-to-float v12, v0

    .line 845
    .local v12, "w":F
    iget-object v0, p1, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v0, :cond_0

    .line 846
    iget v0, p1, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    if-lez v0, :cond_2

    iget v0, p1, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    if-lez v0, :cond_2

    .line 847
    iget v0, p1, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    int-to-float v11, v0

    .line 848
    iget v0, p1, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    int-to-float v12, v0

    .line 855
    :cond_0
    :goto_0
    move-object v8, p0

    .line 856
    .local v8, "cam":Lcom/threed/jpct/Camera;
    invoke-virtual {v8}, Lcom/threed/jpct/Camera;->getFOV()F

    move-result v9

    .line 857
    .local v9, "fov":F
    const/4 v10, 0x0

    .line 859
    .local v10, "fovy":F
    sget-boolean v0, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    if-eqz v0, :cond_3

    .line 860
    div-float v0, v11, v12

    mul-float v10, v9, v0

    .line 865
    :goto_1
    invoke-virtual {v8}, Lcom/threed/jpct/Camera;->getYFOV()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 866
    invoke-virtual {v8}, Lcom/threed/jpct/Camera;->getYFOV()F

    move-result v10

    .line 869
    :cond_1
    move/from16 v7, p3

    .line 870
    .local v7, "far":F
    move v6, p2

    .line 871
    .local v6, "near":F
    mul-float/2addr v9, v6

    .line 872
    mul-float/2addr v10, v6

    .line 874
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v5, v10, v0

    .line 875
    .local v5, "top":F
    neg-float v0, v10

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v4, v0, v1

    .line 876
    .local v4, "bottom":F
    neg-float v0, v9

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v0, v1

    .line 877
    .local v2, "left":F
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v3, v9, v0

    .line 879
    .local v3, "right":F
    iget-object v1, p0, Lcom/threed/jpct/Camera;->workMatrix:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/Camera;->frustum([FFFFFFF)V

    .line 880
    iget-object v0, p0, Lcom/threed/jpct/Camera;->projectionMatrix:Lcom/threed/jpct/Matrix;

    iget-object v1, p0, Lcom/threed/jpct/Camera;->workMatrix:[F

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->setDump([F)V

    .line 881
    iget-object v0, p0, Lcom/threed/jpct/Camera;->projectionMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->transformToGL()V

    .line 883
    iget-object v0, p0, Lcom/threed/jpct/Camera;->projectionMatrix:Lcom/threed/jpct/Matrix;

    return-object v0

    .line 850
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    .end local v5    # "top":F
    .end local v6    # "near":F
    .end local v7    # "far":F
    .end local v8    # "cam":Lcom/threed/jpct/Camera;
    .end local v9    # "fov":F
    .end local v10    # "fovy":F
    :cond_2
    iget-object v0, p1, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v0, v0, Lcom/threed/jpct/Texture;->height:I

    int-to-float v11, v0

    .line 851
    iget-object v0, p1, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v0, v0, Lcom/threed/jpct/Texture;->width:I

    int-to-float v12, v0

    goto :goto_0

    .line 862
    .restart local v8    # "cam":Lcom/threed/jpct/Camera;
    .restart local v9    # "fov":F
    .restart local v10    # "fovy":F
    :cond_3
    move v10, v9

    goto :goto_1
.end method

.method public getSideVector()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/threed/jpct/Camera;->getVector(I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getUpVector()Lcom/threed/jpct/SimpleVector;
    .locals 2

    .prologue
    .line 229
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/threed/jpct/Camera;->getVector(I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 230
    .local v0, "s":Lcom/threed/jpct/SimpleVector;
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 231
    return-object v0
.end method

.method public getXAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getXAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getYAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getYFOV()F
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/threed/jpct/Camera;->yFOV:F

    return v0
.end method

.method public getZAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getZAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public increaseFOV(F)V
    .locals 2
    .param p1, "inc"    # F

    .prologue
    .line 398
    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    .line 399
    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    iget v1, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 400
    iget v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    iget v1, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 403
    iget v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    goto :goto_0
.end method

.method public lookAt(Lcom/threed/jpct/SimpleVector;)V
    .locals 24
    .param p1, "lookAt"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Camera;->lookAtTmp:Lcom/threed/jpct/Matrix;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 443
    new-instance v21, Lcom/threed/jpct/Matrix;

    invoke-direct/range {v21 .. v21}, Lcom/threed/jpct/Matrix;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/Camera;->lookAtTmp:Lcom/threed/jpct/Matrix;

    .line 446
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->backBx:F

    move/from16 v22, v0

    sub-float v5, v21, v22

    .line 447
    .local v5, "lavx":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->backBy:F

    move/from16 v22, v0

    sub-float v6, v21, v22

    .line 448
    .local v6, "lavy":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->backBz:F

    move/from16 v22, v0

    sub-float v7, v21, v22

    .line 450
    .local v7, "lavz":F
    const v2, 0x1e3ce508    # 1.0E-20f

    .line 452
    .local v2, "FIXER":F
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-nez v21, :cond_1

    const/16 v21, 0x0

    cmpl-float v21, v7, v21

    if-nez v21, :cond_1

    .line 453
    const v21, 0x1e3ce508    # 1.0E-20f

    add-float v5, v5, v21

    .line 456
    :cond_1
    mul-float v21, v5, v5

    mul-float v22, v6, v6

    add-float v21, v21, v22

    mul-float v22, v7, v7

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v8, v0

    .line 457
    .local v8, "n":F
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-eqz v21, :cond_2

    .line 458
    div-float/2addr v5, v8

    .line 459
    div-float/2addr v6, v8

    .line 460
    div-float/2addr v7, v8

    .line 463
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Camera;->lookAtTmp:Lcom/threed/jpct/Matrix;

    .line 464
    .local v4, "cameraMatMAT":Lcom/threed/jpct/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Camera;->lookAtTmp:Lcom/threed/jpct/Matrix;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 465
    iget-object v3, v4, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 467
    .local v3, "cameraMat":[[F
    const/16 v21, 0x0

    aget-object v21, v3, v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 468
    const/16 v21, 0x1

    aget-object v21, v3, v21

    const/16 v22, 0x1

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    .line 469
    const/16 v21, 0x2

    aget-object v21, v3, v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    .line 471
    const/16 v21, 0x0

    aget-object v21, v3, v21

    const/16 v22, 0x2

    aput v5, v21, v22

    .line 472
    const/16 v21, 0x1

    aget-object v21, v3, v21

    const/16 v22, 0x2

    aput v6, v21, v22

    .line 473
    const/16 v21, 0x2

    aget-object v21, v3, v21

    const/16 v22, 0x2

    aput v7, v21, v22

    .line 475
    const/16 v18, 0x0

    .line 476
    .local v18, "x1":F
    const/high16 v19, 0x3f800000    # 1.0f

    .line 477
    .local v19, "y1":F
    const/16 v20, 0x0

    .line 479
    .local v20, "z1":F
    move v15, v5

    .line 480
    .local v15, "vx1":F
    move/from16 v16, v6

    .line 481
    .local v16, "vy1":F
    move/from16 v17, v7

    .line 483
    .local v17, "vz1":F
    mul-float v21, v19, v17

    mul-float v22, v20, v16

    sub-float v9, v21, v22

    .line 484
    .local v9, "resx":F
    mul-float v21, v20, v15

    mul-float v22, v18, v17

    sub-float v11, v21, v22

    .line 485
    .local v11, "resy":F
    mul-float v21, v18, v16

    mul-float v22, v19, v15

    sub-float v13, v21, v22

    .line 487
    .local v13, "resz":F
    mul-float v21, v9, v9

    mul-float v22, v11, v11

    add-float v21, v21, v22

    mul-float v22, v13, v13

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v8, v0

    .line 488
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-eqz v21, :cond_3

    .line 489
    div-float/2addr v9, v8

    .line 490
    div-float/2addr v11, v8

    .line 491
    div-float/2addr v13, v8

    .line 494
    :cond_3
    mul-float v21, v16, v13

    mul-float v22, v17, v11

    sub-float v10, v21, v22

    .line 495
    .local v10, "resx2":F
    mul-float v21, v17, v9

    mul-float v22, v15, v13

    sub-float v12, v21, v22

    .line 496
    .local v12, "resy2":F
    mul-float v21, v15, v11

    mul-float v22, v16, v9

    sub-float v14, v21, v22

    .line 498
    .local v14, "resz2":F
    mul-float v21, v10, v10

    mul-float v22, v12, v12

    add-float v21, v21, v22

    mul-float v22, v14, v14

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v8, v0

    .line 499
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-eqz v21, :cond_4

    .line 500
    div-float/2addr v10, v8

    .line 501
    div-float/2addr v12, v8

    .line 502
    div-float/2addr v14, v8

    .line 505
    :cond_4
    const/16 v21, 0x0

    aget-object v21, v3, v21

    const/16 v22, 0x0

    aput v9, v21, v22

    .line 506
    const/16 v21, 0x1

    aget-object v21, v3, v21

    const/16 v22, 0x0

    aput v11, v21, v22

    .line 507
    const/16 v21, 0x2

    aget-object v21, v3, v21

    const/16 v22, 0x0

    aput v13, v21, v22

    .line 509
    const/16 v21, 0x0

    aget-object v21, v3, v21

    const/16 v22, 0x1

    aput v10, v21, v22

    .line 510
    const/16 v21, 0x1

    aget-object v21, v3, v21

    const/16 v22, 0x1

    aput v12, v21, v22

    .line 511
    const/16 v21, 0x2

    aget-object v21, v3, v21

    const/16 v22, 0x1

    aput v14, v21, v22

    .line 513
    invoke-virtual {v4}, Lcom/threed/jpct/Matrix;->orthonormalize()V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 515
    return-void
.end method

.method public moveCamera(IF)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "speed"    # F

    .prologue
    const/4 v5, 0x1

    .line 648
    const/high16 v0, -0x40800000    # -1.0f

    .line 649
    .local v0, "mul":F
    and-int/lit8 v2, p1, 0x1

    if-ne v2, v5, :cond_0

    .line 650
    const/high16 v0, 0x3f800000    # 1.0f

    .line 652
    :cond_0
    mul-float/2addr v0, p2

    .line 653
    add-int/lit8 v2, p1, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    rsub-int/lit8 v1, v2, 0x2

    .line 654
    .local v1, "pos":I
    iget v2, p0, Lcom/threed/jpct/Camera;->backBx:F

    iget-object v3, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v3, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget v3, v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/threed/jpct/Camera;->backBx:F

    .line 655
    iget v2, p0, Lcom/threed/jpct/Camera;->backBy:F

    iget-object v3, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v3, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v5

    aget v3, v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/threed/jpct/Camera;->backBy:F

    .line 656
    iget v2, p0, Lcom/threed/jpct/Camera;->backBz:F

    iget-object v3, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v3, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    aget v3, v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/threed/jpct/Camera;->backBz:F

    .line 657
    return-void
.end method

.method public moveCamera(Lcom/threed/jpct/SimpleVector;F)V
    .locals 2
    .param p1, "direction"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "speed"    # F

    .prologue
    .line 669
    iget v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    .line 670
    iget v0, p0, Lcom/threed/jpct/Camera;->backBy:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/Camera;->backBy:F

    .line 671
    iget v0, p0, Lcom/threed/jpct/Camera;->backBz:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/Camera;->backBz:F

    .line 672
    return-void
.end method

.method public rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1
    .param p1, "axis"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "angle"    # F

    .prologue
    .line 742
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Matrix;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    .line 743
    return-void
.end method

.method public rotateCameraAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 2
    .param p1, "axis"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "angle"    # F

    .prologue
    .line 688
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    neg-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/threed/jpct/Matrix;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    .line 689
    return-void
.end method

.method public rotateCameraX(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 701
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->rotateX(F)V

    .line 702
    return-void
.end method

.method public rotateCameraY(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 714
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->rotateY(F)V

    .line 715
    return-void
.end method

.method public rotateCameraZ(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 727
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->rotateZ(F)V

    .line 728
    return-void
.end method

.method public rotateX(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 752
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateX(F)V

    .line 753
    return-void
.end method

.method public rotateY(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 762
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateY(F)V

    .line 763
    return-void
.end method

.method public rotateZ(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 772
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateZ(F)V

    .line 773
    return-void
.end method

.method public setBack(Lcom/threed/jpct/Matrix;)V
    .locals 0
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    .line 792
    return-void
.end method

.method public setEllipsoidMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 807
    iput p1, p0, Lcom/threed/jpct/Camera;->ellipsoidMode:I

    .line 808
    return-void
.end method

.method public setFOV(F)V
    .locals 1
    .param p1, "tanFOV"    # F

    .prologue
    .line 325
    iget v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 326
    iget p1, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    .line 332
    :cond_0
    :goto_0
    iput p1, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    .line 333
    return-void

    .line 328
    :cond_1
    iget v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 329
    iget p1, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    goto :goto_0
.end method

.method public setFOVLimits(FF)V
    .locals 0
    .param p1, "lower"    # F
    .param p2, "higher"    # F

    .prologue
    .line 295
    iput p1, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    .line 296
    iput p2, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    .line 297
    return-void
.end method

.method public setFOVtoDefault()V
    .locals 1

    .prologue
    .line 431
    sget v0, Lcom/threed/jpct/Config;->defaultCameraFOV:F

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    .line 432
    return-void
.end method

.method public setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 3
    .param p1, "dir"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "up"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 585
    invoke-virtual {p2, v2}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 586
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/threed/jpct/Matrix;->setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)V

    .line 587
    invoke-virtual {p2, v2}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 588
    return-void
.end method

.method public setPosition(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 570
    iput p1, p0, Lcom/threed/jpct/Camera;->backBx:F

    .line 571
    iput p2, p0, Lcom/threed/jpct/Camera;->backBy:F

    .line 572
    iput p3, p0, Lcom/threed/jpct/Camera;->backBz:F

    .line 573
    return-void
.end method

.method public setPosition(Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "pos"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 552
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    .line 553
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/Camera;->backBy:F

    .line 554
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput v0, p0, Lcom/threed/jpct/Camera;->backBz:F

    .line 555
    return-void
.end method

.method public setPositionToCenter(Lcom/threed/jpct/Object3D;)V
    .locals 2
    .param p1, "object"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 538
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getTransformedCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 539
    .local v0, "center":Lcom/threed/jpct/SimpleVector;
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iput v1, p0, Lcom/threed/jpct/Camera;->backBx:F

    .line 540
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iput v1, p0, Lcom/threed/jpct/Camera;->backBy:F

    .line 541
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iput v1, p0, Lcom/threed/jpct/Camera;->backBz:F

    .line 542
    return-void
.end method

.method public setYFOV(F)V
    .locals 1
    .param p1, "tanFOV"    # F

    .prologue
    .line 345
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 346
    iget v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 347
    iget p1, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    .line 354
    :cond_0
    :goto_0
    iput p1, p0, Lcom/threed/jpct/Camera;->yFOV:F

    .line 355
    return-void

    .line 349
    :cond_1
    iget v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 350
    iget p1, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    goto :goto_0
.end method

.method public transform(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 24
    .param p1, "vertex"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    .line 599
    .local v4, "mat2":Lcom/threed/jpct/Matrix;
    new-instance v5, Lcom/threed/jpct/Matrix;

    invoke-direct {v5}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 601
    .local v5, "mat3":Lcom/threed/jpct/Matrix;
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->backBx:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    .line 602
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->backBy:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    .line 603
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Camera;->backBz:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    .line 605
    invoke-virtual {v5, v4}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 607
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    const/16 v22, 0x2

    aget v17, v21, v22

    .line 608
    .local v17, "s22":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x2

    aget v14, v21, v22

    .line 609
    .local v14, "s12":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x2

    aget v11, v21, v22

    .line 610
    .local v11, "s02":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v9, v21, v22

    .line 611
    .local v9, "s00":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v12, v21, v22

    .line 612
    .local v12, "s10":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v13, v21, v22

    .line 613
    .local v13, "s11":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v16, v21, v22

    .line 614
    .local v16, "s21":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v15, v21, v22

    .line 615
    .local v15, "s20":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v10, v21, v22

    .line 617
    .local v10, "s01":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x0

    aget v1, v21, v22

    .line 618
    .local v1, "bx":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v2, v21, v22

    .line 619
    .local v2, "by":F
    iget-object v0, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x2

    aget v3, v21, v22

    .line 621
    .local v3, "bz":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v18, v0

    .line 622
    .local v18, "x1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v19, v0

    .line 623
    .local v19, "y1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v20, v0

    .line 625
    .local v20, "z1":F
    mul-float v21, v18, v9

    mul-float v22, v19, v12

    add-float v21, v21, v22

    mul-float v22, v20, v15

    add-float v21, v21, v22

    add-float v6, v21, v1

    .line 626
    .local v6, "p1x":F
    mul-float v21, v18, v10

    mul-float v22, v19, v13

    add-float v21, v21, v22

    mul-float v22, v20, v16

    add-float v21, v21, v22

    add-float v7, v21, v2

    .line 627
    .local v7, "p1y":F
    mul-float v21, v18, v11

    mul-float v22, v19, v14

    add-float v21, v21, v22

    mul-float v22, v20, v17

    add-float v21, v21, v22

    add-float v8, v21, v3

    .line 629
    .local v8, "p1z":F
    invoke-static {v6, v7, v8}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v21

    return-object v21
.end method
