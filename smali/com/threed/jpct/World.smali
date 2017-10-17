.class public Lcom/threed/jpct/World;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FOGGING_DISABLED:I = 0x0

.field public static final FOGGING_ENABLED:I = 0x1

.field static final RGB_SCALE_2X:I = 0x2

.field static final RGB_SCALE_4X:I = 0x4

.field static final RGB_SCALE_DEFAULT:I = 0x1

.field static defaultThread:Ljava/lang/Thread; = null

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field ambientBlue:I

.field ambientGreen:I

.field ambientRed:I

.field private calledRender:Z

.field camera:Lcom/threed/jpct/Camera;

.field private compiler:Lcom/threed/jpct/Object3DCompiler;

.field private disposed:Z

.field drawCnt:J

.field private farPlane:F

.field private farPlaneOld:F

.field fogColorB:F

.field fogColorG:F

.field fogColorR:F

.field fogDistance:F

.field fogModeChanged:I

.field fogStart:F

.field transient globalShader:Lcom/threed/jpct/GLSLShader;

.field lights:Lcom/threed/jpct/Lights;

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/threed/jpct/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private nearPlane:F

.field private nearPlaneOld:F

.field objectList:Lcom/threed/jpct/Object3DList;

.field private slidePlaneTmp:Lcom/threed/jpct/Plane;

.field private transient targets:Lcom/threed/jpct/Object3DList;

.field private tmpMat:Lcom/threed/jpct/Matrix;

.field private tmpMatCol:Lcom/threed/jpct/Matrix;

.field useFogging:Z

.field visList:Lcom/threed/jpct/VisList;

.field private transient vlManager:Lcom/threed/jpct/VisListManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/threed/jpct/Object3DCompiler;

    invoke-direct {v0}, Lcom/threed/jpct/Object3DCompiler;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->compiler:Lcom/threed/jpct/Object3DCompiler;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/threed/jpct/World;->drawCnt:J

    .line 55
    iput-boolean v2, p0, Lcom/threed/jpct/World;->useFogging:Z

    .line 57
    iput v2, p0, Lcom/threed/jpct/World;->fogModeChanged:I

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/threed/jpct/World;->fogStart:F

    .line 61
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/threed/jpct/World;->fogDistance:F

    .line 63
    iput v3, p0, Lcom/threed/jpct/World;->fogColorR:F

    .line 65
    iput v3, p0, Lcom/threed/jpct/World;->fogColorG:F

    .line 67
    iput v3, p0, Lcom/threed/jpct/World;->fogColorB:F

    .line 69
    iput v4, p0, Lcom/threed/jpct/World;->ambientRed:I

    .line 71
    iput v4, p0, Lcom/threed/jpct/World;->ambientGreen:I

    .line 73
    iput v4, p0, Lcom/threed/jpct/World;->ambientBlue:I

    .line 75
    iput-object v5, p0, Lcom/threed/jpct/World;->globalShader:Lcom/threed/jpct/GLSLShader;

    .line 77
    new-instance v0, Lcom/threed/jpct/VisListManager;

    invoke-direct {v0}, Lcom/threed/jpct/VisListManager;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    .line 79
    iput-object v5, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    .line 81
    iput-boolean v2, p0, Lcom/threed/jpct/World;->disposed:Z

    .line 83
    iput v6, p0, Lcom/threed/jpct/World;->nearPlane:F

    .line 85
    iput v6, p0, Lcom/threed/jpct/World;->farPlane:F

    .line 87
    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    iput v0, p0, Lcom/threed/jpct/World;->nearPlaneOld:F

    .line 89
    sget v0, Lcom/threed/jpct/Config;->farPlane:F

    iput v0, p0, Lcom/threed/jpct/World;->farPlaneOld:F

    .line 91
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->tmpMat:Lcom/threed/jpct/Matrix;

    .line 92
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->tmpMatCol:Lcom/threed/jpct/Matrix;

    .line 94
    new-instance v0, Lcom/threed/jpct/Plane;

    invoke-direct {v0}, Lcom/threed/jpct/Plane;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->slidePlaneTmp:Lcom/threed/jpct/Plane;

    .line 96
    iput-object v5, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    .line 98
    iput-boolean v2, p0, Lcom/threed/jpct/World;->calledRender:Z

    .line 108
    new-instance v0, Lcom/threed/jpct/Object3DList;

    invoke-direct {v0}, Lcom/threed/jpct/Object3DList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    .line 109
    new-instance v0, Lcom/threed/jpct/VisList;

    sget v1, Lcom/threed/jpct/Config;->maxPolysVisible:I

    invoke-direct {v0, v1}, Lcom/threed/jpct/VisList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    .line 113
    invoke-static {}, Lcom/threed/jpct/Object3D;->createDummyObj()Lcom/threed/jpct/Object3D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 114
    invoke-static {}, Lcom/threed/jpct/Object3D;->createDummyObj()Lcom/threed/jpct/Object3D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 116
    new-instance v0, Lcom/threed/jpct/Camera;

    invoke-direct {v0}, Lcom/threed/jpct/Camera;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    .line 117
    new-instance v0, Lcom/threed/jpct/Lights;

    sget v1, Lcom/threed/jpct/Config;->maxLights:I

    invoke-direct {v0, v1}, Lcom/threed/jpct/Lights;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    .line 118
    return-void
.end method

.method private final checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z
    .locals 42
    .param p1, "direction"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "mode"    # I
    .param p3, "moveSpeed"    # F
    .param p4, "distance"    # F
    .param p5, "slideMode"    # Z

    .prologue
    .line 1377
    const/16 v38, 0x7

    move/from16 v0, p2

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    .line 1378
    const/16 p2, 0x1

    .line 1381
    :cond_0
    const v26, 0x7f7fffff    # Float.MAX_VALUE

    .line 1382
    .local v26, "maxXStep":F
    const v27, 0x7f7fffff    # Float.MAX_VALUE

    .line 1383
    .local v27, "maxYStep":F
    const v28, 0x7f7fffff    # Float.MAX_VALUE

    .line 1385
    .local v28, "maxZStep":F
    const/16 v21, 0x0

    .local v21, "dx":F
    const/16 v22, 0x0

    .local v22, "dy":F
    const/16 v23, 0x0

    .local v23, "dz":F
    const/high16 v29, 0x3f800000    # 1.0f

    .line 1386
    .local v29, "mul":F
    const/16 v32, 0x0

    .local v32, "sBackX":F
    const/16 v33, 0x0

    .local v33, "sBackY":F
    const/16 v34, 0x0

    .line 1388
    .local v34, "sBackZ":F
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v30, v0

    .line 1389
    .local v30, "orig":[F
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 1390
    .local v17, "dirX":[F
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 1391
    .local v18, "dirY":[F
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 1393
    .local v19, "dirZ":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v6, v0, Lcom/threed/jpct/Camera;->backBx:F

    .line 1394
    .local v6, "bx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v7, v0, Lcom/threed/jpct/Camera;->backBy:F

    .line 1395
    .local v7, "by":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v8, v0, Lcom/threed/jpct/Camera;->backBz:F

    .line 1397
    .local v8, "bz":F
    const/16 v31, 0x0

    .line 1399
    .local v31, "pos":I
    const/16 v38, 0x0

    aput v6, v30, v38

    .line 1400
    const/16 v38, 0x1

    aput v7, v30, v38

    .line 1401
    const/16 v38, 0x2

    aput v8, v30, v38

    .line 1403
    if-nez p1, :cond_d

    .line 1404
    and-int/lit8 v38, p2, 0x1

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    .line 1405
    const/high16 v29, -0x40800000    # -1.0f

    .line 1408
    :cond_1
    add-int/lit8 v38, p2, 0x1

    div-int/lit8 v38, v38, 0x2

    add-int/lit8 v38, v38, -0x1

    rsub-int/lit8 v31, v38, 0x2

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-object v38, v38, v39

    aget v32, v38, v31

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-object v38, v38, v39

    aget v33, v38, v31

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aget-object v38, v38, v39

    aget v34, v38, v31

    .line 1414
    mul-float v21, v32, v29

    .line 1415
    mul-float v22, v33, v29

    .line 1416
    mul-float v23, v34, v29

    .line 1428
    :goto_0
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v38, 0x0

    aput v21, v16, v38

    const/16 v38, 0x1

    aput v22, v16, v38

    const/16 v38, 0x2

    aput v23, v16, v38

    .line 1430
    .local v16, "dA":[F
    const/16 v38, 0x0

    aput v21, v17, v38

    .line 1431
    const/16 v38, 0x1

    const/16 v39, 0x0

    aput v39, v17, v38

    .line 1432
    const/16 v38, 0x2

    const/16 v39, 0x0

    aput v39, v17, v38

    .line 1434
    const/16 v38, 0x0

    const/16 v39, 0x0

    aput v39, v18, v38

    .line 1435
    const/16 v38, 0x1

    aput v22, v18, v38

    .line 1436
    const/16 v38, 0x2

    const/16 v39, 0x0

    aput v39, v18, v38

    .line 1438
    const/16 v38, 0x0

    const/16 v39, 0x0

    aput v39, v19, v38

    .line 1439
    const/16 v38, 0x1

    const/16 v39, 0x0

    aput v39, v19, v38

    .line 1440
    const/16 v38, 0x2

    aput v23, v19, v38

    .line 1442
    const/16 v38, 0x0

    aget v38, v17, v38

    const/16 v39, 0x0

    cmpg-float v38, v38, v39

    if-gez v38, :cond_e

    .line 1443
    const/16 v38, 0x0

    const/high16 v39, -0x40800000    # -1.0f

    aput v39, v17, v38

    .line 1447
    :goto_1
    const/16 v38, 0x1

    aget v38, v18, v38

    const/16 v39, 0x0

    cmpg-float v38, v38, v39

    if-gez v38, :cond_f

    .line 1448
    const/16 v38, 0x1

    const/high16 v39, -0x40800000    # -1.0f

    aput v39, v18, v38

    .line 1452
    :goto_2
    const/16 v38, 0x2

    aget v38, v19, v38

    const/16 v39, 0x0

    cmpg-float v38, v38, v39

    if-gez v38, :cond_10

    .line 1453
    const/16 v38, 0x2

    const/high16 v39, -0x40800000    # -1.0f

    aput v39, v19, v38

    .line 1458
    :goto_3
    const/4 v9, 0x1

    .line 1459
    .local v9, "colXR":Z
    const/4 v10, 0x1

    .line 1460
    .local v10, "colYR":Z
    const/4 v11, 0x1

    .line 1461
    .local v11, "colZR":Z
    const/4 v5, 0x0

    .line 1463
    .local v5, "anyCol":Z
    const v25, 0x5368d4a5    # 1.0E12f

    .line 1464
    .local v25, "lastT":F
    const/4 v12, 0x0

    .line 1465
    .local v12, "colliderX":Lcom/threed/jpct/Object3D;
    const/4 v13, 0x0

    .line 1466
    .local v13, "colliderY":Lcom/threed/jpct/Object3D;
    const/4 v14, 0x0

    .line 1468
    .local v14, "colliderZ":Lcom/threed/jpct/Object3D;
    const/16 v24, 0x2

    .local v24, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-lt v0, v1, :cond_11

    .line 1495
    const v38, 0x3f666666    # 0.9f

    mul-float v20, p4, v38

    .line 1497
    .local v20, "distHalf":F
    cmpg-float v38, v26, p4

    if-gez v38, :cond_2

    cmpl-float v38, v26, v20

    if-lez v38, :cond_2

    .line 1498
    move/from16 v26, p4

    .line 1500
    :cond_2
    cmpg-float v38, v27, p4

    if-gez v38, :cond_3

    cmpl-float v38, v27, v20

    if-lez v38, :cond_3

    .line 1501
    move/from16 v27, p4

    .line 1503
    :cond_3
    cmpg-float v38, v28, p4

    if-gez v38, :cond_4

    cmpl-float v38, v28, v20

    if-lez v38, :cond_4

    .line 1504
    move/from16 v28, p4

    .line 1507
    :cond_4
    mul-float v38, v32, p3

    mul-float v35, v38, v29

    .line 1508
    .local v35, "speedX":F
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1509
    .local v4, "absSpeed":F
    sub-float v38, v26, v4

    cmpg-float v38, v38, p4

    if-gtz v38, :cond_17

    .line 1510
    const/4 v5, 0x1

    .line 1511
    const/16 v38, 0x0

    cmpl-float v38, v35, v38

    if-ltz v38, :cond_16

    .line 1512
    sub-float v35, v26, p4

    .line 1516
    :goto_5
    if-eqz v12, :cond_5

    .line 1517
    const/16 v38, 0x1

    move/from16 v0, v38

    iput-boolean v0, v12, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1523
    :cond_5
    :goto_6
    mul-float v38, v33, p3

    mul-float v36, v38, v29

    .line 1524
    .local v36, "speedY":F
    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1525
    sub-float v38, v27, v4

    cmpg-float v38, v38, p4

    if-gtz v38, :cond_19

    .line 1526
    const/4 v5, 0x1

    .line 1527
    const/16 v38, 0x0

    cmpl-float v38, v36, v38

    if-ltz v38, :cond_18

    .line 1528
    sub-float v36, v27, p4

    .line 1532
    :goto_7
    if-eqz v13, :cond_6

    .line 1533
    const/16 v38, 0x1

    move/from16 v0, v38

    iput-boolean v0, v13, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1539
    :cond_6
    :goto_8
    mul-float v38, v34, p3

    mul-float v37, v38, v29

    .line 1540
    .local v37, "speedZ":F
    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1541
    sub-float v38, v28, v4

    cmpg-float v38, v38, p4

    if-gtz v38, :cond_1b

    .line 1542
    const/4 v5, 0x1

    .line 1543
    const/16 v38, 0x0

    cmpl-float v38, v37, v38

    if-ltz v38, :cond_1a

    .line 1544
    sub-float v37, v28, p4

    .line 1548
    :goto_9
    if-eqz v14, :cond_7

    .line 1549
    const/16 v38, 0x1

    move/from16 v0, v38

    iput-boolean v0, v14, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1555
    :cond_7
    :goto_a
    if-eqz v12, :cond_8

    iget-boolean v0, v12, Lcom/threed/jpct/Object3D;->wasCollider:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    .line 1556
    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v12, v40, v41

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 1559
    :cond_8
    if-eqz v13, :cond_9

    iget-boolean v0, v13, Lcom/threed/jpct/Object3D;->wasCollider:Z

    move/from16 v38, v0

    if-eqz v38, :cond_9

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_9

    .line 1560
    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v13, v40, v41

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 1563
    :cond_9
    if-eqz v14, :cond_a

    iget-boolean v0, v14, Lcom/threed/jpct/Object3D;->wasCollider:Z

    move/from16 v38, v0

    if-eqz v38, :cond_a

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_a

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_a

    .line 1564
    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v14, v40, v41

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 1567
    :cond_a
    if-nez p5, :cond_b

    if-nez v5, :cond_c

    .line 1568
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/threed/jpct/Camera;->backBx:F

    move/from16 v39, v0

    add-float v39, v39, v35

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lcom/threed/jpct/Camera;->backBx:F

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/threed/jpct/Camera;->backBy:F

    move/from16 v39, v0

    add-float v39, v39, v36

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lcom/threed/jpct/Camera;->backBy:F

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/threed/jpct/Camera;->backBz:F

    move/from16 v39, v0

    add-float v39, v39, v37

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lcom/threed/jpct/Camera;->backBz:F

    .line 1573
    :cond_c
    or-int v38, v9, v10

    or-int v38, v38, v11

    return v38

    .line 1418
    .end local v4    # "absSpeed":F
    .end local v5    # "anyCol":Z
    .end local v9    # "colXR":Z
    .end local v10    # "colYR":Z
    .end local v11    # "colZR":Z
    .end local v12    # "colliderX":Lcom/threed/jpct/Object3D;
    .end local v13    # "colliderY":Lcom/threed/jpct/Object3D;
    .end local v14    # "colliderZ":Lcom/threed/jpct/Object3D;
    .end local v16    # "dA":[F
    .end local v20    # "distHalf":F
    .end local v24    # "i":I
    .end local v25    # "lastT":F
    .end local v35    # "speedX":F
    .end local v36    # "speedY":F
    .end local v37    # "speedZ":F
    :cond_d
    const/high16 v29, 0x3f800000    # 1.0f

    .line 1419
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v32, v0

    .line 1420
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v33, v0

    .line 1421
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v34, v0

    .line 1423
    move/from16 v21, v32

    .line 1424
    move/from16 v22, v33

    .line 1425
    move/from16 v23, v34

    goto/16 :goto_0

    .line 1445
    .restart local v16    # "dA":[F
    :cond_e
    const/16 v38, 0x0

    const/high16 v39, 0x3f800000    # 1.0f

    aput v39, v17, v38

    goto/16 :goto_1

    .line 1450
    :cond_f
    const/16 v38, 0x1

    const/high16 v39, 0x3f800000    # 1.0f

    aput v39, v18, v38

    goto/16 :goto_2

    .line 1455
    :cond_10
    const/16 v38, 0x2

    const/high16 v39, 0x3f800000    # 1.0f

    aput v39, v19, v38

    goto/16 :goto_3

    .line 1470
    .restart local v5    # "anyCol":Z
    .restart local v9    # "colXR":Z
    .restart local v10    # "colYR":Z
    .restart local v11    # "colZR":Z
    .restart local v12    # "colliderX":Lcom/threed/jpct/Object3D;
    .restart local v13    # "colliderY":Lcom/threed/jpct/Object3D;
    .restart local v14    # "colliderZ":Lcom/threed/jpct/Object3D;
    .restart local v24    # "i":I
    .restart local v25    # "lastT":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v15

    .line 1471
    .local v15, "current":Lcom/threed/jpct/Object3D;
    const/16 v38, 0x0

    move/from16 v0, v38

    iput-boolean v0, v15, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1472
    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 1474
    iget-boolean v0, v15, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    move/from16 v38, v0

    if-eqz v38, :cond_15

    iget-boolean v0, v15, Lcom/threed/jpct/Object3D;->isVisible:Z

    move/from16 v38, v0

    if-eqz v38, :cond_15

    .line 1475
    iget-boolean v0, v15, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    move/from16 v38, v0

    if-eqz v38, :cond_12

    const/16 v38, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    move/from16 v2, v38

    invoke-virtual {v15, v0, v1, v2}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB([F[FZ)F

    move-result v38

    sget v39, Lcom/threed/jpct/Config;->collideOffset:F

    cmpg-float v38, v38, v39

    if-gez v38, :cond_15

    .line 1476
    :cond_12
    const/high16 v38, 0x40400000    # 3.0f

    sget v39, Lcom/threed/jpct/Config;->collideSectorOffset:F

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/threed/jpct/Object3D;->collide([F[FFF)F

    move-result v25

    .line 1477
    cmpg-float v38, v25, v26

    if-gez v38, :cond_13

    .line 1478
    move/from16 v26, v25

    .line 1479
    move-object v12, v15

    .line 1481
    :cond_13
    const/high16 v38, 0x40400000    # 3.0f

    sget v39, Lcom/threed/jpct/Config;->collideSectorOffset:F

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/threed/jpct/Object3D;->collide([F[FFF)F

    move-result v25

    .line 1482
    cmpg-float v38, v25, v27

    if-gez v38, :cond_14

    .line 1483
    move/from16 v27, v25

    .line 1484
    move-object v13, v15

    .line 1486
    :cond_14
    const/high16 v38, 0x40400000    # 3.0f

    sget v39, Lcom/threed/jpct/Config;->collideSectorOffset:F

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/threed/jpct/Object3D;->collide([F[FFF)F

    move-result v25

    .line 1487
    cmpg-float v38, v25, v28

    if-gez v38, :cond_15

    .line 1488
    move/from16 v28, v25

    .line 1489
    move-object v14, v15

    .line 1468
    :cond_15
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 1514
    .end local v15    # "current":Lcom/threed/jpct/Object3D;
    .restart local v4    # "absSpeed":F
    .restart local v20    # "distHalf":F
    .restart local v35    # "speedX":F
    :cond_16
    sub-float v38, v26, p4

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v35, v0

    goto/16 :goto_5

    .line 1520
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 1530
    .restart local v36    # "speedY":F
    :cond_18
    sub-float v38, v27, p4

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v36, v0

    goto/16 :goto_7

    .line 1536
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 1546
    .restart local v37    # "speedZ":F
    :cond_1a
    sub-float v38, v28, p4

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v37, v0

    goto/16 :goto_9

    .line 1552
    :cond_1b
    const/4 v11, 0x0

    goto/16 :goto_a
.end method

.method private final checkCameraCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;ILcom/threed/jpct/SimpleVector;FI)Z
    .locals 13
    .param p1, "direction"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "mode"    # I
    .param p3, "ellipsoid"    # Lcom/threed/jpct/SimpleVector;
    .param p4, "moveSpeed"    # F
    .param p5, "maxDepth"    # I

    .prologue
    .line 1766
    const/4 v2, 0x0

    .line 1767
    .local v2, "dirX":F
    const/4 v3, 0x0

    .line 1768
    .local v3, "dirY":F
    const/4 v4, 0x0

    .line 1770
    .local v4, "dirZ":F
    if-nez p1, :cond_3

    .line 1771
    const/4 v9, 0x7

    if-eq p2, v9, :cond_1

    .line 1772
    const/high16 v7, -0x40800000    # -1.0f

    .line 1773
    .local v7, "mul":F
    and-int/lit8 v9, p2, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 1774
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1776
    :cond_0
    mul-float v7, v7, p4

    .line 1778
    add-int/lit8 v9, p2, 0x1

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x1

    rsub-int/lit8 v8, v9, 0x2

    .line 1780
    .local v8, "pos":I
    iget-object v9, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v9, v9, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v9, v9, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget v9, v9, v8

    mul-float v2, v9, v7

    .line 1781
    iget-object v9, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v9, v9, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v9, v9, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget v9, v9, v8

    mul-float v3, v9, v7

    .line 1782
    iget-object v9, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v9, v9, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v9, v9, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v10, 0x2

    aget-object v9, v9, v10

    aget v9, v9, v8

    mul-float v4, v9, v7

    .line 1790
    .end local v7    # "mul":F
    .end local v8    # "pos":I
    :cond_1
    :goto_0
    new-instance v1, Lcom/threed/jpct/CollisionInfo;

    invoke-direct {v1}, Lcom/threed/jpct/CollisionInfo;-><init>()V

    .line 1792
    .local v1, "cInf":Lcom/threed/jpct/CollisionInfo;
    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    .line 1793
    new-instance v9, Lcom/threed/jpct/SimpleVector;

    iget-object v10, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v10, v10, Lcom/threed/jpct/Camera;->backBx:F

    iget-object v11, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v11, v11, Lcom/threed/jpct/Camera;->backBy:F

    iget-object v12, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v12, v12, Lcom/threed/jpct/Camera;->backBz:F

    invoke-direct {v9, v10, v11, v12}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    iput-object v9, v1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    .line 1794
    new-instance v9, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v9, v2, v3, v4}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    iput-object v9, v1, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    .line 1795
    invoke-virtual {v1}, Lcom/threed/jpct/CollisionInfo;->calculateInverseAndDest()V

    .line 1797
    iget-object v9, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    invoke-virtual {v9}, Lcom/threed/jpct/Camera;->getEllipsoidMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1798
    new-instance v5, Lcom/threed/jpct/Matrix;

    invoke-direct {v5}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 1799
    .local v5, "mat":Lcom/threed/jpct/Matrix;
    iget-object v9, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v11, v11, Lcom/threed/jpct/Camera;->backBx:F

    aput v11, v9, v10

    .line 1800
    iget-object v9, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v11, v11, Lcom/threed/jpct/Camera;->backBy:F

    aput v11, v9, v10

    .line 1801
    iget-object v9, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v11, v11, Lcom/threed/jpct/Camera;->backBz:F

    aput v11, v9, v10

    .line 1803
    iget-object v9, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v9, v9, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v9}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v6

    .line 1804
    .local v6, "mat2":Lcom/threed/jpct/Matrix;
    invoke-virtual {v6, v5}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 1806
    iput-object v6, v1, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    .line 1807
    iget-object v9, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v9, v9, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v9}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v9

    iput-object v9, v1, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    .line 1810
    .end local v5    # "mat":Lcom/threed/jpct/Matrix;
    .end local v6    # "mat2":Lcom/threed/jpct/Matrix;
    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p5

    invoke-direct {p0, v1, v9, v10, v0}, Lcom/threed/jpct/World;->doWorldCollisionEllipsoid(Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/Object3D;I)V

    .line 1812
    iget-object v9, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v10, v1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget v10, v10, Lcom/threed/jpct/SimpleVector;->x:F

    iput v10, v9, Lcom/threed/jpct/Camera;->backBx:F

    .line 1813
    iget-object v9, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v10, v1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget v10, v10, Lcom/threed/jpct/SimpleVector;->y:F

    iput v10, v9, Lcom/threed/jpct/Camera;->backBy:F

    .line 1814
    iget-object v9, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v10, v1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget v10, v10, Lcom/threed/jpct/SimpleVector;->z:F

    iput v10, v9, Lcom/threed/jpct/Camera;->backBz:F

    .line 1816
    iget-boolean v9, v1, Lcom/threed/jpct/CollisionInfo;->collision:Z

    return v9

    .line 1785
    .end local v1    # "cInf":Lcom/threed/jpct/CollisionInfo;
    :cond_3
    iget v9, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v2, v9, p4

    .line 1786
    iget v9, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v3, v9, p4

    .line 1787
    iget v9, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v4, v9, p4

    goto/16 :goto_0
.end method

.method private final checkCameraCollisionSpherical(Lcom/threed/jpct/SimpleVector;IFFZ)Z
    .locals 12
    .param p1, "direction"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "mode"    # I
    .param p3, "radius"    # F
    .param p4, "moveSpeed"    # F
    .param p5, "slideMode"    # Z

    .prologue
    .line 1676
    const/4 v2, 0x3

    new-array v1, v2, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v3, v3, Lcom/threed/jpct/Camera;->backBx:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v3, v3, Lcom/threed/jpct/Camera;->backBy:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v3, v3, Lcom/threed/jpct/Camera;->backBz:F

    aput v3, v1, v2

    .line 1678
    .local v1, "orig":[F
    if-nez p1, :cond_5

    .line 1679
    const/4 v2, 0x7

    if-eq p2, v2, :cond_1

    .line 1680
    const/high16 v8, -0x40800000    # -1.0f

    .line 1681
    .local v8, "mul":F
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1682
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1684
    :cond_0
    mul-float v8, v8, p4

    .line 1686
    add-int/lit8 v2, p2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    rsub-int/lit8 v9, v2, 0x2

    .line 1688
    .local v9, "pos":I
    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v5, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v5, v5, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v5, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v11, 0x0

    aget-object v5, v5, v11

    aget v5, v5, v9

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 1689
    const/4 v2, 0x1

    aget v3, v1, v2

    iget-object v5, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v5, v5, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v5, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v11, 0x1

    aget-object v5, v5, v11

    aget v5, v5, v9

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 1690
    const/4 v2, 0x2

    aget v3, v1, v2

    iget-object v5, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v5, v5, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v5, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v11, 0x2

    aget-object v5, v5, v11

    aget v5, v5, v9

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 1698
    .end local v8    # "mul":F
    .end local v9    # "pos":I
    :cond_1
    :goto_0
    const/4 v2, 0x1

    new-array v4, v2, [Z

    .line 1700
    .local v4, "col":[Z
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_1
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v2

    if-lt v7, v2, :cond_6

    .line 1718
    const/4 v2, 0x0

    aget-boolean v6, v4, v2

    .line 1720
    .local v6, "collision":Z
    if-nez p5, :cond_2

    if-nez v6, :cond_3

    .line 1721
    :cond_2
    iget-object v2, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    const/4 v3, 0x0

    aget v3, v1, v3

    iput v3, v2, Lcom/threed/jpct/Camera;->backBx:F

    .line 1722
    iget-object v2, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Lcom/threed/jpct/Camera;->backBy:F

    .line 1723
    iget-object v2, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    const/4 v3, 0x2

    aget v3, v1, v3

    iput v3, v2, Lcom/threed/jpct/Camera;->backBz:F

    .line 1726
    :cond_3
    if-eqz v6, :cond_4

    .line 1727
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-instance v11, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v11, v1}, Lcom/threed/jpct/SimpleVector;-><init>([F)V

    invoke-direct {p0, v2, v3, v5, v11}, Lcom/threed/jpct/World;->notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/SimpleVector;)V

    .line 1730
    :cond_4
    return v6

    .line 1693
    .end local v4    # "col":[Z
    .end local v6    # "collision":Z
    .end local v7    # "i":I
    :cond_5
    const/4 v2, 0x0

    aget v3, v1, v2

    iget v5, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v5, v5, p4

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 1694
    const/4 v2, 0x1

    aget v3, v1, v2

    iget v5, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v5, v5, p4

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 1695
    const/4 v2, 0x2

    aget v3, v1, v2

    iget v5, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v5, v5, p4

    add-float/2addr v3, v5

    aput v3, v1, v2

    goto :goto_0

    .line 1701
    .restart local v4    # "col":[Z
    .restart local v7    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v7}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v0

    .line 1702
    .local v0, "current":Lcom/threed/jpct/Object3D;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1703
    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 1705
    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v2, :cond_9

    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v2, :cond_9

    .line 1706
    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1, p3}, Lcom/threed/jpct/Object3D;->sphereIntersectsAABB([FF)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1707
    :cond_7
    const/4 v2, 0x0

    aget-boolean v10, v4, v2

    .line 1708
    .local v10, "storeCol":Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v4, v2

    .line 1709
    sget v3, Lcom/threed/jpct/Config;->collideSectorOffset:F

    const/4 v5, 0x1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->collideSpherical([FFF[ZZ)[F

    move-result-object v1

    .line 1710
    const/4 v2, 0x0

    aget-boolean v2, v4, v2

    if-eqz v2, :cond_8

    .line 1711
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1713
    :cond_8
    const/4 v2, 0x0

    aget-boolean v3, v4, v2

    or-int/2addr v3, v10

    aput-boolean v3, v4, v2

    .line 1700
    .end local v10    # "storeCol":Z
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method private final checkSomeCollision([F[FFLcom/threed/jpct/Object3D;)I
    .locals 13
    .param p1, "orig"    # [F
    .param p2, "dir"    # [F
    .param p3, "step"    # F
    .param p4, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 1579
    const/4 v8, 0x0

    .line 1580
    .local v8, "current":Lcom/threed/jpct/Object3D;
    const/4 v1, 0x0

    .line 1582
    .local v1, "lastCur":Lcom/threed/jpct/Object3D;
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .line 1584
    .local v12, "maxStep":F
    const v11, 0x5368d4a5    # 1.0E12f

    .line 1586
    .local v11, "lastT":F
    const/4 v9, 0x2

    .local v9, "i":I
    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v2

    if-lt v9, v2, :cond_4

    .line 1603
    cmpg-float v2, v12, p3

    if-gez v2, :cond_a

    if-eqz v1, :cond_a

    .line 1605
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1606
    const/4 v10, 0x2

    .local v10, "k":I
    :goto_1
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v2

    if-lt v10, v2, :cond_8

    .line 1614
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p4

    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/threed/jpct/Object3D;->disableListeners:Z

    if-nez v2, :cond_3

    .line 1615
    :cond_1
    const/4 v2, 0x1

    new-array v5, v2, [Lcom/threed/jpct/Object3D;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 1616
    .local v5, "targets":[Lcom/threed/jpct/Object3D;
    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    invoke-static {v2, v3, v4}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v6

    .line 1617
    .local v6, "pos":Lcom/threed/jpct/SimpleVector;
    invoke-virtual {v6, v12}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 1618
    iget v2, v6, Lcom/threed/jpct/SimpleVector;->x:F

    const/4 v3, 0x0

    aget v3, p1, v3

    add-float/2addr v2, v3

    iput v2, v6, Lcom/threed/jpct/SimpleVector;->x:F

    .line 1619
    iget v2, v6, Lcom/threed/jpct/SimpleVector;->y:F

    const/4 v3, 0x1

    aget v3, p1, v3

    add-float/2addr v2, v3

    iput v2, v6, Lcom/threed/jpct/SimpleVector;->y:F

    .line 1620
    iget v2, v6, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v3, 0x2

    aget v3, p1, v3

    add-float/2addr v2, v3

    iput v2, v6, Lcom/threed/jpct/SimpleVector;->z:F

    .line 1622
    if-eqz p4, :cond_2

    .line 1623
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 1625
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p4

    invoke-virtual/range {v1 .. v6}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 1627
    .end local v5    # "targets":[Lcom/threed/jpct/Object3D;
    .end local v6    # "pos":Lcom/threed/jpct/SimpleVector;
    :cond_3
    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v2

    .line 1629
    .end local v10    # "k":I
    :goto_2
    return v2

    .line 1587
    :cond_4
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v9}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v8

    .line 1588
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1589
    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 1591
    iget-boolean v2, v8, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v2, :cond_7

    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    if-eq v8, v0, :cond_7

    :cond_5
    iget-boolean v2, v8, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v2, :cond_7

    .line 1592
    iget-boolean v2, v8, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v8, p1, p2, v2}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB([F[FZ)F

    move-result v2

    sget v3, Lcom/threed/jpct/Config;->collideOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 1593
    :cond_6
    sget v2, Lcom/threed/jpct/Config;->collideSectorOffset:F

    move/from16 v0, p3

    invoke-virtual {v8, p1, p2, v0, v2}, Lcom/threed/jpct/Object3D;->collide([F[FFF)F

    move-result v11

    .line 1594
    cmpg-float v2, v11, v12

    if-gez v2, :cond_7

    .line 1595
    move v12, v11

    .line 1596
    cmpg-float v2, v12, p3

    if-gez v2, :cond_7

    .line 1597
    move-object v1, v8

    .line 1586
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1607
    .restart local v10    # "k":I
    :cond_8
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v10}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v7

    .line 1608
    .local v7, "cur":Lcom/threed/jpct/Object3D;
    if-eq v7, v1, :cond_9

    .line 1609
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1610
    invoke-virtual {v7}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 1606
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1629
    .end local v7    # "cur":Lcom/threed/jpct/Object3D;
    .end local v10    # "k":I
    :cond_a
    const/16 v2, -0x64

    goto :goto_2
.end method

.method private final checkSomeCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Object3D;I)Lcom/threed/jpct/SimpleVector;
    .locals 8
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "direction"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "ellipsoid"    # Lcom/threed/jpct/SimpleVector;
    .param p4, "obj"    # Lcom/threed/jpct/Object3D;
    .param p5, "maxDepth"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 1734
    new-instance v0, Lcom/threed/jpct/CollisionInfo;

    invoke-direct {v0}, Lcom/threed/jpct/CollisionInfo;-><init>()V

    .line 1736
    .local v0, "cInf":Lcom/threed/jpct/CollisionInfo;
    iput-object p3, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    .line 1737
    invoke-static {p1}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    .line 1738
    invoke-static {p2}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    .line 1739
    invoke-virtual {v0}, Lcom/threed/jpct/CollisionInfo;->calculateInverseAndDest()V

    .line 1741
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/threed/jpct/Object3D;->getEllipsoidMode()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 1742
    invoke-virtual {p4}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    .line 1743
    iget-object v3, v0, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v3}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 1744
    .local v1, "m":Lcom/threed/jpct/Matrix;
    iget-object v3, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v4

    aput v5, v3, v6

    .line 1745
    iget-object v3, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v4

    aput v5, v3, v7

    .line 1746
    iget-object v3, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    .line 1747
    iput-object v1, v0, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    .line 1750
    .end local v1    # "m":Lcom/threed/jpct/Matrix;
    :cond_0
    invoke-direct {p0, v0, v6, p4, p5}, Lcom/threed/jpct/World;->doWorldCollisionEllipsoid(Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/Object3D;I)V

    .line 1752
    iget-object v2, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    .line 1754
    .local v2, "orig":Lcom/threed/jpct/SimpleVector;
    iget-boolean v3, v0, Lcom/threed/jpct/CollisionInfo;->collision:Z

    if-eqz v3, :cond_1

    .line 1755
    iget v3, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/threed/jpct/SimpleVector;->x:F

    .line 1756
    iget v3, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/threed/jpct/SimpleVector;->y:F

    .line 1757
    iget v3, v2, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/threed/jpct/SimpleVector;->z:F

    .line 1761
    :goto_0
    return-object v2

    .line 1759
    :cond_1
    invoke-virtual {v2, p2}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    goto :goto_0
.end method

.method private final checkSomeCollisionSpherical([F[FFLcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;
    .locals 9
    .param p1, "org"    # [F
    .param p2, "dir"    # [F
    .param p3, "radius"    # F
    .param p4, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 1634
    const/4 v0, 0x0

    .line 1635
    .local v0, "current":Lcom/threed/jpct/Object3D;
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 1637
    .local v1, "orig":[F
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v5, 0x0

    aget v5, p2, v5

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 1638
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v5, 0x1

    aget v5, p2, v5

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 1639
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v5, 0x2

    aget v5, p2, v5

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 1641
    const/4 v2, 0x1

    new-array v4, v2, [Z

    .line 1643
    .local v4, "col":[Z
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v2

    if-lt v7, v2, :cond_0

    .line 1663
    const/4 v2, 0x0

    aget-boolean v2, v4, v2

    if-eqz v2, :cond_5

    .line 1664
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v5, 0x2

    aget v5, v1, v5

    invoke-static {v2, v3, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v6

    .line 1665
    .local v6, "dirS":Lcom/threed/jpct/SimpleVector;
    iget v2, v6, Lcom/threed/jpct/SimpleVector;->x:F

    const/4 v3, 0x0

    aget v3, p1, v3

    sub-float/2addr v2, v3

    iput v2, v6, Lcom/threed/jpct/SimpleVector;->x:F

    .line 1666
    iget v2, v6, Lcom/threed/jpct/SimpleVector;->y:F

    const/4 v3, 0x1

    aget v3, p1, v3

    sub-float/2addr v2, v3

    iput v2, v6, Lcom/threed/jpct/SimpleVector;->y:F

    .line 1667
    iget v2, v6, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v3, 0x2

    aget v3, p1, v3

    sub-float/2addr v2, v3

    iput v2, v6, Lcom/threed/jpct/SimpleVector;->z:F

    .line 1668
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p4, v2, v3, v1}, Lcom/threed/jpct/World;->notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;I[F)V

    .line 1671
    .end local v6    # "dirS":Lcom/threed/jpct/SimpleVector;
    :goto_1
    return-object v6

    .line 1644
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v7}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v0

    .line 1645
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1646
    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 1648
    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v2, :cond_4

    if-eqz p4, :cond_1

    if-eq v0, p4, :cond_4

    :cond_1
    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v2, :cond_4

    .line 1650
    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, p3}, Lcom/threed/jpct/Object3D;->sphereIntersectsAABB([FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1651
    :cond_2
    const/4 v2, 0x0

    aget-boolean v8, v4, v2

    .line 1652
    .local v8, "storeCol":Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v4, v2

    .line 1653
    sget v3, Lcom/threed/jpct/Config;->collideSectorOffset:F

    const/4 v5, 0x0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->collideSpherical([FFF[ZZ)[F

    move-result-object v1

    .line 1654
    const/4 v2, 0x0

    aget-boolean v2, v4, v2

    if-eqz v2, :cond_3

    .line 1655
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1657
    :cond_3
    const/4 v2, 0x0

    aget-boolean v3, v4, v2

    or-int/2addr v3, v8

    aput-boolean v3, v4, v2

    .line 1643
    .end local v8    # "storeCol":Z
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1671
    :cond_5
    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v5, 0x2

    aget v5, p2, v5

    invoke-static {v2, v3, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v6

    goto :goto_1
.end method

.method private compile(Lcom/threed/jpct/Object3D;)V
    .locals 1
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/threed/jpct/World;->compiler:Lcom/threed/jpct/Object3DCompiler;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3DCompiler;->compile(Lcom/threed/jpct/Object3D;)V

    .line 2005
    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->toStrip:Z

    if-eqz v0, :cond_0

    .line 2006
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->reallyStrip()V

    .line 2008
    :cond_0
    return-void
.end method

.method private final doWorldCollisionEllipsoid(Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/Object3D;I)V
    .locals 35
    .param p1, "cInf"    # Lcom/threed/jpct/CollisionInfo;
    .param p2, "depth"    # I
    .param p3, "obj"    # Lcom/threed/jpct/Object3D;
    .param p4, "maxDepth"    # I

    .prologue
    .line 1821
    sget v26, Lcom/threed/jpct/Config;->collideEllipsoidThreshold:F

    .line 1822
    .local v26, "veryCloseDistance":F
    mul-float v27, v26, v26

    .line 1823
    .local v27, "veryCloseDistanceSquared":F
    const/4 v5, 0x0

    .line 1825
    .local v5, "collision":Z
    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_1

    .line 2001
    :cond_0
    :goto_0
    return-void

    .line 1829
    :cond_1
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/threed/jpct/CollisionInfo;->foundCollision:Z

    .line 1830
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 1831
    const v31, 0x51ba43b7    # 9.9999998E10f

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput v0, v1, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    .line 1832
    if-nez p2, :cond_2

    .line 1833
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/threed/jpct/CollisionInfo;->collision:Z

    .line 1837
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v23, v0

    .line 1838
    .local v23, "tr":Lcom/threed/jpct/SimpleVector;
    const/16 v24, 0x0

    .line 1840
    .local v24, "tr2":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move-object/from16 v0, v23

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v32, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move-object/from16 v0, v23

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v32, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v12, v31, v32

    .line 1842
    .local v12, "ltr":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v13, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 1843
    .local v13, "min":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v31, v0

    cmpl-float v31, v13, v31

    if-lez v31, :cond_3

    .line 1844
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v13, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 1846
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v31, v0

    cmpl-float v31, v13, v31

    if-lez v31, :cond_4

    .line 1847
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v13, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 1850
    :cond_4
    const/high16 v31, 0x40000000    # 2.0f

    mul-float v13, v13, v31

    .line 1851
    mul-float v31, v13, v13

    cmpl-float v31, v12, v31

    if-lez v31, :cond_5

    .line 1852
    invoke-static/range {v23 .. v23}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v23

    .line 1853
    move-object/from16 v0, v23

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/threed/jpct/SimpleVector;->x:F

    .line 1854
    move-object/from16 v0, v23

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/threed/jpct/SimpleVector;->y:F

    .line 1855
    move-object/from16 v0, v23

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Lcom/threed/jpct/SimpleVector;->z:F

    .line 1856
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 1857
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v24

    .line 1858
    const/high16 v31, 0x3f000000    # 0.5f

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 1859
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 1862
    :cond_5
    const/4 v8, 0x2

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v31

    move/from16 v0, v31

    if-lt v8, v0, :cond_6

    .line 1893
    if-nez v5, :cond_e

    .line 1894
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    goto/16 :goto_0

    .line 1863
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v6

    .line 1864
    .local v6, "current":Lcom/threed/jpct/Object3D;
    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->getLazyTransformationState()Z

    move-result v9

    .line 1865
    .local v9, "lazy":Z
    if-nez v9, :cond_7

    .line 1866
    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->enableLazyTransformations()V

    .line 1869
    :cond_7
    if-nez p2, :cond_8

    .line 1870
    const/16 v31, 0x0

    move/from16 v0, v31

    iput-boolean v0, v6, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1871
    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 1874
    :cond_8
    iget-boolean v0, v6, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    if-eqz p3, :cond_9

    move-object/from16 v0, p3

    if-eq v6, v0, :cond_c

    :cond_9
    iget-boolean v0, v6, Lcom/threed/jpct/Object3D;->isVisible:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    .line 1875
    iget-boolean v0, v6, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    .line 1876
    if-eqz v24, :cond_a

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/threed/jpct/Object3D;->ellipsoidIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 1877
    :cond_a
    if-nez v24, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Lcom/threed/jpct/Object3D;->ellipsoidIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Z

    move-result v31

    if-nez v31, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Destx:F

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Desty:F

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Destz:F

    move/from16 v33, v0

    .line 1878
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v34, v0

    .line 1877
    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/threed/jpct/Object3D;->ellipsoidIntersectsAABB(FFFLcom/threed/jpct/SimpleVector;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 1879
    :cond_b
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/threed/jpct/CollisionInfo;->isPartOfCollision:Z

    .line 1881
    sget v31, Lcom/threed/jpct/Config;->collideSectorOffset:F

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Lcom/threed/jpct/Object3D;->collideEllipsoid(Lcom/threed/jpct/CollisionInfo;F)V

    .line 1882
    iget-boolean v0, v6, Lcom/threed/jpct/Object3D;->wasCollider:Z

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/threed/jpct/CollisionInfo;->isPartOfCollision:Z

    move/from16 v32, v0

    or-int v31, v31, v32

    move/from16 v0, v31

    iput-boolean v0, v6, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 1883
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/threed/jpct/CollisionInfo;->isPartOfCollision:Z

    move/from16 v31, v0

    or-int v5, v5, v31

    .line 1887
    :cond_c
    if-nez v9, :cond_d

    .line 1888
    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->disableLazyTransformations()V

    .line 1862
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1898
    .end local v6    # "current":Lcom/threed/jpct/Object3D;
    .end local v9    # "lazy":Z
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v7

    .line 1899
    .local v7, "eSpaceDestPoint":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eSpaceVelocity:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 1901
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v15

    .line 1905
    .local v15, "newBasePoint":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v16, v0

    .line 1906
    .local v16, "newBasePointEx":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v17, v0

    .line 1907
    .local v17, "newBasePointEy":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v18, v0

    .line 1927
    .local v18, "newBasePointEz":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    move/from16 v31, v0

    cmpl-float v31, v31, v26

    if-gez v31, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-gtz v31, :cond_10

    .line 1928
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v25, v0

    .line 1929
    .local v25, "velocity":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    move/from16 v31, v0

    sub-float v14, v31, v26

    .line 1931
    .local v14, "mul":F
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    mul-float v28, v31, v14

    .line 1932
    .local v28, "vx":F
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v31, v0

    mul-float v29, v31, v14

    .line 1933
    .local v29, "vy":F
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v31, v0

    mul-float v30, v31, v14

    .line 1935
    .local v30, "vz":F
    iget v0, v15, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    add-float v31, v31, v28

    move/from16 v0, v31

    iput v0, v15, Lcom/threed/jpct/SimpleVector;->x:F

    .line 1936
    iget v0, v15, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v31, v0

    add-float v31, v31, v29

    move/from16 v0, v31

    iput v0, v15, Lcom/threed/jpct/SimpleVector;->y:F

    .line 1937
    iget v0, v15, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v31, v0

    add-float v31, v31, v30

    move/from16 v0, v31

    iput v0, v15, Lcom/threed/jpct/SimpleVector;->z:F

    .line 1939
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eSpaceVelocity:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v25, v0

    .line 1940
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    mul-float v28, v31, v14

    .line 1941
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v31, v0

    mul-float v29, v31, v14

    .line 1942
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v31, v0

    mul-float v30, v31, v14

    .line 1944
    add-float v16, v16, v28

    .line 1945
    add-float v17, v17, v29

    .line 1946
    add-float v18, v18, v30

    .line 1948
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v32, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v32, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v10, v0

    .line 1950
    .local v10, "len":F
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    div-float v28, v31, v10

    .line 1951
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v31, v0

    div-float v29, v31, v10

    .line 1952
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v31, v0

    div-float v30, v31, v10

    .line 1954
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    mul-float v32, v26, v28

    sub-float v31, v31, v32

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v32, v0

    mul-float v33, v26, v29

    sub-float v32, v32, v33

    .line 1955
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v33, v0

    mul-float v34, v26, v30

    sub-float v33, v33, v34

    .line 1954
    invoke-static/range {v31 .. v33}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 1958
    .end local v10    # "len":F
    .end local v14    # "mul":F
    .end local v25    # "velocity":Lcom/threed/jpct/SimpleVector;
    .end local v28    # "vx":F
    .end local v29    # "vy":F
    .end local v30    # "vz":F
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v21, v0

    .line 1959
    .local v21, "slidePlaneOrigin":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    sub-float v31, v16, v31

    move-object/from16 v0, v21

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v32, v0

    sub-float v32, v17, v32

    move-object/from16 v0, v21

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v33, v0

    sub-float v33, v18, v33

    invoke-static/range {v31 .. v33}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v20

    .line 1960
    .local v20, "slidePlaneNormal":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v20

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v20

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->slidePlaneTmp:Lcom/threed/jpct/Plane;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/Plane;->setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->slidePlaneTmp:Lcom/threed/jpct/Plane;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/threed/jpct/Plane;->distanceTo(Lcom/threed/jpct/SimpleVector;)F

    move-result v31

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 1970
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    .line 1971
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/threed/jpct/SimpleVector;->calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v19

    .line 1973
    .local v19, "newVelocityVector":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v32, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v32, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v11, v31, v32

    .line 1975
    .local v11, "length":F
    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v19

    iput v0, v1, Lcom/threed/jpct/SimpleVector;->x:F

    .line 1976
    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v19

    iput v0, v1, Lcom/threed/jpct/SimpleVector;->y:F

    .line 1977
    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v19

    iput v0, v1, Lcom/threed/jpct/SimpleVector;->z:F

    .line 1979
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    move-object/from16 v31, v0

    if-nez v31, :cond_13

    .line 1980
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->collisionObject:Lcom/threed/jpct/Object3D;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/World;->tmpMatCol:Lcom/threed/jpct/Matrix;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/Object3D;->reverseTransform(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;Z)Lcom/threed/jpct/SimpleVector;

    move-result-object v19

    .line 1985
    :goto_2
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    .line 1986
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    .line 1988
    const/16 v22, 0x0

    .line 1989
    .local v22, "storePos":Lcom/threed/jpct/SimpleVector;
    if-nez p2, :cond_11

    .line 1990
    invoke-static {v15}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v22

    .line 1993
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/CollisionInfo;->recalcDest()V

    .line 1995
    cmpl-float v31, v11, v27

    if-ltz v31, :cond_12

    .line 1996
    add-int/lit8 v31, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threed/jpct/World;->doWorldCollisionEllipsoid(Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/Object3D;I)V

    .line 1998
    :cond_12
    if-nez p2, :cond_0

    .line 1999
    const/16 v31, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move/from16 v3, v31

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/threed/jpct/World;->notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/SimpleVector;)V

    goto/16 :goto_0

    .line 1982
    .end local v22    # "storePos":Lcom/threed/jpct/SimpleVector;
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    goto :goto_2
.end method

.method private final draw(Lcom/threed/jpct/FrameBuffer;ZIIZ)V
    .locals 14
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "wireframe"    # Z
    .param p3, "frameColor"    # I
    .param p4, "size"    # I
    .param p5, "pointMode"    # Z

    .prologue
    .line 1323
    iget-boolean v1, p0, Lcom/threed/jpct/World;->calledRender:Z

    if-nez v1, :cond_0

    .line 1324
    iget-object v1, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v1, p0, p1}, Lcom/threed/jpct/GLRenderer;->setFrustumAndFog(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V

    .line 1326
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/threed/jpct/World;->calledRender:Z

    .line 1328
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/threed/jpct/World;->setPlanes(Z)V

    .line 1329
    iget-object v0, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    .line 1331
    .local v0, "gl":Lcom/threed/jpct/GLRenderer;
    const/4 v9, 0x0

    .line 1333
    .local v9, "hasToResetViewport":Z
    iget-wide v1, p0, Lcom/threed/jpct/World;->drawCnt:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/threed/jpct/World;->drawCnt:J

    .line 1335
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v13

    .line 1336
    .local v13, "width":I
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v10

    .line 1337
    .local v10, "height":I
    iget-object v1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    iget v3, v1, Lcom/threed/jpct/VisList;->anzpoly:I

    .line 1339
    .local v3, "end":I
    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->startPainting()V

    .line 1341
    iget-object v1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    iget v1, v1, Lcom/threed/jpct/VisList;->anzpoly:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1343
    sget v1, Lcom/threed/jpct/Config;->viewportOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    sget v1, Lcom/threed/jpct/Config;->viewportOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 1344
    :cond_1
    sget v1, Lcom/threed/jpct/Config;->viewportOffsetX:F

    int-to-float v2, v13

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/threed/jpct/Config;->viewportOffsetY:F

    neg-float v2, v2

    int-to-float v4, v10

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v13, v10}, Lcom/threed/jpct/GLRenderer;->setBufferViewport(IIII)V

    .line 1345
    const/4 v9, 0x1

    .line 1348
    :cond_2
    if-eqz p2, :cond_5

    .line 1349
    iget-object v1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    const/4 v2, 0x0

    move/from16 v4, p3

    move-object v5, p1

    move-object v6, p0

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/threed/jpct/GLRenderer;->drawWireframe(Lcom/threed/jpct/VisList;IIILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;IZ)V

    .line 1354
    :goto_0
    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->endState()V

    .line 1355
    if-eqz v9, :cond_3

    .line 1356
    iget-object v1, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v13, v10}, Lcom/threed/jpct/GLRenderer;->setBufferViewport(IIII)V

    .line 1360
    :cond_3
    iget-object v1, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 1361
    invoke-virtual {v0, p0}, Lcom/threed/jpct/GLRenderer;->enableLineMode(Lcom/threed/jpct/World;)V

    .line 1362
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget-object v1, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v11, v1, :cond_6

    .line 1368
    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->disableLineMode()V

    .line 1371
    .end local v11    # "i":I
    :cond_4
    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->endPainting()V

    .line 1372
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/threed/jpct/World;->setPlanes(Z)V

    .line 1373
    return-void

    .line 1351
    :cond_5
    iget-object v1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    const/4 v2, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/GLRenderer;->drawVertexArray(Lcom/threed/jpct/VisList;IILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V

    goto :goto_0

    .line 1363
    .restart local v11    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/threed/jpct/Polyline;

    .line 1364
    .local v12, "line":Lcom/threed/jpct/Polyline;
    invoke-virtual {v12}, Lcom/threed/jpct/Polyline;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1365
    invoke-virtual {v0, v12}, Lcom/threed/jpct/GLRenderer;->drawLine(Lcom/threed/jpct/Polyline;)V

    .line 1362
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized getDefaultThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 1238
    const-class v0, Lcom/threed/jpct/World;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasToNotify(Lcom/threed/jpct/CollisionInfo;)Z
    .locals 1
    .param p1, "cInf"    # Lcom/threed/jpct/CollisionInfo;

    .prologue
    .line 2017
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/threed/jpct/CollisionInfo;->collision:Z

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/SimpleVector;)V
    .locals 8
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "cInf"    # Lcom/threed/jpct/CollisionInfo;
    .param p3, "algorithm"    # I
    .param p4, "contact"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 2021
    invoke-direct {p0, p2}, Lcom/threed/jpct/World;->hasToNotify(Lcom/threed/jpct/CollisionInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2023
    iget-object v1, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    if-nez v1, :cond_2

    .line 2024
    new-instance v1, Lcom/threed/jpct/Object3DList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/threed/jpct/Object3DList;-><init>(I)V

    iput-object v1, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    .line 2028
    :goto_0
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_1
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v1

    if-lt v7, v1, :cond_3

    .line 2035
    iget-object v1, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->toArray()[Lcom/threed/jpct/Object3D;

    move-result-object v4

    .line 2037
    .local v4, "arr":[Lcom/threed/jpct/Object3D;
    if-eqz p1, :cond_0

    .line 2038
    const/4 v1, 0x1

    invoke-virtual {p1, v1, p3, v4, p4}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 2041
    :cond_0
    const/4 v7, 0x0

    :goto_2
    iget-object v1, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v1

    if-lt v7, v1, :cond_5

    .line 2046
    .end local v4    # "arr":[Lcom/threed/jpct/Object3D;
    .end local v7    # "i":I
    :cond_1
    return-void

    .line 2026
    :cond_2
    iget-object v1, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->clear()V

    goto :goto_0

    .line 2029
    .restart local v7    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1, v7}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v6

    .line 2030
    .local v6, "current":Lcom/threed/jpct/Object3D;
    iget-boolean v1, v6, Lcom/threed/jpct/Object3D;->wasCollider:Z

    if-eqz v1, :cond_4

    .line 2031
    iget-object v1, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1, v6}, Lcom/threed/jpct/Object3DList;->addElement(Lcom/threed/jpct/Object3D;)V

    .line 2028
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2042
    .end local v6    # "current":Lcom/threed/jpct/Object3D;
    .restart local v4    # "arr":[Lcom/threed/jpct/Object3D;
    :cond_5
    iget-object v1, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1, v7}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v0

    .line 2043
    .local v0, "cur":Lcom/threed/jpct/Object3D;
    const/4 v2, 0x0

    move-object v1, p1

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 2041
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;I[F)V
    .locals 3
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "cInf"    # Lcom/threed/jpct/CollisionInfo;
    .param p3, "algorithm"    # I
    .param p4, "contact"    # [F

    .prologue
    .line 2011
    invoke-direct {p0, p2}, Lcom/threed/jpct/World;->hasToNotify(Lcom/threed/jpct/CollisionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    const/4 v0, 0x0

    aget v0, p4, v0

    const/4 v1, 0x1

    aget v1, p4, v1

    const/4 v2, 0x2

    aget v2, p4, v2

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/World;->notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/SimpleVector;)V

    .line 2014
    :cond_0
    return-void
.end method

.method public static declared-synchronized setDefaultThread(Ljava/lang/Thread;)V
    .locals 2
    .param p0, "def"    # Ljava/lang/Thread;

    .prologue
    .line 1229
    const-class v0, Lcom/threed/jpct/World;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    monitor-exit v0

    return-void

    .line 1229
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method addLight(Lcom/threed/jpct/SimpleVector;FFF)I
    .locals 7
    .param p1, "lightPos"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "r"    # F
    .param p3, "g"    # F
    .param p4, "b"    # F

    .prologue
    .line 351
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Lights;->addLight(FFFFFF)I

    move-result v0

    return v0
.end method

.method addLight(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/RGBColor;)I
    .locals 7
    .param p1, "lightPos"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "col"    # Lcom/threed/jpct/RGBColor;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Lights;->addLight(FFFFFF)I

    move-result v0

    return v0
.end method

.method public addObject(Lcom/threed/jpct/Object3D;)I
    .locals 2
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    const-string v0, "Can\'t add \'null\' to a World!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 321
    const/16 v0, -0x64

    .line 333
    :goto_0
    return v0

    .line 324
    :cond_0
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-ne v0, p0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3DList;->contains(Lcom/threed/jpct/Object3D;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' already belongs to this world!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 327
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v0

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3DList;->addElement(Lcom/threed/jpct/Object3D;)V

    .line 332
    iput-object p0, p1, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    .line 333
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v0

    goto :goto_0
.end method

.method public varargs addObjects([Lcom/threed/jpct/Object3D;)V
    .locals 2
    .param p1, "objs"    # [Lcom/threed/jpct/Object3D;

    .prologue
    .line 345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 348
    return-void

    .line 346
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addPolyline(Lcom/threed/jpct/Polyline;)V
    .locals 1
    .param p1, "line"    # Lcom/threed/jpct/Polyline;

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    return-void
.end method

.method public buildAllObjects()V
    .locals 3

    .prologue
    .line 935
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    .line 936
    .local v0, "end":I
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 939
    return-void

    .line 937
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->build()V

    .line 936
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F
    .locals 12
    .param p1, "orig"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "dir"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "ignoreIfLarger"    # F

    .prologue
    const/4 v11, 0x1

    const v8, 0x5368d4a5    # 1.0E12f

    const/4 v10, 0x0

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, "current":Lcom/threed/jpct/Object3D;
    const/4 v4, 0x0

    .line 787
    .local v4, "minObj":Lcom/threed/jpct/Object3D;
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 788
    .local v3, "min":F
    iget-object v9, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v9}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v1

    .line 790
    .local v1, "end":I
    iget-object v9, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v9}, Lcom/threed/jpct/Object3DList;->getInternalArray()[Lcom/threed/jpct/Object3D;

    move-result-object v5

    .line 792
    .local v5, "objArray":[Lcom/threed/jpct/Object3D;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 803
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_4

    cmpl-float v9, v3, v8

    if-eqz v9, :cond_4

    .line 804
    iget-object v8, v4, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 805
    new-instance v6, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v6, p2}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    .line 806
    .local v6, "pos":Lcom/threed/jpct/SimpleVector;
    invoke-virtual {v6, v3}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 807
    new-instance v8, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v8, p1}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v6, v8}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 808
    new-array v8, v11, [Lcom/threed/jpct/Object3D;

    aput-object v4, v8, v10

    invoke-virtual {v4, v10, v10, v8, v6}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 810
    .end local v6    # "pos":Lcom/threed/jpct/SimpleVector;
    :cond_0
    iput-boolean v11, v4, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 813
    .end local v3    # "min":F
    :goto_1
    return v3

    .line 793
    .restart local v3    # "min":F
    :cond_1
    aget-object v0, v5, v2

    .line 795
    iget-boolean v9, v0, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v9, :cond_3

    iget-boolean v9, v0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v9, :cond_3

    iget-boolean v9, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v9, :cond_2

    invoke-virtual {v0, p1, p2, v11}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)F

    move-result v9

    cmpg-float v9, v9, p3

    if-gez v9, :cond_3

    .line 796
    :cond_2
    invoke-virtual {v0, p1, p2, p3, v10}, Lcom/threed/jpct/Object3D;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FZ)F

    move-result v7

    .line 797
    .local v7, "tmp":F
    cmpg-float v9, v7, v3

    if-gez v9, :cond_3

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_3

    .line 798
    move v3, v7

    .line 799
    move-object v4, v0

    .line 792
    .end local v7    # "tmp":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v3, v8

    .line 813
    goto :goto_1
.end method

.method public calcMinDistanceAndObject3D(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)[Ljava/lang/Object;
    .locals 12
    .param p1, "orig"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "dir"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "ignoreIfLarger"    # F

    .prologue
    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, "current":Lcom/threed/jpct/Object3D;
    const/4 v4, 0x0

    .line 732
    .local v4, "minObj":Lcom/threed/jpct/Object3D;
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 734
    .local v3, "min":F
    iget-object v8, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v8}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v1

    .line 735
    .local v1, "end":I
    iget-object v8, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v8}, Lcom/threed/jpct/Object3DList;->getInternalArray()[Lcom/threed/jpct/Object3D;

    move-result-object v5

    .line 737
    .local v5, "objArray":[Lcom/threed/jpct/Object3D;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 748
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_4

    const v8, 0x5368d4a5    # 1.0E12f

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_4

    .line 749
    iget-object v8, v4, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 750
    new-instance v6, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v6, p2}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    .line 751
    .local v6, "pos":Lcom/threed/jpct/SimpleVector;
    invoke-virtual {v6, v3}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 752
    new-instance v8, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v8, p1}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v6, v8}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 753
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/threed/jpct/Object3D;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v4, v8, v9, v10, v6}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 755
    .end local v6    # "pos":Lcom/threed/jpct/SimpleVector;
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 756
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    .line 758
    :goto_1
    return-object v8

    .line 738
    :cond_1
    aget-object v0, v5, v2

    .line 740
    iget-boolean v8, v0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v0, p1, p2, v8}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)F

    move-result v8

    cmpg-float v8, v8, p3

    if-gez v8, :cond_3

    .line 741
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v0, p1, p2, p3, v8}, Lcom/threed/jpct/Object3D;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FZ)F

    move-result v7

    .line 742
    .local v7, "tmp":F
    cmpg-float v8, v7, v3

    if-gez v8, :cond_3

    const v8, 0x5368d4a5    # 1.0E12f

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_3

    .line 743
    move v3, v7

    .line 744
    move-object v4, v0

    .line 737
    .end local v7    # "tmp":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 758
    :cond_4
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0x5368d4a5    # 1.0E12f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_1
.end method

.method public checkCameraCollision(IF)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "moveSpeed"    # F

    .prologue
    .line 620
    const/4 v1, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result v0

    return v0
.end method

.method public checkCameraCollision(IFFZ)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "moveSpeed"    # F
    .param p3, "distance"    # F
    .param p4, "slideMode"    # Z

    .prologue
    .line 675
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result v0

    return v0
.end method

.method public checkCameraCollision(IFZ)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "moveSpeed"    # F
    .param p3, "slideMode"    # Z

    .prologue
    .line 646
    const/4 v1, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result v0

    return v0
.end method

.method public checkCameraCollision(Lcom/threed/jpct/SimpleVector;FFZ)Z
    .locals 6
    .param p1, "direction"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "moveSpeed"    # F
    .param p3, "distance"    # F
    .param p4, "slideMode"    # Z

    .prologue
    .line 699
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result v0

    return v0
.end method

.method public checkCameraCollisionEllipsoid(ILcom/threed/jpct/SimpleVector;FI)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "ellipsoid"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "moveSpeed"    # F
    .param p4, "recursionDepth"    # I

    .prologue
    .line 898
    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    .line 899
    const/4 p4, 0x1

    .line 901
    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;ILcom/threed/jpct/SimpleVector;FI)Z

    move-result v0

    return v0
.end method

.method public checkCameraCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FI)Z
    .locals 6
    .param p1, "direction"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "ellipsoid"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "moveSpeed"    # F
    .param p4, "recursionDepth"    # I

    .prologue
    .line 923
    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    .line 924
    const/4 p4, 0x1

    .line 926
    :cond_0
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;ILcom/threed/jpct/SimpleVector;FI)Z

    move-result v0

    return v0
.end method

.method public checkCameraCollisionSpherical(IFFZ)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "radius"    # F
    .param p3, "moveSpeed"    # F
    .param p4, "slideMode"    # Z

    .prologue
    .line 845
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollisionSpherical(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result v0

    return v0
.end method

.method public checkCameraCollisionSpherical(Lcom/threed/jpct/SimpleVector;FFZ)Z
    .locals 6
    .param p1, "direction"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "radius"    # F
    .param p3, "moveSpeed"    # F
    .param p4, "slideMode"    # Z

    .prologue
    .line 869
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollisionSpherical(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result v0

    return v0
.end method

.method public checkCollision(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)I
    .locals 8
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "dr"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "step"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 538
    invoke-virtual {p2}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object v0

    .line 539
    .local v0, "drA":[F
    aget v2, v0, v5

    aget v3, v0, v5

    mul-float/2addr v2, v3

    aget v3, v0, v6

    aget v4, v0, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aget v3, v0, v7

    aget v4, v0, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 540
    .local v1, "len":F
    aget v2, v0, v5

    div-float/2addr v2, v1

    aput v2, v0, v5

    .line 541
    aget v2, v0, v6

    div-float/2addr v2, v1

    aput v2, v0, v6

    .line 542
    aget v2, v0, v7

    div-float/2addr v2, v1

    aput v2, v0, v7

    .line 543
    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, p3, v3}, Lcom/threed/jpct/World;->checkSomeCollision([F[FFLcom/threed/jpct/Object3D;)I

    move-result v2

    return v2
.end method

.method public checkCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;
    .locals 6
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "translation"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "ellipsoid"    # Lcom/threed/jpct/SimpleVector;
    .param p4, "recursionDepth"    # I

    .prologue
    .line 595
    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    .line 596
    const/4 p4, 0x1

    .line 598
    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkSomeCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Object3D;I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public checkCollisionSpherical(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "translation"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "radius"    # F

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object v0

    invoke-virtual {p2}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/threed/jpct/World;->checkSomeCollisionSpherical([F[FFLcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method final checkObjCollision(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;F)I
    .locals 12
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "dirVec"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "step"    # F

    .prologue
    const/4 v1, 0x3

    .line 1300
    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->mayCollide:Z

    if-eqz v0, :cond_0

    .line 1302
    new-array v5, v1, [F

    .line 1303
    .local v5, "orig":[F
    new-array v7, v1, [F

    .line 1305
    .local v7, "dir":[F
    iget v1, p1, Lcom/threed/jpct/Object3D;->centerX:F

    iget v2, p1, Lcom/threed/jpct/Object3D;->centerY:F

    iget v3, p1, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/threed/jpct/World;->tmpMat:Lcom/threed/jpct/Matrix;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    .line 1307
    iget v9, p2, Lcom/threed/jpct/SimpleVector;->x:F

    .line 1308
    .local v9, "x":F
    iget v10, p2, Lcom/threed/jpct/SimpleVector;->y:F

    .line 1309
    .local v10, "y":F
    iget v11, p2, Lcom/threed/jpct/SimpleVector;->z:F

    .line 1311
    .local v11, "z":F
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, v9, v9

    mul-float v2, v10, v10

    add-float/2addr v1, v2

    mul-float v2, v11, v11

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float v8, v0, v1

    .line 1312
    .local v8, "dn":F
    const/4 v0, 0x0

    mul-float v1, v9, v8

    aput v1, v7, v0

    .line 1313
    const/4 v0, 0x1

    mul-float v1, v10, v8

    aput v1, v7, v0

    .line 1314
    const/4 v0, 0x2

    mul-float v1, v11, v8

    aput v1, v7, v0

    .line 1316
    invoke-direct {p0, v5, v7, p3, p1}, Lcom/threed/jpct/World;->checkSomeCollision([F[FFLcom/threed/jpct/Object3D;)I

    move-result v0

    .line 1318
    .end local v5    # "orig":[F
    .end local v7    # "dir":[F
    .end local v8    # "dn":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "z":F
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x64

    goto :goto_0
.end method

.method final checkObjCollisionEllipsoid(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;
    .locals 9
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "dirVec"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "ellipsoid"    # Lcom/threed/jpct/SimpleVector;
    .param p4, "maxDepth"    # I

    .prologue
    .line 1288
    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->mayCollide:Z

    if-eqz v0, :cond_0

    .line 1289
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v4

    .line 1291
    .local v4, "orig":Lcom/threed/jpct/SimpleVector;
    iget v1, p1, Lcom/threed/jpct/Object3D;->centerX:F

    iget v2, p1, Lcom/threed/jpct/Object3D;->centerY:F

    iget v3, p1, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/threed/jpct/World;->tmpMat:Lcom/threed/jpct/Matrix;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    move v8, p4

    .line 1293
    invoke-direct/range {v3 .. v8}, Lcom/threed/jpct/World;->checkSomeCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Object3D;I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 1295
    .end local v4    # "orig":Lcom/threed/jpct/SimpleVector;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    goto :goto_0
.end method

.method final checkObjCollisionSpherical(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;
    .locals 8
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "dirVec"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "radius"    # F

    .prologue
    const/4 v1, 0x3

    .line 1271
    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->mayCollide:Z

    if-eqz v0, :cond_0

    .line 1272
    new-array v5, v1, [F

    .line 1273
    .local v5, "orig":[F
    new-array v7, v1, [F

    .line 1275
    .local v7, "dir":[F
    iget v1, p1, Lcom/threed/jpct/Object3D;->centerX:F

    iget v2, p1, Lcom/threed/jpct/Object3D;->centerY:F

    iget v3, p1, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/threed/jpct/World;->tmpMat:Lcom/threed/jpct/Matrix;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    .line 1277
    const/4 v0, 0x0

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->x:F

    aput v1, v7, v0

    .line 1278
    const/4 v0, 0x1

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    aput v1, v7, v0

    .line 1279
    const/4 v0, 0x2

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->z:F

    aput v1, v7, v0

    .line 1281
    invoke-direct {p0, v5, v7, p3, p1}, Lcom/threed/jpct/World;->checkSomeCollisionSpherical([F[FFLcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 1283
    .end local v5    # "orig":[F
    .end local v7    # "dir":[F
    :goto_0
    return-object v0

    :cond_0
    iget v0, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized compileAllObjects()V
    .locals 6

    .prologue
    .line 949
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v4}, Lcom/threed/jpct/Object3DList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 951
    .local v1, "end":I
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 975
    monitor-exit p0

    return-void

    .line 952
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v4, v2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v0

    .line 953
    .local v0, "current":Lcom/threed/jpct/Object3D;
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    .line 955
    iget-boolean v4, v0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    if-nez v4, :cond_1

    .line 956
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Object "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hasn\'t been build yet. Forcing build()!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 957
    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->build()V

    .line 960
    :cond_1
    iget-object v4, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v4

    iget v4, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v4, :cond_4

    .line 962
    iget-object v4, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v4, :cond_3

    .line 963
    iget-object v3, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    .line 964
    .local v3, "share":Lcom/threed/jpct/Object3D;
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v4

    iget v4, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v4, :cond_3

    .line 965
    iget-object v4, v3, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 966
    iget-boolean v4, v0, Lcom/threed/jpct/Object3D;->dynamic:Z

    iget-boolean v5, v0, Lcom/threed/jpct/Object3D;->staticUV:Z

    invoke-virtual {v3, v4, v5}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    .line 968
    :cond_2
    const-string v4, "Compiling source object..."

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 969
    invoke-direct {p0, v3}, Lcom/threed/jpct/World;->compile(Lcom/threed/jpct/Object3D;)V

    .line 972
    .end local v3    # "share":Lcom/threed/jpct/Object3D;
    :cond_3
    invoke-direct {p0, v0}, Lcom/threed/jpct/World;->compile(Lcom/threed/jpct/Object3D;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 949
    .end local v0    # "current":Lcom/threed/jpct/Object3D;
    .end local v1    # "end":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/World;->disposed:Z

    .line 126
    iget-object v0, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    invoke-virtual {v0}, Lcom/threed/jpct/VisListManager;->dispose()V

    .line 129
    :cond_0
    return-void
.end method

.method public draw(Lcom/threed/jpct/FrameBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    const/4 v2, 0x0

    .line 1091
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->draw(Lcom/threed/jpct/FrameBuffer;ZIIZ)V

    .line 1092
    return-void
.end method

.method public drawWireframe(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/RGBColor;IZ)V
    .locals 6
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "color"    # Lcom/threed/jpct/RGBColor;
    .param p3, "size"    # I
    .param p4, "pointMode"    # Z

    .prologue
    .line 1114
    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getRGB()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->draw(Lcom/threed/jpct/FrameBuffer;ZIIZ)V

    .line 1115
    return-void
.end method

.method fillAmbientLight([F)V
    .locals 2
    .param p1, "ambient"    # [F

    .prologue
    .line 434
    const/4 v0, 0x0

    iget v1, p0, Lcom/threed/jpct/World;->ambientRed:I

    int-to-float v1, v1

    aput v1, p1, v0

    .line 435
    const/4 v0, 0x1

    iget v1, p0, Lcom/threed/jpct/World;->ambientGreen:I

    int-to-float v1, v1

    aput v1, p1, v0

    .line 436
    const/4 v0, 0x2

    iget v1, p0, Lcom/threed/jpct/World;->ambientBlue:I

    int-to-float v1, v1

    aput v1, p1, v0

    .line 437
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 2049
    iget-boolean v0, p0, Lcom/threed/jpct/World;->disposed:Z

    if-nez v0, :cond_0

    .line 2050
    invoke-virtual {p0}, Lcom/threed/jpct/World;->dispose()V

    .line 2052
    :cond_0
    return-void
.end method

.method public getAmbientLight()[I
    .locals 3

    .prologue
    .line 430
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/threed/jpct/World;->ambientRed:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/threed/jpct/World;->ambientGreen:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/threed/jpct/World;->ambientBlue:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getCamera()Lcom/threed/jpct/Camera;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    return-object v0
.end method

.method public getFogging()I
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/threed/jpct/World;->useFogging:Z

    if-eqz v0, :cond_0

    .line 466
    const/4 v0, 0x1

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFrameCounter()J
    .locals 2

    .prologue
    .line 1124
    iget-wide v0, p0, Lcom/threed/jpct/World;->drawCnt:J

    return-wide v0
.end method

.method public getGlobalShader()Lcom/threed/jpct/GLSLShader;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/threed/jpct/World;->globalShader:Lcom/threed/jpct/GLSLShader;

    return-object v0
.end method

.method getInternalObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1267
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 1263
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v1

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1264
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v1

    goto :goto_1

    .line 1262
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getLightAttenuation(I)F
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Lights;->getAttenuation(I)F

    move-result v0

    return v0
.end method

.method getLightDiscardDistance(I)F
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget-object v0, v0, Lcom/threed/jpct/Lights;->discardDistance:[F

    aget v0, v0, p1

    return v0
.end method

.method getLightDistanceOverride(I)F
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Lights;->getDistanceOverride(I)F

    move-result v0

    return v0
.end method

.method getLightIntensity(I)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Lights;->getIntensity(I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method getLightPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p1, "number"    # I
    .param p2, "s"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->getPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method getLights()Lcom/threed/jpct/Lights;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    return-object v0
.end method

.method public getObject(I)Lcom/threed/jpct/Object3D;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 279
    add-int/lit8 p1, p1, 0x2

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t retrieve object #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 286
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v1

    iget v1, v1, Lcom/threed/jpct/Object3D;->number:I

    if-ne v1, p1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v1

    goto :goto_1

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/threed/jpct/World;->getInternalObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/threed/jpct/Object3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 1134
    .local v0, "objs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/threed/jpct/Object3D;>;"
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1135
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 1136
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 1138
    :cond_0
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public newCamera()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/threed/jpct/Camera;

    invoke-direct {v0}, Lcom/threed/jpct/Camera;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    .line 179
    return-void
.end method

.method remove(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Lights;->remove(I)V

    .line 368
    return-void
.end method

.method public removeAll()V
    .locals 0

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/threed/jpct/World;->removeAllLights()V

    .line 1158
    invoke-virtual {p0}, Lcom/threed/jpct/World;->removeAllObjects()V

    .line 1159
    return-void
.end method

.method public removeAllLights()V
    .locals 2

    .prologue
    .line 1184
    new-instance v0, Lcom/threed/jpct/Lights;

    sget v1, Lcom/threed/jpct/Config;->maxLights:I

    invoke-direct {v0, v1}, Lcom/threed/jpct/Lights;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    .line 1185
    return-void
.end method

.method public removeAllObjects()V
    .locals 5

    .prologue
    .line 1166
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v0

    .line 1167
    .local v0, "clippedPolys":Lcom/threed/jpct/Object3D;
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v2

    .line 1168
    .local v2, "portals":Lcom/threed/jpct/Object3D;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1171
    new-instance v3, Lcom/threed/jpct/Object3DList;

    invoke-direct {v3}, Lcom/threed/jpct/Object3DList;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    .line 1172
    invoke-virtual {p0, v0}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 1173
    invoke-virtual {p0, v2}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 1174
    iget-object v3, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    if-eqz v3, :cond_0

    .line 1175
    iget-object v3, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v3}, Lcom/threed/jpct/VisList;->deepClear()V

    .line 1177
    :cond_0
    return-void

    .line 1169
    :cond_1
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeObject(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "found":Z
    add-int/lit8 p1, p1, 0x2

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 241
    :goto_1
    if-nez v0, :cond_3

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t remove object #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 248
    :cond_0
    :goto_2
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v2

    iget v2, v2, Lcom/threed/jpct/Object3D;->number:I

    if-ne v2, p1, :cond_2

    .line 235
    const/4 v0, 0x1

    .line 236
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    .line 237
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/Object3DList;->removeElementAt(I)V

    goto :goto_1

    .line 233
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v2}, Lcom/threed/jpct/VisList;->deepClear()V

    goto :goto_2
.end method

.method public removeObject(Lcom/threed/jpct/Object3D;)V
    .locals 2
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3DList;->removeElement(Lcom/threed/jpct/Object3D;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/threed/jpct/util/Overlay;

    if-nez v0, :cond_1

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t remove object #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", because it doesn\'t belong to this World!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    .line 265
    iget-object v0, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v0}, Lcom/threed/jpct/VisList;->deepClear()V

    goto :goto_0
.end method

.method public removePolyline(Lcom/threed/jpct/Polyline;)V
    .locals 1
    .param p1, "line"    # Lcom/threed/jpct/Polyline;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized renderScene(Lcom/threed/jpct/FrameBuffer;)V
    .locals 14
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 991
    monitor-enter p0

    :try_start_0
    sget-object v11, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    if-nez v11, :cond_0

    .line 992
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    sput-object v11, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    .line 995
    :cond_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/threed/jpct/World;->calledRender:Z

    .line 996
    iget-object v11, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v11}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 997
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/threed/jpct/World;->setPlanes(Z)V

    .line 998
    move-object v5, p1

    .line 1000
    .local v5, "lBuffer":Lcom/threed/jpct/FrameBuffer;
    iget-object v11, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    if-nez v11, :cond_1

    .line 1001
    new-instance v11, Lcom/threed/jpct/VisListManager;

    invoke-direct {v11}, Lcom/threed/jpct/VisListManager;-><init>()V

    iput-object v11, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    .line 1003
    :cond_1
    iget-object v11, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    iget-object v12, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v11, v5, v12}, Lcom/threed/jpct/VisListManager;->getVisList(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/VisList;)Lcom/threed/jpct/VisList;

    move-result-object v11

    iput-object v11, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    .line 1004
    iget-object v11, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v11}, Lcom/threed/jpct/VisList;->clearList()V

    .line 1006
    iget v10, v5, Lcom/threed/jpct/FrameBuffer;->width:I

    .line 1007
    .local v10, "width":I
    iget v3, v5, Lcom/threed/jpct/FrameBuffer;->height:I

    .line 1009
    .local v3, "height":I
    iget-object v11, p1, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v11, :cond_2

    .line 1010
    iget-object v11, p1, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v10, v11, Lcom/threed/jpct/Texture;->width:I

    .line 1011
    iget-object v11, p1, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v3, v11, Lcom/threed/jpct/Texture;->height:I

    .line 1012
    iget v11, p1, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    if-lez v11, :cond_2

    .line 1013
    iget v10, p1, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    .line 1014
    iget v3, p1, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    .line 1018
    :cond_2
    iget-object v11, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    invoke-virtual {v11, v10, v3}, Lcom/threed/jpct/Camera;->calcFOV(II)V

    .line 1019
    iget-object v11, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v11, p0, p1}, Lcom/threed/jpct/GLRenderer;->setFrustumAndFog(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V

    .line 1020
    iget-object v11, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget-object v12, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    invoke-virtual {v11, v12}, Lcom/threed/jpct/Lights;->transformLights(Lcom/threed/jpct/Camera;)V

    .line 1022
    iget-object v11, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v11}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v2

    .line 1023
    .local v2, "end":I
    iget-object v11, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v11}, Lcom/threed/jpct/Object3DList;->getInternalArray()[Lcom/threed/jpct/Object3D;

    move-result-object v7

    .line 1025
    .local v7, "objArray":[Lcom/threed/jpct/Object3D;
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_3

    .line 1069
    iget-object v11, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v11}, Lcom/threed/jpct/VisList;->fillInstances()V

    .line 1071
    iget-object v11, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    iget v13, v13, Lcom/threed/jpct/VisList;->anzpoly:I

    invoke-virtual {v11, v12, v13}, Lcom/threed/jpct/VisList;->sort(II)V

    .line 1072
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/threed/jpct/World;->setPlanes(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    .end local v2    # "end":I
    .end local v3    # "height":I
    .end local v4    # "i":I
    .end local v5    # "lBuffer":Lcom/threed/jpct/FrameBuffer;
    .end local v7    # "objArray":[Lcom/threed/jpct/Object3D;
    .end local v10    # "width":I
    :goto_1
    monitor-exit p0

    return-void

    .line 1026
    .restart local v2    # "end":I
    .restart local v3    # "height":I
    .restart local v4    # "i":I
    .restart local v5    # "lBuffer":Lcom/threed/jpct/FrameBuffer;
    .restart local v7    # "objArray":[Lcom/threed/jpct/Object3D;
    .restart local v10    # "width":I
    :cond_3
    :try_start_1
    aget-object v1, v7, v4

    .line 1028
    .local v1, "current":Lcom/threed/jpct/Object3D;
    if-nez v1, :cond_5

    .line 1029
    const-string v11, "Null object in queue...?"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1025
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1033
    :cond_5
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    .line 1035
    iget-boolean v11, v1, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    if-eqz v11, :cond_6

    iget-boolean v11, v1, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    if-eqz v11, :cond_7

    iget-object v11, v1, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-nez v11, :cond_7

    .line 1036
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Object "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hasn\'t been build yet. Forcing build()!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1037
    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->build()V

    .line 1040
    :cond_7
    iget-object v11, v1, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v11, :cond_a

    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v11

    iget v11, v11, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v11, :cond_a

    .line 1042
    iget-object v11, v1, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v11, :cond_9

    .line 1043
    iget-object v8, v1, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    .line 1044
    .local v8, "share":Lcom/threed/jpct/Object3D;
    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v11

    iget v11, v11, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v11, :cond_9

    .line 1045
    iget-object v11, v8, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-nez v11, :cond_8

    .line 1046
    iget-boolean v11, v1, Lcom/threed/jpct/Object3D;->dynamic:Z

    iget-boolean v12, v1, Lcom/threed/jpct/Object3D;->staticUV:Z

    invoke-virtual {v8, v11, v12}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    .line 1048
    :cond_8
    const-string v11, "Compiling source object..."

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1049
    invoke-direct {p0, v8}, Lcom/threed/jpct/World;->compile(Lcom/threed/jpct/Object3D;)V

    .line 1052
    .end local v8    # "share":Lcom/threed/jpct/Object3D;
    :cond_9
    invoke-direct {p0, v1}, Lcom/threed/jpct/World;->compile(Lcom/threed/jpct/Object3D;)V

    .line 1056
    :cond_a
    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getUserObject()Ljava/lang/Object;

    move-result-object v9

    .line 1057
    .local v9, "usrObj":Ljava/lang/Object;
    if-eqz v9, :cond_b

    instance-of v11, v9, Lcom/threed/jpct/util/Overlay;

    if-eqz v11, :cond_b

    .line 1058
    check-cast v9, Lcom/threed/jpct/util/Overlay;

    .end local v9    # "usrObj":Ljava/lang/Object;
    invoke-virtual {v9, p1}, Lcom/threed/jpct/util/Overlay;->update(Lcom/threed/jpct/FrameBuffer;)V

    .line 1061
    :cond_b
    iget-boolean v11, v1, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v11, :cond_4

    .line 1062
    invoke-virtual {v1, p1}, Lcom/threed/jpct/Object3D;->transformVertices(Lcom/threed/jpct/FrameBuffer;)Z

    move-result v0

    .line 1063
    .local v0, "clipped":Z
    if-nez v0, :cond_4

    iget-object v11, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v11, v11, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v11, :cond_4

    .line 1064
    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->render()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1073
    .end local v0    # "clipped":Z
    .end local v1    # "current":Lcom/threed/jpct/Object3D;
    .end local v2    # "end":I
    .end local v3    # "height":I
    .end local v4    # "i":I
    .end local v5    # "lBuffer":Lcom/threed/jpct/FrameBuffer;
    .end local v7    # "objArray":[Lcom/threed/jpct/Object3D;
    .end local v10    # "width":I
    :catch_0
    move-exception v6

    .line 1075
    .local v6, "npe":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v11, "There\'s a problem with the object list not being consistent during rendering. This is often caused by concurrent modification of jPCT objects on a thread different from the rendering thread!"

    .line 1076
    const/4 v12, 0x1

    .line 1074
    invoke-static {v11, v12}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1077
    const/4 v11, 0x0

    invoke-static {v6, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 991
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public setAmbientLight(III)V
    .locals 0
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 419
    iput p1, p0, Lcom/threed/jpct/World;->ambientRed:I

    .line 420
    iput p2, p0, Lcom/threed/jpct/World;->ambientGreen:I

    .line 421
    iput p3, p0, Lcom/threed/jpct/World;->ambientBlue:I

    .line 422
    return-void
.end method

.method public setCameraTo(Lcom/threed/jpct/Camera;)V
    .locals 0
    .param p1, "cam"    # Lcom/threed/jpct/Camera;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    .line 189
    return-void
.end method

.method public setClippingPlanes(FF)V
    .locals 1
    .param p1, "near"    # F
    .param p2, "far"    # F

    .prologue
    .line 204
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/threed/jpct/World;->nearPlane:F

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/threed/jpct/World;->farPlane:F

    .line 206
    return-void
.end method

.method public setFogParameters(FFFF)V
    .locals 6
    .param p1, "distance"    # F
    .param p2, "red"    # F
    .param p3, "green"    # F
    .param p4, "blue"    # F

    .prologue
    .line 485
    const v1, -0x3b864000    # -999.0f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/World;->setFogParameters(FFFFF)V

    .line 486
    return-void
.end method

.method public setFogParameters(FFFFF)V
    .locals 1
    .param p1, "start"    # F
    .param p2, "distance"    # F
    .param p3, "red"    # F
    .param p4, "green"    # F
    .param p5, "blue"    # F

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/threed/jpct/World;->useFogging:Z

    if-eqz v0, :cond_0

    .line 505
    const/4 v0, 0x1

    iput v0, p0, Lcom/threed/jpct/World;->fogModeChanged:I

    .line 508
    :cond_0
    const v0, -0x3b864000    # -999.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 509
    iput p1, p0, Lcom/threed/jpct/World;->fogStart:F

    .line 511
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/threed/jpct/World;->fogDistance:F

    .line 512
    iput p3, p0, Lcom/threed/jpct/World;->fogColorR:F

    .line 513
    iput p4, p0, Lcom/threed/jpct/World;->fogColorG:F

    .line 514
    iput p5, p0, Lcom/threed/jpct/World;->fogColorB:F

    .line 515
    return-void
.end method

.method public setFogging(I)V
    .locals 2
    .param p1, "fog"    # I

    .prologue
    const/4 v1, 0x1

    .line 449
    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/threed/jpct/World;->useFogging:Z

    .line 450
    iget-boolean v0, p0, Lcom/threed/jpct/World;->useFogging:Z

    if-eqz v0, :cond_1

    .line 451
    iput v1, p0, Lcom/threed/jpct/World;->fogModeChanged:I

    .line 455
    :goto_1
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 453
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/threed/jpct/World;->fogModeChanged:I

    goto :goto_1
.end method

.method public setGlobalShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 0
    .param p1, "globalShader"    # Lcom/threed/jpct/GLSLShader;

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/threed/jpct/World;->globalShader:Lcom/threed/jpct/GLSLShader;

    .line 1250
    return-void
.end method

.method setLightAttenuation(IF)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "at"    # F

    .prologue
    .line 375
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->setAttenuation(IF)V

    .line 376
    return-void
.end method

.method setLightDiscardDistance(IF)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "distance"    # F

    .prologue
    .line 371
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->setDiscardDistance(IF)V

    .line 372
    return-void
.end method

.method setLightDistanceOverride(IF)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "distance"    # F

    .prologue
    .line 391
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->setDistanceOverride(IF)V

    .line 392
    return-void
.end method

.method setLightIntensity(IFFF)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "r"    # F
    .param p3, "g"    # F
    .param p4, "b"    # F

    .prologue
    .line 379
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/Lights;->setLightIntensity(IFFF)V

    .line 380
    return-void
.end method

.method setLightPosition(ILcom/threed/jpct/SimpleVector;)V
    .locals 4
    .param p1, "number"    # I
    .param p2, "lightPos"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p2, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/threed/jpct/Lights;->setPosition(IFFF)V

    .line 360
    return-void
.end method

.method setLightVisibility(IZ)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "mode"    # Z

    .prologue
    .line 363
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->setVisibility(IZ)V

    .line 364
    return-void
.end method

.method public setObjectsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/threed/jpct/Object3D;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1151
    return-void

    .line 1149
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/Object3D;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/Object3D;->setVisibility(Z)V

    goto :goto_0
.end method

.method setPlanes(Z)V
    .locals 2
    .param p1, "back"    # Z

    .prologue
    .line 209
    iget v0, p0, Lcom/threed/jpct/World;->nearPlane:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 210
    if-nez p1, :cond_1

    .line 211
    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    iput v0, p0, Lcom/threed/jpct/World;->nearPlaneOld:F

    .line 212
    sget v0, Lcom/threed/jpct/Config;->farPlane:F

    iput v0, p0, Lcom/threed/jpct/World;->farPlaneOld:F

    .line 213
    iget v0, p0, Lcom/threed/jpct/World;->nearPlane:F

    sput v0, Lcom/threed/jpct/Config;->nearPlane:F

    .line 214
    iget v0, p0, Lcom/threed/jpct/World;->farPlane:F

    sput v0, Lcom/threed/jpct/Config;->farPlane:F

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget v0, p0, Lcom/threed/jpct/World;->nearPlaneOld:F

    sput v0, Lcom/threed/jpct/Config;->nearPlane:F

    .line 217
    iget v0, p0, Lcom/threed/jpct/World;->farPlaneOld:F

    sput v0, Lcom/threed/jpct/Config;->farPlane:F

    goto :goto_0
.end method

.method setRGBScale(I)V
    .locals 1
    .param p1, "scale"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/threed/jpct/World;->getLights()Lcom/threed/jpct/Lights;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Lights;->setRGBScale(I)V

    .line 149
    return-void
.end method
