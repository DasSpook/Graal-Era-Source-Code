.class public Lcom/threed/jpct/Object3D;
.super Ljava/lang/Object;
.source "Object3D.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BILLBOARDING_DISABLED:Z = false

.field public static final BILLBOARDING_ENABLED:Z = true

.field public static final COLLISION_CHECK_NONE:I = 0x0

.field public static final COLLISION_CHECK_OTHERS:I = 0x1

.field public static final COLLISION_CHECK_SELF:I = 0x2

.field public static final COLLISION_DETECTION_NOT_OPTIMIZED:Z = false

.field public static final COLLISION_DETECTION_OPTIMIZED:Z = true

.field public static final COLLISION_NONE:F = 1.0E12f

.field public static final CULLING_DISABLED:Z = false

.field public static final CULLING_ENABLED:Z = true

.field private static final DUMMY_LIGHTS:Lcom/threed/jpct/Lights;

.field public static final ELLIPSOID_ALIGNED:I = 0x0

.field public static final ELLIPSOID_TRANSFORMED:I = 0x1

.field public static final ENVMAP_DISABLED:Z = false

.field public static final ENVMAP_ENABLED:Z = true

.field private static final EPSILON:F = 1.0E-9f

.field private static final INSIDE_POLYGON_CONST:F = 6.2203536f

.field public static final LIGHTING_ALL_ENABLED:I = 0x0

.field public static final LIGHTING_NO_LIGHTS:I = 0x1

.field public static final NO_OBJECT:I = -0x64

.field public static final OBJ_INVISIBLE:Z = false

.field public static final OBJ_VISIBLE:Z = true

.field public static final RAY_MISSES_BOX:F = 1.0E12f

.field public static final SHADING_FAKED_FLAT:I = 0x1

.field public static final SHADING_GOURAUD:I = 0x0

.field public static final SPECULAR_DISABLED:Z = false

.field public static final SPECULAR_ENABLED:Z = true

.field public static final TRANSPARENCY_MODE_ADD:I = 0x1

.field public static final TRANSPARENCY_MODE_DEFAULT:I = 0x0

.field public static final UNKNOWN_OBJECTSIZE:I = -0x1

.field private static transient dirColParam:[F = null

.field static globalListenerCount:I = 0x0

.field private static lightsList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private static litData:[[F = null

.field private static mat7:Lcom/threed/jpct/Matrix; = null

.field private static mat71:Lcom/threed/jpct/Matrix; = null

.field private static matBill:Lcom/threed/jpct/Matrix; = null

.field private static transient matrixArray:[Lcom/threed/jpct/Matrix; = null

.field private static transient matrixThreadCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Lcom/threed/jpct/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static nextID:I = 0x0

.field private static transient origColParam:[F = null

.field private static final serialVersionUID:J = 0x3L

.field private static tempTC:Lcom/threed/jpct/SimpleVector;


# instance fields
.field private addColorB:I

.field private addColorG:I

.field private addColorInstance:Lcom/threed/jpct/RGBColor;

.field private addColorR:I

.field anim:Lcom/threed/jpct/Animation;

.field batchSize:I

.field centerX:F

.field centerY:F

.field centerZ:F

.field collisionListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threed/jpct/CollisionListener;",
            ">;"
        }
    .end annotation
.end field

.field transient compiled:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threed/jpct/CompiledInstance;",
            ">;"
        }
    .end annotation
.end field

.field disableListeners:Z

.field doCulling:Z

.field doSpecularLighting:Z

.field dynamic:Z

.field private ellipsoidMode:I

.field fixedPointMode:Z

.field forcedIndexed:Z

.field private transient fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

.field hasBeenBuild:Z

.field hasBeenStripped:Z

.field hasBoundingBox:Z

.field private highestPos:I

.field indexed:Z

.field private internalRGBColor:Lcom/threed/jpct/RGBColor;

.field private invCache:Lcom/threed/jpct/Matrix;

.field private invCacheDump:Lcom/threed/jpct/Matrix;

.field private isBillBoard:Z

.field isEnvmapped:Z

.field isFlatShaded:Z

.field isLit:Z

.field isPotentialCollider:Z

.field isStatic:Z

.field isTrans:Z

.field isVisible:Z

.field private largestPolygonSize:F

.field private lastAddedID:I

.field lazyTransforms:Z

.field private lowestPos:I

.field private mat2:Lcom/threed/jpct/Matrix;

.field private mat5:Lcom/threed/jpct/Matrix;

.field private mat6:Lcom/threed/jpct/Matrix;

.field private transient maxLights:I

.field maxStagesUsed:I

.field mayCollide:Z

.field modified:Z

.field multiMode:[[I

.field multiTex:[[I

.field myWorld:Lcom/threed/jpct/World;

.field name:Ljava/lang/String;

.field transient nearestLights:[[F

.field private neverOptimize:Z

.field private transient newT:[F

.field number:I

.field objMesh:Lcom/threed/jpct/Mesh;

.field objVectors:Lcom/threed/jpct/Vectors;

.field object3DRendered:Z

.field private ocTree:Lcom/threed/jpct/OcTree;

.field oneTextureSet:Z

.field private optimizeColDet:Z

.field private originMatrix:Lcom/threed/jpct/Matrix;

.field private pIDCount:I

.field parent:[Lcom/threed/jpct/Object3D;

.field parentCnt:I

.field private transient planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

.field private transient polyManager:Lcom/threed/jpct/PolygonManager;

.field private polygonIDs:[I

.field transient renderHook:Lcom/threed/jpct/IRenderHook;

.field reverseCulling:Z

.field private rotationMatrix:Lcom/threed/jpct/Matrix;

.field private scaleFactor:F

.field private transient sectors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field transient shader:Lcom/threed/jpct/GLSLShader;

.field shareWith:Lcom/threed/jpct/Object3D;

.field sharing:Z

.field skipPivot:Z

.field sortOffset:F

.field staticUV:Z

.field private transient t0Vel:Lcom/threed/jpct/SimpleVector;

.field texture:[I

.field textureMatrix:Lcom/threed/jpct/Matrix;

.field toStrip:Z

.field transBuffer:Lcom/threed/jpct/Matrix;

.field private transCache:Lcom/threed/jpct/Matrix;

.field private transCacheDump:Lcom/threed/jpct/Matrix;

.field transMode:I

.field transValue:I

.field private translationMatrix:Lcom/threed/jpct/Matrix;

.field private transient trianglePlane:Lcom/threed/jpct/Plane;

.field private userObj:Ljava/lang/Object;

.field usesMultiTexturing:Z

.field transient virtualizer:Lcom/threed/jpct/Virtualizer;

.field wasCollider:Z

.field xRotationCenter:F

.field yRotationCenter:F

.field zRotationCenter:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 173
    new-instance v0, Lcom/threed/jpct/Lights;

    invoke-direct {v0, v1}, Lcom/threed/jpct/Lights;-><init>(I)V

    sput-object v0, Lcom/threed/jpct/Object3D;->DUMMY_LIGHTS:Lcom/threed/jpct/Lights;

    .line 179
    sput v1, Lcom/threed/jpct/Object3D;->nextID:I

    .line 181
    sput v1, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/threed/jpct/Object3D;->lightsList:Ljava/util/ArrayList;

    .line 185
    const/16 v0, 0x8

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/threed/jpct/Object3D;->litData:[[F

    .line 187
    sput-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    .line 189
    sput-object v2, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    .line 193
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    sput-object v0, Lcom/threed/jpct/Object3D;->tempTC:Lcom/threed/jpct/SimpleVector;

    .line 195
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v0, Lcom/threed/jpct/Object3D;->mat7:Lcom/threed/jpct/Matrix;

    .line 197
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v0, Lcom/threed/jpct/Object3D;->mat71:Lcom/threed/jpct/Matrix;

    .line 199
    sput-object v2, Lcom/threed/jpct/Object3D;->matBill:Lcom/threed/jpct/Matrix;

    .line 374
    sput-object v2, Lcom/threed/jpct/Object3D;->dirColParam:[F

    .line 375
    sput-object v2, Lcom/threed/jpct/Object3D;->origColParam:[F

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "maxTriangles"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v2, p0, Lcom/threed/jpct/Object3D;->transMode:I

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Object3D;->sortOffset:F

    .line 227
    iput v2, p0, Lcom/threed/jpct/Object3D;->number:I

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    .line 237
    iput v2, p0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 239
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 243
    iput v2, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    .line 259
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    .line 260
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    .line 261
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->modified:Z

    .line 262
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->indexed:Z

    .line 263
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    .line 264
    iput v4, p0, Lcom/threed/jpct/Object3D;->batchSize:I

    .line 265
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    .line 266
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    .line 267
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    .line 268
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    .line 270
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 271
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    .line 273
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    .line 275
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    .line 277
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    .line 279
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    .line 281
    iput v2, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    .line 283
    iput v4, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    .line 303
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 305
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    .line 307
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    .line 309
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    .line 311
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    .line 313
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    .line 323
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    .line 331
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 333
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 337
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 338
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 340
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    .line 342
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    .line 344
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    .line 346
    iput v2, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    .line 348
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    .line 350
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    .line 352
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    .line 354
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    .line 356
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    .line 358
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    .line 360
    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 362
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    .line 364
    const/16 v0, 0x8

    iput v0, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    .line 366
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    .line 368
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 370
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    .line 376
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    .line 377
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    .line 378
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 379
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    .line 380
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->newT:[F

    .line 382
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->internalRGBColor:Lcom/threed/jpct/RGBColor;

    .line 661
    invoke-direct {p0, p1}, Lcom/threed/jpct/Object3D;->init(I)V

    .line 662
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;)V
    .locals 1
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/Object3D;-><init>(Lcom/threed/jpct/Object3D;Z)V

    .line 676
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;Z)V
    .locals 6
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "reuseMesh"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v3, p0, Lcom/threed/jpct/Object3D;->transMode:I

    .line 217
    const/4 v1, 0x0

    iput v1, p0, Lcom/threed/jpct/Object3D;->sortOffset:F

    .line 227
    iput v3, p0, Lcom/threed/jpct/Object3D;->number:I

    .line 229
    const-string v1, ""

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    .line 237
    iput v3, p0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 239
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 243
    iput v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    .line 259
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    .line 260
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    .line 261
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->modified:Z

    .line 262
    iput-boolean v4, p0, Lcom/threed/jpct/Object3D;->indexed:Z

    .line 263
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    .line 264
    iput v5, p0, Lcom/threed/jpct/Object3D;->batchSize:I

    .line 265
    iput-boolean v4, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    .line 266
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    .line 267
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    .line 268
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    .line 270
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 271
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    .line 273
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    .line 275
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    .line 277
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    .line 279
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    .line 281
    iput v3, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    .line 283
    iput v5, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    .line 303
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 305
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    .line 307
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    .line 309
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    .line 311
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    .line 313
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    .line 323
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    .line 331
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 333
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 337
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 338
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 340
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    .line 342
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    .line 344
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    .line 346
    iput v3, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    .line 348
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    .line 350
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    .line 352
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    .line 354
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    .line 356
    iput-boolean v4, p0, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    .line 358
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    .line 360
    new-instance v1, Lcom/threed/jpct/RGBColor;

    invoke-direct {v1}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 362
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    .line 364
    const/16 v1, 0x8

    iput v1, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    .line 366
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    .line 368
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 370
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    .line 376
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    .line 377
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    .line 378
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 379
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    .line 380
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->newT:[F

    .line 382
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->internalRGBColor:Lcom/threed/jpct/RGBColor;

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "p":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/threed/jpct/Object3D;->texture:[I

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p1, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v0, v1

    .line 696
    :cond_0
    add-int/lit8 v1, v0, 0x8

    invoke-direct {p0, v1}, Lcom/threed/jpct/Object3D;->init(I)V

    .line 697
    if-eqz v0, :cond_1

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/Object3D;->copy(Lcom/threed/jpct/Object3D;Z)V

    .line 700
    :cond_1
    return-void
.end method

.method public constructor <init>([F[F[II)V
    .locals 11
    .param p1, "coordinates"    # [F
    .param p2, "uvs"    # [F
    .param p3, "indices"    # [I
    .param p4, "textureId"    # I

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v9, 0x0

    iput v9, p0, Lcom/threed/jpct/Object3D;->transMode:I

    .line 217
    const/4 v9, 0x0

    iput v9, p0, Lcom/threed/jpct/Object3D;->sortOffset:F

    .line 227
    const/4 v9, 0x0

    iput v9, p0, Lcom/threed/jpct/Object3D;->number:I

    .line 229
    const-string v9, ""

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    .line 237
    const/4 v9, 0x0

    iput v9, p0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 239
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 243
    const/4 v9, 0x0

    iput v9, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    .line 259
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    .line 260
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    .line 261
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->modified:Z

    .line 262
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->indexed:Z

    .line 263
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    .line 264
    const/4 v9, -0x1

    iput v9, p0, Lcom/threed/jpct/Object3D;->batchSize:I

    .line 265
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    .line 266
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    .line 267
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    .line 268
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    .line 270
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 271
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    .line 273
    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    .line 275
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    .line 277
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    .line 279
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    .line 281
    const/4 v9, 0x0

    iput v9, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    .line 283
    const/4 v9, -0x1

    iput v9, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    .line 303
    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 305
    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    .line 307
    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    .line 309
    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    .line 311
    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    .line 313
    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    .line 323
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    .line 331
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 333
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 337
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 338
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 340
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    .line 342
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    .line 344
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    .line 346
    const/4 v9, 0x0

    iput v9, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    .line 348
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    .line 350
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    .line 352
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    .line 354
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    .line 356
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    .line 358
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    .line 360
    new-instance v9, Lcom/threed/jpct/RGBColor;

    invoke-direct {v9}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 362
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    .line 364
    const/16 v9, 0x8

    iput v9, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    .line 366
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    .line 368
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 370
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    .line 376
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    .line 377
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    .line 378
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 379
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    .line 380
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->newT:[F

    .line 382
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/threed/jpct/Object3D;->internalRGBColor:Lcom/threed/jpct/RGBColor;

    .line 590
    if-nez p3, :cond_0

    array-length v9, p1

    rem-int/lit8 v9, v9, 0x9

    if-eqz v9, :cond_0

    .line 591
    const-string v9, "Without indices, coordinates\' length have to be a multiple of 9!"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 594
    :cond_0
    if-nez p3, :cond_1

    .line 595
    array-length v9, p1

    div-int/lit8 v9, v9, 0x3

    new-array p3, v9, [I

    .line 596
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, p3

    if-lt v1, v9, :cond_4

    .line 601
    .end local v1    # "i":I
    :cond_1
    array-length v9, p3

    add-int/lit8 v9, v9, 0x3

    div-int/lit8 v6, v9, 0x2

    .line 602
    .local v6, "triangleCount":I
    move v3, v6

    .line 603
    .local v3, "oldCount":I
    array-length v9, p1

    div-int/lit8 v9, v9, 0x3

    if-le v9, v6, :cond_2

    .line 604
    array-length v9, p1

    div-int/lit8 v6, v9, 0x3

    .line 605
    add-int/lit8 v9, v3, 0x64

    if-ge v9, v6, :cond_2

    .line 606
    const-string v9, "Coordinate array is sparsely populated! Consider to pre-process it to save memory!"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 610
    :cond_2
    invoke-direct {p0, v6}, Lcom/threed/jpct/Object3D;->init(I)V

    .line 611
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    const/4 v10, 0x0

    iput v10, v9, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 613
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v9, p1

    if-lt v1, v9, :cond_5

    .line 619
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    array-length v10, p1

    div-int/lit8 v10, v10, 0x3

    iput v10, v9, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 621
    const/4 v9, -0x1

    if-ne p4, v9, :cond_3

    .line 622
    const/4 p4, 0x0

    .line 624
    :cond_3
    const/4 v0, 0x0

    .line 625
    .local v0, "anzVec":I
    const/4 v5, 0x0

    .line 626
    .local v5, "posTri":I
    const/4 v1, 0x0

    :goto_2
    array-length v9, p3

    if-lt v1, v9, :cond_6

    .line 647
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v9}, Lcom/threed/jpct/Mesh;->compress()V

    .line 648
    return-void

    .line 597
    .end local v0    # "anzVec":I
    .end local v3    # "oldCount":I
    .end local v5    # "posTri":I
    .end local v6    # "triangleCount":I
    :cond_4
    aput v1, p3, v1

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .restart local v3    # "oldCount":I
    .restart local v6    # "triangleCount":I
    :cond_5
    div-int/lit8 v2, v1, 0x3

    .line 615
    .local v2, "ii":I
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v9, v9, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v10, p1, v1

    aput v10, v9, v2

    .line 616
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v9, v9, Lcom/threed/jpct/Mesh;->yOrg:[F

    add-int/lit8 v10, v1, 0x1

    aget v10, p1, v10

    aput v10, v9, v2

    .line 617
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v9, v9, Lcom/threed/jpct/Mesh;->zOrg:[F

    add-int/lit8 v10, v1, 0x2

    aget v10, p1, v10

    aput v10, v9, v2

    .line 613
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 627
    .end local v2    # "ii":I
    .restart local v0    # "anzVec":I
    .restart local v5    # "posTri":I
    :cond_6
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_3
    const/4 v9, 0x3

    if-lt v4, v9, :cond_7

    .line 642
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aput p4, v9, v5

    .line 644
    add-int/lit8 v5, v5, 0x1

    .line 645
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v10, v9, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 626
    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    .line 628
    :cond_7
    if-eqz p2, :cond_8

    .line 629
    add-int v9, v1, v4

    aget v9, p3, v9

    mul-int/lit8 v9, v9, 0x2

    aget v7, p2, v9

    .line 630
    .local v7, "u":F
    add-int v9, v1, v4

    aget v9, p3, v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, p2, v9

    .line 632
    .local v8, "v":F
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput v7, v9, v0

    .line 633
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput v8, v9, v0

    .line 636
    .end local v7    # "u":F
    .end local v8    # "v":F
    :cond_8
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v9, v9, Lcom/threed/jpct/Mesh;->coords:[I

    add-int v10, v1, v4

    aget v10, p3, v10

    aput v10, v9, v0

    .line 637
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v9, v9, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v9, v9, v5

    aput v0, v9, v4

    .line 638
    add-int/lit8 v0, v0, 0x1

    .line 639
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v10, v9, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 627
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private addPolygonID(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 6543
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    if-eqz v1, :cond_1

    .line 6565
    :cond_0
    :goto_0
    return-void

    .line 6547
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    if-nez v1, :cond_2

    .line 6548
    sget v1, Lcom/threed/jpct/Config;->polygonIDLimit:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    .line 6549
    const/4 v1, 0x0

    iput v1, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    .line 6551
    :cond_2
    iget v1, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 6552
    iget v1, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    if-eq p1, v1, :cond_0

    .line 6556
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    if-lt v0, v1, :cond_3

    .line 6561
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    iget v2, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    aput p1, v1, v2

    .line 6562
    iput p1, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    .line 6563
    iget v1, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    goto :goto_0

    .line 6557
    :cond_3
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 6556
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private final appendToObject(Lcom/threed/jpct/Object3D;)V
    .locals 46
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 6287
    move-object/from16 v26, p1

    .line 6288
    .local v26, "tmpObj":Lcom/threed/jpct/Object3D;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v41, v0

    .line 6289
    .local v41, "vOffset":I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v10, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 6290
    .local v10, "mOffset":I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v40, v0

    .line 6291
    .local v40, "triOffset":I
    const/4 v5, 0x0

    .line 6293
    .local v5, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    .line 6294
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 6295
    move-object/from16 v0, v26

    iget v0, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    move/from16 v43, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v26

    iput v0, v1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 6296
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    .line 6297
    sget v42, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v5, v42, -0x1

    .line 6298
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v5, :cond_6

    .line 6311
    .end local v6    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v42, v0

    if-eqz v42, :cond_1

    .line 6312
    sget v42, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v5, v42, -0x1

    .line 6313
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-lt v6, v5, :cond_8

    .line 6324
    .end local v6    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    if-eqz v42, :cond_2

    .line 6325
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v36, v0

    .line 6326
    .local v36, "tmpObjobjVectorsnuOrg":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v37, v0

    .line 6327
    .local v37, "tmpObjobjVectorsnvOrg":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v27, v0

    .line 6329
    .local v27, "tmpObjobjMeshcoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v20, v0

    .line 6330
    .local v20, "objVectorsnuOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v21, v0

    .line 6331
    .local v21, "objVectorsnvOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v11, v0, Lcom/threed/jpct/Mesh;->coords:[I

    .line 6333
    .local v11, "objMeshcoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v5, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 6335
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-lt v6, v5, :cond_a

    .line 6343
    .end local v6    # "i":I
    .end local v11    # "objMeshcoords":[I
    .end local v20    # "objVectorsnuOrg":[F
    .end local v21    # "objVectorsnvOrg":[F
    .end local v27    # "tmpObjobjMeshcoords":[I
    .end local v36    # "tmpObjobjVectorsnuOrg":[F
    .end local v37    # "tmpObjobjVectorsnvOrg":[F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    if-eqz v42, :cond_5

    .line 6344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v5, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 6346
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v31, v0

    .line 6347
    .local v31, "tmpObjobjMeshpoints":[[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v15, v0, Lcom/threed/jpct/Mesh;->points:[[I

    .line 6349
    .local v15, "objMeshpoints":[[I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-lt v6, v5, :cond_b

    .line 6358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v5, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 6359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    move/from16 v42, v0

    if-eqz v42, :cond_3

    .line 6360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v5, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 6363
    :cond_3
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v33, v0

    .line 6364
    .local v33, "tmpObjobjMeshxOrg":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v34, v0

    .line 6365
    .local v34, "tmpObjobjMeshyOrg":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v35, v0

    .line 6366
    .local v35, "tmpObjobjMeshzOrg":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v28, v0

    .line 6367
    .local v28, "tmpObjobjMeshnxOrg":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v29, v0

    .line 6368
    .local v29, "tmpObjobjMeshnyOrg":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v30, v0

    .line 6370
    .local v30, "tmpObjobjMeshnzOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v17, v0

    .line 6371
    .local v17, "objMeshxOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v18, v0

    .line 6372
    .local v18, "objMeshyOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v19, v0

    .line 6373
    .local v19, "objMeshzOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v12, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 6374
    .local v12, "objMeshnxOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v13, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 6375
    .local v13, "objMeshnyOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v14, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 6377
    .local v14, "objMeshnzOrg":[F
    const/4 v6, 0x0

    :goto_4
    if-lt v6, v5, :cond_c

    .line 6387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v25, v0

    .line 6389
    .local v25, "srcTriCnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v42, v0

    if-eqz v42, :cond_4

    .line 6390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v44, v0

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v44

    move/from16 v3, v40

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6393
    :cond_4
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v44, v0

    add-int v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 6394
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v43, v0

    add-int v43, v43, v5

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 6395
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v44, v0

    add-int v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 6397
    .end local v6    # "i":I
    .end local v12    # "objMeshnxOrg":[F
    .end local v13    # "objMeshnyOrg":[F
    .end local v14    # "objMeshnzOrg":[F
    .end local v15    # "objMeshpoints":[[I
    .end local v17    # "objMeshxOrg":[F
    .end local v18    # "objMeshyOrg":[F
    .end local v19    # "objMeshzOrg":[F
    .end local v25    # "srcTriCnt":I
    .end local v28    # "tmpObjobjMeshnxOrg":[F
    .end local v29    # "tmpObjobjMeshnyOrg":[F
    .end local v30    # "tmpObjobjMeshnzOrg":[F
    .end local v31    # "tmpObjobjMeshpoints":[[I
    .end local v33    # "tmpObjobjMeshxOrg":[F
    .end local v34    # "tmpObjobjMeshyOrg":[F
    .end local v35    # "tmpObjobjMeshzOrg":[F
    :cond_5
    return-void

    .line 6299
    .restart local v6    # "i":I
    :cond_6
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    move-object/from16 v42, v0

    aget-object v38, v42, v6

    .line 6300
    .local v38, "tmpObjobjVectorsuMuli":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->vMul:[[F

    move-object/from16 v42, v0

    aget-object v39, v42, v6

    .line 6301
    .local v39, "tmpObjobjVectorsvMuli":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    move-object/from16 v42, v0

    aget-object v22, v42, v6

    .line 6302
    .local v22, "objVectorsuMuli":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->vMul:[[F

    move-object/from16 v42, v0

    aget-object v23, v42, v6

    .line 6303
    .local v23, "objVectorsvMuli":[F
    const/16 v24, 0x0

    .local v24, "p":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v42, v0

    move/from16 v0, v24

    move/from16 v1, v42

    if-lt v0, v1, :cond_7

    .line 6298
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 6304
    :cond_7
    add-int v9, v24, v41

    .line 6305
    .local v9, "iv":I
    aget v42, v22, v24

    aput v42, v38, v9

    .line 6306
    aget v42, v23, v24

    aput v42, v39, v9

    .line 6303
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 6314
    .end local v9    # "iv":I
    .end local v22    # "objVectorsuMuli":[F
    .end local v23    # "objVectorsvMuli":[F
    .end local v24    # "p":I
    .end local v38    # "tmpObjobjVectorsuMuli":[F
    .end local v39    # "tmpObjobjVectorsvMuli":[F
    :cond_8
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v42, v0

    if-nez v42, :cond_9

    .line 6315
    sget v42, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    filled-new-array/range {v42 .. v43}, [I

    move-result-object v42

    sget-object v43, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [[I

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 6316
    sget v42, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    filled-new-array/range {v42 .. v43}, [I

    move-result-object v42

    sget-object v43, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [[I

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 6319
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v42, v0

    aget-object v42, v42, v6

    const/16 v43, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v44, v0

    aget-object v44, v44, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v45, v0

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v44

    move/from16 v3, v40

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    move-object/from16 v42, v0

    aget-object v42, v42, v6

    const/16 v43, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    move-object/from16 v44, v0

    aget-object v44, v44, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v45, v0

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v44

    move/from16 v3, v40

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6313
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 6336
    .restart local v11    # "objMeshcoords":[I
    .restart local v20    # "objVectorsnuOrg":[F
    .restart local v21    # "objVectorsnvOrg":[F
    .restart local v27    # "tmpObjobjMeshcoords":[I
    .restart local v36    # "tmpObjobjVectorsnuOrg":[F
    .restart local v37    # "tmpObjobjVectorsnvOrg":[F
    :cond_a
    add-int v9, v6, v41

    .line 6337
    .restart local v9    # "iv":I
    aget v42, v20, v6

    aput v42, v36, v9

    .line 6338
    aget v42, v21, v6

    aput v42, v37, v9

    .line 6339
    aget v42, v11, v6

    add-int v42, v42, v10

    aput v42, v27, v9

    .line 6335
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 6350
    .end local v9    # "iv":I
    .end local v11    # "objMeshcoords":[I
    .end local v20    # "objVectorsnuOrg":[F
    .end local v21    # "objVectorsnvOrg":[F
    .end local v27    # "tmpObjobjMeshcoords":[I
    .end local v36    # "tmpObjobjVectorsnuOrg":[F
    .end local v37    # "tmpObjobjVectorsnvOrg":[F
    .restart local v15    # "objMeshpoints":[[I
    .restart local v31    # "tmpObjobjMeshpoints":[[I
    :cond_b
    add-int v8, v6, v40

    .line 6351
    .local v8, "it":I
    aget-object v32, v31, v8

    .line 6352
    .local v32, "tmpObjobjMeshpointsit":[I
    aget-object v16, v15, v6

    .line 6353
    .local v16, "objMeshpointsi":[I
    const/16 v42, 0x0

    const/16 v43, 0x0

    aget v43, v16, v43

    add-int v43, v43, v41

    aput v43, v32, v42

    .line 6354
    const/16 v42, 0x1

    const/16 v43, 0x1

    aget v43, v16, v43

    add-int v43, v43, v41

    aput v43, v32, v42

    .line 6355
    const/16 v42, 0x2

    const/16 v43, 0x2

    aget v43, v16, v43

    add-int v43, v43, v41

    aput v43, v32, v42

    .line 6349
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 6378
    .end local v8    # "it":I
    .end local v16    # "objMeshpointsi":[I
    .end local v32    # "tmpObjobjMeshpointsit":[I
    .restart local v12    # "objMeshnxOrg":[F
    .restart local v13    # "objMeshnyOrg":[F
    .restart local v14    # "objMeshnzOrg":[F
    .restart local v17    # "objMeshxOrg":[F
    .restart local v18    # "objMeshyOrg":[F
    .restart local v19    # "objMeshzOrg":[F
    .restart local v28    # "tmpObjobjMeshnxOrg":[F
    .restart local v29    # "tmpObjobjMeshnyOrg":[F
    .restart local v30    # "tmpObjobjMeshnzOrg":[F
    .restart local v33    # "tmpObjobjMeshxOrg":[F
    .restart local v34    # "tmpObjobjMeshyOrg":[F
    .restart local v35    # "tmpObjobjMeshzOrg":[F
    :cond_c
    add-int v7, v6, v10

    .line 6379
    .local v7, "im":I
    aget v42, v17, v6

    aput v42, v33, v7

    .line 6380
    aget v42, v18, v6

    aput v42, v34, v7

    .line 6381
    aget v42, v19, v6

    aput v42, v35, v7

    .line 6382
    aget v42, v12, v6

    aput v42, v28, v7

    .line 6383
    aget v42, v13, v6

    aput v42, v29, v7

    .line 6384
    aget v42, v14, v6

    aput v42, v30, v7

    .line 6377
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4
.end method

.method private final checkPointInTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FFFFFFFFF)Z
    .locals 22
    .param p1, "d"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "point"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "ps0x"    # F
    .param p4, "ps0y"    # F
    .param p5, "ps0z"    # F
    .param p6, "ps1x"    # F
    .param p7, "ps1y"    # F
    .param p8, "ps1z"    # F
    .param p9, "ps2x"    # F
    .param p10, "ps2y"    # F
    .param p11, "ps2z"    # F

    .prologue
    .line 5168
    move/from16 v15, p3

    .line 5169
    .local v15, "v1x":F
    move/from16 v16, p4

    .line 5170
    .local v16, "v1y":F
    move/from16 v17, p5

    .line 5172
    .local v17, "v1z":F
    sub-float v3, p6, v15

    .line 5173
    .local v3, "edge1X":F
    sub-float v4, p7, v16

    .line 5174
    .local v4, "edge1Y":F
    sub-float v5, p8, v17

    .line 5176
    .local v5, "edge1Z":F
    sub-float v6, p9, v15

    .line 5177
    .local v6, "edge2X":F
    sub-float v7, p10, v16

    .line 5178
    .local v7, "edge2Y":F
    sub-float v8, p11, v17

    .line 5180
    .local v8, "edge2Z":F
    const/4 v10, 0x0

    .line 5181
    .local v10, "pvec0":F
    const/4 v11, 0x0

    .line 5182
    .local v11, "pvec1":F
    const/4 v12, 0x0

    .line 5184
    .local v12, "pvec2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    sub-float v10, v18, v19

    .line 5185
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v18, v0

    mul-float v18, v18, v6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    sub-float v11, v18, v19

    .line 5186
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v7

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v6

    sub-float v12, v18, v19

    .line 5188
    mul-float v18, v3, v10

    mul-float v19, v4, v11

    add-float v18, v18, v19

    mul-float v19, v5, v12

    add-float v2, v18, v19

    .line 5190
    .local v2, "det":F
    const v18, 0x233877aa    # 1.0E-17f

    cmpl-float v18, v2, v18

    if-ltz v18, :cond_0

    .line 5192
    const/high16 v18, 0x3f800000    # 1.0f

    div-float v9, v18, v2

    .line 5194
    .local v9, "invDet":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v18, v0

    sub-float v6, v18, v15

    .line 5195
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v18, v0

    sub-float v7, v18, v16

    .line 5196
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v18, v0

    sub-float v8, v18, v17

    .line 5198
    mul-float v18, v6, v10

    mul-float v19, v7, v11

    add-float v18, v18, v19

    mul-float v19, v8, v12

    add-float v18, v18, v19

    mul-float v13, v18, v9

    .line 5200
    .local v13, "u":F
    float-to-double v0, v13

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v18, v13, v18

    if-gtz v18, :cond_0

    .line 5202
    mul-float v18, v7, v5

    mul-float v19, v8, v4

    sub-float v10, v18, v19

    .line 5203
    mul-float v18, v8, v3

    mul-float v19, v6, v5

    sub-float v11, v18, v19

    .line 5204
    mul-float v18, v6, v4

    mul-float v19, v7, v3

    sub-float v12, v18, v19

    .line 5206
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v10

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v19, v0

    mul-float v19, v19, v12

    add-float v18, v18, v19

    mul-float v14, v18, v9

    .line 5208
    .local v14, "v":F
    float-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_0

    add-float v18, v13, v14

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_0

    .line 5209
    const/16 v18, 0x1

    .line 5213
    .end local v9    # "invDet":F
    .end local v13    # "u":F
    .end local v14    # "v":F
    :goto_0
    return v18

    :cond_0
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private checkWorld()V
    .locals 2

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-nez v0, :cond_0

    .line 2912
    const-string v0, "Object has to be assigned to a world for doing collision detection!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 2914
    :cond_0
    return-void
.end method

.method private final collide([F[FFFZ)F
    .locals 92
    .param p1, "org"    # [F
    .param p2, "dr"    # [F
    .param p3, "breakRange"    # F
    .param p4, "spanRange"    # F
    .param p5, "mayOptimize"    # Z

    .prologue
    .line 4026
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/Object3D;->createCollisionArrays()V

    .line 4028
    sget v11, Lcom/threed/jpct/Config;->collideOffset:F

    .line 4029
    .local v11, "collideOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    move/from16 v88, v0

    if-eqz v88, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    move/from16 v88, v0

    const/high16 v89, -0x40800000    # -1.0f

    cmpl-float v88, v88, v89

    if-eqz v88, :cond_0

    if-eqz p5, :cond_0

    .line 4030
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    move/from16 v88, v0

    const/high16 v89, 0x40000000    # 2.0f

    add-float v88, v88, v89

    add-float v39, v88, p3

    .line 4031
    .local v39, "newOffset":F
    cmpg-float v88, v39, v11

    if-gez v88, :cond_0

    .line 4032
    move/from16 v11, v39

    .line 4037
    .end local v39    # "newOffset":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    move-object/from16 v88, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v88

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v32, v0

    .line 4039
    .local v32, "invTransmat":[[F
    const/16 v88, 0x0

    aget-object v88, v32, v88

    const/16 v89, 0x0

    aget v65, v88, v89

    .line 4040
    .local v65, "s00Ws":F
    const/16 v88, 0x1

    aget-object v88, v32, v88

    const/16 v89, 0x0

    aget v68, v88, v89

    .line 4041
    .local v68, "s10Ws":F
    const/16 v88, 0x1

    aget-object v88, v32, v88

    const/16 v89, 0x1

    aget v69, v88, v89

    .line 4042
    .local v69, "s11Ws":F
    const/16 v88, 0x2

    aget-object v88, v32, v88

    const/16 v89, 0x1

    aget v72, v88, v89

    .line 4043
    .local v72, "s21Ws":F
    const/16 v88, 0x2

    aget-object v88, v32, v88

    const/16 v89, 0x0

    aget v71, v88, v89

    .line 4044
    .local v71, "s20Ws":F
    const/16 v88, 0x0

    aget-object v88, v32, v88

    const/16 v89, 0x1

    aget v66, v88, v89

    .line 4045
    .local v66, "s01Ws":F
    const/16 v88, 0x2

    aget-object v88, v32, v88

    const/16 v89, 0x2

    aget v73, v88, v89

    .line 4046
    .local v73, "s22Ws":F
    const/16 v88, 0x1

    aget-object v88, v32, v88

    const/16 v89, 0x2

    aget v70, v88, v89

    .line 4047
    .local v70, "s12Ws":F
    const/16 v88, 0x0

    aget-object v88, v32, v88

    const/16 v89, 0x2

    aget v67, v88, v89

    .line 4048
    .local v67, "s02Ws":F
    const/16 v88, 0x3

    aget-object v88, v32, v88

    const/16 v89, 0x0

    aget v6, v88, v89

    .line 4049
    .local v6, "bxWs":F
    const/16 v88, 0x3

    aget-object v88, v32, v88

    const/16 v89, 0x1

    aget v8, v88, v89

    .line 4050
    .local v8, "byWs":F
    const/16 v88, 0x3

    aget-object v88, v32, v88

    const/16 v89, 0x2

    aget v10, v88, v89

    .line 4052
    .local v10, "bzWs":F
    const/16 v88, 0x0

    aget v17, p2, v88

    .line 4053
    .local v17, "dr0":F
    const/16 v88, 0x1

    aget v18, p2, v88

    .line 4054
    .local v18, "dr1":F
    const/16 v88, 0x2

    aget v19, p2, v88

    .line 4056
    .local v19, "dr2":F
    const/16 v88, 0x0

    aget v47, p1, v88

    .line 4057
    .local v47, "org0":F
    const/16 v88, 0x1

    aget v48, p1, v88

    .line 4058
    .local v48, "org1":F
    const/16 v88, 0x2

    aget v49, p1, v88

    .line 4060
    .local v49, "org2":F
    mul-float v88, v17, v65

    mul-float v89, v18, v68

    add-float v88, v88, v89

    mul-float v89, v19, v71

    add-float v14, v88, v89

    .line 4061
    .local v14, "dirCol0":F
    mul-float v88, v17, v66

    mul-float v89, v18, v69

    add-float v88, v88, v89

    mul-float v89, v19, v72

    add-float v15, v88, v89

    .line 4062
    .local v15, "dirCol1":F
    mul-float v88, v17, v67

    mul-float v89, v18, v70

    add-float v88, v88, v89

    mul-float v89, v19, v73

    add-float v16, v88, v89

    .line 4064
    .local v16, "dirCol2":F
    mul-float v88, v47, v65

    mul-float v89, v48, v68

    add-float v88, v88, v89

    mul-float v89, v49, v71

    add-float v88, v88, v89

    add-float v5, v88, v6

    .line 4065
    .local v5, "bx":F
    mul-float v88, v47, v66

    mul-float v89, v48, v69

    add-float v88, v88, v89

    mul-float v89, v49, v72

    add-float v88, v88, v89

    add-float v7, v88, v8

    .line 4066
    .local v7, "by":F
    mul-float v88, v47, v67

    mul-float v89, v48, v70

    add-float v88, v88, v89

    mul-float v89, v49, v73

    add-float v88, v88, v89

    add-float v9, v88, v10

    .line 4068
    .local v9, "bz":F
    move/from16 v50, v5

    .line 4069
    .local v50, "origCol0":F
    move/from16 v51, v7

    .line 4070
    .local v51, "origCol1":F
    move/from16 v52, v9

    .line 4072
    .local v52, "origCol2":F
    const/16 v78, 0x0

    .line 4074
    .local v78, "touchedLeafs":I
    const/16 v37, 0x0

    check-cast v37, [Ljava/lang/Object;

    .line 4076
    .local v37, "leafArray":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v88, v0

    if-eqz v88, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v88, v0

    invoke-virtual/range {v88 .. v88}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v88

    if-eqz v88, :cond_2

    .line 4077
    add-float v64, p4, p3

    .line 4078
    .local v64, "radius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v88, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Lcom/threed/jpct/OcTree;->getRadiusMultiplier()F

    move-result v89

    mul-float v89, v89, v64

    move-object/from16 v0, v88

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    move/from16 v4, v89

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/threed/jpct/OcTree;->getColliderLeafs(FFFF)[Ljava/lang/Object;

    move-result-object v37

    .line 4080
    const/16 v88, 0x0

    aget-object v88, v37, v88

    check-cast v88, Ljava/lang/Integer;

    invoke-virtual/range {v88 .. v88}, Ljava/lang/Integer;->intValue()I

    move-result v78

    .line 4082
    if-nez v78, :cond_2

    .line 4083
    const v36, 0x5368d4a5    # 1.0E12f

    .line 4220
    .end local v64    # "radius":F
    :cond_1
    :goto_0
    return v36

    .line 4088
    :cond_2
    const/16 v76, 0x0

    .line 4089
    .local v76, "taken":I
    const/16 v34, 0x0

    .line 4090
    .local v34, "kicked":I
    const/16 v77, 0x0

    .line 4092
    .local v77, "tested":I
    const/16 v30, 0x0

    .line 4094
    .local v30, "exitLoop":Z
    const v36, 0x5368d4a5    # 1.0E12f

    .line 4095
    .local v36, "lastT":F
    const/16 v35, -0x1

    .line 4097
    .local v35, "lastPoly":I
    const/16 v74, 0x0

    .line 4098
    .local v74, "start":I
    const/16 v29, 0x0

    .line 4100
    .local v29, "end":I
    const/16 v74, 0x0

    .line 4101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v88, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v29, v0

    .line 4103
    const/16 v83, 0x0

    .line 4104
    .local v83, "useOcTree":Z
    const/16 v38, 0x0

    check-cast v38, [Lcom/threed/jpct/OcTreeNode;

    .line 4105
    .local v38, "leafList":[Lcom/threed/jpct/OcTreeNode;
    const/16 v57, 0x0

    check-cast v57, [I

    .line 4106
    .local v57, "polyList":[I
    const/16 v40, 0x0

    .line 4108
    .local v40, "nodeCnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v88, v0

    if-eqz v88, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v88, v0

    invoke-virtual/range {v88 .. v88}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v88

    if-eqz v88, :cond_3

    .line 4109
    const/16 v88, 0x1

    aget-object v38, v37, v88

    .end local v38    # "leafList":[Lcom/threed/jpct/OcTreeNode;
    check-cast v38, [Lcom/threed/jpct/OcTreeNode;

    .line 4110
    .restart local v38    # "leafList":[Lcom/threed/jpct/OcTreeNode;
    const/16 v83, 0x1

    .line 4113
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v88, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v41, v0

    .line 4114
    .local v41, "objMeshcoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v88, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v44, v0

    .line 4115
    .local v44, "objMeshxOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v88, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v45, v0

    .line 4116
    .local v45, "objMeshyOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v88, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v46, v0

    .line 4120
    .local v46, "objMeshzOrg":[F
    :cond_4
    if-eqz v83, :cond_5

    .line 4121
    aget-object v88, v38, v40

    invoke-virtual/range {v88 .. v88}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v57

    .line 4122
    const/16 v74, 0x0

    .line 4123
    aget-object v88, v38, v40

    invoke-virtual/range {v88 .. v88}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v29

    .line 4124
    add-int/lit8 v40, v40, 0x1

    .line 4127
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v88, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v42, v0

    .line 4128
    .local v42, "objMeshpoints":[[I
    mul-float v12, v11, v11

    .line 4130
    .local v12, "collideOffsetMul":F
    move/from16 v33, v74

    .local v33, "k":I
    :goto_1
    move/from16 v0, v33

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    .line 4214
    :goto_2
    if-eqz v83, :cond_6

    move/from16 v0, v40

    move/from16 v1, v78

    if-lt v0, v1, :cond_4

    .line 4216
    :cond_6
    const/16 v88, -0x1

    move/from16 v0, v35

    move/from16 v1, v88

    if-eq v0, v1, :cond_1

    .line 4217
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;->addPolygonID(I)V

    goto/16 :goto_0

    .line 4131
    :cond_7
    move/from16 v53, v33

    .line 4132
    .local v53, "p":I
    if-eqz v83, :cond_8

    .line 4133
    aget v53, v57, v33

    .line 4136
    :cond_8
    aget-object v43, v42, v53

    .line 4137
    .local v43, "objMeshpointsp":[I
    const/16 v88, 0x0

    aget v88, v43, v88

    aget v54, v41, v88

    .line 4139
    .local v54, "p0":I
    aget v85, v44, v54

    .line 4140
    .local v85, "v1x":F
    aget v86, v45, v54

    .line 4141
    .local v86, "v1y":F
    aget v87, v46, v54

    .line 4143
    .local v87, "v1z":F
    sub-float v20, v85, v5

    .line 4144
    .local v20, "dx":F
    sub-float v21, v86, v7

    .line 4145
    .local v21, "dy":F
    sub-float v22, v87, v9

    .line 4147
    .local v22, "dz":F
    const v88, 0x5368d4a5    # 1.0E12f

    cmpl-float v88, p4, v88

    if-eqz v88, :cond_9

    mul-float v88, v20, v20

    cmpg-float v88, v88, v12

    if-gtz v88, :cond_d

    mul-float v88, v21, v21

    cmpg-float v88, v88, v12

    if-gtz v88, :cond_d

    mul-float v88, v22, v22

    cmpg-float v88, v88, v12

    if-gtz v88, :cond_d

    .line 4149
    :cond_9
    const/16 v88, 0x2

    aget v88, v43, v88

    aget v56, v41, v88

    .line 4150
    .local v56, "p2":I
    const/16 v88, 0x1

    aget v88, v43, v88

    aget v55, v41, v88

    .line 4152
    .local v55, "p1":I
    aget v88, v44, v55

    sub-float v23, v88, v85

    .line 4153
    .local v23, "edge1Col0":F
    aget v88, v45, v55

    sub-float v24, v88, v86

    .line 4154
    .local v24, "edge1Col1":F
    aget v88, v46, v55

    sub-float v25, v88, v87

    .line 4156
    .local v25, "edge1Col2":F
    aget v88, v44, v56

    sub-float v26, v88, v85

    .line 4157
    .local v26, "edge2Col0":F
    aget v88, v45, v56

    sub-float v27, v88, v86

    .line 4158
    .local v27, "edge2Col1":F
    aget v88, v46, v56

    sub-float v28, v88, v87

    .line 4160
    .local v28, "edge2Col2":F
    mul-float v88, v15, v28

    mul-float v89, v16, v27

    sub-float v58, v88, v89

    .line 4161
    .local v58, "pvecCol0":F
    mul-float v88, v16, v26

    mul-float v89, v14, v28

    sub-float v59, v88, v89

    .line 4162
    .local v59, "pvecCol1":F
    mul-float v88, v14, v27

    mul-float v89, v15, v26

    sub-float v60, v88, v89

    .line 4164
    .local v60, "pvecCol2":F
    mul-float v88, v23, v58

    mul-float v89, v24, v59

    add-float v88, v88, v89

    mul-float v89, v25, v60

    add-float v13, v88, v89

    .line 4166
    .local v13, "det":F
    const v88, 0x3089705f    # 1.0E-9f

    cmpl-float v88, v13, v88

    if-ltz v88, :cond_b

    .line 4168
    const/high16 v88, 0x3f800000    # 1.0f

    div-float v31, v88, v13

    .line 4170
    .local v31, "invDet":F
    sub-float v79, v5, v85

    .line 4171
    .local v79, "tvecCol0":F
    sub-float v80, v7, v86

    .line 4172
    .local v80, "tvecCol1":F
    sub-float v81, v9, v87

    .line 4174
    .local v81, "tvecCol2":F
    mul-float v88, v79, v58

    mul-float v89, v80, v59

    add-float v88, v88, v89

    mul-float v89, v81, v60

    add-float v88, v88, v89

    mul-float v82, v88, v31

    .line 4176
    .local v82, "u":F
    move/from16 v0, v82

    float-to-double v0, v0

    move-wide/from16 v88, v0

    const-wide/16 v90, 0x0

    cmpl-double v88, v88, v90

    if-ltz v88, :cond_b

    const/high16 v88, 0x3f800000    # 1.0f

    cmpg-float v88, v82, v88

    if-gtz v88, :cond_b

    .line 4178
    mul-float v88, v80, v25

    mul-float v89, v81, v24

    sub-float v61, v88, v89

    .line 4179
    .local v61, "qvecCol0":F
    mul-float v88, v81, v23

    mul-float v89, v79, v25

    sub-float v62, v88, v89

    .line 4180
    .local v62, "qvecCol1":F
    mul-float v88, v79, v24

    mul-float v89, v80, v23

    sub-float v63, v88, v89

    .line 4182
    .local v63, "qvecCol2":F
    mul-float v88, v14, v61

    mul-float v89, v15, v62

    add-float v88, v88, v89

    mul-float v89, v16, v63

    add-float v88, v88, v89

    mul-float v84, v88, v31

    .line 4184
    .local v84, "v":F
    move/from16 v0, v84

    float-to-double v0, v0

    move-wide/from16 v88, v0

    const-wide/16 v90, 0x0

    cmpl-double v88, v88, v90

    if-ltz v88, :cond_b

    add-float v88, v82, v84

    move/from16 v0, v88

    float-to-double v0, v0

    move-wide/from16 v88, v0

    const-wide/high16 v90, 0x3ff0000000000000L    # 1.0

    cmpg-double v88, v88, v90

    if-gtz v88, :cond_b

    .line 4185
    mul-float v88, v26, v61

    mul-float v89, v27, v62

    add-float v88, v88, v89

    mul-float v89, v28, v63

    add-float v88, v88, v89

    mul-float v75, v88, v31

    .line 4187
    .local v75, "t":F
    cmpg-float v88, v75, p3

    if-gez v88, :cond_c

    const/16 v88, 0x0

    cmpl-float v88, v75, v88

    if-ltz v88, :cond_c

    .line 4188
    const/16 v30, 0x1

    .line 4189
    move/from16 v36, v75

    .line 4190
    move/from16 v35, v53

    .line 4200
    :cond_a
    :goto_3
    add-int/lit8 v76, v76, 0x1

    .line 4207
    .end local v13    # "det":F
    .end local v23    # "edge1Col0":F
    .end local v24    # "edge1Col1":F
    .end local v25    # "edge1Col2":F
    .end local v26    # "edge2Col0":F
    .end local v27    # "edge2Col1":F
    .end local v28    # "edge2Col2":F
    .end local v31    # "invDet":F
    .end local v55    # "p1":I
    .end local v56    # "p2":I
    .end local v58    # "pvecCol0":F
    .end local v59    # "pvecCol1":F
    .end local v60    # "pvecCol2":F
    .end local v61    # "qvecCol0":F
    .end local v62    # "qvecCol1":F
    .end local v63    # "qvecCol2":F
    .end local v75    # "t":F
    .end local v79    # "tvecCol0":F
    .end local v80    # "tvecCol1":F
    .end local v81    # "tvecCol2":F
    .end local v82    # "u":F
    .end local v84    # "v":F
    :cond_b
    :goto_4
    add-int/lit8 v77, v77, 0x1

    .line 4209
    if-eqz v30, :cond_e

    .line 4210
    move/from16 v53, v29

    .line 4211
    goto/16 :goto_2

    .line 4192
    .restart local v13    # "det":F
    .restart local v23    # "edge1Col0":F
    .restart local v24    # "edge1Col1":F
    .restart local v25    # "edge1Col2":F
    .restart local v26    # "edge2Col0":F
    .restart local v27    # "edge2Col1":F
    .restart local v28    # "edge2Col2":F
    .restart local v31    # "invDet":F
    .restart local v55    # "p1":I
    .restart local v56    # "p2":I
    .restart local v58    # "pvecCol0":F
    .restart local v59    # "pvecCol1":F
    .restart local v60    # "pvecCol2":F
    .restart local v61    # "qvecCol0":F
    .restart local v62    # "qvecCol1":F
    .restart local v63    # "qvecCol2":F
    .restart local v75    # "t":F
    .restart local v79    # "tvecCol0":F
    .restart local v80    # "tvecCol1":F
    .restart local v81    # "tvecCol2":F
    .restart local v82    # "u":F
    .restart local v84    # "v":F
    :cond_c
    const/16 v30, 0x0

    .line 4193
    cmpg-float v88, v75, v36

    if-gez v88, :cond_a

    .line 4194
    const/16 v88, 0x0

    cmpl-float v88, v75, v88

    if-ltz v88, :cond_a

    .line 4195
    move/from16 v36, v75

    .line 4196
    move/from16 v35, v53

    goto :goto_3

    .line 4205
    .end local v13    # "det":F
    .end local v23    # "edge1Col0":F
    .end local v24    # "edge1Col1":F
    .end local v25    # "edge1Col2":F
    .end local v26    # "edge2Col0":F
    .end local v27    # "edge2Col1":F
    .end local v28    # "edge2Col2":F
    .end local v31    # "invDet":F
    .end local v55    # "p1":I
    .end local v56    # "p2":I
    .end local v58    # "pvecCol0":F
    .end local v59    # "pvecCol1":F
    .end local v60    # "pvecCol2":F
    .end local v61    # "qvecCol0":F
    .end local v62    # "qvecCol1":F
    .end local v63    # "qvecCol2":F
    .end local v75    # "t":F
    .end local v79    # "tvecCol0":F
    .end local v80    # "tvecCol1":F
    .end local v81    # "tvecCol2":F
    .end local v82    # "u":F
    .end local v84    # "v":F
    :cond_d
    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    .line 4130
    :cond_e
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_1
.end method

.method private compileInternal()V
    .locals 2

    .prologue
    .line 6609
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6610
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    .line 6612
    :cond_0
    return-void
.end method

.method private copy(Lcom/threed/jpct/Object3D;Z)V
    .locals 11
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "reuseMesh"    # Z

    .prologue
    const/4 v10, 0x0

    .line 703
    if-eqz p2, :cond_5

    .line 704
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v7, Lcom/threed/jpct/Mesh;->nxOrg:[F

    if-nez v7, :cond_0

    .line 705
    const-string v7, "Can\'t use a mesh for a new object that has already been stripped!"

    invoke-static {v7, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 808
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 713
    :goto_1
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->hasVertexAlpha()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 715
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v7}, Lcom/threed/jpct/Vectors;->createAlpha()V

    .line 716
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->alpha:[F

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v8, v8, Lcom/threed/jpct/Vectors;->alpha:[F

    iget-object v9, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->alpha:[F

    array-length v9, v9

    invoke-static {v7, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 719
    :cond_1
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v1, v7, Lcom/threed/jpct/Vectors;->maxVectors:I

    .line 720
    .local v1, "end":I
    iget-object v5, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 722
    .local v5, "objobjVectors":Lcom/threed/jpct/Vectors;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v1, :cond_6

    .line 727
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->uMul:[[F

    if-eqz v7, :cond_2

    .line 728
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v7}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    .line 729
    iget-object v7, v5, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v7, v7

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v8, v8, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 730
    .local v4, "min":I
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v4, :cond_7

    .line 738
    .end local v4    # "min":I
    :cond_2
    iget v7, p1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iput v7, p0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 739
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 740
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v8, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v8, v8, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    iput-boolean v8, v7, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 742
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v7, v8}, Lcom/threed/jpct/Vectors;->setMesh(Lcom/threed/jpct/Mesh;)V

    .line 744
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->isTrans:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    .line 745
    iget v7, p1, Lcom/threed/jpct/Object3D;->transMode:I

    iput v7, p0, Lcom/threed/jpct/Object3D;->transMode:I

    .line 746
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    .line 747
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->isVisible:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->isVisible:Z

    .line 748
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->isStatic:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->isStatic:Z

    .line 749
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    .line 750
    iget v7, p1, Lcom/threed/jpct/Object3D;->lowestPos:I

    iput v7, p0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 751
    iget v7, p1, Lcom/threed/jpct/Object3D;->highestPos:I

    iput v7, p0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 752
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    .line 753
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    .line 754
    iget v7, p1, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    iput v7, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    .line 755
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    .line 756
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->skipPivot:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 758
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v7, :cond_4

    .line 759
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-nez v7, :cond_3

    .line 760
    sget v7, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v8, v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 761
    sget v7, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v8, v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 764
    :cond_3
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v7, v7

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 766
    .restart local v4    # "min":I
    const/4 v2, 0x0

    :goto_4
    if-lt v2, v4, :cond_9

    .line 771
    move v2, v4

    :goto_5
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v7, v7

    if-lt v2, v7, :cond_a

    .line 779
    .end local v4    # "min":I
    :cond_4
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->texture:[I

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->texture:[I

    iget-object v9, p1, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v9, v9

    invoke-static {v7, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    iget-object v9, p1, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    array-length v9, v9

    invoke-static {v7, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    iget v7, p1, Lcom/threed/jpct/Object3D;->transValue:I

    iput v7, p0, Lcom/threed/jpct/Object3D;->transValue:I

    .line 784
    iget v7, p1, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iput v7, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    .line 785
    iget v7, p1, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iput v7, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    .line 786
    iget v7, p1, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    iput v7, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    .line 788
    iget v7, p1, Lcom/threed/jpct/Object3D;->centerX:F

    iput v7, p0, Lcom/threed/jpct/Object3D;->centerX:F

    .line 789
    iget v7, p1, Lcom/threed/jpct/Object3D;->centerY:F

    iput v7, p0, Lcom/threed/jpct/Object3D;->centerY:F

    .line 790
    iget v7, p1, Lcom/threed/jpct/Object3D;->centerZ:F

    iput v7, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    .line 792
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    .line 793
    iget v7, p1, Lcom/threed/jpct/Object3D;->addColorR:I

    iput v7, p0, Lcom/threed/jpct/Object3D;->addColorR:I

    .line 794
    iget v7, p1, Lcom/threed/jpct/Object3D;->addColorG:I

    iput v7, p0, Lcom/threed/jpct/Object3D;->addColorG:I

    .line 795
    iget v7, p1, Lcom/threed/jpct/Object3D;->addColorB:I

    iput v7, p0, Lcom/threed/jpct/Object3D;->addColorB:I

    .line 796
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 798
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v7}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v7

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 799
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v7}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v7

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    .line 800
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v7}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v7

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    .line 802
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->doCulling:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->doCulling:Z

    .line 804
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    .line 806
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    .line 807
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    goto/16 :goto_0

    .line 710
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v5    # "objobjVectors":Lcom/threed/jpct/Vectors;
    :cond_5
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/threed/jpct/Mesh;->cloneMesh(Z)Lcom/threed/jpct/Mesh;

    move-result-object v7

    iput-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    goto/16 :goto_1

    .line 723
    .restart local v1    # "end":I
    .restart local v2    # "i":I
    .restart local v5    # "objobjVectors":Lcom/threed/jpct/Vectors;
    :cond_6
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v8, v5, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v8, v8, v2

    aput v8, v7, v2

    .line 724
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iget-object v8, v5, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v8, v8, v2

    aput v8, v7, v2

    .line 722
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 731
    .restart local v4    # "min":I
    :cond_7
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_6
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v7, v7, Lcom/threed/jpct/Vectors;->maxVectors:I

    if-lt v6, v7, :cond_8

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 732
    :cond_8
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v7, v7, v2

    iget-object v8, v5, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v8, v8, v2

    aget v8, v8, v6

    aput v8, v7, v6

    .line 733
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v7, v7, v2

    iget-object v8, v5, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v8, v8, v2

    aget v8, v8, v6

    aput v8, v7, v6

    .line 731
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 767
    .end local v6    # "p":I
    :cond_9
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v8, v8, v2

    iget-object v9, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v9, v9, v2

    array-length v9, v9

    invoke-static {v7, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v8, v8, v2

    iget-object v9, p1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v9, v9, v2

    array-length v9, v9

    invoke-static {v7, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 772
    :cond_a
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v7, v7, v2

    array-length v0, v7

    .line 773
    .local v0, "e":I
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_7
    if-lt v3, v0, :cond_b

    .line 771
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 774
    :cond_b
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v7, v7, v2

    const/4 v8, -0x1

    aput v8, v7, v3

    .line 773
    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method private createCollisionArrays()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 385
    sget-object v0, Lcom/threed/jpct/Object3D;->dirColParam:[F

    if-nez v0, :cond_0

    .line 386
    new-array v0, v1, [F

    sput-object v0, Lcom/threed/jpct/Object3D;->dirColParam:[F

    .line 387
    new-array v0, v1, [F

    sput-object v0, Lcom/threed/jpct/Object3D;->origColParam:[F

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    if-nez v0, :cond_1

    .line 390
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    .line 391
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    .line 392
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 393
    new-instance v0, Lcom/threed/jpct/Plane;

    invoke-direct {v0}, Lcom/threed/jpct/Plane;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    .line 394
    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->newT:[F

    .line 396
    :cond_1
    return-void
.end method

.method public static createDummyObj()Lcom/threed/jpct/Object3D;
    .locals 2

    .prologue
    .line 414
    new-instance v0, Lcom/threed/jpct/Object3D;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    return-object v0
.end method

.method private fillTransformedCenter(Lcom/threed/jpct/SimpleVector;)V
    .locals 7
    .param p1, "fillMe"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 3127
    iget v1, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iget v2, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iget v3, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v5, 0x0

    sget-object v6, Lcom/threed/jpct/Object3D;->mat71:Lcom/threed/jpct/Matrix;

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    .line 3128
    return-void
.end method

.method private final getLowestRoot(FFFF[F)Z
    .locals 7
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "maxR"    # F
    .param p5, "root"    # [F

    .prologue
    .line 5217
    mul-float v5, p2, p2

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, p1

    mul-float/2addr v6, p3

    sub-float v0, v5, v6

    .line 5218
    .local v0, "determinant":F
    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    .line 5219
    const/4 v5, 0x0

    .line 5242
    :goto_0
    return v5

    .line 5222
    :cond_0
    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 5223
    .local v3, "sqrtd":F
    neg-float v5, p2

    sub-float/2addr v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, p1

    div-float v1, v5, v6

    .line 5224
    .local v1, "r1":F
    neg-float v5, p2

    add-float/2addr v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, p1

    div-float v2, v5, v6

    .line 5226
    .local v2, "r2":F
    cmpl-float v5, v1, v2

    if-lez v5, :cond_1

    .line 5227
    move v4, v2

    .line 5228
    .local v4, "temp":F
    move v2, v1

    .line 5229
    move v1, v4

    .line 5232
    .end local v4    # "temp":F
    :cond_1
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    cmpg-float v5, v1, p4

    if-gez v5, :cond_2

    .line 5233
    const/4 v5, 0x0

    aput v1, p5, v5

    .line 5234
    const/4 v5, 0x1

    goto :goto_0

    .line 5237
    :cond_2
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    cmpg-float v5, v2, p4

    if-gez v5, :cond_3

    .line 5238
    const/4 v5, 0x0

    aput v2, p5, v5

    .line 5239
    const/4 v5, 0x1

    goto :goto_0

    .line 5242
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getNextID()I
    .locals 1

    .prologue
    .line 552
    sget v0, Lcom/threed/jpct/Object3D;->nextID:I

    return v0
.end method

.method private getSquaredDistance(Lcom/threed/jpct/SimpleVector;FFF)F
    .locals 5
    .param p1, "basePoint"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "p0x"    # F
    .param p3, "p0y"    # F
    .param p4, "p0z"    # F

    .prologue
    .line 5158
    iget v3, p1, Lcom/threed/jpct/SimpleVector;->x:F

    neg-float v3, v3

    add-float v0, v3, p2

    .line 5159
    .local v0, "x":F
    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    neg-float v3, v3

    add-float v1, v3, p3

    .line 5160
    .local v1, "y":F
    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    neg-float v3, v3

    add-float v2, v3, p4

    .line 5162
    .local v2, "z":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    return v3
.end method

.method private getTmpMatrix(I)Lcom/threed/jpct/Matrix;
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 6568
    sget-object v2, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_3

    .line 6569
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 6570
    const-string v2, "Creating new matrix cache!"

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 6571
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    .line 6573
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 6574
    .local v1, "threadId":Ljava/lang/Long;
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threed/jpct/Matrix;

    .line 6575
    .local v0, "mArray":[Lcom/threed/jpct/Matrix;
    if-nez v0, :cond_2

    .line 6576
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 6577
    const-string v2, "Clearing matrix cache!"

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 6578
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 6581
    :cond_1
    const/4 v2, 0x6

    new-array v0, v2, [Lcom/threed/jpct/Matrix;

    .line 6582
    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v2, v0, v5

    .line 6583
    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v2, v0, v6

    .line 6584
    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v2, v0, v4

    .line 6585
    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v2, v0, v7

    .line 6586
    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v2, v0, v8

    .line 6587
    const/4 v2, 0x5

    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v3, v0, v2

    .line 6588
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6591
    :cond_2
    aget-object v2, v0, p1

    .line 6605
    .end local v0    # "mArray":[Lcom/threed/jpct/Matrix;
    .end local v1    # "threadId":Ljava/lang/Long;
    :goto_0
    return-object v2

    .line 6595
    :cond_3
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    if-nez v2, :cond_4

    .line 6596
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/threed/jpct/Matrix;

    sput-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    .line 6597
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v3, v2, v5

    .line 6598
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v3, v2, v6

    .line 6599
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v3, v2, v4

    .line 6600
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v3, v2, v7

    .line 6601
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v3, v2, v8

    .line 6602
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    const/4 v3, 0x5

    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v4, v2, v3

    .line 6605
    :cond_4
    sget-object v2, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    aget-object v2, v2, p1

    goto :goto_0
.end method

.method private init(I)V
    .locals 7
    .param p1, "maxTriangles"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 813
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    .line 814
    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v0, v1, 0x8

    .line 815
    .local v0, "cnt":I
    new-instance v1, Lcom/threed/jpct/Mesh;

    invoke-direct {v1, v0}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 817
    new-instance v1, Lcom/threed/jpct/Vectors;

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-direct {v1, v0, v2}, Lcom/threed/jpct/Vectors;-><init>(ILcom/threed/jpct/Mesh;)V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 818
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->texture:[I

    .line 823
    .end local v0    # "cnt":I
    :goto_0
    sget v1, Lcom/threed/jpct/Config;->maxParentObjects:I

    new-array v1, v1, [Lcom/threed/jpct/Object3D;

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    .line 824
    iput v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    .line 826
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    .line 827
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 828
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 829
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 831
    iput v4, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    .line 832
    iput v4, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    .line 833
    iput v4, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    .line 835
    iput v4, p0, Lcom/threed/jpct/Object3D;->centerX:F

    .line 836
    iput v4, p0, Lcom/threed/jpct/Object3D;->centerY:F

    .line 837
    iput v4, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    .line 839
    sget v1, Lcom/threed/jpct/Object3D;->nextID:I

    iput v1, p0, Lcom/threed/jpct/Object3D;->number:I

    .line 840
    sget v1, Lcom/threed/jpct/Object3D;->nextID:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/threed/jpct/Object3D;->nextID:I

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "object"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threed/jpct/Object3D;->number:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    .line 842
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v3, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 844
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    .line 845
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->mayCollide:Z

    .line 846
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    .line 847
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    .line 848
    iput-boolean v5, p0, Lcom/threed/jpct/Object3D;->isLit:Z

    .line 850
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    .line 852
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 854
    iput-object v6, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    .line 855
    iput-object v6, p0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    .line 857
    if-eqz p1, :cond_0

    .line 861
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    .line 862
    iput v3, p0, Lcom/threed/jpct/Object3D;->transValue:I

    .line 863
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    .line 864
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->isStatic:Z

    .line 865
    iput-boolean v5, p0, Lcom/threed/jpct/Object3D;->isVisible:Z

    .line 866
    iput-boolean v5, p0, Lcom/threed/jpct/Object3D;->doCulling:Z

    .line 867
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->doSpecularLighting:Z

    .line 868
    iput v3, p0, Lcom/threed/jpct/Object3D;->addColorR:I

    .line 869
    iput v3, p0, Lcom/threed/jpct/Object3D;->addColorG:I

    .line 870
    iput v3, p0, Lcom/threed/jpct/Object3D;->addColorB:I

    .line 871
    new-instance v1, Lcom/threed/jpct/RGBColor;

    invoke-direct {v1}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 872
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    .line 874
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    .line 875
    return-void

    .line 820
    :cond_1
    new-instance v1, Lcom/threed/jpct/Mesh;

    invoke-direct {v1, v5}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    goto/16 :goto_0
.end method

.method public static varargs mergeAll([Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;
    .locals 8
    .param p0, "objs"    # [Lcom/threed/jpct/Object3D;

    .prologue
    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, "anzs":I
    const/4 v0, 0x0

    .line 508
    .local v0, "anvs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p0

    if-lt v2, v7, :cond_0

    .line 513
    div-int/lit8 v0, v0, 0x3

    .line 514
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 516
    .local v6, "triCnt":I
    new-instance v5, Lcom/threed/jpct/Object3D;

    invoke-direct {v5, v6}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 518
    .local v5, "target":Lcom/threed/jpct/Object3D;
    const/4 v3, 0x1

    .line 520
    .local v3, "nc":Z
    const/4 v2, 0x0

    :goto_1
    array-length v7, p0

    if-lt v2, v7, :cond_1

    .line 525
    iget-object v7, v5, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput-boolean v3, v7, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 527
    return-object v5

    .line 509
    .end local v3    # "nc":Z
    .end local v5    # "target":Lcom/threed/jpct/Object3D;
    .end local v6    # "triCnt":I
    :cond_0
    aget-object v4, p0, v2

    .line 510
    .local v4, "obj":Lcom/threed/jpct/Object3D;
    iget-object v7, v4, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v7, v7, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/2addr v1, v7

    .line 511
    iget-object v7, v4, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v7, v7, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/2addr v0, v7

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v4    # "obj":Lcom/threed/jpct/Object3D;
    .restart local v3    # "nc":Z
    .restart local v5    # "target":Lcom/threed/jpct/Object3D;
    .restart local v6    # "triCnt":I
    :cond_1
    aget-object v7, p0, v2

    iget-object v7, v7, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v7, v7, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    and-int/2addr v3, v7

    .line 522
    aget-object v7, p0, v2

    invoke-direct {v7, v5}, Lcom/threed/jpct/Object3D;->appendToObject(Lcom/threed/jpct/Object3D;)V

    .line 523
    const/4 v7, 0x0

    aput-object v7, p0, v2

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static mergeObjects(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;
    .locals 6
    .param p0, "first"    # Lcom/threed/jpct/Object3D;
    .param p1, "second"    # Lcom/threed/jpct/Object3D;

    .prologue
    const/4 v2, 0x0

    .line 483
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 484
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v3, Lcom/threed/jpct/Mesh;->anzTri:I

    iget-object v4, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v4, Lcom/threed/jpct/Mesh;->anzVectors:I

    iget-object v5, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v5, v5, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 485
    .local v1, "triCnt":I
    new-instance v0, Lcom/threed/jpct/Object3D;

    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 486
    .local v0, "obj":Lcom/threed/jpct/Object3D;
    invoke-direct {p0, v0}, Lcom/threed/jpct/Object3D;->appendToObject(Lcom/threed/jpct/Object3D;)V

    .line 487
    invoke-direct {p1, v0}, Lcom/threed/jpct/Object3D;->appendToObject(Lcom/threed/jpct/Object3D;)V

    .line 488
    iget-object v3, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v4, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v4, v4, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v4, v4, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v3, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 493
    .end local v0    # "obj":Lcom/threed/jpct/Object3D;
    .end local v1    # "triCnt":I
    :goto_0
    return-object v0

    .line 491
    :cond_1
    const-string v3, "Can\'t merge null!"

    invoke-static {v3, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 493
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 13
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x3

    .line 5812
    invoke-direct {p0, v10}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 5814
    .local v1, "mat4":Lcom/threed/jpct/Matrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-lt v0, v6, :cond_0

    .line 5841
    return-object p1

    .line 5816
    :cond_0
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    aget-object v5, v6, v0

    .line 5817
    .local v5, "po":Lcom/threed/jpct/Object3D;
    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 5819
    iget-object v6, v5, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-object v6, v6, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v9

    aget v2, v6, v11

    .line 5820
    .local v2, "o30":F
    iget-object v6, v5, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-object v6, v6, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v9

    aget v3, v6, v12

    .line 5821
    .local v3, "o31":F
    iget-object v6, v5, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-object v6, v6, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v9

    aget v4, v6, v10

    .line 5823
    .local v4, "o32":F
    iget-object v6, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v9

    iget v7, v5, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    neg-float v7, v7

    sub-float/2addr v7, v2

    aput v7, v6, v11

    .line 5824
    iget-object v6, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v9

    iget v7, v5, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    neg-float v7, v7

    sub-float/2addr v7, v3

    aput v7, v6, v12

    .line 5825
    iget-object v6, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v9

    iget v7, v5, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    neg-float v7, v7

    sub-float/2addr v7, v4

    aput v7, v6, v10

    .line 5827
    invoke-virtual {p1, v1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 5828
    iget-object v6, v5, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1, v6}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 5830
    iget-object v6, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v9

    iget v7, v5, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget-object v8, v5, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v8, v8, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v8, v8, v9

    aget v8, v8, v11

    add-float/2addr v7, v8

    add-float/2addr v7, v2

    aput v7, v6, v11

    .line 5831
    iget-object v6, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v9

    iget v7, v5, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget-object v8, v5, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v8, v8, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v8, v8, v9

    aget v8, v8, v12

    add-float/2addr v7, v8

    add-float/2addr v7, v3

    aput v7, v6, v12

    .line 5832
    iget-object v6, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v9

    iget v7, v5, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    iget-object v8, v5, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v8, v8, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v8, v8, v9

    aget v8, v8, v10

    add-float/2addr v7, v8

    add-float/2addr v7, v4

    aput v7, v6, v10

    .line 5834
    invoke-virtual {p1, v1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 5836
    iget v6, v5, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v6, :cond_1

    .line 5837
    invoke-direct {v5, p1}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    .line 5814
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private final recurseObjectsBillboarded(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 14
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x3

    .line 5763
    invoke-direct {p0, v9}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v5

    .line 5764
    .local v5, "mc":Lcom/threed/jpct/Matrix;
    invoke-virtual {v5, p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 5766
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 5767
    .local v0, "m2":Lcom/threed/jpct/Matrix;
    invoke-direct {p0, p1}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    .line 5769
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 5770
    .local v1, "m3":Lcom/threed/jpct/Matrix;
    invoke-virtual {v1, p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 5772
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/threed/jpct/Object3D;->recurseScaling(F)F

    move-result v6

    .line 5774
    .local v6, "scale":F
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 5775
    iget-object v7, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aget v7, v7, v11

    neg-float v2, v7

    .line 5776
    .local v2, "m30":F
    iget-object v7, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aget v7, v7, v12

    neg-float v3, v7

    .line 5777
    .local v3, "m31":F
    iget-object v7, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aget v7, v7, v13

    neg-float v4, v7

    .line 5779
    .local v4, "m32":F
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aput v2, v7, v11

    .line 5780
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aput v3, v7, v12

    .line 5781
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aput v4, v7, v13

    .line 5783
    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 5785
    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    .line 5787
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aput v10, v7, v11

    .line 5788
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aput v10, v7, v12

    .line 5789
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aput v10, v7, v13

    .line 5790
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v9

    .line 5791
    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 5793
    iget-object v7, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aput v10, v7, v11

    .line 5794
    iget-object v7, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aput v10, v7, v12

    .line 5795
    iget-object v7, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    aput v10, v7, v13

    .line 5796
    iget-object v7, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v9

    .line 5797
    invoke-virtual {p1, v5}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 5799
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 5801
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    neg-float v8, v2

    aput v8, v7, v11

    .line 5802
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    neg-float v8, v3

    aput v8, v7, v12

    .line 5803
    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, v7, v9

    neg-float v8, v4

    aput v8, v7, v13

    .line 5804
    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 5806
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v8

    mul-float/2addr v8, v6

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    .line 5807
    return-object p1
.end method

.method private final recurseScaling(F)F
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 5845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-lt v0, v2, :cond_0

    .line 5854
    return p1

    .line 5846
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    aget-object v1, v2, v0

    .line 5847
    .local v1, "po":Lcom/threed/jpct/Object3D;
    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v2

    mul-float/2addr p1, v2

    .line 5849
    iget v2, v1, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v2, :cond_1

    .line 5850
    invoke-direct {v1, p1}, Lcom/threed/jpct/Object3D;->recurseScaling(F)F

    move-result p1

    .line 5845
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static resetNextID()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/Object3D;->nextID:I

    .line 542
    return-void
.end method

.method public static setNextID(I)V
    .locals 2
    .param p0, "next"    # I

    .prologue
    .line 565
    sget v0, Lcom/threed/jpct/Object3D;->nextID:I

    if-lt p0, v0, :cond_0

    .line 566
    sput p0, Lcom/threed/jpct/Object3D;->nextID:I

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    const-string v0, "The next ID can\'t be lower than the current one"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lcom/threed/jpct/Object3D;)V
    .locals 2
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 1352
    if-eqz p1, :cond_0

    .line 1353
    invoke-virtual {p1, p0}, Lcom/threed/jpct/Object3D;->addParent(Lcom/threed/jpct/Object3D;)V

    .line 1357
    :goto_0
    return-void

    .line 1355
    :cond_0
    const-string v0, "Tried to assign a non-existent Object3D as child!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public declared-synchronized addCollisionListener(Lcom/threed/jpct/CollisionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/threed/jpct/CollisionListener;

    .prologue
    .line 2757
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2758
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    .line 2760
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2761
    sget v0, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/threed/jpct/Object3D;->globalListenerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2762
    monitor-exit p0

    return-void

    .line 2757
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final addCompiled(Lcom/threed/jpct/CompiledInstance;)V
    .locals 1
    .param p1, "ci"    # Lcom/threed/jpct/CompiledInstance;

    .prologue
    .line 6093
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6094
    return-void
.end method

.method final addMD2Triangle(IFFIFFIFF)I
    .locals 14
    .param p1, "index1"    # I
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "index2"    # I
    .param p5, "u2"    # F
    .param p6, "v2"    # F
    .param p7, "index3"    # I
    .param p8, "u3"    # F
    .param p9, "v3"    # F

    .prologue
    .line 5642
    const/4 v5, 0x0

    .line 5644
    .local v5, "texturID":I
    move/from16 v8, p2

    .line 5645
    .local v8, "un":F
    move/from16 v11, p3

    .line 5646
    .local v11, "vn":F
    move/from16 v6, p5

    .line 5647
    .local v6, "u2n":F
    move/from16 v9, p6

    .line 5648
    .local v9, "v2n":F
    move/from16 v7, p8

    .line 5649
    .local v7, "u3n":F
    move/from16 v10, p9

    .line 5651
    .local v10, "v3n":F
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v12, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 v12, v12, 0x3

    iget-object v13, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v13, v13, Lcom/threed/jpct/Mesh;->maxVectors:I

    if-ge v12, v13, :cond_6

    .line 5652
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v0, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5653
    .local v0, "pos":I
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v2, v12, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 5654
    .local v2, "posTri":I
    const/4 v1, 0x0

    .line 5656
    .local v1, "pos3":I
    const/4 v3, 0x0

    .line 5657
    .local v3, "posm3":I
    const/4 v4, 0x0

    .line 5659
    .local v4, "posmm3":I
    move v1, p1

    .line 5660
    move v4, v1

    .line 5662
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v12, v12, Lcom/threed/jpct/Mesh;->coords:[I

    aput v1, v12, v0

    .line 5663
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v12, v12, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput v8, v12, v0

    .line 5664
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v12, v12, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput v11, v12, v0

    .line 5666
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v13, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5667
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v12, v12, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v12, v12, v2

    const/4 v13, 0x0

    aput v0, v12, v13

    .line 5668
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v0, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5670
    move/from16 v1, p4

    .line 5671
    move v3, v0

    .line 5673
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v12, v12, Lcom/threed/jpct/Mesh;->coords:[I

    aput v1, v12, v0

    .line 5675
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v12, v12, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput v6, v12, v0

    .line 5676
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v12, v12, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput v9, v12, v0

    .line 5678
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v13, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5679
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v12, v12, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v12, v12, v2

    const/4 v13, 0x1

    aput v0, v12, v13

    .line 5680
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v0, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5681
    move/from16 v1, p7

    .line 5683
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v12, v12, Lcom/threed/jpct/Mesh;->coords:[I

    aput v1, v12, v0

    .line 5685
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v12, v12, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput v7, v12, v0

    .line 5686
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v12, v12, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput v10, v12, v0

    .line 5688
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v13, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5690
    iget v12, p0, Lcom/threed/jpct/Object3D;->lowestPos:I

    if-ge v1, v12, :cond_0

    .line 5691
    iput v1, p0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 5693
    :cond_0
    iget v12, p0, Lcom/threed/jpct/Object3D;->lowestPos:I

    if-ge v3, v12, :cond_1

    .line 5694
    iput v3, p0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 5696
    :cond_1
    iget v12, p0, Lcom/threed/jpct/Object3D;->lowestPos:I

    if-ge v4, v12, :cond_2

    .line 5697
    iput v4, p0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 5700
    :cond_2
    iget v12, p0, Lcom/threed/jpct/Object3D;->highestPos:I

    if-le v1, v12, :cond_3

    .line 5701
    iput v1, p0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 5703
    :cond_3
    iget v12, p0, Lcom/threed/jpct/Object3D;->highestPos:I

    if-le v3, v12, :cond_4

    .line 5704
    iput v3, p0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 5706
    :cond_4
    iget v12, p0, Lcom/threed/jpct/Object3D;->highestPos:I

    if-le v4, v12, :cond_5

    .line 5707
    iput v4, p0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 5710
    :cond_5
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v12, v12, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v12, v12, v2

    const/4 v13, 0x2

    aput v0, v12, v13

    .line 5712
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aput v5, v12, v2

    .line 5714
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v13, v12, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 5719
    .end local v0    # "pos":I
    .end local v1    # "pos3":I
    .end local v2    # "posTri":I
    .end local v3    # "posm3":I
    .end local v4    # "posmm3":I
    :goto_0
    iget-object v12, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v12, v12, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/lit8 v12, v12, -0x1

    return v12

    .line 5716
    :cond_6
    const-string v12, "Polygon index out of range - object is too large!"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public addParent(Lcom/threed/jpct/Object3D;)V
    .locals 3
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    const/4 v2, 0x0

    .line 1420
    if-ne p1, p0, :cond_0

    .line 1421
    const-string v0, "An object can\'t be its own parent!"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1434
    :goto_0
    return-void

    .line 1424
    :cond_0
    if-eqz p1, :cond_2

    .line 1425
    iget v0, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    sget v1, Lcom/threed/jpct/Config;->maxParentObjects:I

    if-ge v0, v1, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    iget v1, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    aput-object p1, v0, v1

    .line 1427
    iget v0, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    goto :goto_0

    .line 1429
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t assign more than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/threed/jpct/Config;->maxParentObjects:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " objects as parent objects in the current Configuration!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 1432
    :cond_2
    const-string v0, "Tried to assign a nonexistent object as parent!"

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method final addTriangle(FFFFFFFFF)I
    .locals 19
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F
    .param p9, "z3"    # F

    .prologue
    .line 5297
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-virtual/range {v0 .. v18}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method final addTriangle(FFFFFFFFFFFFFFF)I
    .locals 19
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "u"    # F
    .param p5, "v"    # F
    .param p6, "x2"    # F
    .param p7, "y2"    # F
    .param p8, "z2"    # F
    .param p9, "u2"    # F
    .param p10, "v2"    # F
    .param p11, "x3"    # F
    .param p12, "y3"    # F
    .param p13, "z3"    # F
    .param p14, "u3"    # F
    .param p15, "v3"    # F

    .prologue
    .line 5333
    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v18}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method final addTriangle(FFFFFFFFFFFFFFFI)I
    .locals 19
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "u"    # F
    .param p5, "v"    # F
    .param p6, "x2"    # F
    .param p7, "y2"    # F
    .param p8, "z2"    # F
    .param p9, "u2"    # F
    .param p10, "v2"    # F
    .param p11, "x3"    # F
    .param p12, "y3"    # F
    .param p13, "z3"    # F
    .param p14, "u3"    # F
    .param p15, "v3"    # F
    .param p16, "texturID"    # I

    .prologue
    .line 5373
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-virtual/range {v0 .. v18}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method final addTriangle(FFFFFFFFFFFFFFFIIZ)I
    .locals 20
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "u"    # F
    .param p5, "v"    # F
    .param p6, "x2"    # F
    .param p7, "y2"    # F
    .param p8, "z2"    # F
    .param p9, "u2"    # F
    .param p10, "v2"    # F
    .param p11, "x3"    # F
    .param p12, "y3"    # F
    .param p13, "z3"    # F
    .param p14, "u3"    # F
    .param p15, "v3"    # F
    .param p16, "texturID"    # I
    .param p17, "sec"    # I
    .param p18, "useSec"    # Z

    .prologue
    .line 5439
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-virtual/range {v0 .. v19}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[I)I

    move-result v0

    return v0
.end method

.method final addTriangle(FFFFFFFFFFFFFFFIIZ[I)I
    .locals 21
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "u"    # F
    .param p5, "v"    # F
    .param p6, "x2"    # F
    .param p7, "y2"    # F
    .param p8, "z2"    # F
    .param p9, "u2"    # F
    .param p10, "v2"    # F
    .param p11, "x3"    # F
    .param p12, "y3"    # F
    .param p13, "z3"    # F
    .param p14, "u3"    # F
    .param p15, "v3"    # F
    .param p16, "texturID"    # I
    .param p17, "sec"    # I
    .param p18, "useSec"    # Z
    .param p19, "lastPoints"    # [I

    .prologue
    .line 5444
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    invoke-virtual/range {v0 .. v20}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[ILcom/threed/jpct/TextureInfo;)I

    move-result v0

    return v0
.end method

.method final addTriangle(FFFFFFFFFFFFFFFIIZ[ILcom/threed/jpct/TextureInfo;)I
    .locals 22
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "u"    # F
    .param p5, "v"    # F
    .param p6, "x2"    # F
    .param p7, "y2"    # F
    .param p8, "z2"    # F
    .param p9, "u2"    # F
    .param p10, "v2"    # F
    .param p11, "x3"    # F
    .param p12, "y3"    # F
    .param p13, "z3"    # F
    .param p14, "u3"    # F
    .param p15, "v3"    # F
    .param p16, "texturID"    # I
    .param p17, "sec"    # I
    .param p18, "useSec"    # Z
    .param p19, "lastPoints"    # [I
    .param p20, "tInf"    # Lcom/threed/jpct/TextureInfo;

    .prologue
    .line 5450
    if-eqz p20, :cond_1

    .line 5452
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p20

    iget v0, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 5453
    sget v19, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    filled-new-array/range {v19 .. v20}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[I

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 5454
    sget v19, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    filled-new-array/range {v19 .. v20}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[I

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 5455
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v5, v0, :cond_15

    .line 5460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    .line 5461
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 5464
    .end local v5    # "i":I
    :cond_0
    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->u0:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget p4, v19, v20

    .line 5465
    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->v0:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget p5, v19, v20

    .line 5466
    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->u1:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget p9, v19, v20

    .line 5467
    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->v1:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget p10, v19, v20

    .line 5468
    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->u2:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget p14, v19, v20

    .line 5469
    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->v2:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget p15, v19, v20

    .line 5470
    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->textures:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget p16, v19, v20

    .line 5472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    move/from16 v19, v0

    move-object/from16 v0, p20

    iget v0, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 5473
    move-object/from16 v0, p20

    iget v0, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 5477
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    if-eqz p20, :cond_17

    const/4 v7, 0x1

    .line 5479
    .local v7, "multi":Z
    :goto_1
    const/16 v19, -0x1

    move/from16 v0, p16

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 5480
    const/16 p16, 0x0

    .line 5483
    :cond_2
    move/from16 v15, p4

    .line 5484
    .local v15, "un":F
    move/from16 v18, p5

    .line 5485
    .local v18, "vn":F
    move/from16 v13, p9

    .line 5486
    .local v13, "u2n":F
    move/from16 v16, p10

    .line 5487
    .local v16, "v2n":F
    move/from16 v14, p14

    .line 5488
    .local v14, "u3n":F
    move/from16 v17, p15

    .line 5490
    .local v17, "v3n":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/threed/jpct/Mesh;->maxVectors:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    .line 5491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v8, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5492
    .local v8, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v10, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 5493
    .local v10, "posTri":I
    const/4 v9, 0x0

    .line 5495
    .local v9, "pos3":I
    const/4 v11, 0x0

    .line 5496
    .local v11, "posm3":I
    const/4 v12, 0x0

    .line 5498
    .local v12, "posmm3":I
    const/4 v9, -0x1

    .line 5499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 5500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/Vectors;->checkCoords(FFF)I

    move-result v9

    .line 5507
    :cond_3
    :goto_2
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_4

    .line 5508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result v9

    .line 5511
    :cond_4
    move v12, v9

    .line 5513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v19, v0

    aput v9, v19, v8

    .line 5515
    if-eqz v7, :cond_5

    .line 5516
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    move-object/from16 v0, p20

    iget v0, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-lt v5, v0, :cond_19

    .line 5522
    .end local v5    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v19, v0

    aput v15, v19, v8

    .line 5523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v19, v0

    aput v18, v19, v8

    .line 5525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    const/16 v20, 0x0

    aput v8, v19, v20

    .line 5529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v8, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5531
    const/4 v9, -0x1

    .line 5532
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a

    .line 5533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/Vectors;->checkCoords(FFF)I

    move-result v9

    .line 5541
    :cond_6
    :goto_4
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_7

    .line 5542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result v9

    .line 5545
    :cond_7
    move v11, v9

    .line 5547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v19, v0

    aput v9, v19, v8

    .line 5549
    if-eqz v7, :cond_8

    .line 5550
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    move-object/from16 v0, p20

    iget v0, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-lt v5, v0, :cond_1b

    .line 5556
    .end local v5    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v19, v0

    aput v13, v19, v8

    .line 5557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v19, v0

    aput v16, v19, v8

    .line 5559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    const/16 v20, 0x1

    aput v8, v19, v20

    .line 5561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v8, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5563
    const/4 v9, -0x1

    .line 5564
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    move/from16 v19, v0

    if-nez v19, :cond_1c

    .line 5565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p11

    move/from16 v2, p12

    move/from16 v3, p13

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/Vectors;->checkCoords(FFF)I

    move-result v9

    .line 5572
    :cond_9
    :goto_6
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_a

    .line 5573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p11

    move/from16 v2, p12

    move/from16 v3, p13

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result v9

    .line 5576
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v19, v0

    aput v9, v19, v8

    .line 5578
    if-eqz v7, :cond_b

    .line 5579
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    move-object/from16 v0, p20

    iget v0, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-lt v5, v0, :cond_1d

    .line 5585
    .end local v5    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v19, v0

    aput v14, v19, v8

    .line 5586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v19, v0

    aput v17, v19, v8

    .line 5588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 5590
    if-eqz p19, :cond_c

    .line 5591
    const/16 v19, 0x0

    aput v12, p19, v19

    .line 5592
    const/16 v19, 0x1

    aput v11, p19, v19

    .line 5593
    const/16 v19, 0x2

    aput v9, p19, v19

    .line 5596
    :cond_c
    if-eq v9, v12, :cond_14

    if-eq v9, v11, :cond_14

    if-eq v11, v12, :cond_14

    .line 5598
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_d

    .line 5599
    move-object/from16 v0, p0

    iput v9, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 5601
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_e

    .line 5602
    move-object/from16 v0, p0

    iput v11, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 5604
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_f

    .line 5605
    move-object/from16 v0, p0

    iput v12, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 5608
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v9, v0, :cond_10

    .line 5609
    move-object/from16 v0, p0

    iput v9, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 5611
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v11, v0, :cond_11

    .line 5612
    move-object/from16 v0, p0

    iput v11, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 5614
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v12, v0, :cond_12

    .line 5615
    move-object/from16 v0, p0

    iput v12, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 5618
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    const/16 v20, 0x2

    aput v8, v19, v20

    .line 5620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v19, v0

    aput p16, v19, v10

    .line 5622
    if-eqz v7, :cond_13

    .line 5623
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8
    move-object/from16 v0, p20

    iget v0, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-lt v5, v0, :cond_1e

    .line 5629
    .end local v5    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/threed/jpct/Mesh;->anzTri:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5638
    .end local v7    # "multi":Z
    .end local v8    # "pos":I
    .end local v9    # "pos3":I
    .end local v10    # "posTri":I
    .end local v11    # "posm3":I
    .end local v12    # "posmm3":I
    .end local v13    # "u2n":F
    .end local v14    # "u3n":F
    .end local v15    # "un":F
    .end local v16    # "v2n":F
    .end local v17    # "v3n":F
    .end local v18    # "vn":F
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    return v19

    .line 5456
    .restart local v5    # "i":I
    :cond_15
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_a
    :try_start_1
    sget v19, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-lt v6, v0, :cond_16

    .line 5455
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 5457
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v19, v0

    aget-object v19, v19, v6

    const/16 v20, -0x1

    aput v20, v19, v5

    .line 5456
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 5477
    .end local v5    # "i":I
    .end local v6    # "ii":I
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 5502
    .restart local v7    # "multi":Z
    .restart local v8    # "pos":I
    .restart local v9    # "pos3":I
    .restart local v10    # "posTri":I
    .restart local v11    # "posm3":I
    .restart local v12    # "posmm3":I
    .restart local v13    # "u2n":F
    .restart local v14    # "u3n":F
    .restart local v15    # "un":F
    .restart local v16    # "v2n":F
    .restart local v17    # "v3n":F
    .restart local v18    # "vn":F
    :cond_18
    if-eqz p19, :cond_3

    .line 5503
    const/16 v19, 0x0

    aget v9, p19, v19

    goto/16 :goto_2

    .line 5517
    .restart local v5    # "i":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->u0:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    aget v20, v20, v21

    aput v20, v19, v8

    .line 5518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->vMul:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->v0:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    aget v20, v20, v21

    aput v20, v19, v8

    .line 5516
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 5536
    .end local v5    # "i":I
    :cond_1a
    if-eqz p19, :cond_6

    .line 5537
    const/16 v19, 0x1

    aget v9, p19, v19

    goto/16 :goto_4

    .line 5551
    .restart local v5    # "i":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->u1:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    aget v20, v20, v21

    aput v20, v19, v8

    .line 5552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->vMul:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->v1:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    aget v20, v20, v21

    aput v20, v19, v8

    .line 5550
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 5567
    .end local v5    # "i":I
    :cond_1c
    if-eqz p19, :cond_9

    .line 5568
    const/16 v19, 0x2

    aget v9, p19, v19

    goto/16 :goto_6

    .line 5580
    .restart local v5    # "i":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->u2:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    aget v20, v20, v21

    aput v20, v19, v8

    .line 5581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->vMul:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->v2:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    aget v20, v20, v21

    aput v20, v19, v8

    .line 5579
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 5624
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->textures:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    aget v20, v20, v21

    aput v20, v19, v10

    .line 5625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p20

    iget-object v0, v0, Lcom/threed/jpct/TextureInfo;->mode:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    aget v20, v20, v21

    aput v20, v19, v10

    .line 5623
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 5632
    .end local v5    # "i":I
    .end local v8    # "pos":I
    .end local v9    # "pos3":I
    .end local v10    # "posTri":I
    .end local v11    # "posm3":I
    .end local v12    # "posmm3":I
    :cond_1f
    const-string v19, "Polygon index out of range - object is too large!"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 5634
    .end local v7    # "multi":Z
    .end local v13    # "u2n":F
    .end local v14    # "u3n":F
    .end local v15    # "un":F
    .end local v16    # "v2n":F
    .end local v17    # "v3n":F
    .end local v18    # "vn":F
    :catch_0
    move-exception v4

    .line 5635
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v19, "Polygon index out of range - object is too large!"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_9
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FF)I
    .locals 20
    .param p1, "vert1"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "vert2"    # Lcom/threed/jpct/SimpleVector;
    .param p5, "u2"    # F
    .param p6, "v2"    # F
    .param p7, "vert3"    # Lcom/threed/jpct/SimpleVector;
    .param p8, "u3"    # F
    .param p9, "v3"    # F

    .prologue
    .line 5329
    move-object/from16 v0, p1

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move-object/from16 v0, p4

    iget v7, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p4

    iget v8, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p4

    iget v9, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p7

    iget v13, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p7

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v15, p8

    move/from16 v16, p9

    invoke-virtual/range {v1 .. v19}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v1

    return v1
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFI)I
    .locals 20
    .param p1, "vert1"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "vert2"    # Lcom/threed/jpct/SimpleVector;
    .param p5, "u2"    # F
    .param p6, "v2"    # F
    .param p7, "vert3"    # Lcom/threed/jpct/SimpleVector;
    .param p8, "u3"    # F
    .param p9, "v3"    # F
    .param p10, "textureID"    # I

    .prologue
    .line 5368
    move-object/from16 v0, p1

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move-object/from16 v0, p4

    iget v7, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p4

    iget v8, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p4

    iget v9, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p7

    iget v13, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p7

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    invoke-virtual/range {v1 .. v19}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v1

    return v1
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFII)I
    .locals 20
    .param p1, "vert1"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "vert2"    # Lcom/threed/jpct/SimpleVector;
    .param p5, "u2"    # F
    .param p6, "v2"    # F
    .param p7, "vert3"    # Lcom/threed/jpct/SimpleVector;
    .param p8, "u3"    # F
    .param p9, "v3"    # F
    .param p10, "textureID"    # I
    .param p11, "sec"    # I

    .prologue
    .line 5408
    move-object/from16 v0, p1

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move-object/from16 v0, p4

    iget v7, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p4

    iget v8, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p4

    iget v9, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p7

    iget v13, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p7

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    invoke-virtual/range {v1 .. v19}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v1

    return v1
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)I
    .locals 20
    .param p1, "vert1"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "vert2"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "vert3"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 5293
    move-object/from16 v0, p1

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget v7, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p2

    iget v8, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p2

    iget v9, v0, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget v12, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p3

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v19}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v1

    return v1
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/TextureInfo;)I
    .locals 22
    .param p1, "vert1"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "vert2"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "vert3"    # Lcom/threed/jpct/SimpleVector;
    .param p4, "tInf"    # Lcom/threed/jpct/TextureInfo;

    .prologue
    .line 5434
    move-object/from16 v0, p1

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget v7, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p2

    iget v8, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p2

    iget v9, v0, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget v12, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, p3

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-object/from16 v21, p4

    invoke-virtual/range {v1 .. v21}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[ILcom/threed/jpct/TextureInfo;)I

    move-result v1

    return v1
.end method

.method public align(Lcom/threed/jpct/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/threed/jpct/Camera;

    .prologue
    .line 2031
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v0

    .line 2032
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/threed/jpct/Object3D;->setScale(F)V

    .line 2033
    iget-object v1, p1, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 2034
    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->setScale(F)V

    .line 2035
    return-void
.end method

.method public align(Lcom/threed/jpct/Object3D;)V
    .locals 3
    .param p1, "object"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 2048
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v0

    .line 2049
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/threed/jpct/Object3D;->setScale(F)V

    .line 2050
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v2, p1, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 2051
    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->setScale(F)V

    .line 2052
    return-void
.end method

.method public animate(F)V
    .locals 1
    .param p1, "index"    # F

    .prologue
    .line 1103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/threed/jpct/Object3D;->animate(FI)V

    .line 1104
    return-void
.end method

.method public animate(FI)V
    .locals 1
    .param p1, "index"    # F
    .param p2, "seq"    # I

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p0, p2, p1}, Lcom/threed/jpct/Animation;->doAnimation(Lcom/threed/jpct/Object3D;IF)V

    .line 1091
    :cond_0
    return-void
.end method

.method public build()V
    .locals 1

    .prologue
    .line 1216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->build(Z)V

    .line 1217
    return-void
.end method

.method public build(Z)V
    .locals 6
    .param p1, "staticUV"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1236
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    .line 1237
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v3, v3, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    if-nez v3, :cond_4

    .line 1238
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcCenter()V

    .line 1239
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    .line 1240
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcNormals()V

    .line 1250
    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    iget-boolean v3, v3, Lcom/threed/jpct/GLSLShader;->needsTangents:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v3, v3, Lcom/threed/jpct/Mesh;->tangentsCalculated:Z

    if-nez v3, :cond_0

    .line 1251
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v3, v5}, Lcom/threed/jpct/Mesh;->calculateTangentVectors(Lcom/threed/jpct/Vectors;)V

    .line 1254
    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    if-nez v3, :cond_1

    move v0, v4

    .line 1255
    .local v0, "dyna":Z
    :cond_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v0, :cond_6

    .line 1261
    .end local v2    # "i":I
    :cond_2
    if-nez v0, :cond_3

    if-nez p1, :cond_7

    .line 1262
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    .line 1271
    .end local v0    # "dyna":Z
    :goto_2
    return-void

    .line 1242
    :cond_4
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcCenter()V

    .line 1243
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v3, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v3, :cond_5

    .line 1244
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1266
    :catch_0
    move-exception v1

    .line 1267
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1268
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t build() object ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")! Check if the object is assigned to a world and if the TextureManager has all required textures loaded."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 1246
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    goto :goto_0

    .line 1257
    .restart local v0    # "dyna":Z
    .restart local v2    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/VertexAttributes;

    invoke-virtual {v3}, Lcom/threed/jpct/VertexAttributes;->isDynamic()Z

    move-result v3

    or-int/2addr v0, v3

    .line 1256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1264
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->compile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public calcBoundingBox()V
    .locals 9

    .prologue
    .line 1200
    iget-object v8, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    monitor-enter v8

    .line 1201
    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->calcBoundingBox()[F

    move-result-object v7

    .line 1202
    .local v7, "res":[F
    const/4 v0, 0x0

    aget v1, v7, v0

    const/4 v0, 0x1

    aget v2, v7, v0

    const/4 v0, 0x2

    aget v3, v7, v0

    const/4 v0, 0x3

    aget v4, v7, v0

    const/4 v0, 0x4

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Object3D;->setBoundingBox(FFFFFF)V

    .line 1200
    monitor-exit v8

    .line 1204
    return-void

    .line 1200
    .end local v7    # "res":[F
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public calcCenter()V
    .locals 2

    .prologue
    .line 3168
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v1}, Lcom/threed/jpct/Mesh;->calcCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 3169
    .local v0, "c":Lcom/threed/jpct/SimpleVector;
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    if-nez v1, :cond_0

    .line 3170
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    .line 3171
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    .line 3172
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    .line 3174
    :cond_0
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->centerX:F

    .line 3175
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->centerY:F

    .line 3176
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    .line 3177
    return-void
.end method

.method public calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)F
    .locals 9
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "dr"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    const/4 v2, 0x2

    const v4, 0x5368d4a5    # 1.0E12f

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2986
    iput-boolean v5, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 2987
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 2988
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->createCollisionArrays()V

    .line 2990
    sget-object v0, Lcom/threed/jpct/Object3D;->origColParam:[F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    aput v1, v0, v5

    .line 2991
    sget-object v0, Lcom/threed/jpct/Object3D;->origColParam:[F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    aput v1, v0, v8

    .line 2992
    sget-object v0, Lcom/threed/jpct/Object3D;->origColParam:[F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    aput v1, v0, v2

    .line 2994
    sget-object v0, Lcom/threed/jpct/Object3D;->dirColParam:[F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->x:F

    aput v1, v0, v5

    .line 2995
    sget-object v0, Lcom/threed/jpct/Object3D;->dirColParam:[F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    aput v1, v0, v8

    .line 2996
    sget-object v0, Lcom/threed/jpct/Object3D;->dirColParam:[F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->z:F

    aput v1, v0, v2

    .line 2998
    sget-object v1, Lcom/threed/jpct/Object3D;->origColParam:[F

    sget-object v2, Lcom/threed/jpct/Object3D;->dirColParam:[F

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->collide([F[FFFZ)F

    move-result v6

    .line 2999
    .local v6, "dist":F
    cmpl-float v0, v6, v4

    if-eqz v0, :cond_1

    .line 3000
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3001
    iget v0, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v7

    .line 3002
    .local v7, "pos":Lcom/threed/jpct/SimpleVector;
    invoke-virtual {v7, v6}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 3003
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v7, v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    .line 3004
    new-array v0, v8, [Lcom/threed/jpct/Object3D;

    aput-object p0, v0, v5

    invoke-virtual {p0, v5, v5, v0, v7}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 3006
    .end local v7    # "pos":Lcom/threed/jpct/SimpleVector;
    :cond_0
    iput-boolean v8, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 3008
    :cond_1
    return v6
.end method

.method public calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F
    .locals 1
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "dr"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "ignoreIfLarger"    # F

    .prologue
    .line 3033
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/threed/jpct/Object3D;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FZ)F

    move-result v0

    return v0
.end method

.method calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FZ)F
    .locals 10
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "dr"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "ignoreIfLarger"    # F
    .param p4, "notify"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 3041
    iput-boolean v5, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 3042
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 3043
    sget v8, Lcom/threed/jpct/Config;->collideOffset:F

    .line 3044
    .local v8, "store":F
    sput p3, Lcom/threed/jpct/Config;->collideOffset:F

    .line 3045
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->createCollisionArrays()V

    .line 3047
    sget-object v0, Lcom/threed/jpct/Object3D;->origColParam:[F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    aput v1, v0, v5

    .line 3048
    sget-object v0, Lcom/threed/jpct/Object3D;->origColParam:[F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    aput v1, v0, v9

    .line 3049
    sget-object v0, Lcom/threed/jpct/Object3D;->origColParam:[F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    aput v1, v0, v2

    .line 3051
    sget-object v0, Lcom/threed/jpct/Object3D;->dirColParam:[F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->x:F

    aput v1, v0, v5

    .line 3052
    sget-object v0, Lcom/threed/jpct/Object3D;->dirColParam:[F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    aput v1, v0, v9

    .line 3053
    sget-object v0, Lcom/threed/jpct/Object3D;->dirColParam:[F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->z:F

    aput v1, v0, v2

    .line 3055
    sget-object v1, Lcom/threed/jpct/Object3D;->origColParam:[F

    sget-object v2, Lcom/threed/jpct/Object3D;->dirColParam:[F

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->collide([F[FFFZ)F

    move-result v6

    .line 3056
    .local v6, "dist":F
    sput v8, Lcom/threed/jpct/Config;->collideOffset:F

    .line 3057
    if-eqz p4, :cond_1

    const v0, 0x5368d4a5    # 1.0E12f

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_1

    .line 3058
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3059
    iget v0, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v7

    .line 3060
    .local v7, "pos":Lcom/threed/jpct/SimpleVector;
    invoke-virtual {v7, v6}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 3061
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v7, v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    .line 3062
    new-array v0, v9, [Lcom/threed/jpct/Object3D;

    aput-object p0, v0, v5

    invoke-virtual {p0, v5, v5, v0, v7}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 3064
    .end local v7    # "pos":Lcom/threed/jpct/SimpleVector;
    :cond_0
    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 3066
    :cond_1
    return v6
.end method

.method public calcNormals()V
    .locals 1

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->calcNormals()V

    .line 3308
    return-void
.end method

.method public calcTangentVectors()V
    .locals 2

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Mesh;->calculateTangentVectors(Lcom/threed/jpct/Vectors;)V

    .line 1695
    return-void
.end method

.method public calcTextureWrap()V
    .locals 23

    .prologue
    .line 3321
    const/16 v13, 0x100

    .line 3322
    .local v13, "texX":I
    const/16 v17, 0x100

    .line 3323
    .local v17, "texY":I
    const/16 v18, 0x100

    .line 3324
    .local v18, "texYB":I
    const/16 v14, 0x100

    .line 3326
    .local v14, "texXB":I
    shr-int/lit8 v16, v13, 0x1

    .line 3327
    .local v16, "texXh":I
    shr-int/lit8 v20, v17, 0x1

    .line 3328
    .local v20, "texYh":I
    add-int/lit8 v13, v13, -0x1

    .line 3329
    add-int/lit8 v17, v17, -0x1

    .line 3331
    shr-int/lit8 v15, v14, 0x1

    .line 3332
    .local v15, "texXBh":I
    shr-int/lit8 v19, v18, 0x1

    .line 3333
    .local v19, "texYBh":I
    add-int/lit8 v14, v14, -0x1

    .line 3334
    add-int/lit8 v18, v18, -0x1

    .line 3336
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3337
    .local v1, "ht":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v4, v0, :cond_0

    .line 3347
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v2, v0, :cond_2

    .line 3401
    return-void

    .line 3338
    .end local v2    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v21, v0

    aget v21, v21, v4

    invoke-static/range {v21 .. v21}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3339
    .local v5, "pi":Ljava/lang/Integer;
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3340
    .local v6, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v6, :cond_1

    .line 3341
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3342
    .restart local v6    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3344
    :cond_1
    invoke-static {v4}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3337
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3349
    .end local v5    # "pi":Ljava/lang/Integer;
    .end local v6    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v21, v0

    aget v7, v21, v2

    .line 3350
    .local v7, "px":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v21, v0

    aget v8, v21, v2

    .line 3352
    .local v8, "py":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v7

    add-float v9, v21, v22

    .line 3353
    .local v9, "su":F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v8

    add-float v11, v21, v22

    .line 3355
    .local v11, "sv":F
    int-to-float v0, v15

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    mul-float v22, v22, v7

    add-float v10, v21, v22

    .line 3356
    .local v10, "suB":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v8

    add-float v12, v21, v22

    .line 3358
    .local v12, "svB":F
    :cond_3
    :goto_2
    int-to-float v0, v13

    move/from16 v21, v0

    cmpl-float v21, v9, v21

    if-gtz v21, :cond_6

    const/16 v21, 0x0

    cmpg-float v21, v9, v21

    if-ltz v21, :cond_6

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v11, v21

    if-gtz v21, :cond_6

    const/16 v21, 0x0

    cmpg-float v21, v11, v21

    if-ltz v21, :cond_6

    .line 3375
    :cond_4
    :goto_3
    int-to-float v0, v14

    move/from16 v21, v0

    cmpl-float v21, v10, v21

    if-gtz v21, :cond_a

    const/16 v21, 0x0

    cmpg-float v21, v10, v21

    if-ltz v21, :cond_a

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v12, v21

    if-gtz v21, :cond_a

    const/16 v21, 0x0

    cmpg-float v21, v12, v21

    if-ltz v21, :cond_a

    .line 3392
    invoke-static {v2}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3393
    .restart local v6    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_5

    .line 3394
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v3, v0, :cond_e

    .line 3347
    .end local v3    # "i2":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 3359
    .end local v6    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    int-to-float v0, v13

    move/from16 v21, v0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_8

    .line 3360
    neg-int v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v9, v0

    .line 3366
    :cond_7
    :goto_5
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v11, v21

    if-lez v21, :cond_9

    .line 3367
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v11, v0

    goto :goto_2

    .line 3362
    :cond_8
    const/16 v21, 0x0

    cmpg-float v21, v9, v21

    if-gez v21, :cond_7

    .line 3363
    int-to-float v9, v13

    goto :goto_5

    .line 3369
    :cond_9
    const/16 v21, 0x0

    cmpg-float v21, v11, v21

    if-gez v21, :cond_3

    .line 3370
    move/from16 v0, v17

    int-to-float v11, v0

    goto/16 :goto_2

    .line 3376
    :cond_a
    int-to-float v0, v14

    move/from16 v21, v0

    cmpl-float v21, v10, v21

    if-lez v21, :cond_c

    .line 3377
    neg-int v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v10, v0

    .line 3383
    :cond_b
    :goto_6
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v12, v21

    if-lez v21, :cond_d

    .line 3384
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v12, v0

    goto/16 :goto_3

    .line 3379
    :cond_c
    const/16 v21, 0x0

    cmpg-float v21, v10, v21

    if-gez v21, :cond_b

    .line 3380
    int-to-float v10, v14

    goto :goto_6

    .line 3386
    :cond_d
    const/16 v21, 0x0

    cmpg-float v21, v12, v21

    if-gez v21, :cond_4

    .line 3387
    move/from16 v0, v18

    int-to-float v12, v0

    goto/16 :goto_3

    .line 3395
    .restart local v3    # "i2":I
    .restart local v6    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_e
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v21, v0

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v22, v9, v22

    aput v22, v21, v4

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v21, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v11, v22

    aput v22, v21, v4

    .line 3394
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4
.end method

.method public calcTextureWrapSpherical()V
    .locals 28

    .prologue
    .line 3417
    const/16 v16, 0x100

    .line 3418
    .local v16, "texX":I
    const/16 v18, 0x100

    .line 3419
    .local v18, "texY":I
    const/16 v19, 0x100

    .line 3420
    .local v19, "texYB":I
    const/16 v17, 0x100

    .line 3422
    .local v17, "texXB":I
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/Object3D;->calcCenter()V

    .line 3423
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 3424
    .local v20, "uTile":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 3426
    .local v22, "vTile":D
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3427
    .local v2, "ht":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v6, v0, :cond_0

    .line 3437
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v3, v0, :cond_2

    .line 3499
    return-void

    .line 3428
    .end local v3    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v24, v0

    aget v24, v24, v6

    invoke-static/range {v24 .. v24}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3429
    .local v7, "pi":Ljava/lang/Integer;
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 3430
    .local v8, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v8, :cond_1

    .line 3431
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3432
    .restart local v8    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3434
    :cond_1
    invoke-static {v6}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3427
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3439
    .end local v7    # "pi":Ljava/lang/Integer;
    .end local v8    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v24, v0

    aget v24, v24, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->centerX:F

    move/from16 v25, v0

    sub-float v9, v24, v25

    .line 3440
    .local v9, "px":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v24, v0

    aget v24, v24, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->centerY:F

    move/from16 v25, v0

    sub-float v10, v24, v25

    .line 3441
    .local v10, "py":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v24, v0

    aget v24, v24, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->centerZ:F

    move/from16 v25, v0

    sub-float v11, v24, v25

    .line 3443
    .local v11, "pz":F
    mul-float v24, v9, v9

    mul-float v25, v10, v10

    add-float v24, v24, v25

    mul-float v25, v11, v11

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v5, v0

    .line 3444
    .local v5, "n":F
    div-float/2addr v9, v5

    .line 3445
    div-float/2addr v10, v5

    .line 3447
    float-to-double v0, v9

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v24

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    div-double v24, v24, v26

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v26

    mul-double v24, v24, v20

    move-wide/from16 v0, v24

    double-to-float v12, v0

    .line 3448
    .local v12, "su":F
    float-to-double v0, v10

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v24

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    div-double v24, v24, v26

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v26

    mul-double v24, v24, v22

    move-wide/from16 v0, v24

    double-to-float v14, v0

    .line 3450
    .local v14, "sv":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v13, v12, v24

    .line 3451
    .local v13, "suB":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v15, v14, v24

    .line 3453
    .local v15, "svB":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v12, v12, v24

    .line 3454
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v14, v14, v24

    .line 3456
    :cond_3
    :goto_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v12, v24

    if-gtz v24, :cond_6

    const/16 v24, 0x0

    cmpg-float v24, v12, v24

    if-ltz v24, :cond_6

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v14, v24

    if-gtz v24, :cond_6

    const/16 v24, 0x0

    cmpg-float v24, v14, v24

    if-ltz v24, :cond_6

    .line 3473
    :cond_4
    :goto_3
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v13, v24

    if-gtz v24, :cond_a

    const/16 v24, 0x0

    cmpg-float v24, v13, v24

    if-ltz v24, :cond_a

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v15, v24

    if-gtz v24, :cond_a

    const/16 v24, 0x0

    cmpg-float v24, v15, v24

    if-ltz v24, :cond_a

    .line 3490
    invoke-static {v3}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 3491
    .restart local v8    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_5

    .line 3492
    const/4 v4, 0x0

    .local v4, "i2":I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-lt v4, v0, :cond_e

    .line 3437
    .end local v4    # "i2":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 3457
    .end local v8    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v12, v24

    if-lez v24, :cond_8

    .line 3458
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v12, v0

    .line 3464
    :cond_7
    :goto_5
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v14, v24

    if-lez v24, :cond_9

    .line 3465
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v14, v0

    goto :goto_2

    .line 3460
    :cond_8
    const/16 v24, 0x0

    cmpg-float v24, v12, v24

    if-gez v24, :cond_7

    .line 3461
    move/from16 v0, v16

    int-to-float v12, v0

    goto :goto_5

    .line 3467
    :cond_9
    const/16 v24, 0x0

    cmpg-float v24, v14, v24

    if-gez v24, :cond_3

    .line 3468
    move/from16 v0, v18

    int-to-float v14, v0

    goto/16 :goto_2

    .line 3474
    :cond_a
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v13, v24

    if-lez v24, :cond_c

    .line 3475
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v13, v0

    .line 3481
    :cond_b
    :goto_6
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v15, v24

    if-lez v24, :cond_d

    .line 3482
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v15, v0

    goto/16 :goto_3

    .line 3477
    :cond_c
    const/16 v24, 0x0

    cmpg-float v24, v13, v24

    if-gez v24, :cond_b

    .line 3478
    move/from16 v0, v17

    int-to-float v13, v0

    goto :goto_6

    .line 3484
    :cond_d
    const/16 v24, 0x0

    cmpg-float v24, v15, v24

    if-gez v24, :cond_4

    .line 3485
    move/from16 v0, v19

    int-to-float v15, v0

    goto/16 :goto_3

    .line 3493
    .restart local v4    # "i2":I
    .restart local v8    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_e
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v12, v25

    aput v25, v24, v6

    .line 3495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v24, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v14, v25

    aput v25, v24, v6

    .line 3492
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4
.end method

.method public checkForCollision(Lcom/threed/jpct/SimpleVector;F)I
    .locals 1
    .param p1, "dirVec"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "step"    # F

    .prologue
    .line 2850
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->checkWorld()V

    .line 2851
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v0, p0, p1, p2}, Lcom/threed/jpct/World;->checkObjCollision(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;F)I

    move-result v0

    return v0
.end method

.method public checkForCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p1, "translation"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "ellipsoid"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "recursionDepth"    # I

    .prologue
    .line 2903
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 2904
    const/4 p3, 0x1

    .line 2906
    :cond_0
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->checkWorld()V

    .line 2907
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/threed/jpct/World;->checkObjCollisionEllipsoid(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public checkForCollisionSpherical(Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p1, "translation"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "radius"    # F

    .prologue
    .line 2875
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->checkWorld()V

    .line 2876
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v0, p0, p1, p2}, Lcom/threed/jpct/World;->checkObjCollisionSpherical(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public clearAdditionalColor()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1823
    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorR:I

    .line 1824
    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorG:I

    .line 1825
    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorB:I

    .line 1826
    sget-object v0, Lcom/threed/jpct/RGBColor;->BLACK:Lcom/threed/jpct/RGBColor;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 1827
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    .line 1062
    return-void
.end method

.method public clearObject()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1839
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 1840
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbEnd:I

    .line 1841
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 1842
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 1843
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 1844
    return-void
.end method

.method public clearRotation()V
    .locals 1

    .prologue
    .line 2379
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->setScale(F)V

    .line 2380
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 2381
    return-void
.end method

.method public clearShader()V
    .locals 1

    .prologue
    .line 1702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    .line 1703
    return-void
.end method

.method public clearTranslation()V
    .locals 1

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 2389
    return-void
.end method

.method public cloneObject()Lcom/threed/jpct/Object3D;
    .locals 2

    .prologue
    .line 2553
    new-instance v0, Lcom/threed/jpct/Object3D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/threed/jpct/Object3D;-><init>(Lcom/threed/jpct/Object3D;Z)V

    return-object v0
.end method

.method final collide([F[FFF)F
    .locals 6
    .param p1, "org"    # [F
    .param p2, "dr"    # [F
    .param p3, "breakRange"    # F
    .param p4, "spanRange"    # F

    .prologue
    .line 4020
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->collide([F[FFFZ)F

    move-result v0

    return v0
.end method

.method final collideEllipsoid(Lcom/threed/jpct/CollisionInfo;F)V
    .locals 139
    .param p1, "cInf"    # Lcom/threed/jpct/CollisionInfo;
    .param p2, "spanRange"    # F

    .prologue
    .line 4526
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/threed/jpct/CollisionInfo;->setScale(F)V

    .line 4528
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/Object3D;->createCollisionArrays()V

    .line 4529
    const/16 v51, 0x0

    .line 4530
    .local v51, "invAddTrans":Lcom/threed/jpct/Matrix;
    const/16 v50, 0x0

    .line 4532
    .local v50, "invAddRot":Lcom/threed/jpct/Matrix;
    const/16 v124, 0x0

    .line 4533
    .local v124, "transRequired":Z
    const/16 v90, 0x0

    .line 4534
    .local v90, "r00":F
    const/16 v93, 0x0

    .line 4535
    .local v93, "r10":F
    const/16 v94, 0x0

    .line 4536
    .local v94, "r11":F
    const/16 v97, 0x0

    .line 4537
    .local v97, "r21":F
    const/16 v96, 0x0

    .line 4538
    .local v96, "r20":F
    const/16 v91, 0x0

    .line 4539
    .local v91, "r01":F
    const/16 v98, 0x0

    .line 4540
    .local v98, "r22":F
    const/16 v95, 0x0

    .line 4541
    .local v95, "r12":F
    const/16 v92, 0x0

    .line 4542
    .local v92, "r02":F
    const/16 v99, 0x0

    .line 4543
    .local v99, "rbx":F
    const/16 v100, 0x0

    .line 4544
    .local v100, "rby":F
    const/16 v101, 0x0

    .line 4546
    .local v101, "rbz":F
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    if-eqz v4, :cond_0

    .line 4547
    const/16 v124, 0x1

    .line 4548
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v4}, Lcom/threed/jpct/Matrix;->invert()Lcom/threed/jpct/Matrix;

    move-result-object v51

    .line 4549
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v49

    .line 4551
    .local v49, "inv":Lcom/threed/jpct/Matrix;
    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 4552
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v4}, Lcom/threed/jpct/Matrix;->invert3x3()Lcom/threed/jpct/Matrix;

    move-result-object v50

    .line 4554
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v54, v0

    .line 4556
    .local v54, "invmat":[[F
    const/4 v4, 0x0

    aget-object v4, v54, v4

    const/4 v14, 0x0

    aget v90, v4, v14

    .line 4557
    const/4 v4, 0x1

    aget-object v4, v54, v4

    const/4 v14, 0x0

    aget v93, v4, v14

    .line 4558
    const/4 v4, 0x1

    aget-object v4, v54, v4

    const/4 v14, 0x1

    aget v94, v4, v14

    .line 4559
    const/4 v4, 0x2

    aget-object v4, v54, v4

    const/4 v14, 0x1

    aget v97, v4, v14

    .line 4560
    const/4 v4, 0x2

    aget-object v4, v54, v4

    const/4 v14, 0x0

    aget v96, v4, v14

    .line 4561
    const/4 v4, 0x0

    aget-object v4, v54, v4

    const/4 v14, 0x1

    aget v91, v4, v14

    .line 4562
    const/4 v4, 0x2

    aget-object v4, v54, v4

    const/4 v14, 0x2

    aget v98, v4, v14

    .line 4563
    const/4 v4, 0x1

    aget-object v4, v54, v4

    const/4 v14, 0x2

    aget v95, v4, v14

    .line 4564
    const/4 v4, 0x0

    aget-object v4, v54, v4

    const/4 v14, 0x2

    aget v92, v4, v14

    .line 4565
    const/4 v4, 0x3

    aget-object v4, v54, v4

    const/4 v14, 0x0

    aget v99, v4, v14

    .line 4566
    const/4 v4, 0x3

    aget-object v4, v54, v4

    const/4 v14, 0x1

    aget v100, v4, v14

    .line 4567
    const/4 v4, 0x3

    aget-object v4, v54, v4

    const/4 v14, 0x2

    aget v101, v4, v14

    .line 4570
    .end local v49    # "inv":Lcom/threed/jpct/Matrix;
    .end local v54    # "invmat":[[F
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v33, v0

    .line 4571
    .local v33, "cInfr3Pos":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v34, v0

    .line 4573
    .local v34, "cInfr3Velocity":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v33

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v72, v0

    .line 4574
    .local v72, "orgx":F
    move-object/from16 v0, v33

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v73, v0

    .line 4575
    .local v73, "orgy":F
    move-object/from16 v0, v33

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v74, v0

    .line 4577
    .local v74, "orgz":F
    move/from16 v78, v72

    .line 4578
    .local v78, "origx":F
    move/from16 v79, v73

    .line 4579
    .local v79, "origy":F
    move/from16 v80, v74

    .line 4581
    .local v80, "origz":F
    move/from16 v75, v72

    .line 4582
    .local v75, "origOcx":F
    move/from16 v76, v73

    .line 4583
    .local v76, "origOcy":F
    move/from16 v77, v74

    .line 4585
    .local v77, "origOcz":F
    move-object/from16 v0, v34

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v126, v0

    .line 4586
    .local v126, "vOcx":F
    move-object/from16 v0, v34

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v127, v0

    .line 4587
    .local v127, "vOcy":F
    move-object/from16 v0, v34

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v128, v0

    .line 4589
    .local v128, "vOcz":F
    move/from16 v129, v126

    .line 4590
    .local v129, "vOrgx":F
    move/from16 v130, v127

    .line 4591
    .local v130, "vOrgy":F
    move/from16 v131, v128

    .line 4593
    .local v131, "vOrgz":F
    new-instance v133, Lcom/threed/jpct/SimpleVector;

    invoke-direct/range {v133 .. v133}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 4594
    .local v133, "velocity":Lcom/threed/jpct/SimpleVector;
    new-instance v16, Lcom/threed/jpct/SimpleVector;

    invoke-direct/range {v16 .. v16}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 4595
    .local v16, "basePoint":Lcom/threed/jpct/SimpleVector;
    new-instance v37, Lcom/threed/jpct/SimpleVector;

    invoke-direct/range {v37 .. v37}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 4598
    .local v37, "collisionPoint":Lcom/threed/jpct/SimpleVector;
    const/16 v39, 0x0

    .local v39, "distyx":F
    const/16 v40, 0x0

    .local v40, "distyy":F
    const/16 v41, 0x0

    .line 4600
    .local v41, "distyz":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    invoke-virtual {v4}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v125, 0x1

    .line 4601
    .local v125, "useOcTree":Z
    :goto_0
    const/16 v52, 0x0

    .line 4603
    .local v52, "invTrans":Lcom/threed/jpct/Matrix;
    if-eqz v124, :cond_1

    if-eqz v125, :cond_2

    .line 4605
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v52

    .line 4607
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v53, v0

    .line 4609
    .local v53, "invTransmat":[[F
    const/4 v4, 0x0

    aget-object v4, v53, v4

    const/4 v14, 0x0

    aget v102, v4, v14

    .line 4610
    .local v102, "s00Ws":F
    const/4 v4, 0x1

    aget-object v4, v53, v4

    const/4 v14, 0x0

    aget v105, v4, v14

    .line 4611
    .local v105, "s10Ws":F
    const/4 v4, 0x1

    aget-object v4, v53, v4

    const/4 v14, 0x1

    aget v106, v4, v14

    .line 4612
    .local v106, "s11Ws":F
    const/4 v4, 0x2

    aget-object v4, v53, v4

    const/4 v14, 0x1

    aget v109, v4, v14

    .line 4613
    .local v109, "s21Ws":F
    const/4 v4, 0x2

    aget-object v4, v53, v4

    const/4 v14, 0x0

    aget v108, v4, v14

    .line 4614
    .local v108, "s20Ws":F
    const/4 v4, 0x0

    aget-object v4, v53, v4

    const/4 v14, 0x1

    aget v103, v4, v14

    .line 4615
    .local v103, "s01Ws":F
    const/4 v4, 0x2

    aget-object v4, v53, v4

    const/4 v14, 0x2

    aget v110, v4, v14

    .line 4616
    .local v110, "s22Ws":F
    const/4 v4, 0x1

    aget-object v4, v53, v4

    const/4 v14, 0x2

    aget v107, v4, v14

    .line 4617
    .local v107, "s12Ws":F
    const/4 v4, 0x0

    aget-object v4, v53, v4

    const/4 v14, 0x2

    aget v104, v4, v14

    .line 4618
    .local v104, "s02Ws":F
    const/4 v4, 0x3

    aget-object v4, v53, v4

    const/4 v14, 0x0

    aget v30, v4, v14

    .line 4619
    .local v30, "bxWs":F
    const/4 v4, 0x3

    aget-object v4, v53, v4

    const/4 v14, 0x1

    aget v31, v4, v14

    .line 4620
    .local v31, "byWs":F
    const/4 v4, 0x3

    aget-object v4, v53, v4

    const/4 v14, 0x2

    aget v32, v4, v14

    .line 4622
    .local v32, "bzWs":F
    mul-float v4, v72, v102

    mul-float v14, v73, v105

    add-float/2addr v4, v14

    mul-float v14, v74, v108

    add-float/2addr v4, v14

    add-float v78, v4, v30

    .line 4623
    mul-float v4, v72, v103

    mul-float v14, v73, v106

    add-float/2addr v4, v14

    mul-float v14, v74, v109

    add-float/2addr v4, v14

    add-float v79, v4, v31

    .line 4624
    mul-float v4, v72, v104

    mul-float v14, v73, v107

    add-float/2addr v4, v14

    mul-float v14, v74, v110

    add-float/2addr v4, v14

    add-float v80, v4, v32

    .line 4626
    mul-float v4, v129, v102

    mul-float v14, v130, v105

    add-float/2addr v4, v14

    mul-float v14, v131, v108

    add-float v136, v4, v14

    .line 4627
    .local v136, "vx":F
    mul-float v4, v129, v103

    mul-float v14, v130, v106

    add-float/2addr v4, v14

    mul-float v14, v131, v109

    add-float v137, v4, v14

    .line 4628
    .local v137, "vy":F
    mul-float v4, v129, v104

    mul-float v14, v130, v107

    add-float/2addr v4, v14

    mul-float v14, v131, v110

    add-float v138, v4, v14

    .line 4630
    .local v138, "vz":F
    move/from16 v129, v136

    .line 4631
    move/from16 v130, v137

    .line 4632
    move/from16 v131, v138

    .line 4634
    move/from16 v75, v78

    .line 4635
    move/from16 v76, v79

    .line 4636
    move/from16 v77, v80

    .line 4638
    move/from16 v126, v129

    .line 4639
    move/from16 v127, v130

    .line 4640
    move/from16 v128, v131

    .line 4643
    .end local v30    # "bxWs":F
    .end local v31    # "byWs":F
    .end local v32    # "bzWs":F
    .end local v53    # "invTransmat":[[F
    .end local v102    # "s00Ws":F
    .end local v103    # "s01Ws":F
    .end local v104    # "s02Ws":F
    .end local v105    # "s10Ws":F
    .end local v106    # "s11Ws":F
    .end local v107    # "s12Ws":F
    .end local v108    # "s20Ws":F
    .end local v109    # "s21Ws":F
    .end local v110    # "s22Ws":F
    .end local v136    # "vx":F
    .end local v137    # "vy":F
    .end local v138    # "vz":F
    :cond_2
    if-eqz v124, :cond_3

    .line 4644
    move-object/from16 v52, v51

    .line 4646
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    iget v0, v4, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v129, v0

    .line 4647
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    iget v0, v4, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v130, v0

    .line 4648
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    iget v0, v4, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v131, v0

    .line 4650
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v53, v0

    .line 4652
    .restart local v53    # "invTransmat":[[F
    const/4 v4, 0x0

    aget-object v4, v53, v4

    const/4 v14, 0x0

    aget v102, v4, v14

    .line 4653
    .restart local v102    # "s00Ws":F
    const/4 v4, 0x1

    aget-object v4, v53, v4

    const/4 v14, 0x0

    aget v105, v4, v14

    .line 4654
    .restart local v105    # "s10Ws":F
    const/4 v4, 0x1

    aget-object v4, v53, v4

    const/4 v14, 0x1

    aget v106, v4, v14

    .line 4655
    .restart local v106    # "s11Ws":F
    const/4 v4, 0x2

    aget-object v4, v53, v4

    const/4 v14, 0x1

    aget v109, v4, v14

    .line 4656
    .restart local v109    # "s21Ws":F
    const/4 v4, 0x2

    aget-object v4, v53, v4

    const/4 v14, 0x0

    aget v108, v4, v14

    .line 4657
    .restart local v108    # "s20Ws":F
    const/4 v4, 0x0

    aget-object v4, v53, v4

    const/4 v14, 0x1

    aget v103, v4, v14

    .line 4658
    .restart local v103    # "s01Ws":F
    const/4 v4, 0x2

    aget-object v4, v53, v4

    const/4 v14, 0x2

    aget v110, v4, v14

    .line 4659
    .restart local v110    # "s22Ws":F
    const/4 v4, 0x1

    aget-object v4, v53, v4

    const/4 v14, 0x2

    aget v107, v4, v14

    .line 4660
    .restart local v107    # "s12Ws":F
    const/4 v4, 0x0

    aget-object v4, v53, v4

    const/4 v14, 0x2

    aget v104, v4, v14

    .line 4661
    .restart local v104    # "s02Ws":F
    const/4 v4, 0x3

    aget-object v4, v53, v4

    const/4 v14, 0x0

    aget v30, v4, v14

    .line 4662
    .restart local v30    # "bxWs":F
    const/4 v4, 0x3

    aget-object v4, v53, v4

    const/4 v14, 0x1

    aget v31, v4, v14

    .line 4663
    .restart local v31    # "byWs":F
    const/4 v4, 0x3

    aget-object v4, v53, v4

    const/4 v14, 0x2

    aget v32, v4, v14

    .line 4665
    .restart local v32    # "bzWs":F
    mul-float v4, v72, v102

    mul-float v14, v73, v105

    add-float/2addr v4, v14

    mul-float v14, v74, v108

    add-float/2addr v4, v14

    add-float v78, v4, v30

    .line 4666
    mul-float v4, v72, v103

    mul-float v14, v73, v106

    add-float/2addr v4, v14

    mul-float v14, v74, v109

    add-float/2addr v4, v14

    add-float v79, v4, v31

    .line 4667
    mul-float v4, v72, v104

    mul-float v14, v73, v107

    add-float/2addr v4, v14

    mul-float v14, v74, v110

    add-float/2addr v4, v14

    add-float v80, v4, v32

    .line 4669
    invoke-static/range {v129 .. v131}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v135

    .line 4670
    .local v135, "vt":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v135

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 4671
    move-object/from16 v0, v135

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v129, v0

    .line 4672
    move-object/from16 v0, v135

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v130, v0

    .line 4673
    move-object/from16 v0, v135

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v131, v0

    .line 4676
    .end local v30    # "bxWs":F
    .end local v31    # "byWs":F
    .end local v32    # "bzWs":F
    .end local v53    # "invTransmat":[[F
    .end local v102    # "s00Ws":F
    .end local v103    # "s01Ws":F
    .end local v104    # "s02Ws":F
    .end local v105    # "s10Ws":F
    .end local v106    # "s11Ws":F
    .end local v107    # "s12Ws":F
    .end local v108    # "s20Ws":F
    .end local v109    # "s21Ws":F
    .end local v110    # "s22Ws":F
    .end local v135    # "vt":Lcom/threed/jpct/SimpleVector;
    :cond_3
    const/16 v120, 0x0

    .line 4678
    .local v120, "touchedLeafs":I
    const/16 v56, 0x0

    check-cast v56, [Ljava/lang/Object;

    .line 4680
    .local v56, "leafArray":[Ljava/lang/Object;
    if-eqz v125, :cond_6

    .line 4681
    mul-float v4, v126, v126

    mul-float v14, v127, v127

    add-float/2addr v4, v14

    mul-float v14, v128, v128

    add-float/2addr v4, v14

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v0, v14

    move/from16 v132, v0

    .line 4683
    .local v132, "velLength":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/CollisionInfo;->getMaxRadius()F

    move-result v14

    add-float v14, v14, v132

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    invoke-virtual {v15}, Lcom/threed/jpct/OcTree;->getRadiusMultiplier()F

    move-result v15

    mul-float/2addr v14, v15

    move/from16 v0, v75

    move/from16 v1, v76

    move/from16 v2, v77

    invoke-virtual {v4, v0, v1, v2, v14}, Lcom/threed/jpct/OcTree;->getColliderLeafs(FFFF)[Ljava/lang/Object;

    move-result-object v56

    .line 4685
    const/4 v4, 0x0

    aget-object v4, v56, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v120

    .line 4687
    if-nez v120, :cond_6

    .line 5154
    .end local v132    # "velLength":F
    :cond_4
    :goto_1
    return-void

    .line 4600
    .end local v52    # "invTrans":Lcom/threed/jpct/Matrix;
    .end local v56    # "leafArray":[Ljava/lang/Object;
    .end local v120    # "touchedLeafs":I
    .end local v125    # "useOcTree":Z
    :cond_5
    const/16 v125, 0x0

    goto/16 :goto_0

    .line 4693
    .restart local v52    # "invTrans":Lcom/threed/jpct/Matrix;
    .restart local v56    # "leafArray":[Ljava/lang/Object;
    .restart local v120    # "touchedLeafs":I
    .restart local v125    # "useOcTree":Z
    :cond_6
    const/16 v113, 0x0

    .line 4694
    .local v113, "start":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v0, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v46, v0

    .line 4696
    .local v46, "end":I
    const/16 v57, 0x0

    check-cast v57, [Lcom/threed/jpct/OcTreeNode;

    .line 4697
    .local v57, "leafList":[Lcom/threed/jpct/OcTreeNode;
    const/16 v85, 0x0

    check-cast v85, [I

    .line 4698
    .local v85, "polyList":[I
    const/16 v60, 0x0

    .line 4700
    .local v60, "nodeCnt":I
    if-eqz v125, :cond_7

    .line 4701
    const/4 v4, 0x1

    aget-object v57, v56, v4

    .end local v57    # "leafList":[Lcom/threed/jpct/OcTreeNode;
    check-cast v57, [Lcom/threed/jpct/OcTreeNode;

    .line 4704
    .restart local v57    # "leafList":[Lcom/threed/jpct/OcTreeNode;
    :cond_7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    mul-float v4, v4, v78

    move-object/from16 v0, v16

    iput v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 4705
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    mul-float v4, v4, v79

    move-object/from16 v0, v16

    iput v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 4706
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    mul-float v4, v4, v80

    move-object/from16 v0, v16

    iput v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 4708
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    mul-float v4, v4, v129

    move-object/from16 v0, v133

    iput v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 4709
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    mul-float v4, v4, v130

    move-object/from16 v0, v133

    iput v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 4710
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    mul-float v4, v4, v131

    move-object/from16 v0, v133

    iput v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 4712
    move-object/from16 v0, v133

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v62, v0

    .line 4713
    .local v62, "normalizedVelocityX":F
    move-object/from16 v0, v133

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v63, v0

    .line 4714
    .local v63, "normalizedVelocityY":F
    move-object/from16 v0, v133

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v64, v0

    .line 4716
    .local v64, "normalizedVelocityZ":F
    invoke-virtual/range {v133 .. v133}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v58

    .line 4717
    .local v58, "len":F
    const/4 v4, 0x0

    cmpl-float v4, v58, v4

    if-eqz v4, :cond_c

    .line 4718
    div-float v62, v62, v58

    .line 4719
    div-float v63, v63, v58

    .line 4720
    div-float v64, v64, v58

    .line 4727
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v0, v4, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v67, v0

    .line 4728
    .local v67, "objMeshpoint":[[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v0, v4, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v66, v0

    .line 4729
    .local v66, "objMeshcoords":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v0, v4, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v69, v0

    .line 4730
    .local v69, "objMeshxOrg":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v0, v4, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v70, v0

    .line 4731
    .local v70, "objMeshyOrg":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v0, v4, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v71, v0

    .line 4733
    .local v71, "objMeshzOrg":[F
    const/16 v35, 0x0

    .line 4734
    .local v35, "checks":I
    const/16 v112, 0x0

    .line 4736
    .local v112, "skipped":I
    sget v36, Lcom/threed/jpct/Config;->collideOffset:F

    .line 4737
    .local v36, "collideOffset":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v4, v4, v14

    if-eqz v4, :cond_8

    .line 4738
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    const/high16 v14, 0x3f800000    # 1.0f

    add-float v59, v4, v14

    .line 4739
    .local v59, "newOffset":F
    cmpg-float v4, v59, v36

    if-gez v4, :cond_8

    .line 4740
    move/from16 v36, v59

    .line 4743
    .end local v59    # "newOffset":F
    :cond_8
    mul-float v36, v36, v36

    .line 4746
    :cond_9
    if-eqz v125, :cond_a

    .line 4747
    aget-object v4, v57, v60

    invoke-virtual {v4}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v85

    .line 4748
    const/16 v113, 0x0

    .line 4749
    aget-object v4, v57, v60

    invoke-virtual {v4}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v46

    .line 4750
    add-int/lit8 v60, v60, 0x1

    .line 4753
    :cond_a
    move/from16 v55, v113

    .local v55, "k":I
    :goto_3
    move/from16 v0, v55

    move/from16 v1, v46

    if-lt v0, v1, :cond_d

    .line 5149
    if-eqz v125, :cond_b

    move/from16 v0, v60

    move/from16 v1, v120

    if-lt v0, v1, :cond_9

    .line 5151
    :cond_b
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5152
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "Polygons checked: "

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "/ skipped: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v112

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x3

    invoke-static {v4, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 4722
    .end local v35    # "checks":I
    .end local v36    # "collideOffset":F
    .end local v55    # "k":I
    .end local v66    # "objMeshcoords":[I
    .end local v67    # "objMeshpoint":[[I
    .end local v69    # "objMeshxOrg":[F
    .end local v70    # "objMeshyOrg":[F
    .end local v71    # "objMeshzOrg":[F
    .end local v112    # "skipped":I
    :cond_c
    const/16 v62, 0x0

    .line 4723
    const/16 v63, 0x0

    .line 4724
    const/16 v64, 0x0

    goto/16 :goto_2

    .line 4754
    .restart local v35    # "checks":I
    .restart local v36    # "collideOffset":F
    .restart local v55    # "k":I
    .restart local v66    # "objMeshcoords":[I
    .restart local v67    # "objMeshpoint":[[I
    .restart local v69    # "objMeshxOrg":[F
    .restart local v70    # "objMeshyOrg":[F
    .restart local v71    # "objMeshzOrg":[F
    .restart local v112    # "skipped":I
    :cond_d
    move/from16 v81, v55

    .line 4755
    .local v81, "p":I
    if-eqz v125, :cond_e

    .line 4756
    aget v81, v85, v55

    .line 4759
    :cond_e
    aget-object v68, v67, v81

    .line 4761
    .local v68, "objMeshpointsp":[I
    const/4 v4, 0x0

    aget v4, v68, v4

    aget v82, v66, v4

    .line 4762
    .local v82, "pi0":I
    const/4 v4, 0x1

    aget v4, v68, v4

    aget v83, v66, v4

    .line 4763
    .local v83, "pi1":I
    const/4 v4, 0x2

    aget v4, v68, v4

    aget v84, v66, v4

    .line 4765
    .local v84, "pi2":I
    if-eqz v124, :cond_10

    .line 4766
    aget v87, v69, v82

    .line 4767
    .local v87, "px":F
    aget v88, v70, v82

    .line 4768
    .local v88, "py":F
    aget v89, v71, v82

    .line 4770
    .local v89, "pz":F
    mul-float v4, v87, v90

    mul-float v14, v88, v93

    add-float/2addr v4, v14

    mul-float v14, v89, v96

    add-float/2addr v4, v14

    add-float v121, v4, v99

    .line 4771
    .local v121, "tpx":F
    mul-float v4, v87, v91

    mul-float v14, v88, v94

    add-float/2addr v4, v14

    mul-float v14, v89, v97

    add-float/2addr v4, v14

    add-float v122, v4, v100

    .line 4772
    .local v122, "tpy":F
    mul-float v4, v87, v92

    mul-float v14, v88, v95

    add-float/2addr v4, v14

    mul-float v14, v89, v98

    add-float/2addr v4, v14

    add-float v123, v4, v101

    .line 4774
    .local v123, "tpz":F
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    mul-float v5, v121, v4

    .line 4775
    .local v5, "p0x":F
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    mul-float v6, v122, v4

    .line 4776
    .local v6, "p0y":F
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    mul-float v7, v123, v4

    .line 4778
    .local v7, "p0z":F
    aget v87, v69, v83

    .line 4779
    aget v88, v70, v83

    .line 4780
    aget v89, v71, v83

    .line 4782
    mul-float v4, v87, v90

    mul-float v14, v88, v93

    add-float/2addr v4, v14

    mul-float v14, v89, v96

    add-float/2addr v4, v14

    add-float v121, v4, v99

    .line 4783
    mul-float v4, v87, v91

    mul-float v14, v88, v94

    add-float/2addr v4, v14

    mul-float v14, v89, v97

    add-float/2addr v4, v14

    add-float v122, v4, v100

    .line 4784
    mul-float v4, v87, v92

    mul-float v14, v88, v95

    add-float/2addr v4, v14

    mul-float v14, v89, v98

    add-float/2addr v4, v14

    add-float v123, v4, v101

    .line 4786
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    mul-float v8, v121, v4

    .line 4787
    .local v8, "p1x":F
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    mul-float v9, v122, v4

    .line 4788
    .local v9, "p1y":F
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    mul-float v10, v123, v4

    .line 4790
    .local v10, "p1z":F
    aget v87, v69, v84

    .line 4791
    aget v88, v70, v84

    .line 4792
    aget v89, v71, v84

    .line 4794
    mul-float v4, v87, v90

    mul-float v14, v88, v93

    add-float/2addr v4, v14

    mul-float v14, v89, v96

    add-float/2addr v4, v14

    add-float v121, v4, v99

    .line 4795
    mul-float v4, v87, v91

    mul-float v14, v88, v94

    add-float/2addr v4, v14

    mul-float v14, v89, v97

    add-float/2addr v4, v14

    add-float v122, v4, v100

    .line 4796
    mul-float v4, v87, v92

    mul-float v14, v88, v95

    add-float/2addr v4, v14

    mul-float v14, v89, v98

    add-float/2addr v4, v14

    add-float v123, v4, v101

    .line 4798
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    mul-float v11, v121, v4

    .line 4799
    .local v11, "p2x":F
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    mul-float v12, v122, v4

    .line 4800
    .local v12, "p2y":F
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    mul-float v13, v123, v4

    .line 4815
    .end local v87    # "px":F
    .end local v88    # "py":F
    .end local v89    # "pz":F
    .end local v121    # "tpx":F
    .end local v122    # "tpy":F
    .end local v123    # "tpz":F
    .local v13, "p2z":F
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/threed/jpct/Object3D;->getSquaredDistance(Lcom/threed/jpct/SimpleVector;FFF)F

    move-result v4

    cmpl-float v4, v4, v36

    if-lez v4, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/threed/jpct/Object3D;->getSquaredDistance(Lcom/threed/jpct/SimpleVector;FFF)F

    move-result v4

    cmpl-float v4, v4, v36

    if-lez v4, :cond_11

    .line 4816
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/threed/jpct/Object3D;->getSquaredDistance(Lcom/threed/jpct/SimpleVector;FFF)F

    move-result v4

    cmpl-float v4, v4, v36

    if-lez v4, :cond_11

    .line 4817
    add-int/lit8 v112, v112, 0x1

    .line 4753
    :cond_f
    :goto_5
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_3

    .line 4802
    .end local v5    # "p0x":F
    .end local v6    # "p0y":F
    .end local v7    # "p0z":F
    .end local v8    # "p1x":F
    .end local v9    # "p1y":F
    .end local v10    # "p1z":F
    .end local v11    # "p2x":F
    .end local v12    # "p2y":F
    .end local v13    # "p2z":F
    :cond_10
    aget v4, v69, v82

    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    mul-float v5, v4, v14

    .line 4803
    .restart local v5    # "p0x":F
    aget v4, v70, v82

    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    mul-float v6, v4, v14

    .line 4804
    .restart local v6    # "p0y":F
    aget v4, v71, v82

    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    mul-float v7, v4, v14

    .line 4806
    .restart local v7    # "p0z":F
    aget v4, v69, v83

    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    mul-float v8, v4, v14

    .line 4807
    .restart local v8    # "p1x":F
    aget v4, v70, v83

    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    mul-float v9, v4, v14

    .line 4808
    .restart local v9    # "p1y":F
    aget v4, v71, v83

    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    mul-float v10, v4, v14

    .line 4810
    .restart local v10    # "p1z":F
    aget v4, v69, v84

    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusx:F

    mul-float v11, v4, v14

    .line 4811
    .restart local v11    # "p2x":F
    aget v4, v70, v84

    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusy:F

    mul-float v12, v4, v14

    .line 4812
    .restart local v12    # "p2y":F
    aget v4, v71, v84

    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/CollisionInfo;->invERadiusz:F

    mul-float v13, v4, v14

    .restart local v13    # "p2z":F
    goto :goto_4

    .line 4820
    :cond_11
    add-int/lit8 v35, v35, 0x1

    .line 4822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    invoke-virtual/range {v4 .. v13}, Lcom/threed/jpct/Plane;->setTo(FFFFFFFFF)V

    .line 4824
    const/16 v86, 0x1

    .line 4826
    .local v86, "possible":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    move/from16 v0, v62

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v4, v0, v1, v2}, Lcom/threed/jpct/Plane;->isFrontFacingTo(FFF)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4828
    const/16 v115, 0x0

    .local v115, "t0":F
    const/16 v116, 0x0

    .line 4829
    .local v116, "t1":F
    const/16 v45, 0x0

    .line 4831
    .local v45, "embeddedInPlane":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/threed/jpct/Plane;->distanceTo(Lcom/threed/jpct/SimpleVector;)F

    move-result v111

    .line 4833
    .local v111, "signedDistToTrianglePlane":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    iget-object v0, v4, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v65, v0

    .line 4834
    .local v65, "nt":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v65

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v4, v14

    move-object/from16 v0, v65

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v4, v14

    move-object/from16 v0, v65

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v14, v15

    add-float v61, v4, v14

    .line 4836
    .local v61, "normalDotVelocity":F
    const/4 v4, 0x0

    cmpl-float v4, v61, v4

    if-nez v4, :cond_1b

    .line 4837
    invoke-static/range {v111 .. v111}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v14

    if-ltz v4, :cond_1a

    .line 4838
    const/16 v86, 0x0

    .line 4872
    :cond_12
    :goto_6
    if-eqz v86, :cond_f

    .line 4873
    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v14, v15}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 4874
    const/16 v48, 0x0

    .line 4875
    .local v48, "foundCollision":Z
    const/high16 v114, 0x3f800000    # 1.0f

    .line 4877
    .local v114, "t":F
    if-nez v45, :cond_22

    .line 4879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, v133

    invoke-virtual {v4, v0}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 4880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    move/from16 v0, v115

    invoke-virtual {v4, v0}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 4881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 4882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    iget-object v14, v14, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v4, v14}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    .line 4883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v4, v14}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 4885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v4, v14}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 4886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    .line 4887
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v14, p0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    invoke-direct/range {v14 .. v25}, Lcom/threed/jpct/Object3D;->checkPointInTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FFFFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 4888
    const/16 v48, 0x1

    .line 4889
    move/from16 v21, v115

    .line 4890
    .end local v114    # "t":F
    .local v21, "t":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 4894
    :goto_7
    if-nez v48, :cond_18

    .line 4896
    move-object/from16 v26, v16

    .line 4897
    .local v26, "base":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v133

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v4, v14

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v4, v14

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v14, v15

    add-float v134, v4, v14

    .line 4898
    .local v134, "velocitySquaredLength":F
    const/16 v18, 0x0

    .local v18, "a":F
    const/16 v19, 0x0

    .local v19, "b":F
    const/16 v20, 0x0

    .line 4932
    .local v20, "c":F
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v39, v4, v5

    .line 4933
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v40, v4, v6

    .line 4934
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v41, v4, v7

    .line 4936
    move/from16 v18, v134

    .line 4937
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v14, v14, v39

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v15, v15, v40

    add-float/2addr v14, v15

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v15, v15, v41

    add-float/2addr v14, v15

    mul-float v19, v4, v14

    .line 4939
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v39, v5, v4

    .line 4940
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v40, v6, v4

    .line 4941
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v41, v7, v4

    .line 4943
    mul-float v4, v39, v39

    mul-float v14, v40, v40

    add-float/2addr v4, v14

    mul-float v14, v41, v41

    add-float/2addr v4, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v20, v4, v14

    .line 4944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v22, v0

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v22}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->newT:[F

    const/4 v14, 0x0

    aget v21, v4, v14

    .line 4946
    const/16 v48, 0x1

    .line 4947
    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6, v7}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 4951
    :cond_13
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v39, v4, v8

    .line 4952
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v40, v4, v9

    .line 4953
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v41, v4, v10

    .line 4955
    move/from16 v18, v134

    .line 4956
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v14, v14, v39

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v15, v15, v40

    add-float/2addr v14, v15

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v15, v15, v41

    add-float/2addr v14, v15

    mul-float v19, v4, v14

    .line 4958
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v39, v8, v4

    .line 4959
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v40, v9, v4

    .line 4960
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v41, v10, v4

    .line 4962
    mul-float v4, v39, v39

    mul-float v14, v40, v40

    add-float/2addr v4, v14

    mul-float v14, v41, v41

    add-float/2addr v4, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v20, v4, v14

    .line 4963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v22, v0

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v22}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 4964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->newT:[F

    const/4 v14, 0x0

    aget v21, v4, v14

    .line 4965
    const/16 v48, 0x1

    .line 4966
    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9, v10}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 4970
    :cond_14
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v39, v4, v11

    .line 4971
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v40, v4, v12

    .line 4972
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v41, v4, v13

    .line 4974
    move/from16 v18, v134

    .line 4975
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v14, v14, v39

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v15, v15, v40

    add-float/2addr v14, v15

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v15, v15, v41

    add-float/2addr v14, v15

    mul-float v19, v4, v14

    .line 4977
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v39, v11, v4

    .line 4978
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v40, v12, v4

    .line 4979
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v41, v13, v4

    .line 4981
    mul-float v4, v39, v39

    mul-float v14, v40, v40

    add-float/2addr v4, v14

    mul-float v14, v41, v41

    add-float/2addr v4, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v20, v4, v14

    .line 4982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v22, v0

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v22}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->newT:[F

    const/4 v14, 0x0

    aget v21, v4, v14

    .line 4984
    const/16 v48, 0x1

    .line 4985
    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v12, v13}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 5041
    :cond_15
    sub-float v39, v8, v5

    .line 5042
    sub-float v40, v9, v6

    .line 5043
    sub-float v41, v10, v7

    .line 5045
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v27, v5, v4

    .line 5046
    .local v27, "baseToVertexx":F
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v28, v6, v4

    .line 5047
    .local v28, "baseToVertexy":F
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v29, v7, v4

    .line 5049
    .local v29, "baseToVertexz":F
    mul-float v4, v39, v39

    mul-float v14, v40, v40

    add-float/2addr v4, v14

    mul-float v14, v41, v41

    add-float v44, v4, v14

    .line 5050
    .local v44, "edgeSquaredLength":F
    move-object/from16 v0, v133

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v4, v4, v39

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v14, v14, v40

    add-float/2addr v4, v14

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v14, v14, v41

    add-float v43, v4, v14

    .line 5051
    .local v43, "edgeDotVelocity":F
    mul-float v4, v39, v27

    mul-float v14, v40, v28

    add-float/2addr v4, v14

    mul-float v14, v41, v29

    add-float v42, v4, v14

    .line 5053
    .local v42, "edgeDotBaseToVertex":F
    move/from16 v0, v134

    neg-float v4, v0

    mul-float v4, v4, v44

    mul-float v14, v43, v43

    add-float v18, v4, v14

    .line 5054
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v14, v14, v27

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v15, v15, v28

    add-float/2addr v14, v15

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v15, v15, v29

    add-float/2addr v14, v15

    mul-float/2addr v4, v14

    mul-float v4, v4, v44

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v14, v14, v43

    .line 5055
    mul-float v14, v14, v42

    .line 5054
    sub-float v19, v4, v14

    .line 5056
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v14, v27, v27

    mul-float v15, v28, v28

    add-float/2addr v14, v15

    mul-float v15, v29, v29

    add-float/2addr v14, v15

    sub-float/2addr v4, v14

    mul-float v4, v4, v44

    .line 5057
    mul-float v14, v42, v42

    .line 5056
    add-float v20, v4, v14

    .line 5059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v22, v0

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v22}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 5060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->newT:[F

    const/4 v14, 0x0

    aget v4, v4, v14

    mul-float v4, v4, v43

    sub-float v4, v4, v42

    div-float v47, v4, v44

    .line 5061
    .local v47, "f":F
    const/4 v4, 0x0

    cmpl-float v4, v47, v4

    if-ltz v4, :cond_16

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v47, v4

    if-gtz v4, :cond_16

    .line 5062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->newT:[F

    const/4 v14, 0x0

    aget v21, v4, v14

    .line 5063
    const/16 v48, 0x1

    .line 5064
    move-object/from16 v0, v37

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 5065
    move-object/from16 v0, v37

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 5066
    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6, v7}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    .line 5071
    .end local v47    # "f":F
    :cond_16
    sub-float v39, v11, v8

    .line 5072
    sub-float v40, v12, v9

    .line 5073
    sub-float v41, v13, v10

    .line 5075
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v27, v8, v4

    .line 5076
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v28, v9, v4

    .line 5077
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v29, v10, v4

    .line 5079
    mul-float v4, v39, v39

    mul-float v14, v40, v40

    add-float/2addr v4, v14

    mul-float v14, v41, v41

    add-float v44, v4, v14

    .line 5080
    move-object/from16 v0, v133

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v4, v4, v39

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v14, v14, v40

    add-float/2addr v4, v14

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v14, v14, v41

    add-float v43, v4, v14

    .line 5081
    mul-float v4, v39, v27

    mul-float v14, v40, v28

    add-float/2addr v4, v14

    mul-float v14, v41, v29

    add-float v42, v4, v14

    .line 5083
    move/from16 v0, v134

    neg-float v4, v0

    mul-float v4, v4, v44

    mul-float v14, v43, v43

    add-float v18, v4, v14

    .line 5084
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v14, v14, v27

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v15, v15, v28

    add-float/2addr v14, v15

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v15, v15, v29

    add-float/2addr v14, v15

    mul-float/2addr v4, v14

    mul-float v4, v4, v44

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v14, v14, v43

    .line 5085
    mul-float v14, v14, v42

    .line 5084
    sub-float v19, v4, v14

    .line 5086
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v14, v27, v27

    mul-float v15, v28, v28

    add-float/2addr v14, v15

    mul-float v15, v29, v29

    add-float/2addr v14, v15

    sub-float/2addr v4, v14

    mul-float v4, v4, v44

    .line 5087
    mul-float v14, v42, v42

    .line 5086
    add-float v20, v4, v14

    .line 5089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v22, v0

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v22}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->newT:[F

    const/4 v14, 0x0

    aget v4, v4, v14

    mul-float v4, v4, v43

    sub-float v4, v4, v42

    div-float v47, v4, v44

    .line 5091
    .restart local v47    # "f":F
    const/4 v4, 0x0

    cmpl-float v4, v47, v4

    if-ltz v4, :cond_17

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v47, v4

    if-gtz v4, :cond_17

    .line 5092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->newT:[F

    const/4 v14, 0x0

    aget v21, v4, v14

    .line 5093
    const/16 v48, 0x1

    .line 5094
    move-object/from16 v0, v37

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 5095
    move-object/from16 v0, v37

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 5096
    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9, v10}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    .line 5101
    .end local v47    # "f":F
    :cond_17
    sub-float v39, v5, v11

    .line 5102
    sub-float v40, v6, v12

    .line 5103
    sub-float v41, v7, v13

    .line 5105
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v27, v11, v4

    .line 5106
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v28, v12, v4

    .line 5107
    move-object/from16 v0, v26

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v29, v13, v4

    .line 5109
    mul-float v4, v39, v39

    mul-float v14, v40, v40

    add-float/2addr v4, v14

    mul-float v14, v41, v41

    add-float v44, v4, v14

    .line 5110
    move-object/from16 v0, v133

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v4, v4, v39

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v14, v14, v40

    add-float/2addr v4, v14

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v14, v14, v41

    add-float v43, v4, v14

    .line 5111
    mul-float v4, v39, v27

    mul-float v14, v40, v28

    add-float/2addr v4, v14

    mul-float v14, v41, v29

    add-float v42, v4, v14

    .line 5113
    move/from16 v0, v134

    neg-float v4, v0

    mul-float v4, v4, v44

    mul-float v14, v43, v43

    add-float v18, v4, v14

    .line 5114
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v133

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v14, v14, v27

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v15, v15, v28

    add-float/2addr v14, v15

    move-object/from16 v0, v133

    iget v15, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v15, v15, v29

    add-float/2addr v14, v15

    mul-float/2addr v4, v14

    mul-float v4, v4, v44

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v14, v14, v43

    .line 5115
    mul-float v14, v14, v42

    .line 5114
    sub-float v19, v4, v14

    .line 5116
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v14, v27, v27

    mul-float v15, v28, v28

    add-float/2addr v14, v15

    mul-float v15, v29, v29

    add-float/2addr v14, v15

    sub-float/2addr v4, v14

    mul-float v4, v4, v44

    .line 5117
    mul-float v14, v42, v42

    .line 5116
    add-float v20, v4, v14

    .line 5119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v22, v0

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v22}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 5120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->newT:[F

    const/4 v14, 0x0

    aget v4, v4, v14

    mul-float v4, v4, v43

    sub-float v4, v4, v42

    div-float v47, v4, v44

    .line 5121
    .restart local v47    # "f":F
    const/4 v4, 0x0

    cmpl-float v4, v47, v4

    if-ltz v4, :cond_18

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v47, v4

    if-gtz v4, :cond_18

    .line 5122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->newT:[F

    const/4 v14, 0x0

    aget v21, v4, v14

    .line 5123
    const/16 v48, 0x1

    .line 5124
    move-object/from16 v0, v37

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 5125
    move-object/from16 v0, v37

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 5126
    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v12, v13}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    .line 5131
    .end local v18    # "a":F
    .end local v19    # "b":F
    .end local v20    # "c":F
    .end local v26    # "base":Lcom/threed/jpct/SimpleVector;
    .end local v27    # "baseToVertexx":F
    .end local v28    # "baseToVertexy":F
    .end local v29    # "baseToVertexz":F
    .end local v42    # "edgeDotBaseToVertex":F
    .end local v43    # "edgeDotVelocity":F
    .end local v44    # "edgeSquaredLength":F
    .end local v47    # "f":F
    .end local v134    # "velocitySquaredLength":F
    :cond_18
    if-eqz v48, :cond_f

    .line 5133
    move-object/from16 v0, p0

    move/from16 v1, v81

    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;->addPolygonID(I)V

    .line 5134
    move/from16 v38, v21

    .line 5135
    .local v38, "distToCollision":F
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/threed/jpct/CollisionInfo;->foundCollision:Z

    if-eqz v4, :cond_19

    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    cmpg-float v4, v38, v4

    if-gtz v4, :cond_f

    .line 5136
    :cond_19
    move/from16 v0, v38

    move-object/from16 v1, p1

    iput v0, v1, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    .line 5137
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/threed/jpct/CollisionInfo;->setIntersectionPoint(Lcom/threed/jpct/SimpleVector;)V

    .line 5138
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/threed/jpct/CollisionInfo;->foundCollision:Z

    .line 5139
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/threed/jpct/CollisionInfo;->collision:Z

    .line 5140
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/threed/jpct/CollisionInfo;->eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

    .line 5141
    move-object/from16 v0, v133

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/threed/jpct/CollisionInfo;->eSpaceVelocity:Lcom/threed/jpct/SimpleVector;

    .line 5142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/threed/jpct/CollisionInfo;->collisionObject:Lcom/threed/jpct/Object3D;

    .line 5143
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/threed/jpct/CollisionInfo;->isPartOfCollision:Z

    goto/16 :goto_5

    .line 4840
    .end local v21    # "t":F
    .end local v38    # "distToCollision":F
    .end local v48    # "foundCollision":Z
    :cond_1a
    const/16 v45, 0x1

    .line 4841
    const/16 v115, 0x0

    .line 4842
    const/high16 v116, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 4845
    :cond_1b
    const/high16 v4, -0x40800000    # -1.0f

    div-float v118, v4, v61

    .line 4846
    .local v118, "tmp":F
    mul-float v119, v111, v118

    .line 4847
    .local v119, "tmp2":F
    add-float v115, v119, v118

    .line 4848
    sub-float v116, v119, v118

    .line 4850
    cmpl-float v4, v115, v116

    if-lez v4, :cond_1c

    .line 4851
    move/from16 v117, v115

    .line 4852
    .local v117, "temp":F
    move/from16 v115, v116

    .line 4853
    move/from16 v116, v117

    .line 4856
    .end local v117    # "temp":F
    :cond_1c
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v115, v4

    if-gtz v4, :cond_1d

    const/4 v4, 0x0

    cmpg-float v4, v116, v4

    if-gez v4, :cond_1e

    .line 4857
    :cond_1d
    const/16 v86, 0x0

    .line 4860
    :cond_1e
    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v115, v4

    if-gez v4, :cond_20

    .line 4861
    const/16 v115, 0x0

    .line 4865
    :cond_1f
    :goto_8
    const/4 v4, 0x0

    cmpg-float v4, v116, v4

    if-gez v4, :cond_21

    .line 4866
    const/16 v116, 0x0

    goto/16 :goto_6

    .line 4862
    :cond_20
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v115, v4

    if-lez v4, :cond_1f

    .line 4863
    const/high16 v115, 0x3f800000    # 1.0f

    goto :goto_8

    .line 4867
    :cond_21
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v116, v4

    if-lez v4, :cond_12

    .line 4868
    const/high16 v116, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .end local v118    # "tmp":F
    .end local v119    # "tmp2":F
    .restart local v48    # "foundCollision":Z
    .restart local v114    # "t":F
    :cond_22
    move/from16 v21, v114

    .end local v114    # "t":F
    .restart local v21    # "t":F
    goto/16 :goto_7
.end method

.method final collideSpherical([FFF[ZZ)[F
    .locals 102
    .param p1, "org"    # [F
    .param p2, "radius"    # F
    .param p3, "spanRange"    # F
    .param p4, "colli"    # [Z
    .param p5, "camMode"    # Z

    .prologue
    .line 4224
    const/4 v5, 0x0

    .local v5, "edge10x":F
    const/4 v6, 0x0

    .local v6, "edge10y":F
    const/4 v7, 0x0

    .line 4225
    .local v7, "edge10z":F
    const/4 v8, 0x0

    .local v8, "edge20x":F
    const/4 v9, 0x0

    .local v9, "edge20y":F
    const/4 v10, 0x0

    .line 4226
    .local v10, "edge20z":F
    const/16 v60, 0x0

    .local v60, "origx":F
    const/16 v61, 0x0

    .local v61, "origy":F
    const/16 v62, 0x0

    .line 4228
    .local v62, "origz":F
    const/16 v84, 0x0

    .line 4232
    .local v84, "trans":Lcom/threed/jpct/Matrix;
    sget v23, Lcom/threed/jpct/Config;->collideOffset:F

    .line 4233
    .local v23, "collideOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    move/from16 v99, v0

    if-eqz v99, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    move/from16 v99, v0

    const/high16 v100, -0x40800000    # -1.0f

    cmpl-float v99, v99, v100

    if-eqz v99, :cond_0

    .line 4234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    move/from16 v99, v0

    add-float v99, v99, p2

    const/high16 v100, 0x3f800000    # 1.0f

    add-float v47, v99, v100

    .line 4235
    .local v47, "newOffset":F
    cmpg-float v99, v47, v23

    if-gez v99, :cond_0

    .line 4236
    move/from16 v23, v47

    .line 4242
    .end local v47    # "newOffset":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    move-object/from16 v99, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v84

    .line 4243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    move-object/from16 v99, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v38

    .line 4245
    .local v38, "invTrans":Lcom/threed/jpct/Matrix;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v39, v0

    .line 4247
    .local v39, "invTransmat":[[F
    const/16 v99, 0x0

    aget-object v99, v39, v99

    const/16 v100, 0x0

    aget v72, v99, v100

    .line 4248
    .local v72, "s00Ws":F
    const/16 v99, 0x1

    aget-object v99, v39, v99

    const/16 v100, 0x0

    aget v75, v99, v100

    .line 4249
    .local v75, "s10Ws":F
    const/16 v99, 0x1

    aget-object v99, v39, v99

    const/16 v100, 0x1

    aget v76, v99, v100

    .line 4250
    .local v76, "s11Ws":F
    const/16 v99, 0x2

    aget-object v99, v39, v99

    const/16 v100, 0x1

    aget v79, v99, v100

    .line 4251
    .local v79, "s21Ws":F
    const/16 v99, 0x2

    aget-object v99, v39, v99

    const/16 v100, 0x0

    aget v78, v99, v100

    .line 4252
    .local v78, "s20Ws":F
    const/16 v99, 0x0

    aget-object v99, v39, v99

    const/16 v100, 0x1

    aget v73, v99, v100

    .line 4253
    .local v73, "s01Ws":F
    const/16 v99, 0x2

    aget-object v99, v39, v99

    const/16 v100, 0x2

    aget v80, v99, v100

    .line 4254
    .local v80, "s22Ws":F
    const/16 v99, 0x1

    aget-object v99, v39, v99

    const/16 v100, 0x2

    aget v77, v99, v100

    .line 4255
    .local v77, "s12Ws":F
    const/16 v99, 0x0

    aget-object v99, v39, v99

    const/16 v100, 0x2

    aget v74, v99, v100

    .line 4256
    .local v74, "s02Ws":F
    const/16 v99, 0x3

    aget-object v99, v39, v99

    const/16 v100, 0x0

    aget v15, v99, v100

    .line 4257
    .local v15, "bxWs":F
    const/16 v99, 0x3

    aget-object v99, v39, v99

    const/16 v100, 0x1

    aget v17, v99, v100

    .line 4258
    .local v17, "byWs":F
    const/16 v99, 0x3

    aget-object v99, v39, v99

    const/16 v100, 0x2

    aget v19, v99, v100

    .line 4260
    .local v19, "bzWs":F
    const/16 v99, 0x0

    aget v99, p1, v99

    mul-float v99, v99, v72

    const/16 v100, 0x1

    aget v100, p1, v100

    mul-float v100, v100, v75

    add-float v99, v99, v100

    const/16 v100, 0x2

    aget v100, p1, v100

    mul-float v100, v100, v78

    add-float v99, v99, v100

    add-float v14, v99, v15

    .line 4261
    .local v14, "bx":F
    const/16 v99, 0x0

    aget v99, p1, v99

    mul-float v99, v99, v73

    const/16 v100, 0x1

    aget v100, p1, v100

    mul-float v100, v100, v76

    add-float v99, v99, v100

    const/16 v100, 0x2

    aget v100, p1, v100

    mul-float v100, v100, v79

    add-float v99, v99, v100

    add-float v16, v99, v17

    .line 4262
    .local v16, "by":F
    const/16 v99, 0x0

    aget v99, p1, v99

    mul-float v99, v99, v74

    const/16 v100, 0x1

    aget v100, p1, v100

    mul-float v100, v100, v77

    add-float v99, v99, v100

    const/16 v100, 0x2

    aget v100, p1, v100

    mul-float v100, v100, v80

    add-float v99, v99, v100

    add-float v18, v99, v19

    .line 4264
    .local v18, "bz":F
    move/from16 v60, v14

    .line 4265
    move/from16 v61, v16

    .line 4266
    move/from16 v62, v18

    .line 4268
    const/16 v82, 0x0

    .line 4270
    .local v82, "touchedLeafs":I
    const/16 v42, 0x0

    check-cast v42, [Ljava/lang/Object;

    .line 4272
    .local v42, "leafArray":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v99, v0

    if-eqz v99, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v99, v0

    invoke-virtual/range {v99 .. v99}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v99

    if-eqz v99, :cond_1

    .line 4273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v99, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v100, v0

    invoke-virtual/range {v100 .. v100}, Lcom/threed/jpct/OcTree;->getRadiusMultiplier()F

    move-result v100

    mul-float v100, v100, p2

    move-object/from16 v0, v99

    move/from16 v1, v60

    move/from16 v2, v61

    move/from16 v3, v62

    move/from16 v4, v100

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/threed/jpct/OcTree;->getColliderLeafs(FFFF)[Ljava/lang/Object;

    move-result-object v42

    .line 4275
    const/16 v99, 0x0

    aget-object v99, v42, v99

    check-cast v99, Ljava/lang/Integer;

    invoke-virtual/range {v99 .. v99}, Ljava/lang/Integer;->intValue()I

    move-result v82

    .line 4277
    if-nez v82, :cond_1

    .line 4521
    :goto_0
    return-object p1

    .line 4283
    :cond_1
    const/16 v22, 0x0

    .line 4285
    .local v22, "col":Z
    const/16 v81, 0x0

    .line 4286
    .local v81, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v99, v0

    move-object/from16 v0, v99

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v37, v0

    .line 4288
    .local v37, "end":I
    const/16 v26, 0x0

    .line 4290
    .local v26, "dist":F
    const/16 v86, 0x0

    .line 4291
    .local v86, "useOcTree":Z
    const/16 v43, 0x0

    check-cast v43, [Lcom/threed/jpct/OcTreeNode;

    .line 4292
    .local v43, "leafList":[Lcom/threed/jpct/OcTreeNode;
    const/16 v67, 0x0

    check-cast v67, [I

    .line 4293
    .local v67, "polyList":[I
    const/16 v50, 0x0

    .line 4295
    .local v50, "nodeCnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v99, v0

    if-eqz v99, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v99, v0

    invoke-virtual/range {v99 .. v99}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v99

    if-eqz v99, :cond_2

    .line 4296
    const/16 v99, 0x1

    aget-object v43, v42, v99

    .end local v43    # "leafList":[Lcom/threed/jpct/OcTreeNode;
    check-cast v43, [Lcom/threed/jpct/OcTreeNode;

    .line 4297
    .restart local v43    # "leafList":[Lcom/threed/jpct/OcTreeNode;
    const/16 v86, 0x1

    .line 4300
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v99, v0

    move-object/from16 v0, v99

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v54, v0

    .line 4301
    .local v54, "objMeshcoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v99, v0

    move-object/from16 v0, v99

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v57, v0

    .line 4302
    .local v57, "objMeshxOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v99, v0

    move-object/from16 v0, v99

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v58, v0

    .line 4303
    .local v58, "objMeshyOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v99, v0

    move-object/from16 v0, v99

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v59, v0

    .line 4305
    .local v59, "objMeshzOrg":[F
    const/16 v21, 0x0

    .line 4308
    .local v21, "checks":I
    :cond_3
    if-eqz v86, :cond_4

    .line 4309
    aget-object v99, v43, v50

    invoke-virtual/range {v99 .. v99}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v67

    .line 4310
    const/16 v81, 0x0

    .line 4311
    aget-object v99, v43, v50

    invoke-virtual/range {v99 .. v99}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v37

    .line 4312
    add-int/lit8 v50, v50, 0x1

    .line 4315
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v99, v0

    move-object/from16 v0, v99

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v55, v0

    .line 4316
    .local v55, "objMeshpoints":[[I
    mul-float v24, v23, v23

    .line 4318
    .local v24, "collideOffsetMul":F
    move/from16 v41, v81

    .local v41, "k":I
    :goto_1
    move/from16 v0, v41

    move/from16 v1, v37

    if-lt v0, v1, :cond_7

    .line 4491
    if-eqz v86, :cond_5

    move/from16 v0, v50

    move/from16 v1, v82

    if-lt v0, v1, :cond_3

    .line 4493
    :cond_5
    move-object/from16 v0, v84

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v85, v0

    .line 4495
    .local v85, "transmat":[[F
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v99

    if-eqz v99, :cond_6

    .line 4496
    new-instance v99, Ljava/lang/StringBuilder;

    const-string v100, "Polygons checked: "

    invoke-direct/range {v99 .. v100}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v99

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v99

    invoke-virtual/range {v99 .. v99}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v99

    const/16 v100, 0x3

    invoke-static/range {v99 .. v100}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 4499
    :cond_6
    const/16 v99, 0x0

    aget-object v99, v85, v99

    const/16 v100, 0x0

    aget v72, v99, v100

    .line 4500
    const/16 v99, 0x1

    aget-object v99, v85, v99

    const/16 v100, 0x0

    aget v75, v99, v100

    .line 4501
    const/16 v99, 0x1

    aget-object v99, v85, v99

    const/16 v100, 0x1

    aget v76, v99, v100

    .line 4502
    const/16 v99, 0x2

    aget-object v99, v85, v99

    const/16 v100, 0x1

    aget v79, v99, v100

    .line 4503
    const/16 v99, 0x2

    aget-object v99, v85, v99

    const/16 v100, 0x0

    aget v78, v99, v100

    .line 4504
    const/16 v99, 0x0

    aget-object v99, v85, v99

    const/16 v100, 0x1

    aget v73, v99, v100

    .line 4505
    const/16 v99, 0x2

    aget-object v99, v85, v99

    const/16 v100, 0x2

    aget v80, v99, v100

    .line 4506
    const/16 v99, 0x1

    aget-object v99, v85, v99

    const/16 v100, 0x2

    aget v77, v99, v100

    .line 4507
    const/16 v99, 0x0

    aget-object v99, v85, v99

    const/16 v100, 0x2

    aget v74, v99, v100

    .line 4508
    const/16 v99, 0x3

    aget-object v99, v85, v99

    const/16 v100, 0x0

    aget v15, v99, v100

    .line 4509
    const/16 v99, 0x3

    aget-object v99, v85, v99

    const/16 v100, 0x1

    aget v17, v99, v100

    .line 4510
    const/16 v99, 0x3

    aget-object v99, v85, v99

    const/16 v100, 0x2

    aget v19, v99, v100

    .line 4512
    mul-float v99, v60, v72

    mul-float v100, v61, v75

    add-float v99, v99, v100

    mul-float v100, v62, v78

    add-float v99, v99, v100

    add-float v14, v99, v15

    .line 4513
    mul-float v99, v60, v73

    mul-float v100, v61, v76

    add-float v99, v99, v100

    mul-float v100, v62, v79

    add-float v99, v99, v100

    add-float v16, v99, v17

    .line 4514
    mul-float v99, v60, v74

    mul-float v100, v61, v77

    add-float v99, v99, v100

    mul-float v100, v62, v80

    add-float v99, v99, v100

    add-float v18, v99, v19

    .line 4516
    const/16 v99, 0x0

    aput v14, p1, v99

    .line 4517
    const/16 v99, 0x1

    aput v16, p1, v99

    .line 4518
    const/16 v99, 0x2

    aput v18, p1, v99

    .line 4520
    const/16 v99, 0x0

    aget-boolean v100, p4, v99

    or-int v100, v100, v22

    aput-boolean v100, p4, v99

    goto/16 :goto_0

    .line 4319
    .end local v85    # "transmat":[[F
    :cond_7
    add-int/lit8 v21, v21, 0x1

    .line 4321
    move/from16 v63, v41

    .line 4322
    .local v63, "p":I
    if-eqz v86, :cond_8

    .line 4323
    aget v63, v67, v41

    .line 4326
    :cond_8
    aget-object v56, v55, v63

    .line 4327
    .local v56, "objMeshpointsp":[I
    const/16 v99, 0x0

    aget v99, v56, v99

    aget v64, v54, v99

    .line 4329
    .local v64, "p0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v99, v0

    move-object/from16 v0, v99

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v99, v0

    aget v87, v99, v64

    .line 4330
    .local v87, "v1x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v99, v0

    move-object/from16 v0, v99

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v99, v0

    aget v88, v99, v64

    .line 4331
    .local v88, "v1y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v99, v0

    move-object/from16 v0, v99

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v99, v0

    aget v89, v99, v64

    .line 4333
    .local v89, "v1z":F
    const/16 v25, 0x0

    .line 4334
    .local v25, "collision":Z
    sub-float v28, v87, v14

    .line 4335
    .local v28, "dx":F
    sub-float v29, v88, v16

    .line 4336
    .local v29, "dy":F
    sub-float v30, v89, v18

    .line 4338
    .local v30, "dz":F
    const v99, 0x5368d4a5    # 1.0E12f

    cmpl-float v99, p3, v99

    if-eqz v99, :cond_9

    mul-float v99, v28, v28

    cmpg-float v99, v99, v24

    if-gtz v99, :cond_c

    mul-float v99, v29, v29

    cmpg-float v99, v99, v24

    if-gtz v99, :cond_c

    mul-float v99, v30, v30

    cmpg-float v99, v99, v24

    if-gtz v99, :cond_c

    .line 4339
    :cond_9
    const/16 v99, 0x2

    aget v99, v56, v99

    aget v66, v54, v99

    .line 4340
    .local v66, "p2":I
    const/16 v99, 0x1

    aget v99, v56, v99

    aget v65, v54, v99

    .line 4342
    .local v65, "p1":I
    aget v99, v57, v65

    sub-float v31, v99, v87

    .line 4343
    .local v31, "edge1x":F
    aget v99, v58, v65

    sub-float v32, v99, v88

    .line 4344
    .local v32, "edge1y":F
    aget v99, v59, v65

    sub-float v33, v99, v89

    .line 4346
    .local v33, "edge1z":F
    aget v99, v57, v66

    sub-float v34, v99, v87

    .line 4347
    .local v34, "edge2x":F
    aget v99, v58, v66

    sub-float v35, v99, v88

    .line 4348
    .local v35, "edge2y":F
    aget v99, v59, v66

    sub-float v36, v99, v89

    .line 4350
    .local v36, "edge2z":F
    mul-float v99, v32, v36

    mul-float v100, v33, v35

    sub-float v51, v99, v100

    .line 4351
    .local v51, "nx":F
    mul-float v99, v33, v34

    mul-float v100, v31, v36

    sub-float v52, v99, v100

    .line 4352
    .local v52, "ny":F
    mul-float v99, v31, v35

    mul-float v100, v32, v34

    sub-float v53, v99, v100

    .line 4354
    .local v53, "nz":F
    mul-float v99, v51, v51

    mul-float v100, v52, v52

    add-float v99, v99, v100

    mul-float v100, v53, v53

    add-float v99, v99, v100

    move/from16 v0, v99

    float-to-double v0, v0

    move-wide/from16 v99, v0

    invoke-static/range {v99 .. v100}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v99

    move-wide/from16 v0, v99

    double-to-float v0, v0

    move/from16 v49, v0

    .line 4355
    .local v49, "nn":F
    div-float v51, v51, v49

    .line 4356
    div-float v52, v52, v49

    .line 4357
    div-float v53, v53, v49

    .line 4359
    mul-float v99, v51, v60

    mul-float v100, v52, v61

    add-float v99, v99, v100

    mul-float v100, v53, v62

    add-float v99, v99, v100

    mul-float v100, v51, v87

    mul-float v101, v52, v88

    add-float v100, v100, v101

    mul-float v101, v53, v89

    add-float v100, v100, v101

    sub-float v20, v99, v100

    .line 4361
    .local v20, "camDist":F
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v99

    cmpg-float v99, v99, p2

    if-gez v99, :cond_c

    .line 4362
    mul-float v99, v51, v20

    sub-float v68, v60, v99

    .line 4363
    .local v68, "posx":F
    mul-float v99, v52, v20

    sub-float v69, v61, v99

    .line 4364
    .local v69, "posy":F
    mul-float v99, v53, v20

    sub-float v70, v62, v99

    .line 4366
    .local v70, "posz":F
    const/4 v11, 0x0

    .line 4368
    .local v11, "allAngles":F
    const/16 v40, 0x0

    .local v40, "j":I
    :goto_2
    const/16 v99, 0x3

    move/from16 v0, v40

    move/from16 v1, v99

    if-lt v0, v1, :cond_d

    .line 4410
    :cond_a
    const v99, 0x40c70d23

    cmpl-float v99, v11, v99

    if-ltz v99, :cond_f

    .line 4411
    const/16 v25, 0x1

    .line 4480
    :cond_b
    :goto_3
    if-eqz v25, :cond_c

    .line 4481
    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;->addPolygonID(I)V

    .line 4482
    sub-float v13, p2, v20

    .line 4483
    .local v13, "back":F
    const/16 v22, 0x1

    .line 4484
    mul-float v99, v51, v13

    add-float v60, v60, v99

    .line 4485
    mul-float v99, v52, v13

    add-float v61, v61, v99

    .line 4486
    mul-float v99, v53, v13

    add-float v62, v62, v99

    .line 4318
    .end local v11    # "allAngles":F
    .end local v13    # "back":F
    .end local v20    # "camDist":F
    .end local v31    # "edge1x":F
    .end local v32    # "edge1y":F
    .end local v33    # "edge1z":F
    .end local v34    # "edge2x":F
    .end local v35    # "edge2y":F
    .end local v36    # "edge2z":F
    .end local v40    # "j":I
    .end local v49    # "nn":F
    .end local v51    # "nx":F
    .end local v52    # "ny":F
    .end local v53    # "nz":F
    .end local v65    # "p1":I
    .end local v66    # "p2":I
    .end local v68    # "posx":F
    .end local v69    # "posy":F
    .end local v70    # "posz":F
    :cond_c
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    .line 4369
    .restart local v11    # "allAngles":F
    .restart local v20    # "camDist":F
    .restart local v31    # "edge1x":F
    .restart local v32    # "edge1y":F
    .restart local v33    # "edge1z":F
    .restart local v34    # "edge2x":F
    .restart local v35    # "edge2y":F
    .restart local v36    # "edge2z":F
    .restart local v40    # "j":I
    .restart local v49    # "nn":F
    .restart local v51    # "nx":F
    .restart local v52    # "ny":F
    .restart local v53    # "nz":F
    .restart local v65    # "p1":I
    .restart local v66    # "p2":I
    .restart local v68    # "posx":F
    .restart local v69    # "posy":F
    .restart local v70    # "posz":F
    :cond_d
    aget v99, v56, v40

    aget v83, v54, v99

    .line 4371
    .local v83, "tp":I
    aget v90, v57, v83

    .line 4372
    .local v90, "x":F
    aget v93, v58, v83

    .line 4373
    .local v93, "y":F
    aget v96, v59, v83

    .line 4375
    .local v96, "z":F
    sub-float v5, v90, v68

    .line 4376
    sub-float v6, v93, v69

    .line 4377
    sub-float v7, v96, v70

    .line 4379
    add-int/lit8 v99, v40, 0x1

    rem-int/lit8 v48, v99, 0x3

    .line 4381
    .local v48, "nj":I
    aget v99, v56, v48

    aget v83, v54, v99

    .line 4383
    aget v90, v57, v83

    .line 4384
    aget v93, v58, v83

    .line 4385
    aget v96, v59, v83

    .line 4387
    sub-float v8, v90, v68

    .line 4388
    sub-float v9, v93, v69

    .line 4389
    sub-float v10, v96, v70

    .line 4391
    invoke-static/range {v5 .. v10}, Lcom/threed/jpct/MathUtils;->calcDot(FFFFFF)F

    move-result v27

    .line 4393
    .local v27, "dot":F
    mul-float v99, v5, v5

    mul-float v100, v6, v6

    add-float v99, v99, v100

    mul-float v100, v7, v7

    add-float v99, v99, v100

    move/from16 v0, v99

    float-to-double v0, v0

    move-wide/from16 v99, v0

    invoke-static/range {v99 .. v100}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v99

    move-wide/from16 v0, v99

    double-to-float v0, v0

    move/from16 v44, v0

    .line 4394
    .local v44, "len1":F
    mul-float v99, v8, v8

    mul-float v100, v9, v9

    add-float v99, v99, v100

    mul-float v100, v10, v10

    add-float v99, v99, v100

    move/from16 v0, v99

    float-to-double v0, v0

    move-wide/from16 v99, v0

    invoke-static/range {v99 .. v100}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v99

    move-wide/from16 v0, v99

    double-to-float v0, v0

    move/from16 v45, v0

    .line 4396
    .local v45, "len2":F
    mul-float v46, v44, v45

    .line 4397
    .local v46, "magMul":F
    div-float v99, v27, v46

    move/from16 v0, v99

    float-to-double v0, v0

    move-wide/from16 v99, v0

    invoke-static/range {v99 .. v100}, Ljava/lang/Math;->acos(D)D

    move-result-wide v99

    move-wide/from16 v0, v99

    double-to-float v12, v0

    .line 4399
    .local v12, "angle":F
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v99

    if-eqz v99, :cond_e

    .line 4400
    const/4 v12, 0x0

    .line 4403
    :cond_e
    add-float/2addr v11, v12

    .line 4405
    const v99, 0x40c70d23

    cmpl-float v99, v11, v99

    if-gez v99, :cond_a

    .line 4368
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_2

    .line 4413
    .end local v12    # "angle":F
    .end local v27    # "dot":F
    .end local v44    # "len1":F
    .end local v45    # "len2":F
    .end local v46    # "magMul":F
    .end local v48    # "nj":I
    .end local v83    # "tp":I
    .end local v90    # "x":F
    .end local v93    # "y":F
    .end local v96    # "z":F
    :cond_f
    const/16 v40, 0x0

    :goto_4
    const/16 v99, 0x3

    move/from16 v0, v40

    move/from16 v1, v99

    if-ge v0, v1, :cond_b

    .line 4414
    aget v99, v56, v40

    aget v83, v54, v99

    .line 4416
    .restart local v83    # "tp":I
    aget v91, v57, v83

    .line 4417
    .local v91, "x1":F
    aget v94, v58, v83

    .line 4418
    .local v94, "y1":F
    aget v97, v59, v83

    .line 4420
    .local v97, "z1":F
    sub-float v5, v60, v91

    .line 4421
    sub-float v6, v61, v94

    .line 4422
    sub-float v7, v62, v97

    .line 4424
    add-int/lit8 v99, v40, 0x1

    rem-int/lit8 v48, v99, 0x3

    .line 4426
    .restart local v48    # "nj":I
    aget v99, v56, v48

    aget v83, v54, v99

    .line 4428
    aget v92, v57, v83

    .line 4429
    .local v92, "x2":F
    aget v95, v58, v83

    .line 4430
    .local v95, "y2":F
    aget v98, v59, v83

    .line 4432
    .local v98, "z2":F
    sub-float v8, v92, v91

    .line 4433
    sub-float v9, v95, v94

    .line 4434
    sub-float v10, v98, v97

    .line 4436
    mul-float v99, v8, v8

    mul-float v100, v9, v9

    add-float v99, v99, v100

    mul-float v100, v10, v10

    add-float v99, v99, v100

    move/from16 v0, v99

    float-to-double v0, v0

    move-wide/from16 v99, v0

    invoke-static/range {v99 .. v100}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v99

    move-wide/from16 v0, v99

    double-to-float v0, v0

    move/from16 v49, v0

    .line 4438
    div-float v8, v8, v49

    .line 4439
    div-float v9, v9, v49

    .line 4440
    div-float v10, v10, v49

    .line 4442
    invoke-static/range {v5 .. v10}, Lcom/threed/jpct/MathUtils;->calcDot(FFFFFF)F

    move-result v27

    .line 4444
    .restart local v27    # "dot":F
    const/16 v99, 0x0

    cmpg-float v99, v27, v99

    if-gtz v99, :cond_11

    .line 4445
    move/from16 v68, v91

    .line 4446
    move/from16 v69, v94

    .line 4447
    move/from16 v70, v97

    .line 4465
    :goto_5
    sub-float v99, v68, v60

    sub-float v100, v68, v60

    mul-float v99, v99, v100

    sub-float v100, v69, v61

    sub-float v101, v69, v61

    mul-float v100, v100, v101

    add-float v99, v99, v100

    sub-float v100, v70, v62

    sub-float v101, v70, v62

    mul-float v100, v100, v101

    add-float v99, v99, v100

    move/from16 v0, v99

    float-to-double v0, v0

    move-wide/from16 v99, v0

    invoke-static/range {v99 .. v100}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v99

    move-wide/from16 v0, v99

    double-to-float v0, v0

    move/from16 v26, v0

    .line 4467
    move/from16 v71, p2

    .line 4468
    .local v71, "rad":F
    if-eqz p5, :cond_10

    .line 4469
    sget v99, Lcom/threed/jpct/Config;->collideEdgeMul:F

    mul-float v71, v71, v99

    .line 4472
    :cond_10
    cmpg-float v99, v26, v71

    if-gez v99, :cond_13

    .line 4473
    const/16 v25, 0x1

    .line 4474
    goto/16 :goto_3

    .line 4449
    .end local v71    # "rad":F
    :cond_11
    sub-float v99, v91, v92

    sub-float v100, v91, v92

    mul-float v99, v99, v100

    sub-float v100, v94, v95

    sub-float v101, v94, v95

    mul-float v100, v100, v101

    add-float v99, v99, v100

    sub-float v100, v97, v98

    sub-float v101, v97, v98

    mul-float v100, v100, v101

    add-float v99, v99, v100

    move/from16 v0, v99

    float-to-double v0, v0

    move-wide/from16 v99, v0

    invoke-static/range {v99 .. v100}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v99

    move-wide/from16 v0, v99

    double-to-float v0, v0

    move/from16 v26, v0

    .line 4450
    cmpl-float v99, v27, v26

    if-ltz v99, :cond_12

    .line 4451
    move/from16 v68, v92

    .line 4452
    move/from16 v69, v95

    .line 4453
    move/from16 v70, v98

    goto :goto_5

    .line 4455
    :cond_12
    mul-float v5, v8, v27

    .line 4456
    mul-float v6, v9, v27

    .line 4457
    mul-float v7, v10, v27

    .line 4459
    add-float v68, v91, v5

    .line 4460
    add-float v69, v94, v6

    .line 4461
    add-float v70, v97, v7

    goto :goto_5

    .line 4413
    .restart local v71    # "rad":F
    :cond_13
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_4
.end method

.method public compile()V
    .locals 2

    .prologue
    .line 883
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    .line 884
    return-void
.end method

.method public compile(Z)V
    .locals 1
    .param p1, "dynamic"    # Z

    .prologue
    .line 895
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    .line 896
    return-void
.end method

.method public compile(ZZ)V
    .locals 3
    .param p1, "dynamic"    # Z
    .param p2, "staticUV"    # Z

    .prologue
    const/4 v1, 0x0

    .line 909
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 925
    :goto_0
    return-void

    .line 912
    :cond_0
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    .line 913
    if-nez p1, :cond_1

    sget v0, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 914
    :cond_2
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    if-nez v0, :cond_4

    move v0, v1

    .line 913
    :goto_1
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->indexed:Z

    .line 915
    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    .line 916
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Object3D;->batchSize:I

    .line 920
    sget-boolean v0, Lcom/threed/jpct/Config;->fixCollapsingVertices:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    iget-boolean v0, v0, Lcom/threed/jpct/Animation;->realFirstCall:Z

    if-eqz v0, :cond_3

    .line 921
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/threed/jpct/Animation;->doAnimation(Lcom/threed/jpct/Object3D;IF)V

    .line 924
    :cond_3
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->compileInternal()V

    goto :goto_0

    .line 914
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public cullingIsInverted()Z
    .locals 1

    .prologue
    .line 3293
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    return v0
.end method

.method public decoupleMesh()V
    .locals 2

    .prologue
    .line 1856
    new-instance v0, Lcom/threed/jpct/Mesh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 1857
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Vectors;->setMesh(Lcom/threed/jpct/Mesh;)V

    .line 1858
    return-void
.end method

.method public disableCollisionListeners()V
    .locals 1

    .prologue
    .line 2785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    .line 2786
    return-void
.end method

.method public disableLazyTransformations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    .line 2109
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 2112
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_1

    .line 2113
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 2116
    :cond_1
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 2117
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 2118
    return-void
.end method

.method public disableVertexSharing()V
    .locals 1

    .prologue
    .line 1280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    .line 1281
    return-void
.end method

.method public ellipsoidIntersectsAABB(FFFLcom/threed/jpct/SimpleVector;)Z
    .locals 47
    .param p1, "orgx"    # F
    .param p2, "orgy"    # F
    .param p3, "orgz"    # F
    .param p4, "ellipsoid"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 3828
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    move/from16 v45, v0

    if-nez v45, :cond_1

    .line 3829
    const/16 v19, 0x0

    .line 3921
    :cond_0
    :goto_0
    return v19

    .line 3832
    :cond_1
    const/16 v19, 0x1

    .line 3836
    .local v19, "intersects":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v20

    .line 3838
    .local v20, "invTrans":Lcom/threed/jpct/Matrix;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v21, v0

    .line 3840
    .local v21, "invTransmat":[[F
    const/16 v45, 0x0

    aget-object v45, v21, v45

    const/16 v46, 0x0

    aget v32, v45, v46

    .line 3841
    .local v32, "s00Ws":F
    const/16 v45, 0x1

    aget-object v45, v21, v45

    const/16 v46, 0x0

    aget v35, v45, v46

    .line 3842
    .local v35, "s10Ws":F
    const/16 v45, 0x1

    aget-object v45, v21, v45

    const/16 v46, 0x1

    aget v36, v45, v46

    .line 3843
    .local v36, "s11Ws":F
    const/16 v45, 0x2

    aget-object v45, v21, v45

    const/16 v46, 0x1

    aget v39, v45, v46

    .line 3844
    .local v39, "s21Ws":F
    const/16 v45, 0x2

    aget-object v45, v21, v45

    const/16 v46, 0x0

    aget v38, v45, v46

    .line 3845
    .local v38, "s20Ws":F
    const/16 v45, 0x0

    aget-object v45, v21, v45

    const/16 v46, 0x1

    aget v33, v45, v46

    .line 3846
    .local v33, "s01Ws":F
    const/16 v45, 0x2

    aget-object v45, v21, v45

    const/16 v46, 0x2

    aget v40, v45, v46

    .line 3847
    .local v40, "s22Ws":F
    const/16 v45, 0x1

    aget-object v45, v21, v45

    const/16 v46, 0x2

    aget v37, v45, v46

    .line 3848
    .local v37, "s12Ws":F
    const/16 v45, 0x0

    aget-object v45, v21, v45

    const/16 v46, 0x2

    aget v34, v45, v46

    .line 3849
    .local v34, "s02Ws":F
    const/16 v45, 0x3

    aget-object v45, v21, v45

    const/16 v46, 0x0

    aget v3, v45, v46

    .line 3850
    .local v3, "bxWs":F
    const/16 v45, 0x3

    aget-object v45, v21, v45

    const/16 v46, 0x1

    aget v5, v45, v46

    .line 3851
    .local v5, "byWs":F
    const/16 v45, 0x3

    aget-object v45, v21, v45

    const/16 v46, 0x2

    aget v7, v45, v46

    .line 3853
    .local v7, "bzWs":F
    mul-float v45, p1, v32

    mul-float v46, p2, v35

    add-float v45, v45, v46

    mul-float v46, p3, v38

    add-float v45, v45, v46

    add-float v2, v45, v3

    .line 3854
    .local v2, "bx":F
    mul-float v45, p1, v33

    mul-float v46, p2, v36

    add-float v45, v45, v46

    mul-float v46, p3, v39

    add-float v45, v45, v46

    add-float v4, v45, v5

    .line 3855
    .local v4, "by":F
    mul-float v45, p1, v34

    mul-float v46, p2, v37

    add-float v45, v45, v46

    mul-float v46, p3, v40

    add-float v45, v45, v46

    add-float v6, v45, v7

    .line 3859
    .local v6, "bz":F
    move-object/from16 v0, p4

    iget v9, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 3860
    .local v9, "ellipsoidx":F
    move-object/from16 v0, p4

    iget v10, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 3861
    .local v10, "ellipsoidy":F
    move-object/from16 v0, p4

    iget v11, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 3863
    .local v11, "ellipsoidz":F
    mul-float v45, v9, v32

    mul-float v46, v10, v35

    add-float v45, v45, v46

    mul-float v46, v11, v38

    add-float v45, v45, v46

    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 3864
    .local v13, "exx":F
    mul-float v45, v9, v33

    mul-float v46, v10, v36

    add-float v45, v45, v46

    mul-float v46, v11, v39

    add-float v45, v45, v46

    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 3865
    .local v15, "eyy":F
    mul-float v45, v9, v34

    mul-float v46, v10, v37

    add-float v45, v45, v46

    mul-float v46, v11, v40

    add-float v45, v45, v46

    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 3867
    .local v17, "ezz":F
    div-float/2addr v2, v13

    .line 3868
    div-float/2addr v4, v15

    .line 3869
    div-float v6, v6, v17

    .line 3871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    move/from16 v41, v0

    .line 3873
    .local v41, "start":I
    const/high16 v45, 0x3f800000    # 1.0f

    div-float v12, v45, v13

    .line 3874
    .local v12, "ex":F
    const/high16 v45, 0x3f800000    # 1.0f

    div-float v14, v45, v15

    .line 3875
    .local v14, "ey":F
    const/high16 v45, 0x3f800000    # 1.0f

    div-float v16, v45, v17

    .line 3877
    .local v16, "ez":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v28, v0

    .line 3878
    .local v28, "objMeshxOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v29, v0

    .line 3879
    .local v29, "objMeshyOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v30, v0

    .line 3881
    .local v30, "objMeshzOrg":[F
    aget v45, v28, v41

    mul-float v25, v45, v12

    .line 3882
    .local v25, "minX":F
    aget v45, v29, v41

    mul-float v26, v45, v14

    .line 3883
    .local v26, "minY":F
    aget v45, v30, v41

    mul-float v27, v45, v16

    .line 3884
    .local v27, "minZ":F
    move/from16 v22, v25

    .line 3885
    .local v22, "maxX":F
    move/from16 v23, v26

    .line 3886
    .local v23, "maxY":F
    move/from16 v24, v27

    .line 3888
    .local v24, "maxZ":F
    add-int/lit8 v31, v41, 0x1

    .line 3889
    .local v31, "s":I
    add-int/lit8 v8, v41, 0x8

    .line 3890
    .local v8, "e":I
    move/from16 v18, v31

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-lt v0, v8, :cond_3

    .line 3917
    const/high16 v45, 0x3f800000    # 1.0f

    add-float v45, v45, v2

    cmpg-float v45, v45, v25

    if-ltz v45, :cond_2

    const/high16 v45, 0x3f800000    # 1.0f

    sub-float v45, v2, v45

    cmpl-float v45, v45, v22

    if-gtz v45, :cond_2

    const/high16 v45, 0x3f800000    # 1.0f

    add-float v45, v45, v4

    cmpg-float v45, v45, v26

    if-ltz v45, :cond_2

    const/high16 v45, 0x3f800000    # 1.0f

    sub-float v45, v4, v45

    cmpl-float v45, v45, v23

    if-gtz v45, :cond_2

    const/high16 v45, 0x3f800000    # 1.0f

    add-float v45, v45, v6

    cmpg-float v45, v45, v27

    if-ltz v45, :cond_2

    const/high16 v45, 0x3f800000    # 1.0f

    sub-float v45, v6, v45

    cmpl-float v45, v45, v24

    if-lez v45, :cond_0

    .line 3918
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 3891
    :cond_3
    aget v45, v28, v18

    mul-float v42, v45, v12

    .line 3892
    .local v42, "x":F
    aget v45, v29, v18

    mul-float v43, v45, v14

    .line 3893
    .local v43, "y":F
    aget v45, v30, v18

    mul-float v44, v45, v16

    .line 3894
    .local v44, "z":F
    cmpg-float v45, v42, v25

    if-gez v45, :cond_7

    .line 3895
    move/from16 v25, v42

    .line 3901
    :cond_4
    :goto_2
    cmpg-float v45, v43, v26

    if-gez v45, :cond_8

    .line 3902
    move/from16 v26, v43

    .line 3908
    :cond_5
    :goto_3
    cmpg-float v45, v44, v27

    if-gez v45, :cond_9

    .line 3909
    move/from16 v27, v44

    .line 3890
    :cond_6
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 3897
    :cond_7
    cmpl-float v45, v42, v22

    if-lez v45, :cond_4

    .line 3898
    move/from16 v22, v42

    goto :goto_2

    .line 3904
    :cond_8
    cmpl-float v45, v43, v23

    if-lez v45, :cond_5

    .line 3905
    move/from16 v23, v43

    goto :goto_3

    .line 3911
    :cond_9
    cmpl-float v45, v44, v24

    if-lez v45, :cond_6

    .line 3912
    move/from16 v24, v44

    goto :goto_4
.end method

.method public ellipsoidIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Z
    .locals 3
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "ellipsoid"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 3824
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/threed/jpct/Object3D;->ellipsoidIntersectsAABB(FFFLcom/threed/jpct/SimpleVector;)Z

    move-result v0

    return v0
.end method

.method public enableCollisionListeners()V
    .locals 1

    .prologue
    .line 2792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    .line 2793
    return-void
.end method

.method public enableLazyTransformations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    .line 2090
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_1

    .line 2094
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 2096
    :cond_1
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 2097
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 2098
    return-void
.end method

.method enlarge(I)V
    .locals 10
    .param p1, "byTriangles"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2558
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v5, v5

    add-int v1, v5, p1

    .line 2560
    .local v1, "newMaxTriangles":I
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v5, v5

    if-gt v1, v5, :cond_0

    .line 2609
    :goto_0
    return-void

    .line 2564
    :cond_0
    new-instance v3, Lcom/threed/jpct/Object3D;

    invoke-direct {v3, v1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 2565
    .local v3, "tmpObj":Lcom/threed/jpct/Object3D;
    iget-object v4, v3, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 2566
    .local v4, "tmpVectors":Lcom/threed/jpct/Vectors;
    iget-object v2, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 2568
    .local v2, "tmpMesh":Lcom/threed/jpct/Mesh;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v5, v5, Lcom/threed/jpct/Vectors;->maxVectors:I

    if-lt v0, v5, :cond_1

    .line 2572
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v6, v4, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iput-object v6, v5, Lcom/threed/jpct/Vectors;->nuOrg:[F

    .line 2573
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v6, v4, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iput-object v6, v5, Lcom/threed/jpct/Vectors;->nvOrg:[F

    .line 2574
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v6, v4, Lcom/threed/jpct/Vectors;->maxVectors:I

    iput v6, v5, Lcom/threed/jpct/Vectors;->maxVectors:I

    .line 2576
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v5, v6}, Lcom/threed/jpct/Vectors;->setMesh(Lcom/threed/jpct/Mesh;)V

    .line 2577
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v6, v2, Lcom/threed/jpct/Mesh;->maxVectors:I

    iput v6, v5, Lcom/threed/jpct/Mesh;->maxVectors:I

    .line 2579
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v5, v5, Lcom/threed/jpct/Mesh;->points:[[I

    array-length v5, v5

    if-lt v0, v5, :cond_2

    .line 2584
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v2, Lcom/threed/jpct/Mesh;->points:[[I

    iput-object v6, v5, Lcom/threed/jpct/Mesh;->points:[[I

    .line 2586
    const/4 v0, 0x0

    :goto_3
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v5, v5, Lcom/threed/jpct/Mesh;->xOrg:[F

    array-length v5, v5

    if-lt v0, v5, :cond_3

    .line 2598
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    iput-object v6, v5, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 2599
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    iput-object v6, v5, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 2600
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    iput-object v6, v5, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 2601
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v2, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object v6, v5, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 2602
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v2, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object v6, v5, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 2603
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v2, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iput-object v6, v5, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 2604
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v2, Lcom/threed/jpct/Mesh;->coords:[I

    iput-object v6, v5, Lcom/threed/jpct/Mesh;->coords:[I

    .line 2606
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->texture:[I

    iget-object v6, v3, Lcom/threed/jpct/Object3D;->texture:[I

    iget-object v7, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2608
    iget-object v5, v3, Lcom/threed/jpct/Object3D;->texture:[I

    iput-object v5, p0, Lcom/threed/jpct/Object3D;->texture:[I

    goto :goto_0

    .line 2569
    :cond_1
    iget-object v5, v4, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v6, v6, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v6, v6, v0

    aput v6, v5, v0

    .line 2570
    iget-object v5, v4, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v6, v6, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v6, v6, v0

    aput v6, v5, v0

    .line 2568
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2580
    :cond_2
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v6, v6, v0

    aget v6, v6, v8

    aput v6, v5, v8

    .line 2581
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v6, v6, v0

    aget v6, v6, v7

    aput v6, v5, v7

    .line 2582
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v6, v6, v0

    aget v6, v6, v9

    aput v6, v5, v9

    .line 2579
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2587
    :cond_3
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v6, v6, v0

    aput v6, v5, v0

    .line 2588
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v6, v6, v0

    aput v6, v5, v0

    .line 2589
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v6, v6, v0

    aput v6, v5, v0

    .line 2591
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v6, v6, v0

    aput v6, v5, v0

    .line 2592
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v6, v6, v0

    aput v6, v5, v0

    .line 2593
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v6, v6, v0

    aput v6, v5, v0

    .line 2595
    iget-object v5, v2, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v6, Lcom/threed/jpct/Mesh;->coords:[I

    aget v6, v6, v0

    aput v6, v5, v0

    .line 2586
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public forceGeometryIndices(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 1015
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    .line 1016
    return-void
.end method

.method public getAdditionalColor()Lcom/threed/jpct/RGBColor;
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    return-object v0
.end method

.method public getAnimationSequence()Lcom/threed/jpct/Animation;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    return-object v0
.end method

.method public getCenter()Lcom/threed/jpct/SimpleVector;
    .locals 3

    .prologue
    .line 3096
    iget v0, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iget v1, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iget v2, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionListeners()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/threed/jpct/CollisionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2805
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getCulling()Z
    .locals 1

    .prologue
    .line 1531
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->doCulling:Z

    return v0
.end method

.method public getEllipsoidMode()I
    .locals 1

    .prologue
    .line 2940
    iget v0, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 1461
    iget v0, p0, Lcom/threed/jpct/Object3D;->number:I

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public getInverseWorldTransformation()Lcom/threed/jpct/Matrix;
    .locals 3

    .prologue
    .line 6240
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 6242
    .local v0, "mat5":Lcom/threed/jpct/Matrix;
    iget-boolean v2, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    if-nez v2, :cond_3

    .line 6243
    :cond_0
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->invert()Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 6244
    .local v1, "mat6":Lcom/threed/jpct/Matrix;
    iget-boolean v2, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v2, :cond_1

    .line 6245
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    if-eqz v2, :cond_2

    .line 6246
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 6247
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 6248
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 6256
    :cond_1
    :goto_0
    return-object v1

    .line 6250
    :cond_2
    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    goto :goto_0

    .line 6254
    .end local v1    # "mat6":Lcom/threed/jpct/Matrix;
    :cond_3
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    invoke-virtual {v2}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    .restart local v1    # "mat6":Lcom/threed/jpct/Matrix;
    goto :goto_0
.end method

.method public getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 2
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 6260
    if-nez p1, :cond_0

    .line 6261
    new-instance p1, Lcom/threed/jpct/Matrix;

    .end local p1    # "mat":Lcom/threed/jpct/Matrix;
    invoke-direct {p1}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 6264
    .restart local p1    # "mat":Lcom/threed/jpct/Matrix;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 6266
    .local v0, "mat6":Lcom/threed/jpct/Matrix;
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    if-nez v1, :cond_5

    .line 6267
    :cond_1
    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 6268
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v1, :cond_2

    .line 6269
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    if-eqz v1, :cond_4

    .line 6270
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 6271
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 6272
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 6277
    :cond_2
    :goto_0
    if-eq p1, v0, :cond_3

    .line 6278
    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 6283
    :cond_3
    :goto_1
    return-object p1

    .line 6274
    :cond_4
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    goto :goto_0

    .line 6281
    :cond_5
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1, v1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    goto :goto_1
.end method

.method getLazyTransformationState()Z
    .locals 1

    .prologue
    .line 6235
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    return v0
.end method

.method public getLightCount()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2347
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    if-nez v2, :cond_1

    move v0, v1

    .line 2355
    :cond_0
    :goto_0
    return v0

    .line 2350
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 2355
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    array-length v0, v1

    goto :goto_0

    .line 2351
    :cond_2
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    aget-object v2, v2, v0

    aget v2, v2, v1

    const v3, -0x39e3c400    # -9999.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 2350
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getLighting()I
    .locals 1

    .prologue
    .line 1578
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isLit:Z

    if-eqz v0, :cond_0

    .line 1579
    const/4 v0, 0x0

    .line 1581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMaxLights()I
    .locals 1

    .prologue
    .line 1603
    iget v0, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    return v0
.end method

.method public getMesh()Lcom/threed/jpct/Mesh;
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOcTree()Lcom/threed/jpct/OcTree;
    .locals 1

    .prologue
    .line 3204
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    return-object v0
.end method

.method public getOrigin()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getTranslation()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getOriginMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getParents()[Lcom/threed/jpct/Object3D;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1442
    iget v1, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    new-array v0, v1, [Lcom/threed/jpct/Object3D;

    .line 1443
    .local v0, "par":[Lcom/threed/jpct/Object3D;
    iget v1, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v1, :cond_0

    .line 1444
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    iget v2, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1446
    :cond_0
    return-object v0
.end method

.method public getPolygonManager()Lcom/threed/jpct/PolygonManager;
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    if-nez v0, :cond_0

    .line 2491
    new-instance v0, Lcom/threed/jpct/PolygonManager;

    invoke-direct {v0, p0}, Lcom/threed/jpct/PolygonManager;-><init>(Lcom/threed/jpct/Object3D;)V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    return-object v0
.end method

.method final getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V
    .locals 20
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "result"    # Lcom/threed/jpct/SimpleVector;
    .param p5, "result2"    # [F
    .param p6, "m"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 6417
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v14

    .line 6419
    .local v14, "trans":Lcom/threed/jpct/Matrix;
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v5, v18, v19

    .line 6420
    .local v5, "s00Ws":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v8, v18, v19

    .line 6421
    .local v8, "s10Ws":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget v9, v18, v19

    .line 6422
    .local v9, "s11Ws":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget v12, v18, v19

    .line 6423
    .local v12, "s21Ws":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v11, v18, v19

    .line 6424
    .local v11, "s20Ws":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget v6, v18, v19

    .line 6425
    .local v6, "s01Ws":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v13, v18, v19

    .line 6426
    .local v13, "s22Ws":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v10, v18, v19

    .line 6427
    .local v10, "s12Ws":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v7, v18, v19

    .line 6428
    .local v7, "s02Ws":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v2, v18, v19

    .line 6429
    .local v2, "bxWs":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget v3, v18, v19

    .line 6430
    .local v3, "byWs":F
    iget-object v0, v14, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v4, v18, v19

    .line 6432
    .local v4, "bzWs":F
    mul-float v18, p1, v5

    mul-float v19, p2, v8

    add-float v18, v18, v19

    mul-float v19, p3, v11

    add-float v18, v18, v19

    add-float v15, v18, v2

    .line 6433
    .local v15, "x1":F
    mul-float v18, p1, v6

    mul-float v19, p2, v9

    add-float v18, v18, v19

    mul-float v19, p3, v12

    add-float v18, v18, v19

    add-float v16, v18, v3

    .line 6434
    .local v16, "y1":F
    mul-float v18, p1, v7

    mul-float v19, p2, v10

    add-float v18, v18, v19

    mul-float v19, p3, v13

    add-float v18, v18, v19

    add-float v17, v18, v4

    .line 6436
    .local v17, "z1":F
    if-eqz p4, :cond_0

    .line 6437
    move-object/from16 v0, p4

    iput v15, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 6438
    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Lcom/threed/jpct/SimpleVector;->y:F

    .line 6439
    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Lcom/threed/jpct/SimpleVector;->z:F

    .line 6442
    :cond_0
    if-eqz p5, :cond_1

    .line 6443
    const/16 v18, 0x0

    aput v15, p5, v18

    .line 6444
    const/16 v18, 0x1

    aput v16, p5, v18

    .line 6445
    const/16 v18, 0x2

    aput v17, p5, v18

    .line 6447
    :cond_1
    return-void
.end method

.method public getRenderHook()Lcom/threed/jpct/IRenderHook;
    .locals 1

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    return-object v0
.end method

.method public getRotationMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getRotationPivot()Lcom/threed/jpct/SimpleVector;
    .locals 3

    .prologue
    .line 3153
    iget v0, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget v1, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget v2, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 2169
    iget v0, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    return v0
.end method

.method public getShader()Lcom/threed/jpct/GLSLShader;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    return-object v0
.end method

.method getShaderInternal()Lcom/threed/jpct/GLSLShader;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object v0, v0, Lcom/threed/jpct/World;->globalShader:Lcom/threed/jpct/GLSLShader;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object v0, v0, Lcom/threed/jpct/World;->globalShader:Lcom/threed/jpct/GLSLShader;

    .line 1682
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    goto :goto_0
.end method

.method public getSpecularLighting()Z
    .locals 1

    .prologue
    .line 1632
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->doSpecularLighting:Z

    return v0
.end method

.method public getTextureMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getTransformedCenter()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 3106
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->getTransformedCenter(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getTransformedCenter(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 7
    .param p1, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 3119
    if-nez p1, :cond_0

    .line 3120
    new-instance p1, Lcom/threed/jpct/SimpleVector;

    .end local p1    # "toFill":Lcom/threed/jpct/SimpleVector;
    invoke-direct {p1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 3122
    .restart local p1    # "toFill":Lcom/threed/jpct/SimpleVector;
    :cond_0
    iget v1, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iget v2, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iget v3, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v5, 0x0

    sget-object v6, Lcom/threed/jpct/Object3D;->mat7:Lcom/threed/jpct/Matrix;

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    .line 3123
    return-object p1
.end method

.method public getTranslation()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getTranslation()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getTranslation(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p1, "trns"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 2193
    if-nez p1, :cond_0

    .line 2194
    new-instance p1, Lcom/threed/jpct/SimpleVector;

    .end local p1    # "trns":Lcom/threed/jpct/SimpleVector;
    invoke-direct {p1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 2196
    .restart local p1    # "trns":Lcom/threed/jpct/SimpleVector;
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v1, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v2, 0x3

    aget-object v0, v1, v2

    .line 2197
    .local v0, "mat3":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    .line 2198
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    .line 2199
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    .line 2200
    return-object p1
.end method

.method public getTranslationMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getTransparency()I
    .locals 1

    .prologue
    .line 1711
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    if-nez v0, :cond_0

    .line 1712
    const/4 v0, -0x1

    .line 1714
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/threed/jpct/Object3D;->transValue:I

    goto :goto_0
.end method

.method public getTransparencyMode()I
    .locals 1

    .prologue
    .line 1746
    iget v0, p0, Lcom/threed/jpct/Object3D;->transMode:I

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getVirtualizer()Lcom/threed/jpct/Virtualizer;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isVisible:Z

    return v0
.end method

.method public getWorldTransformation()Lcom/threed/jpct/Matrix;
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2622
    iget-boolean v5, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    if-nez v5, :cond_7

    .line 2623
    :cond_0
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 2625
    .local v1, "mat5":Lcom/threed/jpct/Matrix;
    iget-object v5, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v2, v5, v6

    .line 2626
    .local v2, "matmat3":[F
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v5, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v5, v6

    .line 2627
    .local v4, "translationMatrixmat":[F
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-object v5, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v5, v6

    .line 2629
    .local v3, "originMatrixmat":[F
    iget v5, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    neg-float v5, v5

    aput v5, v2, v7

    .line 2630
    iget v5, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    neg-float v5, v5

    aput v5, v2, v8

    .line 2631
    iget v5, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    neg-float v5, v5

    aput v5, v2, v9

    .line 2633
    iget-boolean v5, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-nez v5, :cond_3

    .line 2634
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v5}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 2645
    :goto_0
    iget v5, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    aget v6, v4, v7

    add-float/2addr v5, v6

    aget v6, v3, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    aget v7, v4, v8

    add-float/2addr v6, v7

    aget v7, v3, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    .line 2646
    aget v8, v4, v9

    add-float/2addr v7, v8

    aget v8, v3, v9

    add-float/2addr v7, v8

    .line 2645
    invoke-virtual {v1, v5, v6, v7}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    .line 2648
    iget v5, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v5, :cond_1

    .line 2649
    iget-boolean v5, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-eqz v5, :cond_5

    .line 2650
    invoke-direct {p0, v1}, Lcom/threed/jpct/Object3D;->recurseObjectsBillboarded(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 2656
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v5, :cond_2

    .line 2657
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    if-eqz v5, :cond_6

    .line 2658
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    iput-object v5, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 2659
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 2660
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5, v1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .end local v2    # "matmat3":[F
    .end local v3    # "originMatrixmat":[F
    .end local v4    # "translationMatrixmat":[F
    :cond_2
    :goto_2
    move-object v5, v1

    .line 2669
    :goto_3
    return-object v5

    .line 2636
    .restart local v2    # "matmat3":[F
    .restart local v3    # "originMatrixmat":[F
    .restart local v4    # "translationMatrixmat":[F
    :cond_3
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-nez v5, :cond_4

    .line 2637
    new-instance v5, Lcom/threed/jpct/Matrix;

    invoke-direct {v5}, Lcom/threed/jpct/Matrix;-><init>()V

    goto :goto_3

    .line 2639
    :cond_4
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object v5, v5, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v5, v5, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iput-object v5, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    .line 2640
    invoke-direct {p0, v8}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 2641
    .local v0, "m":Lcom/threed/jpct/Matrix;
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5, v0}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    .line 2642
    iget v5, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual {v0, v5}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    .line 2643
    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    goto :goto_0

    .line 2652
    .end local v0    # "m":Lcom/threed/jpct/Matrix;
    :cond_5
    invoke-direct {p0, v1}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    goto :goto_1

    .line 2662
    :cond_6
    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v5

    iput-object v5, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    goto :goto_2

    .line 2667
    .end local v1    # "mat5":Lcom/threed/jpct/Matrix;
    .end local v2    # "matmat3":[F
    .end local v3    # "originMatrixmat":[F
    .end local v4    # "translationMatrixmat":[F
    :cond_7
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    .restart local v1    # "mat5":Lcom/threed/jpct/Matrix;
    goto :goto_2
.end method

.method public getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 11
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2683
    if-nez p1, :cond_0

    .line 2684
    new-instance p1, Lcom/threed/jpct/Matrix;

    .end local p1    # "mat":Lcom/threed/jpct/Matrix;
    invoke-direct {p1}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 2687
    .restart local p1    # "mat":Lcom/threed/jpct/Matrix;
    :cond_0
    iget-boolean v6, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    if-nez v6, :cond_8

    .line 2688
    :cond_1
    move-object v1, p1

    .line 2689
    .local v1, "mat5":Lcom/threed/jpct/Matrix;
    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 2691
    invoke-direct {p0, v8}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v2

    .line 2692
    .local v2, "mat6":Lcom/threed/jpct/Matrix;
    invoke-virtual {v2}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 2694
    iget-object v6, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v6, v7

    .line 2695
    .local v3, "matmat3":[F
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v6, v6, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v5, v6, v7

    .line 2696
    .local v5, "translationMatrixmat":[F
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-object v6, v6, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v6, v7

    .line 2698
    .local v4, "originMatrixmat":[F
    iget v6, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    neg-float v6, v6

    aput v6, v3, v8

    .line 2699
    iget v6, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    neg-float v6, v6

    aput v6, v3, v9

    .line 2700
    iget v6, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    neg-float v6, v6

    aput v6, v3, v10

    .line 2702
    iget-object v6, v2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v6, v7

    .line 2704
    iget v6, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    aget v7, v5, v8

    add-float/2addr v6, v7

    aget v7, v4, v8

    add-float/2addr v6, v7

    aput v6, v3, v8

    .line 2707
    iget v6, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    aget v7, v5, v9

    add-float/2addr v6, v7

    aget v7, v4, v9

    add-float/2addr v6, v7

    aput v6, v3, v9

    .line 2708
    iget v6, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    aget v7, v5, v10

    add-float/2addr v6, v7

    aget v7, v4, v10

    add-float/2addr v6, v7

    aput v6, v3, v10

    .line 2710
    iget-boolean v6, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-nez v6, :cond_5

    .line 2711
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v6}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 2718
    :goto_0
    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 2720
    iget v6, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v6, :cond_2

    .line 2721
    iget-boolean v6, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-eqz v6, :cond_6

    .line 2722
    invoke-direct {p0, v1}, Lcom/threed/jpct/Object3D;->recurseObjectsBillboarded(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 2728
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v6, :cond_3

    .line 2729
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    if-eqz v6, :cond_7

    .line 2730
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    iput-object v6, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 2731
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 2732
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    invoke-virtual {v6, v1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 2738
    :cond_3
    :goto_2
    if-eq p1, v1, :cond_4

    .line 2739
    invoke-virtual {p1, v1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 2744
    .end local v1    # "mat5":Lcom/threed/jpct/Matrix;
    .end local v2    # "mat6":Lcom/threed/jpct/Matrix;
    .end local v3    # "matmat3":[F
    .end local v4    # "originMatrixmat":[F
    .end local v5    # "translationMatrixmat":[F
    :cond_4
    :goto_3
    return-object p1

    .line 2713
    .restart local v1    # "mat5":Lcom/threed/jpct/Matrix;
    .restart local v2    # "mat6":Lcom/threed/jpct/Matrix;
    .restart local v3    # "matmat3":[F
    .restart local v4    # "originMatrixmat":[F
    .restart local v5    # "translationMatrixmat":[F
    :cond_5
    invoke-direct {p0, v9}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 2714
    .local v0, "m":Lcom/threed/jpct/Matrix;
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    invoke-virtual {v6, v0}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    .line 2715
    iget v6, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual {v0, v6}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    .line 2716
    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    goto :goto_0

    .line 2724
    .end local v0    # "m":Lcom/threed/jpct/Matrix;
    :cond_6
    invoke-direct {p0, v1}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    goto :goto_1

    .line 2734
    :cond_7
    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    goto :goto_2

    .line 2742
    .end local v1    # "mat5":Lcom/threed/jpct/Matrix;
    .end local v2    # "mat6":Lcom/threed/jpct/Matrix;
    .end local v3    # "matmat3":[F
    .end local v4    # "originMatrixmat":[F
    .end local v5    # "translationMatrixmat":[F
    :cond_8
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1, v6}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    goto :goto_3
.end method

.method public getXAxis()Lcom/threed/jpct/SimpleVector;
    .locals 3

    .prologue
    .line 2220
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->getXAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 2221
    .local v0, "sv":Lcom/threed/jpct/SimpleVector;
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 2222
    return-object v0
.end method

.method public getXAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p1, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 2263
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/Matrix;->getXAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 2264
    .local v0, "sv":Lcom/threed/jpct/SimpleVector;
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 2265
    return-object v0
.end method

.method public getYAxis()Lcom/threed/jpct/SimpleVector;
    .locals 3

    .prologue
    .line 2233
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 2234
    .local v0, "sv":Lcom/threed/jpct/SimpleVector;
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 2235
    return-object v0
.end method

.method public getYAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p1, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 2280
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/Matrix;->getYAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 2281
    .local v0, "sv":Lcom/threed/jpct/SimpleVector;
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 2282
    return-object v0
.end method

.method public getZAxis()Lcom/threed/jpct/SimpleVector;
    .locals 3

    .prologue
    .line 2246
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->getZAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 2247
    .local v0, "sv":Lcom/threed/jpct/SimpleVector;
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 2248
    return-object v0
.end method

.method public getZAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 3
    .param p1, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 2297
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/Matrix;->getZAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 2298
    .local v0, "sv":Lcom/threed/jpct/SimpleVector;
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 2299
    return-object v0
.end method

.method public hasChild(Lcom/threed/jpct/Object3D;)Z
    .locals 2
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 1304
    if-eqz p1, :cond_0

    .line 1305
    invoke-virtual {p1, p0}, Lcom/threed/jpct/Object3D;->hasParent(Lcom/threed/jpct/Object3D;)Z

    move-result v0

    .line 1308
    :goto_0
    return v0

    .line 1307
    :cond_0
    const-string v0, "Testing a null-Object3D for being a child is rather senseless!"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1308
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParent(Lcom/threed/jpct/Object3D;)Z
    .locals 4
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 1323
    const/4 v0, 0x0

    .line 1324
    .local v0, "found":Z
    if-eqz p1, :cond_2

    .line 1325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-lt v1, v2, :cond_0

    :goto_1
    move v2, v0

    .line 1334
    .end local v1    # "i":I
    :goto_2
    return v2

    .line 1326
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/threed/jpct/Object3D;->number:I

    iget v3, p1, Lcom/threed/jpct/Object3D;->number:I

    if-ne v2, v3, :cond_1

    .line 1327
    const/4 v0, 0x1

    .line 1328
    goto :goto_1

    .line 1325
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1333
    .end local v1    # "i":I
    :cond_2
    const-string v2, "Testing a null-Object3D for being a parent is rather senseless!"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1334
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public hasVertexAlpha()Z
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->alpha:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invert()V
    .locals 9

    .prologue
    .line 3250
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v7, v7, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt v2, v7, :cond_0

    .line 3273
    return-void

    .line 3252
    :cond_0
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v7, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v7, v7, v2

    const/4 v8, 0x0

    aget v5, v7, v8

    .line 3253
    .local v5, "pt1":I
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v7, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget v6, v7, v8

    .line 3255
    .local v6, "pt2":I
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v7, Lcom/threed/jpct/Mesh;->coords:[I

    aget v3, v7, v5

    .line 3256
    .local v3, "p0":I
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v7, Lcom/threed/jpct/Mesh;->coords:[I

    aget v4, v7, v6

    .line 3258
    .local v4, "p2":I
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v7, Lcom/threed/jpct/Mesh;->coords:[I

    aput v4, v7, v5

    .line 3259
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v7, Lcom/threed/jpct/Mesh;->coords:[I

    aput v3, v7, v6

    .line 3261
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v0, v7, v5

    .line 3262
    .local v0, "f0":F
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v1, v7, v6

    .line 3264
    .local v1, "f2":F
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput v1, v7, v5

    .line 3265
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput v0, v7, v6

    .line 3267
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v0, v7, v5

    .line 3268
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v1, v7, v6

    .line 3270
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput v1, v7, v5

    .line 3271
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v7, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput v0, v7, v6

    .line 3250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public invertCulling(Z)V
    .locals 0
    .param p1, "inv"    # Z

    .prologue
    .line 3283
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    .line 3284
    return-void
.end method

.method isCompiled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 928
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 931
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnvmapped()Z
    .locals 1

    .prologue
    .line 1882
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    return v0
.end method

.method notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "algo"    # I
    .param p3, "targets"    # [Lcom/threed/jpct/Object3D;
    .param p4, "contact"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 6450
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 6451
    return-void
.end method

.method notifyCollisionListeners(Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V
    .locals 10
    .param p1, "src"    # Lcom/threed/jpct/Object3D;
    .param p2, "type"    # I
    .param p3, "algo"    # I
    .param p4, "targets"    # [Lcom/threed/jpct/Object3D;
    .param p5, "contact"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 6454
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    if-eqz v1, :cond_1

    .line 6468
    :cond_0
    return-void

    .line 6458
    :cond_1
    new-instance v0, Lcom/threed/jpct/CollisionEvent;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/CollisionEvent;-><init>(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 6460
    .local v0, "ce":Lcom/threed/jpct/CollisionEvent;
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 6461
    .local v8, "end":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 6462
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/threed/jpct/CollisionListener;

    .line 6463
    .local v7, "colly":Lcom/threed/jpct/CollisionListener;
    invoke-interface {v7}, Lcom/threed/jpct/CollisionListener;->requiresPolygonIDs()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/threed/jpct/CollisionEvent;->getPolygonIDs()[I

    move-result-object v1

    if-nez v1, :cond_2

    .line 6464
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    iget v2, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/CollisionEvent;->setPolygonIDs([II)V

    .line 6466
    :cond_2
    invoke-interface {v7, v0}, Lcom/threed/jpct/CollisionListener;->collision(Lcom/threed/jpct/CollisionEvent;)V

    .line 6461
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method final rayIntersectsAABB(FFFFFFZ)F
    .locals 47
    .param p1, "org0"    # F
    .param p2, "org1"    # F
    .param p3, "org2"    # F
    .param p4, "dr0"    # F
    .param p5, "dr1"    # F
    .param p6, "dr2"    # F
    .param p7, "isNormalized"    # Z

    .prologue
    .line 3668
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    move/from16 v45, v0

    if-nez v45, :cond_1

    .line 3669
    const v38, 0x5368d4a5    # 1.0E12f

    .line 3803
    :cond_0
    :goto_0
    return v38

    .line 3674
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v13, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 3676
    .local v13, "invTransmat":[[F
    const/16 v45, 0x0

    aget-object v45, v13, v45

    const/16 v46, 0x0

    aget v23, v45, v46

    .line 3677
    .local v23, "s00Ws":F
    const/16 v45, 0x1

    aget-object v45, v13, v45

    const/16 v46, 0x0

    aget v26, v45, v46

    .line 3678
    .local v26, "s10Ws":F
    const/16 v45, 0x1

    aget-object v45, v13, v45

    const/16 v46, 0x1

    aget v27, v45, v46

    .line 3679
    .local v27, "s11Ws":F
    const/16 v45, 0x2

    aget-object v45, v13, v45

    const/16 v46, 0x1

    aget v30, v45, v46

    .line 3680
    .local v30, "s21Ws":F
    const/16 v45, 0x2

    aget-object v45, v13, v45

    const/16 v46, 0x0

    aget v29, v45, v46

    .line 3681
    .local v29, "s20Ws":F
    const/16 v45, 0x0

    aget-object v45, v13, v45

    const/16 v46, 0x1

    aget v24, v45, v46

    .line 3682
    .local v24, "s01Ws":F
    const/16 v45, 0x2

    aget-object v45, v13, v45

    const/16 v46, 0x2

    aget v31, v45, v46

    .line 3683
    .local v31, "s22Ws":F
    const/16 v45, 0x1

    aget-object v45, v13, v45

    const/16 v46, 0x2

    aget v28, v45, v46

    .line 3684
    .local v28, "s12Ws":F
    const/16 v45, 0x0

    aget-object v45, v13, v45

    const/16 v46, 0x2

    aget v25, v45, v46

    .line 3685
    .local v25, "s02Ws":F
    const/16 v45, 0x3

    aget-object v45, v13, v45

    const/16 v46, 0x0

    aget v3, v45, v46

    .line 3686
    .local v3, "bxWs":F
    const/16 v45, 0x3

    aget-object v45, v13, v45

    const/16 v46, 0x1

    aget v5, v45, v46

    .line 3687
    .local v5, "byWs":F
    const/16 v45, 0x3

    aget-object v45, v13, v45

    const/16 v46, 0x2

    aget v7, v45, v46

    .line 3689
    .local v7, "bzWs":F
    mul-float v45, p4, v23

    mul-float v46, p5, v26

    add-float v45, v45, v46

    mul-float v46, p6, v29

    add-float v9, v45, v46

    .line 3690
    .local v9, "dx":F
    mul-float v45, p4, v24

    mul-float v46, p5, v27

    add-float v45, v45, v46

    mul-float v46, p6, v30

    add-float v10, v45, v46

    .line 3691
    .local v10, "dy":F
    mul-float v45, p4, v25

    mul-float v46, p5, v28

    add-float v45, v45, v46

    mul-float v46, p6, v31

    add-float v11, v45, v46

    .line 3693
    .local v11, "dz":F
    mul-float v45, p1, v23

    mul-float v46, p2, v26

    add-float v45, v45, v46

    mul-float v46, p3, v29

    add-float v45, v45, v46

    add-float v2, v45, v3

    .line 3694
    .local v2, "bx":F
    mul-float v45, p1, v24

    mul-float v46, p2, v27

    add-float v45, v45, v46

    mul-float v46, p3, v30

    add-float v45, v45, v46

    add-float v4, v45, v5

    .line 3695
    .local v4, "by":F
    mul-float v45, p1, v25

    mul-float v46, p2, v28

    add-float v45, v45, v46

    mul-float v46, p3, v31

    add-float v45, v45, v46

    add-float v6, v45, v7

    .line 3697
    .local v6, "bz":F
    const v39, -0x2e45bc49    # -9.9999998E10f

    .line 3698
    .local v39, "tminX":F
    const v40, -0x2e45bc49    # -9.9999998E10f

    .line 3699
    .local v40, "tminY":F
    const v41, -0x2e45bc49    # -9.9999998E10f

    .line 3701
    .local v41, "tminZ":F
    const v35, 0x51ba43b7    # 9.9999998E10f

    .line 3702
    .local v35, "tmaxX":F
    const v36, 0x51ba43b7    # 9.9999998E10f

    .line 3703
    .local v36, "tmaxY":F
    const v37, 0x51ba43b7    # 9.9999998E10f

    .line 3705
    .local v37, "tmaxZ":F
    if-nez p7, :cond_2

    .line 3706
    mul-float v45, v9, v9

    mul-float v46, v10, v10

    add-float v45, v45, v46

    mul-float v46, v11, v11

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v8, v0

    .line 3707
    .local v8, "dn":F
    div-float/2addr v9, v8

    .line 3708
    div-float/2addr v10, v8

    .line 3709
    div-float/2addr v11, v8

    .line 3712
    .end local v8    # "dn":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    move/from16 v32, v0

    .line 3714
    .local v32, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v20, v0

    .line 3715
    .local v20, "objMeshxOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v21, v0

    .line 3716
    .local v21, "objMeshyOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v22, v0

    .line 3718
    .local v22, "objMeshzOrg":[F
    aget v17, v20, v32

    .line 3719
    .local v17, "minX":F
    aget v18, v21, v32

    .line 3720
    .local v18, "minY":F
    aget v19, v22, v32

    .line 3721
    .local v19, "minZ":F
    move/from16 v14, v17

    .line 3722
    .local v14, "maxX":F
    move/from16 v15, v18

    .line 3723
    .local v15, "maxY":F
    move/from16 v16, v19

    .line 3725
    .local v16, "maxZ":F
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    const/16 v45, 0x8

    move/from16 v0, v45

    if-lt v12, v0, :cond_b

    .line 3752
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v45

    const v46, 0x3089705f    # 1.0E-9f

    cmpl-float v45, v45, v46

    if-lez v45, :cond_3

    .line 3753
    sub-float v45, v17, v2

    div-float v39, v45, v9

    .line 3754
    sub-float v45, v14, v2

    div-float v35, v45, v9

    .line 3755
    cmpl-float v45, v39, v35

    if-lez v45, :cond_3

    .line 3756
    move/from16 v33, v39

    .line 3757
    .local v33, "t":F
    move/from16 v39, v35

    .line 3758
    move/from16 v35, v33

    .line 3762
    .end local v33    # "t":F
    :cond_3
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v45

    const v46, 0x3089705f    # 1.0E-9f

    cmpl-float v45, v45, v46

    if-lez v45, :cond_4

    .line 3763
    sub-float v45, v18, v4

    div-float v40, v45, v10

    .line 3764
    sub-float v45, v15, v4

    div-float v36, v45, v10

    .line 3765
    cmpl-float v45, v40, v36

    if-lez v45, :cond_4

    .line 3766
    move/from16 v33, v40

    .line 3767
    .restart local v33    # "t":F
    move/from16 v40, v36

    .line 3768
    move/from16 v36, v33

    .line 3772
    .end local v33    # "t":F
    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v45

    const v46, 0x3089705f    # 1.0E-9f

    cmpl-float v45, v45, v46

    if-lez v45, :cond_5

    .line 3773
    sub-float v45, v19, v6

    div-float v41, v45, v11

    .line 3774
    sub-float v45, v16, v6

    div-float v37, v45, v11

    .line 3775
    cmpl-float v45, v41, v37

    if-lez v45, :cond_5

    .line 3776
    move/from16 v33, v41

    .line 3777
    .restart local v33    # "t":F
    move/from16 v41, v37

    .line 3778
    move/from16 v37, v33

    .line 3782
    .end local v33    # "t":F
    :cond_5
    move/from16 v38, v39

    .line 3783
    .local v38, "tmin":F
    cmpg-float v45, v38, v40

    if-gez v45, :cond_6

    .line 3784
    move/from16 v38, v40

    .line 3786
    :cond_6
    cmpg-float v45, v38, v41

    if-gez v45, :cond_7

    .line 3787
    move/from16 v38, v41

    .line 3790
    :cond_7
    move/from16 v34, v35

    .line 3791
    .local v34, "tmax":F
    cmpl-float v45, v34, v36

    if-lez v45, :cond_8

    .line 3792
    move/from16 v34, v36

    .line 3794
    :cond_8
    cmpl-float v45, v34, v37

    if-lez v45, :cond_9

    .line 3795
    move/from16 v34, v37

    .line 3797
    :cond_9
    cmpg-float v45, v38, v34

    if-gtz v45, :cond_a

    const/16 v45, 0x0

    cmpl-float v45, v34, v45

    if-gtz v45, :cond_0

    .line 3803
    :cond_a
    const v38, 0x5368d4a5    # 1.0E12f

    goto/16 :goto_0

    .line 3726
    .end local v34    # "tmax":F
    .end local v38    # "tmin":F
    :cond_b
    add-int v45, v12, v32

    aget v42, v20, v45

    .line 3727
    .local v42, "x":F
    add-int v45, v12, v32

    aget v44, v22, v45

    .line 3728
    .local v44, "z":F
    add-int v45, v12, v32

    aget v43, v21, v45

    .line 3729
    .local v43, "y":F
    cmpg-float v45, v42, v17

    if-gez v45, :cond_f

    .line 3730
    move/from16 v17, v42

    .line 3736
    :cond_c
    :goto_2
    cmpg-float v45, v43, v18

    if-gez v45, :cond_10

    .line 3737
    move/from16 v18, v43

    .line 3743
    :cond_d
    :goto_3
    cmpg-float v45, v44, v19

    if-gez v45, :cond_11

    .line 3744
    move/from16 v19, v44

    .line 3725
    :cond_e
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 3732
    :cond_f
    cmpl-float v45, v42, v14

    if-lez v45, :cond_c

    .line 3733
    move/from16 v14, v42

    goto :goto_2

    .line 3739
    :cond_10
    cmpl-float v45, v43, v15

    if-lez v45, :cond_d

    .line 3740
    move/from16 v15, v43

    goto :goto_3

    .line 3746
    :cond_11
    cmpl-float v45, v44, v16

    if-lez v45, :cond_e

    .line 3747
    move/from16 v16, v44

    goto :goto_4
.end method

.method public rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)F
    .locals 8
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "dr"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 3656
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, p2, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(FFFFFFZ)F

    move-result v0

    return v0
.end method

.method public rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)F
    .locals 8
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "dr"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "isNormalized"    # Z

    .prologue
    .line 3636
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, p2, Lcom/threed/jpct/SimpleVector;->z:F

    move-object v0, p0

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(FFFFFFZ)F

    move-result v0

    return v0
.end method

.method rayIntersectsAABB([F[F)F
    .locals 8
    .param p1, "org"    # [F
    .param p2, "dr"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 3660
    aget v1, p1, v7

    aget v2, p1, v0

    aget v3, p1, v6

    aget v4, p2, v7

    aget v5, p2, v0

    aget v6, p2, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(FFFFFFZ)F

    move-result v0

    return v0
.end method

.method rayIntersectsAABB([F[FZ)F
    .locals 8
    .param p1, "org"    # [F
    .param p2, "dr"    # [F
    .param p3, "normalize"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 3664
    aget v1, p1, v0

    aget v2, p1, v5

    aget v3, p1, v6

    aget v4, p2, v0

    aget v5, p2, v5

    aget v6, p2, v6

    move-object v0, p0

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(FFFFFFZ)F

    move-result v0

    return v0
.end method

.method reallyStrip()V
    .locals 11

    .prologue
    const/16 v10, -0x6f

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 6471
    iput-boolean v6, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    .line 6472
    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    .line 6474
    iget-boolean v5, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    if-eqz v5, :cond_0

    .line 6475
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v5}, Lcom/threed/jpct/Vectors;->strip()V

    .line 6476
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v5, v7, p0}, Lcom/threed/jpct/Mesh;->strongStrip(Lcom/threed/jpct/World;Lcom/threed/jpct/Object3D;)V

    .line 6479
    :cond_0
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/threed/jpct/Config;->aggressiveStripping:Z

    if-eqz v5, :cond_2

    .line 6480
    iput-boolean v9, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    .line 6481
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v5, v5

    :goto_0
    add-int/lit8 v5, v5, 0x1

    new-array v3, v5, [I

    .line 6482
    .local v3, "st":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-lt v1, v5, :cond_4

    .line 6486
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 6507
    :goto_3
    iget-boolean v5, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    if-nez v5, :cond_8

    .line 6508
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Object \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' uses multiple texture sets!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 6524
    .end local v1    # "i":I
    .end local v3    # "st":[I
    :cond_2
    return-void

    :cond_3
    move v5, v6

    .line 6481
    goto :goto_0

    .line 6483
    .restart local v1    # "i":I
    .restart local v3    # "st":[I
    :cond_4
    aput v10, v3, v1

    .line 6482
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6486
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/CompiledInstance;

    .line 6487
    .local v0, "ci":Lcom/threed/jpct/CompiledInstance;
    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    .line 6488
    .local v2, "index":I
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aget v4, v7, v2

    .line 6490
    .local v4, "tid":I
    aget v7, v3, v6

    if-eq v4, v7, :cond_6

    aget v7, v3, v6

    if-eq v7, v10, :cond_6

    .line 6491
    iput-boolean v6, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    goto :goto_3

    .line 6494
    :cond_6
    aput v4, v3, v6

    .line 6496
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v7, :cond_1

    .line 6497
    const/4 v1, 0x0

    :goto_4
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 6498
    add-int/lit8 v7, v1, 0x1

    aget v7, v3, v7

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v8, v8, v1

    aget v8, v8, v2

    if-eq v7, v8, :cond_7

    add-int/lit8 v7, v1, 0x1

    aget v7, v3, v7

    if-eq v7, v10, :cond_7

    .line 6499
    iput-boolean v6, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    goto :goto_2

    .line 6502
    :cond_7
    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v8, v8, v1

    aget v8, v8, v2

    aput v8, v3, v7

    .line 6497
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6510
    .end local v0    # "ci":Lcom/threed/jpct/CompiledInstance;
    .end local v2    # "index":I
    .end local v4    # "tid":I
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Object \'"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' uses one texture set!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 6511
    new-array v5, v9, [I

    iput-object v5, p0, Lcom/threed/jpct/Object3D;->texture:[I

    .line 6512
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aget v7, v3, v6

    aput v7, v5, v6

    .line 6514
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v5, :cond_2

    .line 6515
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v5, v5

    filled-new-array {v5, v9}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 6516
    const/4 v1, 0x0

    :goto_5
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 6517
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v5, v5, v1

    add-int/lit8 v7, v1, 0x1

    aget v7, v3, v7

    aput v7, v5, v6

    .line 6516
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public removeChild(Lcom/threed/jpct/Object3D;)V
    .locals 2
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 1369
    if-eqz p1, :cond_0

    .line 1370
    invoke-virtual {p1, p0}, Lcom/threed/jpct/Object3D;->removeParent(Lcom/threed/jpct/Object3D;)V

    .line 1374
    :goto_0
    return-void

    .line 1372
    :cond_0
    const-string v0, "Tried to remove a non-existent Object3D from the child collection!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public declared-synchronized removeCollisionListener(Lcom/threed/jpct/CollisionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/threed/jpct/CollisionListener;

    .prologue
    .line 2771
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2772
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2773
    sget v0, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    .line 2774
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2778
    :cond_0
    monitor-exit p0

    return-void

    .line 2771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeParent(Lcom/threed/jpct/Object3D;)V
    .locals 7
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    const/4 v6, 0x0

    .line 1386
    if-eqz p1, :cond_5

    .line 1387
    const/4 v0, 0x0

    .line 1388
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-lt v1, v3, :cond_1

    .line 1399
    if-nez v0, :cond_0

    .line 1400
    const-string v3, "Tried to remove an object from the parent collection that isn\'t part of it!"

    invoke-static {v3, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1406
    .end local v0    # "found":Z
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 1389
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/threed/jpct/Object3D;->number:I

    iget v4, p1, Lcom/threed/jpct/Object3D;->number:I

    if-ne v3, v4, :cond_3

    .line 1390
    const/4 v0, 0x1

    .line 1391
    iget v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1392
    move v2, v1

    .local v2, "p":I
    :goto_2
    iget v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_4

    .line 1396
    .end local v2    # "p":I
    :cond_2
    iget v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    .line 1388
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1393
    .restart local v2    # "p":I
    :cond_4
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    iget-object v4, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    .line 1392
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1403
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "p":I
    :cond_5
    const-string v3, "Tried to remove a non-existent object from the parent collection!"

    invoke-static {v3, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method final render()V
    .locals 25

    .prologue
    .line 6099
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isLit:Z

    move/from16 v22, v0

    if-nez v22, :cond_7

    .line 6100
    sget-object v14, Lcom/threed/jpct/Object3D;->DUMMY_LIGHTS:Lcom/threed/jpct/Lights;

    .line 6104
    .local v14, "tempLight":Lcom/threed/jpct/Lights;
    :goto_0
    iget v3, v14, Lcom/threed/jpct/Lights;->lightCnt:I

    .line 6105
    .local v3, "anzLights":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    move-object/from16 v18, v0

    .line 6107
    .local v18, "visList":Lcom/threed/jpct/VisList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 6108
    const/16 v22, 0x8

    const/16 v23, 0x7

    filled-new-array/range {v22 .. v23}, [I

    move-result-object v22

    sget-object v23, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[F

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    .line 6112
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    const v24, -0x39e3c400    # -9999.0f

    aput v24, v22, v23

    .line 6113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    const v24, -0x39e3c400    # -9999.0f

    aput v24, v22, v23

    .line 6114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x0

    const v24, -0x39e3c400    # -9999.0f

    aput v24, v22, v23

    .line 6115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x0

    const v24, -0x39e3c400    # -9999.0f

    aput v24, v22, v23

    .line 6116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget-object v22, v22, v23

    const/16 v23, 0x0

    const v24, -0x39e3c400    # -9999.0f

    aput v24, v22, v23

    .line 6117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget-object v22, v22, v23

    const/16 v23, 0x0

    const v24, -0x39e3c400    # -9999.0f

    aput v24, v22, v23

    .line 6118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x6

    aget-object v22, v22, v23

    const/16 v23, 0x0

    const v24, -0x39e3c400    # -9999.0f

    aput v24, v22, v23

    .line 6119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    const/16 v23, 0x7

    aget-object v22, v22, v23

    const/16 v23, 0x0

    const v24, -0x39e3c400    # -9999.0f

    aput v24, v22, v23

    .line 6121
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isLit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    if-lez v3, :cond_3

    .line 6122
    const/4 v15, 0x0

    .line 6123
    .local v15, "v":Lcom/threed/jpct/SimpleVector;
    sget-object v10, Lcom/threed/jpct/Object3D;->lightsList:Ljava/util/ArrayList;

    .line 6124
    .local v10, "ls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 6127
    sget-object v22, Lcom/threed/jpct/Object3D;->litData:[[F

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 6128
    const/16 v22, 0x2

    move/from16 v0, v22

    filled-new-array {v3, v0}, [I

    move-result-object v22

    sget-object v23, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[F

    sput-object v22, Lcom/threed/jpct/Object3D;->litData:[[F

    .line 6131
    :cond_1
    const/4 v12, 0x0

    .line 6133
    .local v12, "overrides":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v3, :cond_8

    .line 6182
    move-object/from16 v0, p0

    iget v7, v0, Lcom/threed/jpct/Object3D;->maxLights:I

    .line 6183
    .local v7, "end":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v7, v0, :cond_2

    .line 6184
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 6187
    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-lt v8, v7, :cond_11

    .line 6210
    .end local v7    # "end":I
    .end local v8    # "i":I
    .end local v10    # "ls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    .end local v12    # "overrides":I
    .end local v15    # "v":Lcom/threed/jpct/SimpleVector;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->dynamic:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 6211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    .line 6212
    .local v5, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/VertexAttributes;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v8, v0, :cond_13

    .line 6222
    .end local v5    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/VertexAttributes;>;"
    .end local v8    # "i":I
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->dynamic:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->modified:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 6223
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/threed/jpct/VisList;->addToFill(Lcom/threed/jpct/Object3D;)V

    .line 6224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 6225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->modified:Z

    .line 6229
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->dynamic:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->modified:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 6230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/threed/jpct/VisList;->addToFill(Lcom/threed/jpct/Object3D;)V

    .line 6232
    :cond_6
    return-void

    .line 6102
    .end local v3    # "anzLights":I
    .end local v14    # "tempLight":Lcom/threed/jpct/Lights;
    .end local v18    # "visList":Lcom/threed/jpct/VisList;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    .restart local v14    # "tempLight":Lcom/threed/jpct/Lights;
    goto/16 :goto_0

    .line 6135
    .restart local v3    # "anzLights":I
    .restart local v8    # "i":I
    .restart local v10    # "ls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    .restart local v12    # "overrides":I
    .restart local v15    # "v":Lcom/threed/jpct/SimpleVector;
    .restart local v18    # "visList":Lcom/threed/jpct/VisList;
    :cond_8
    iget-object v0, v14, Lcom/threed/jpct/Lights;->isVisible:[Z

    move-object/from16 v22, v0

    aget-boolean v22, v22, v8

    if-eqz v22, :cond_d

    .line 6136
    if-nez v15, :cond_9

    .line 6137
    sget-object v22, Lcom/threed/jpct/Object3D;->tempTC:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;->fillTransformedCenter(Lcom/threed/jpct/SimpleVector;)V

    .line 6138
    sget-object v15, Lcom/threed/jpct/Object3D;->tempTC:Lcom/threed/jpct/SimpleVector;

    .line 6141
    :cond_9
    iget-object v0, v14, Lcom/threed/jpct/Lights;->distanceOverride:[F

    move-object/from16 v22, v0

    aget v6, v22, v8

    .line 6142
    .local v6, "dist":F
    const/high16 v22, -0x40800000    # -1.0f

    cmpl-float v22, v6, v22

    if-nez v22, :cond_e

    .line 6143
    iget v0, v15, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v22, v0

    iget-object v0, v14, Lcom/threed/jpct/Lights;->xOrg:[F

    move-object/from16 v23, v0

    aget v23, v23, v8

    sub-float v19, v22, v23

    .line 6144
    .local v19, "x1":F
    iget v0, v15, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v22, v0

    iget-object v0, v14, Lcom/threed/jpct/Lights;->yOrg:[F

    move-object/from16 v23, v0

    aget v23, v23, v8

    sub-float v20, v22, v23

    .line 6145
    .local v20, "y1":F
    iget v0, v15, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v22, v0

    iget-object v0, v14, Lcom/threed/jpct/Lights;->zOrg:[F

    move-object/from16 v23, v0

    aget v23, v23, v8

    sub-float v21, v22, v23

    .line 6146
    .local v21, "z1":F
    mul-float v22, v19, v19

    mul-float v23, v20, v20

    add-float v22, v22, v23

    mul-float v23, v21, v21

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v6, v0

    .line 6154
    .end local v19    # "x1":F
    .end local v20    # "y1":F
    .end local v21    # "z1":F
    :goto_5
    iget-object v0, v14, Lcom/threed/jpct/Lights;->discardDistance:[F

    move-object/from16 v22, v0

    aget v22, v22, v8

    cmpg-float v22, v6, v22

    if-lez v22, :cond_a

    iget-object v0, v14, Lcom/threed/jpct/Lights;->discardDistance:[F

    move-object/from16 v22, v0

    aget v22, v22, v8

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_d

    sget v22, Lcom/threed/jpct/Config;->lightDiscardDistance:F

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-ltz v22, :cond_a

    sget v22, Lcom/threed/jpct/Config;->lightDiscardDistance:F

    cmpl-float v22, v22, v6

    if-lez v22, :cond_d

    .line 6155
    :cond_a
    const/4 v2, 0x0

    .line 6156
    .local v2, "added":Z
    const/16 v22, 0x8

    move/from16 v0, v22

    if-gt v3, v0, :cond_b

    if-lez v12, :cond_c

    .line 6160
    :cond_b
    const/4 v13, 0x0

    .local v13, "p":I
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v13, v0, :cond_f

    .line 6172
    .end local v13    # "p":I
    :cond_c
    :goto_7
    if-nez v2, :cond_d

    .line 6174
    sget-object v22, Lcom/threed/jpct/Object3D;->litData:[[F

    aget-object v22, v22, v8

    const/16 v23, 0x0

    aput v6, v22, v23

    .line 6175
    sget-object v22, Lcom/threed/jpct/Object3D;->litData:[[F

    aget-object v22, v22, v8

    const/16 v23, 0x1

    int-to-float v0, v8

    move/from16 v24, v0

    aput v24, v22, v23

    .line 6176
    sget-object v22, Lcom/threed/jpct/Object3D;->litData:[[F

    aget-object v22, v22, v8

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6133
    .end local v2    # "added":Z
    .end local v6    # "dist":F
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 6152
    .restart local v6    # "dist":F
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 6162
    .restart local v2    # "added":Z
    .restart local v13    # "p":I
    :cond_f
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [F

    .line 6163
    .local v16, "vals":[F
    const/16 v22, 0x0

    aget v22, v16, v22

    cmpg-float v22, v6, v22

    if-gez v22, :cond_10

    .line 6164
    sget-object v22, Lcom/threed/jpct/Object3D;->litData:[[F

    aget-object v22, v22, v8

    const/16 v23, 0x0

    aput v6, v22, v23

    .line 6165
    sget-object v22, Lcom/threed/jpct/Object3D;->litData:[[F

    aget-object v22, v22, v8

    const/16 v23, 0x1

    int-to-float v0, v8

    move/from16 v24, v0

    aput v24, v22, v23

    .line 6166
    sget-object v22, Lcom/threed/jpct/Object3D;->litData:[[F

    aget-object v22, v22, v8

    move-object/from16 v0, v22

    invoke-virtual {v10, v13, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6167
    const/4 v2, 0x1

    .line 6168
    goto :goto_7

    .line 6160
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 6188
    .end local v2    # "added":Z
    .end local v6    # "dist":F
    .end local v13    # "p":I
    .end local v16    # "vals":[F
    .restart local v7    # "end":I
    :cond_11
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [F

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-int v9, v0

    .line 6189
    .local v9, "id":I
    invoke-virtual {v14, v9}, Lcom/threed/jpct/Lights;->getAttenuation(I)F

    move-result v4

    .line 6190
    .local v4, "att":F
    const/high16 v22, -0x40800000    # -1.0f

    cmpl-float v22, v4, v22

    if-eqz v22, :cond_12

    .line 6191
    const/16 v22, 0x0

    cmpg-float v22, v4, v22

    if-gez v22, :cond_12

    sget-boolean v22, Lcom/threed/jpct/Config;->fadeoutLight:Z

    if-eqz v22, :cond_12

    .line 6192
    sget v4, Lcom/threed/jpct/Config;->linearDiv:F

    .line 6196
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    move-object/from16 v22, v0

    aget-object v11, v22, v8

    .line 6198
    .local v11, "nearestLightsi":[F
    const/16 v22, 0x0

    aput v4, v11, v22

    .line 6200
    const/16 v22, 0x1

    iget-object v0, v14, Lcom/threed/jpct/Lights;->xTr:[F

    move-object/from16 v23, v0

    aget v23, v23, v9

    aput v23, v11, v22

    .line 6201
    const/16 v22, 0x2

    iget-object v0, v14, Lcom/threed/jpct/Lights;->yTr:[F

    move-object/from16 v23, v0

    aget v23, v23, v9

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    aput v23, v11, v22

    .line 6202
    const/16 v22, 0x3

    iget-object v0, v14, Lcom/threed/jpct/Lights;->zTr:[F

    move-object/from16 v23, v0

    aget v23, v23, v9

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    aput v23, v11, v22

    .line 6204
    const/16 v22, 0x4

    iget-object v0, v14, Lcom/threed/jpct/Lights;->rOrg:[F

    move-object/from16 v23, v0

    aget v23, v23, v9

    const/high16 v24, 0x437f0000    # 255.0f

    div-float v23, v23, v24

    aput v23, v11, v22

    .line 6205
    const/16 v22, 0x5

    iget-object v0, v14, Lcom/threed/jpct/Lights;->gOrg:[F

    move-object/from16 v23, v0

    aget v23, v23, v9

    const/high16 v24, 0x437f0000    # 255.0f

    div-float v23, v23, v24

    aput v23, v11, v22

    .line 6206
    const/16 v22, 0x6

    iget-object v0, v14, Lcom/threed/jpct/Lights;->bOrg:[F

    move-object/from16 v23, v0

    aget v23, v23, v9

    const/high16 v24, 0x437f0000    # 255.0f

    div-float v23, v23, v24

    aput v23, v11, v22

    .line 6187
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 6213
    .end local v4    # "att":F
    .end local v7    # "end":I
    .end local v9    # "id":I
    .end local v10    # "ls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    .end local v11    # "nearestLightsi":[F
    .end local v12    # "overrides":I
    .end local v15    # "v":Lcom/threed/jpct/SimpleVector;
    .restart local v5    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/VertexAttributes;>;"
    :cond_13
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/threed/jpct/VertexAttributes;

    .line 6214
    .local v17, "vas":Lcom/threed/jpct/VertexAttributes;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/threed/jpct/VertexAttributes;->updated:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 6215
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/threed/jpct/VertexAttributes;->updated:Z

    .line 6216
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->modified:Z

    goto/16 :goto_4

    .line 6212
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3
.end method

.method public resetCollisionStatus()V
    .locals 1

    .prologue
    .line 2968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 2969
    return-void
.end method

.method resetPolygonIDCount()V
    .locals 1

    .prologue
    .line 6531
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    .line 6532
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    .line 6533
    return-void
.end method

.method final reverseTransform(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;Z)Lcom/threed/jpct/SimpleVector;
    .locals 19
    .param p1, "tmpMatrix"    # Lcom/threed/jpct/Matrix;
    .param p2, "orig"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "withTranslation"    # Z

    .prologue
    .line 5246
    invoke-virtual/range {p0 .. p1}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v16

    .line 5247
    .local v16, "trans":Lcom/threed/jpct/Matrix;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v7, v17, v18

    .line 5248
    .local v7, "s00Ws":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v10, v17, v18

    .line 5249
    .local v10, "s10Ws":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v11, v17, v18

    .line 5250
    .local v11, "s11Ws":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v14, v17, v18

    .line 5251
    .local v14, "s21Ws":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v13, v17, v18

    .line 5252
    .local v13, "s20Ws":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v8, v17, v18

    .line 5253
    .local v8, "s01Ws":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x2

    aget v15, v17, v18

    .line 5254
    .local v15, "s22Ws":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x2

    aget v12, v17, v18

    .line 5255
    .local v12, "s12Ws":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x2

    aget v9, v17, v18

    .line 5256
    .local v9, "s02Ws":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v2, v17, v18

    .line 5257
    .local v2, "bxWs":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v4, v17, v18

    .line 5258
    .local v4, "byWs":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-object v17, v17, v18

    const/16 v18, 0x2

    aget v6, v17, v18

    .line 5260
    .local v6, "bzWs":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v7

    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v10

    add-float v17, v17, v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v18, v0

    mul-float v18, v18, v13

    add-float v1, v17, v18

    .line 5261
    .local v1, "bx":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v8

    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    add-float v17, v17, v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v18, v0

    mul-float v18, v18, v14

    add-float v3, v17, v18

    .line 5262
    .local v3, "by":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v12

    add-float v17, v17, v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v18, v0

    mul-float v18, v18, v15

    add-float v5, v17, v18

    .line 5264
    .local v5, "bz":F
    if-eqz p3, :cond_0

    .line 5265
    add-float/2addr v1, v2

    .line 5266
    add-float/2addr v3, v4

    .line 5267
    add-float/2addr v5, v6

    .line 5270
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3, v5}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 5271
    return-object p2
.end method

.method public rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1
    .param p1, "axis"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "angle"    # F

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Matrix;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    .line 1965
    return-void
.end method

.method public rotateMesh()V
    .locals 6

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    iget v2, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget v3, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget v4, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    iget v5, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Mesh;->rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V

    .line 2424
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v0, :cond_0

    .line 2425
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    iget v2, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget v3, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget v4, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    iget v5, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Animation;->rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V

    .line 2427
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 2428
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    .line 2429
    return-void
.end method

.method public rotateX(F)V
    .locals 1
    .param p1, "w"    # F

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateX(F)V

    .line 1923
    return-void
.end method

.method public rotateY(F)V
    .locals 1
    .param p1, "w"    # F

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateY(F)V

    .line 1936
    return-void
.end method

.method public rotateZ(F)V
    .locals 1
    .param p1, "w"    # F

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateZ(F)V

    .line 1949
    return-void
.end method

.method public scale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 2133
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 2134
    iget v0, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    .line 2135
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    .line 2139
    :goto_0
    return-void

    .line 2137
    :cond_0
    const-string v0, "Scale has to be greater than zero!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setAdditionalColor(III)V
    .locals 2
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->internalRGBColor:Lcom/threed/jpct/RGBColor;

    if-nez v0, :cond_0

    .line 1803
    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->internalRGBColor:Lcom/threed/jpct/RGBColor;

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->internalRGBColor:Lcom/threed/jpct/RGBColor;

    const/16 v1, 0xff

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/threed/jpct/RGBColor;->setTo(IIII)V

    .line 1806
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->internalRGBColor:Lcom/threed/jpct/RGBColor;

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->setAdditionalColor(Lcom/threed/jpct/RGBColor;)V

    .line 1807
    return-void
.end method

.method public setAdditionalColor(Lcom/threed/jpct/RGBColor;)V
    .locals 5
    .param p1, "col"    # Lcom/threed/jpct/RGBColor;

    .prologue
    const/16 v3, 0x100

    .line 1774
    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v2

    .line 1775
    .local v2, "r":I
    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v1

    .line 1776
    .local v1, "g":I
    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v0

    .line 1778
    .local v0, "b":I
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 1780
    if-ltz v2, :cond_0

    if-ge v2, v3, :cond_0

    if-ltz v1, :cond_0

    if-ge v1, v3, :cond_0

    if-ltz v0, :cond_0

    if-ge v0, v3, :cond_0

    .line 1781
    iput v2, p0, Lcom/threed/jpct/Object3D;->addColorR:I

    .line 1782
    iput v1, p0, Lcom/threed/jpct/Object3D;->addColorG:I

    .line 1783
    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorB:I

    .line 1787
    :goto_0
    return-void

    .line 1785
    :cond_0
    const-string v3, "Color values need to be in the range of [0..255]!"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setAnimationSequence(Lcom/threed/jpct/Animation;)V
    .locals 3
    .param p1, "anim"    # Lcom/threed/jpct/Animation;

    .prologue
    const/4 v2, 0x0

    .line 1032
    if-nez p1, :cond_0

    .line 1033
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    .line 1054
    :goto_0
    return-void

    .line 1037
    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-nez v0, :cond_1

    .line 1039
    const-string v0, "You are adding an Animation to an Object3D that has already been build in static mode. Consider to use { calcNormals(); calcBoundingBox(); } instead of build() and call build() only after the animation has been set."

    .line 1040
    const/4 v1, 0x1

    .line 1038
    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1043
    :cond_1
    iget v0, p1, Lcom/threed/jpct/Animation;->aktFrames:I

    if-eqz v0, :cond_3

    .line 1044
    iget-object v0, p1, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-ne v0, v1, :cond_2

    .line 1045
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    .line 1046
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    invoke-virtual {v0, p0}, Lcom/threed/jpct/Animation;->validate(Lcom/threed/jpct/Object3D;)V

    goto :goto_0

    .line 1048
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The sizes of the Animation\'s Meshes ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and the object\'s Mesh ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") don\'t match!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 1052
    :cond_3
    const-string v0, "This Animation is empty!"

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setBillboarding(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 1870
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    .line 1871
    return-void
.end method

.method public setBoundingBox(FFFFFF)V
    .locals 3
    .param p1, "minx"    # F
    .param p2, "maxx"    # F
    .param p3, "miny"    # F
    .param p4, "maxy"    # F
    .param p5, "minz"    # F
    .param p6, "maxz"    # F

    .prologue
    const/4 v2, 0x0

    .line 2517
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v0, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v0, :cond_0

    .line 2518
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->obbStart:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 2519
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v2, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 2520
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v2, v0, Lcom/threed/jpct/Mesh;->obbEnd:I

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    if-eqz v0, :cond_1

    .line 2524
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v1, p1, p3, p5}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 2525
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, p1, p3, p6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    .line 2526
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, p2, p3, p5}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    .line 2527
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, p2, p3, p6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    .line 2528
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, p2, p4, p5}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    .line 2529
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, p2, p4, p6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    .line 2530
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, p1, p4, p5}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    .line 2531
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v1, p1, p4, p6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbEnd:I

    .line 2532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    .line 2534
    :cond_1
    return-void
.end method

.method public setCenter(Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "center"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 3084
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->centerX:F

    .line 3085
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->centerY:F

    .line 3086
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    .line 3087
    return-void
.end method

.method public setCollisionMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1124
    if-nez p1, :cond_0

    .line 1125
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    .line 1126
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->mayCollide:Z

    .line 1139
    :goto_0
    return-void

    .line 1128
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_1

    .line 1129
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    .line 1133
    :goto_1
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1134
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->mayCollide:Z

    goto :goto_0

    .line 1131
    :cond_1
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    goto :goto_1

    .line 1136
    :cond_2
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->mayCollide:Z

    goto :goto_0
.end method

.method public setCollisionOptimization(Z)V
    .locals 2
    .param p1, "optimized"    # Z

    .prologue
    .line 1156
    iget v0, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->getLargestCoveredDistance()F

    move-result v0

    iput v0, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    .line 1159
    :cond_0
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    .line 1160
    return-void
.end method

.method public setCulling(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 1520
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->doCulling:Z

    .line 1521
    return-void
.end method

.method public setEllipsoidMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 2929
    iput p1, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    .line 2930
    return-void
.end method

.method public setEnvmapped(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 1897
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    .line 1898
    return-void
.end method

.method public setFixedPointMode(Z)V
    .locals 0
    .param p1, "useFixedPoint"    # Z

    .prologue
    .line 1909
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    .line 1910
    return-void
.end method

.method public setLighting(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 1563
    if-nez p1, :cond_0

    .line 1564
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isLit:Z

    .line 1566
    :cond_0
    if-ne p1, v0, :cond_1

    .line 1567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isLit:Z

    .line 1569
    :cond_1
    return-void
.end method

.method public setMaxLights(I)V
    .locals 2
    .param p1, "lightCount"    # I

    .prologue
    .line 1593
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    .line 1594
    return-void
.end method

.method public setMesh(Lcom/threed/jpct/Mesh;)V
    .locals 2
    .param p1, "mesh"    # Lcom/threed/jpct/Mesh;

    .prologue
    .line 2455
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 2456
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    if-eqz v0, :cond_0

    .line 2457
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Vectors;->setMesh(Lcom/threed/jpct/Mesh;)V

    .line 2459
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->getInternalObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object with name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' already exists!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1492
    :goto_0
    return-void

    .line 1490
    :cond_0
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOcTree(Lcom/threed/jpct/OcTree;)V
    .locals 0
    .param p1, "ocTree"    # Lcom/threed/jpct/OcTree;

    .prologue
    .line 3194
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    .line 3195
    return-void
.end method

.method public setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 2
    .param p1, "dir"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "up"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 2065
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v0

    .line 2066
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/threed/jpct/Object3D;->setScale(F)V

    .line 2067
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, p1, p2}, Lcom/threed/jpct/Matrix;->setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    .line 2068
    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->setScale(F)V

    .line 2069
    return-void
.end method

.method public setOrigin(Lcom/threed/jpct/SimpleVector;)V
    .locals 4
    .param p1, "origin"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 3238
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    .line 3239
    return-void
.end method

.method public setRenderHook(Lcom/threed/jpct/IRenderHook;)V
    .locals 0
    .param p1, "hook"    # Lcom/threed/jpct/IRenderHook;

    .prologue
    .line 2818
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    .line 2819
    return-void
.end method

.method public setRotationMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 0
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 2371
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 2372
    return-void
.end method

.method public setRotationPivot(Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "pivot"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 3142
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    .line 3143
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    .line 3144
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    .line 3145
    return-void
.end method

.method public setScale(F)V
    .locals 3
    .param p1, "absScale"    # F

    .prologue
    const/4 v2, 0x0

    .line 2152
    iget v1, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    .line 2153
    iget v1, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float v0, p1, v1

    .line 2154
    .local v0, "scale":F
    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 2155
    const v0, 0x38d1b717    # 1.0E-4f

    .line 2157
    :cond_0
    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->scale(F)V

    .line 2161
    .end local v0    # "scale":F
    :goto_0
    return-void

    .line 2159
    :cond_1
    const-string v1, "Invalid scale!"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 0
    .param p1, "shader"    # Lcom/threed/jpct/GLSLShader;

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    .line 1666
    return-void
.end method

.method public setShadingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 1547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    .line 1548
    if-ne p1, v1, :cond_0

    .line 1549
    iput-boolean v1, p0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    .line 1551
    :cond_0
    return-void
.end method

.method public setSortOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 466
    iput p1, p0, Lcom/threed/jpct/Object3D;->sortOffset:F

    .line 467
    return-void
.end method

.method public setSpecularLighting(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 1621
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->doSpecularLighting:Z

    .line 1622
    return-void
.end method

.method public setTexture(Lcom/threed/jpct/TextureInfo;)V
    .locals 16
    .param p1, "tInf"    # Lcom/threed/jpct/TextureInfo;

    .prologue
    .line 3535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->texture:[I

    if-eqz v14, :cond_1

    .line 3536
    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 3537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-nez v14, :cond_0

    .line 3538
    sget v14, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v1, v14, -0x1

    .line 3539
    .local v1, "end":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v14, v14

    filled-new-array {v1, v14}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 3540
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v14, v14

    filled-new-array {v1, v14}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 3541
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v11, v14

    .line 3542
    .local v11, "tl":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v11, :cond_2

    .line 3548
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v11    # "tl":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v14}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    .line 3549
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 3554
    :goto_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/threed/jpct/TextureInfo;->textures:[I

    const/4 v15, 0x0

    aget v6, v14, v15

    .line 3555
    .local v6, "number":I
    const/4 v14, -0x1

    if-eq v6, v14, :cond_6

    .line 3556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v11, v14

    .line 3557
    .restart local v11    # "tl":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-lt v2, v11, :cond_5

    .line 3564
    .end local v2    # "i":I
    .end local v11    # "tl":I
    :goto_3
    const/4 v9, 0x1

    .local v9, "t":I
    :goto_4
    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    if-lt v9, v14, :cond_7

    .line 3595
    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 3597
    .end local v6    # "number":I
    .end local v9    # "t":I
    :cond_1
    return-void

    .line 3543
    .restart local v1    # "end":I
    .restart local v2    # "i":I
    .restart local v11    # "tl":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_5
    if-lt v3, v1, :cond_3

    .line 3542
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3544
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v14, v14, v3

    const/4 v15, -0x1

    aput v15, v14, v2

    .line 3543
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3551
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "ii":I
    .end local v11    # "tl":I
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    goto :goto_1

    .line 3558
    .restart local v2    # "i":I
    .restart local v6    # "number":I
    .restart local v11    # "tl":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->texture:[I

    aput v6, v14, v2

    .line 3557
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3561
    .end local v2    # "i":I
    .end local v11    # "tl":I
    :cond_6
    const-string v14, "Tried to set an undefined texture!"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 3565
    .restart local v9    # "t":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/threed/jpct/TextureInfo;->textures:[I

    aget v10, v14, v9

    .line 3566
    .local v10, "tid":I
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/threed/jpct/TextureInfo;->mode:[I

    aget v12, v14, v9

    .line 3567
    .local v12, "tm":I
    add-int/lit8 v13, v9, -0x1

    .line 3569
    .local v13, "toff":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v4, v14, v13

    .line 3570
    .local v4, "multiModeToff":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v5, v14, v13

    .line 3572
    .local v5, "multiTexToff":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    array-length v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v15, v15

    if-eq v14, v15, :cond_b

    .line 3573
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v11, v14

    .line 3574
    .restart local v11    # "tl":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v14, v14, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt v2, v14, :cond_9

    .line 3577
    const/4 v2, 0x0

    :goto_7
    if-lt v2, v11, :cond_a

    .line 3587
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v14, v14, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v7, v14, v13

    .line 3588
    .local v7, "objVectorsuMultoff":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v14, v14, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v8, v14, v13

    .line 3590
    .local v8, "objVectorsvMultoff":[F
    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v14, v14, Lcom/threed/jpct/Vectors;->nuOrg:[F

    array-length v14, v14

    if-lt v2, v14, :cond_c

    .line 3564
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 3575
    .end local v7    # "objVectorsuMultoff":[F
    .end local v8    # "objVectorsvMultoff":[F
    :cond_9
    aput v12, v4, v2

    .line 3574
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3578
    :cond_a
    aput v10, v5, v2

    .line 3577
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3581
    .end local v2    # "i":I
    .end local v11    # "tl":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v11, v14, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 3582
    .restart local v11    # "tl":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    if-ge v2, v11, :cond_8

    .line 3583
    aput v12, v4, v2

    .line 3584
    aput v10, v5, v2

    .line 3582
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3591
    .restart local v7    # "objVectorsuMultoff":[F
    .restart local v8    # "objVectorsvMultoff":[F
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v14, v14, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v14, v14, v2

    aput v14, v7, v2

    .line 3592
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v14, v14, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v14, v14, v2

    aput v14, v8, v2

    .line 3590
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public setTexture(Ljava/lang/String;)V
    .locals 6
    .param p1, "texname"    # Ljava/lang/String;

    .prologue
    .line 3510
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v3

    .line 3512
    .local v3, "texMan":Lcom/threed/jpct/TextureManager;
    invoke-virtual {v3, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v2

    .line 3513
    .local v2, "number":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 3514
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v0, v4

    .line 3515
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 3521
    .end local v0    # "end":I
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 3516
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aput v2, v4, v1

    .line 3515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3519
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_1
    const-string v4, "Tried to set an undefined texture!"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setTextureMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 0
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 2401
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    .line 2402
    return-void
.end method

.method public setTranslationMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 0
    .param p1, "mat"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 2441
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    .line 2442
    return-void
.end method

.method public setTransparency(I)V
    .locals 1
    .param p1, "trans"    # I

    .prologue
    .line 1649
    iput p1, p0, Lcom/threed/jpct/Object3D;->transValue:I

    .line 1650
    if-ltz p1, :cond_0

    .line 1651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    .line 1655
    :goto_0
    return-void

    .line 1653
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    goto :goto_0
.end method

.method public setTransparencyMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1735
    iput p1, p0, Lcom/threed/jpct/Object3D;->transMode:I

    .line 1736
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    .line 446
    return-void
.end method

.method public setVirtualizer(Lcom/threed/jpct/Virtualizer;)V
    .locals 0
    .param p1, "virtualizer"    # Lcom/threed/jpct/Virtualizer;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    .line 425
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 1173
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->isVisible:Z

    .line 1174
    return-void
.end method

.method public shareCompiledData(Lcom/threed/jpct/Object3D;)V
    .locals 3
    .param p1, "withObj"    # Lcom/threed/jpct/Object3D;

    .prologue
    const/4 v2, 0x0

    .line 950
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v0, :cond_0

    .line 951
    const-string v0, "Can\'t enable share data with an object that shares data itself! Use the source object instead!"

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 972
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->sharing:Z

    if-eqz v0, :cond_1

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This object already shares data with \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 963
    :cond_1
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-eqz v0, :cond_3

    .line 964
    :cond_2
    const-string v0, "No data sharing with octrees supported!"

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 967
    :cond_3
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    if-eq v0, v1, :cond_4

    .line 968
    const-string v0, "Can\'t share data from different meshes!"

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 971
    :cond_4
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    goto :goto_0
.end method

.method public shareTextureData(Lcom/threed/jpct/Object3D;)V
    .locals 1
    .param p1, "source"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 3611
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->texture:[I

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->texture:[I

    .line 3612
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 3613
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 3614
    return-void
.end method

.method public sphereIntersectsAABB(Lcom/threed/jpct/SimpleVector;F)Z
    .locals 1
    .param p1, "org"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "radius"    # F

    .prologue
    .line 3941
    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/threed/jpct/Object3D;->sphereIntersectsAABB([FF)Z

    move-result v0

    return v0
.end method

.method final sphereIntersectsAABB([FF)Z
    .locals 32
    .param p1, "org"    # [F
    .param p2, "radius"    # F

    .prologue
    .line 3946
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 3947
    const/4 v9, 0x0

    .line 4013
    :cond_0
    :goto_0
    return v9

    .line 3950
    :cond_1
    const/4 v9, 0x1

    .line 3954
    .local v9, "intersects":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v10

    .line 3956
    .local v10, "invTrans":Lcom/threed/jpct/Matrix;
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    aget v17, v30, v31

    .line 3957
    .local v17, "s00Ws":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget-object v30, v30, v31

    const/16 v31, 0x0

    aget v20, v30, v31

    .line 3958
    .local v20, "s10Ws":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget-object v30, v30, v31

    const/16 v31, 0x1

    aget v21, v30, v31

    .line 3959
    .local v21, "s11Ws":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x2

    aget-object v30, v30, v31

    const/16 v31, 0x1

    aget v24, v30, v31

    .line 3960
    .local v24, "s21Ws":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x2

    aget-object v30, v30, v31

    const/16 v31, 0x0

    aget v23, v30, v31

    .line 3961
    .local v23, "s20Ws":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v30, v30, v31

    const/16 v31, 0x1

    aget v18, v30, v31

    .line 3962
    .local v18, "s01Ws":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x2

    aget-object v30, v30, v31

    const/16 v31, 0x2

    aget v25, v30, v31

    .line 3963
    .local v25, "s22Ws":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget-object v30, v30, v31

    const/16 v31, 0x2

    aget v22, v30, v31

    .line 3964
    .local v22, "s12Ws":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v30, v30, v31

    const/16 v31, 0x2

    aget v19, v30, v31

    .line 3965
    .local v19, "s02Ws":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x3

    aget-object v30, v30, v31

    const/16 v31, 0x0

    aget v3, v30, v31

    .line 3966
    .local v3, "bxWs":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x3

    aget-object v30, v30, v31

    const/16 v31, 0x1

    aget v5, v30, v31

    .line 3967
    .local v5, "byWs":F
    iget-object v0, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v30, v0

    const/16 v31, 0x3

    aget-object v30, v30, v31

    const/16 v31, 0x2

    aget v7, v30, v31

    .line 3969
    .local v7, "bzWs":F
    const/16 v30, 0x0

    aget v30, p1, v30

    mul-float v30, v30, v17

    const/16 v31, 0x1

    aget v31, p1, v31

    mul-float v31, v31, v20

    add-float v30, v30, v31

    const/16 v31, 0x2

    aget v31, p1, v31

    mul-float v31, v31, v23

    add-float v30, v30, v31

    add-float v2, v30, v3

    .line 3970
    .local v2, "bx":F
    const/16 v30, 0x0

    aget v30, p1, v30

    mul-float v30, v30, v18

    const/16 v31, 0x1

    aget v31, p1, v31

    mul-float v31, v31, v21

    add-float v30, v30, v31

    const/16 v31, 0x2

    aget v31, p1, v31

    mul-float v31, v31, v24

    add-float v30, v30, v31

    add-float v4, v30, v5

    .line 3971
    .local v4, "by":F
    const/16 v30, 0x0

    aget v30, p1, v30

    mul-float v30, v30, v19

    const/16 v31, 0x1

    aget v31, p1, v31

    mul-float v31, v31, v22

    add-float v30, v30, v31

    const/16 v31, 0x2

    aget v31, p1, v31

    mul-float v31, v31, v25

    add-float v30, v30, v31

    add-float v6, v30, v7

    .line 3973
    .local v6, "bz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    move/from16 v26, v0

    .line 3975
    .local v26, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v30, v0

    aget v14, v30, v26

    .line 3976
    .local v14, "minX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v30, v0

    aget v15, v30, v26

    .line 3977
    .local v15, "minY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v30, v0

    aget v16, v30, v26

    .line 3978
    .local v16, "minZ":F
    move v11, v14

    .line 3979
    .local v11, "maxX":F
    move v12, v15

    .line 3980
    .local v12, "maxY":F
    move/from16 v13, v16

    .line 3982
    .local v13, "maxZ":F
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    const/16 v30, 0x8

    move/from16 v0, v30

    if-lt v8, v0, :cond_3

    .line 4009
    add-float v30, v2, p2

    cmpg-float v30, v30, v14

    if-ltz v30, :cond_2

    sub-float v30, v2, p2

    cmpl-float v30, v30, v11

    if-gtz v30, :cond_2

    add-float v30, v4, p2

    cmpg-float v30, v30, v15

    if-ltz v30, :cond_2

    sub-float v30, v4, p2

    cmpl-float v30, v30, v12

    if-gtz v30, :cond_2

    add-float v30, v6, p2

    cmpg-float v30, v30, v16

    if-ltz v30, :cond_2

    sub-float v30, v6, p2

    cmpl-float v30, v30, v13

    if-lez v30, :cond_0

    .line 4010
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3983
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v30, v0

    add-int v31, v8, v26

    aget v27, v30, v31

    .line 3984
    .local v27, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v30, v0

    add-int v31, v8, v26

    aget v29, v30, v31

    .line 3985
    .local v29, "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v30, v0

    add-int v31, v8, v26

    aget v28, v30, v31

    .line 3986
    .local v28, "y":F
    cmpg-float v30, v27, v14

    if-gez v30, :cond_7

    .line 3987
    move/from16 v14, v27

    .line 3993
    :cond_4
    :goto_2
    cmpg-float v30, v28, v15

    if-gez v30, :cond_8

    .line 3994
    move/from16 v15, v28

    .line 4000
    :cond_5
    :goto_3
    cmpg-float v30, v29, v16

    if-gez v30, :cond_9

    .line 4001
    move/from16 v16, v29

    .line 3982
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3989
    :cond_7
    cmpl-float v30, v27, v11

    if-lez v30, :cond_4

    .line 3990
    move/from16 v11, v27

    goto :goto_2

    .line 3996
    :cond_8
    cmpl-float v30, v28, v12

    if-lez v30, :cond_5

    .line 3997
    move/from16 v12, v28

    goto :goto_3

    .line 4003
    :cond_9
    cmpl-float v30, v29, v13

    if-lez v30, :cond_6

    .line 4004
    move/from16 v13, v29

    goto :goto_4
.end method

.method public strip()V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->reallyStrip()V

    .line 1000
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    .line 1001
    return-void
.end method

.method public touch()V
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-eqz v0, :cond_0

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->modified:Z

    .line 985
    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v0, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->enableLazyTransformations()V

    .line 988
    :cond_1
    return-void
.end method

.method final transformVertices(Lcom/threed/jpct/FrameBuffer;)Z
    .locals 59
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 5858
    const/16 v51, 0x0

    .line 5859
    .local v51, "x1":F
    const/16 v54, 0x0

    .line 5860
    .local v54, "z1":F
    const/16 v52, 0x0

    .line 5878
    .local v52, "y1":F
    const/16 v21, 0x0

    .line 5879
    .local v21, "obbXpClipped":I
    const/16 v20, 0x0

    .line 5880
    .local v20, "obbXnClipped":I
    const/16 v22, 0x0

    .line 5881
    .local v22, "obbYnClipped":I
    const/16 v23, 0x0

    .line 5882
    .local v23, "obbYpClipped":I
    const/16 v24, 0x0

    .line 5883
    .local v24, "obbZClipped":I
    const/16 v25, 0x0

    .line 5885
    .local v25, "obbZFarClipped":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v10, v0, Lcom/threed/jpct/Camera;->divx:F

    .line 5886
    .local v10, "divx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v11, v0, Lcom/threed/jpct/Camera;->divy:F

    .line 5887
    .local v11, "divy":F
    sget v49, Lcom/threed/jpct/Config;->nearPlane:F

    .line 5888
    .local v49, "viewplane":F
    const/16 v34, 0x0

    .line 5890
    .local v34, "p1zh":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    .line 5891
    .local v15, "mat5":Lcom/threed/jpct/Matrix;
    iget-object v0, v15, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v16, v0

    .line 5893
    .local v16, "mat5mat":[[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    .line 5895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v28, v0

    .line 5896
    .local v28, "objMeshzOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v26, v0

    .line 5897
    .local v26, "objMeshxOrg":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v27, v0

    .line 5899
    .local v27, "objMeshyOrg":[F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    move/from16 v55, v0

    if-eqz v55, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    move/from16 v55, v0

    if-nez v55, :cond_2

    .line 5900
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    .line 5940
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v0, v15}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 5941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/threed/jpct/Camera;->backBx:F

    move/from16 v55, v0

    move/from16 v0, v55

    neg-float v0, v0

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Lcom/threed/jpct/Camera;->backBy:F

    move/from16 v56, v0

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Lcom/threed/jpct/Camera;->backBz:F

    move/from16 v57, v0

    move/from16 v0, v57

    neg-float v0, v0

    move/from16 v57, v0

    move/from16 v0, v55

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v15, v0, v1, v2}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    .line 5942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v15, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 5944
    const/16 v55, 0x0

    aget-object v55, v16, v55

    const/16 v56, 0x0

    aget v37, v55, v56

    .line 5945
    .local v37, "s00":F
    const/16 v55, 0x0

    aget-object v55, v16, v55

    const/16 v56, 0x1

    aget v38, v55, v56

    .line 5946
    .local v38, "s01":F
    const/16 v55, 0x0

    aget-object v55, v16, v55

    const/16 v56, 0x2

    aget v39, v55, v56

    .line 5947
    .local v39, "s02":F
    const/16 v55, 0x1

    aget-object v55, v16, v55

    const/16 v56, 0x0

    aget v40, v55, v56

    .line 5948
    .local v40, "s10":F
    const/16 v55, 0x1

    aget-object v55, v16, v55

    const/16 v56, 0x1

    aget v41, v55, v56

    .line 5949
    .local v41, "s11":F
    const/16 v55, 0x1

    aget-object v55, v16, v55

    const/16 v56, 0x2

    aget v42, v55, v56

    .line 5950
    .local v42, "s12":F
    const/16 v55, 0x2

    aget-object v55, v16, v55

    const/16 v56, 0x1

    aget v44, v55, v56

    .line 5951
    .local v44, "s21":F
    const/16 v55, 0x2

    aget-object v55, v16, v55

    const/16 v56, 0x2

    aget v45, v55, v56

    .line 5952
    .local v45, "s22":F
    const/16 v55, 0x2

    aget-object v55, v16, v55

    const/16 v56, 0x0

    aget v43, v55, v56

    .line 5954
    .local v43, "s20":F
    const/16 v55, 0x3

    aget-object v55, v16, v55

    const/16 v56, 0x0

    aget v4, v55, v56

    .line 5955
    .local v4, "bx":F
    const/16 v55, 0x3

    aget-object v55, v16, v55

    const/16 v56, 0x1

    aget v5, v55, v56

    .line 5956
    .local v5, "by":F
    const/16 v55, 0x3

    aget-object v55, v16, v55

    const/16 v56, 0x2

    aget v6, v55, v56

    .line 5958
    .local v6, "bz":F
    const/16 v50, 0x0

    .line 5960
    .local v50, "visibleLeafs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v55, v0

    if-eqz v55, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/threed/jpct/OcTree;->getRenderingUse()Z

    move-result v55

    if-eqz v55, :cond_6

    const/16 v48, 0x1

    .line 5962
    .local v48, "useOctree":Z
    :goto_1
    if-eqz v48, :cond_7

    .line 5963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v10, v11}, Lcom/threed/jpct/OcTree;->getVisibleLeafs(Lcom/threed/jpct/Matrix;FF)I

    move-result v50

    .line 5965
    if-nez v50, :cond_7

    .line 5966
    const/4 v8, 0x1

    .line 6089
    :cond_1
    :goto_2
    return v8

    .line 5903
    .end local v4    # "bx":F
    .end local v5    # "by":F
    .end local v6    # "bz":F
    .end local v37    # "s00":F
    .end local v38    # "s01":F
    .end local v39    # "s02":F
    .end local v40    # "s10":F
    .end local v41    # "s11":F
    .end local v42    # "s12":F
    .end local v43    # "s20":F
    .end local v44    # "s21":F
    .end local v45    # "s22":F
    .end local v48    # "useOctree":Z
    .end local v50    # "visibleLeafs":I
    :cond_2
    sget-object v18, Lcom/threed/jpct/Object3D;->matBill:Lcom/threed/jpct/Matrix;

    .line 5905
    .local v18, "matBill":Lcom/threed/jpct/Matrix;
    invoke-virtual {v15}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 5907
    const/16 v55, 0x3

    aget-object v17, v16, v55

    .line 5908
    .local v17, "mat5mat3":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v55, v0

    const/16 v56, 0x3

    aget-object v47, v55, v56

    .line 5909
    .local v47, "translationMatrixmat":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v55, v0

    const/16 v56, 0x3

    aget-object v29, v55, v56

    .line 5911
    .local v29, "originMatrixmat":[F
    const/16 v55, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    move/from16 v56, v0

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    aput v56, v17, v55

    .line 5912
    const/16 v55, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    move/from16 v56, v0

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    aput v56, v17, v55

    .line 5913
    const/16 v55, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    move/from16 v56, v0

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    aput v56, v17, v55

    .line 5915
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    move/from16 v55, v0

    if-nez v55, :cond_3

    .line 5916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v15, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 5928
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    move/from16 v55, v0

    const/16 v56, 0x0

    aget v56, v47, v56

    add-float v55, v55, v56

    const/16 v56, 0x0

    aget v56, v29, v56

    add-float v55, v55, v56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    move/from16 v56, v0

    const/16 v57, 0x1

    aget v57, v47, v57

    add-float v56, v56, v57

    const/16 v57, 0x1

    aget v57, v29, v57

    add-float v56, v56, v57

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    move/from16 v57, v0

    .line 5929
    const/16 v58, 0x2

    aget v58, v47, v58

    add-float v57, v57, v58

    const/16 v58, 0x2

    aget v58, v29, v58

    add-float v57, v57, v58

    .line 5928
    move/from16 v0, v55

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v15, v0, v1, v2}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    .line 5931
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->parentCnt:I

    move/from16 v55, v0

    if-eqz v55, :cond_0

    .line 5932
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    move/from16 v55, v0

    if-eqz v55, :cond_5

    .line 5933
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/threed/jpct/Object3D;->recurseObjectsBillboarded(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v15

    goto/16 :goto_0

    .line 5918
    :cond_3
    if-nez v18, :cond_4

    .line 5920
    new-instance v18, Lcom/threed/jpct/Matrix;

    .end local v18    # "matBill":Lcom/threed/jpct/Matrix;
    invoke-direct/range {v18 .. v18}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 5921
    .restart local v18    # "matBill":Lcom/threed/jpct/Matrix;
    sput-object v18, Lcom/threed/jpct/Object3D;->matBill:Lcom/threed/jpct/Matrix;

    .line 5923
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    .line 5924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    move/from16 v55, v0

    move-object/from16 v0, v18

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    .line 5925
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    goto :goto_3

    .line 5935
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v15

    goto/16 :goto_0

    .line 5960
    .end local v17    # "mat5mat3":[F
    .end local v18    # "matBill":Lcom/threed/jpct/Matrix;
    .end local v29    # "originMatrixmat":[F
    .end local v47    # "translationMatrixmat":[F
    .restart local v4    # "bx":F
    .restart local v5    # "by":F
    .restart local v6    # "bz":F
    .restart local v37    # "s00":F
    .restart local v38    # "s01":F
    .restart local v39    # "s02":F
    .restart local v40    # "s10":F
    .restart local v41    # "s11":F
    .restart local v42    # "s12":F
    .restart local v43    # "s20":F
    .restart local v44    # "s21":F
    .restart local v45    # "s22":F
    .restart local v50    # "visibleLeafs":I
    :cond_6
    const/16 v48, 0x0

    goto/16 :goto_1

    .line 5970
    .restart local v48    # "useOctree":Z
    :cond_7
    const/4 v8, 0x0

    .line 5972
    .local v8, "clipped":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    move/from16 v55, v0

    if-eqz v55, :cond_b

    .line 5973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    move/from16 v36, v0

    .line 5974
    .local v36, "pstart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/threed/jpct/Mesh;->obbEnd:I

    move/from16 v35, v0

    .line 5977
    .local v35, "pend":I
    add-int/lit8 v55, v35, 0x1

    sub-int v55, v55, v36

    move/from16 v0, v36

    move/from16 v1, v55

    if-gt v0, v1, :cond_8

    .line 5978
    add-int/lit8 v35, v36, -0x1

    .line 5979
    const/16 v36, 0x0

    .line 5982
    :cond_8
    move/from16 v30, v36

    .local v30, "p":I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v35

    if-le v0, v1, :cond_e

    .line 6031
    :cond_9
    add-int/lit8 v55, v35, 0x1

    sub-int v19, v55, v36

    .line 6033
    .local v19, "obbDif":I
    move/from16 v0, v23

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move/from16 v0, v22

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move/from16 v0, v24

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move/from16 v0, v25

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 6034
    :cond_a
    const/4 v8, 0x1

    .line 6038
    .end local v19    # "obbDif":I
    .end local v30    # "p":I
    .end local v35    # "pend":I
    .end local v36    # "pstart":I
    :cond_b
    if-nez v8, :cond_1

    .line 6040
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    .line 6042
    const/4 v14, 0x0

    check-cast v14, [Lcom/threed/jpct/OcTreeNode;

    .line 6043
    .local v14, "leaflist":[Lcom/threed/jpct/OcTreeNode;
    if-eqz v48, :cond_d

    .line 6044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    move-object/from16 v55, v0

    if-nez v55, :cond_c

    .line 6045
    new-instance v55, Ljava/util/HashSet;

    const/16 v56, 0x1

    invoke-direct/range {v55 .. v56}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    .line 6047
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/HashSet;->clear()V

    .line 6048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/threed/jpct/OcTree;->getLeafList()[Lcom/threed/jpct/OcTreeNode;

    move-result-object v14

    .line 6049
    const/16 v30, 0x0

    .restart local v30    # "p":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v50

    if-lt v0, v1, :cond_15

    .line 6054
    .end local v30    # "p":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 6056
    .local v12, "endy":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    if-lt v13, v12, :cond_16

    .line 6087
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 5984
    .end local v12    # "endy":I
    .end local v13    # "i":I
    .end local v14    # "leaflist":[Lcom/threed/jpct/OcTreeNode;
    .restart local v30    # "p":I
    .restart local v35    # "pend":I
    .restart local v36    # "pstart":I
    :cond_e
    aget v54, v28, v30

    .line 5985
    aget v51, v26, v30

    .line 5986
    aget v52, v27, v30

    .line 5988
    mul-float v55, v51, v37

    mul-float v56, v52, v40

    add-float v55, v55, v56

    mul-float v56, v54, v43

    add-float v55, v55, v56

    add-float v31, v55, v4

    .line 5989
    .local v31, "p1x":F
    mul-float v55, v51, v38

    mul-float v56, v52, v41

    add-float v55, v55, v56

    mul-float v56, v54, v44

    add-float v55, v55, v56

    add-float v32, v55, v5

    .line 5990
    .local v32, "p1y":F
    mul-float v55, v51, v39

    mul-float v56, v52, v42

    add-float v55, v55, v56

    mul-float v56, v54, v45

    add-float v55, v55, v56

    add-float v33, v55, v6

    .line 5992
    .local v33, "p1z":F
    const/4 v9, 0x0

    .line 5994
    .local v9, "culled":Z
    cmpg-float v55, v33, v49

    if-gez v55, :cond_12

    .line 5995
    add-int/lit8 v24, v24, 0x1

    .line 5996
    const/4 v9, 0x1

    .line 6004
    :cond_f
    :goto_7
    mul-float v34, v33, v10

    .line 6005
    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v55, v0

    cmpg-float v55, v31, v55

    if-gez v55, :cond_13

    .line 6006
    add-int/lit8 v20, v20, 0x1

    .line 6007
    const/4 v9, 0x1

    .line 6015
    :cond_10
    :goto_8
    mul-float v34, v33, v11

    .line 6016
    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v55, v0

    cmpg-float v55, v32, v55

    if-gez v55, :cond_14

    .line 6017
    add-int/lit8 v22, v22, 0x1

    .line 6018
    const/4 v9, 0x1

    .line 6026
    :cond_11
    :goto_9
    if-eqz v9, :cond_9

    .line 5982
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_4

    .line 5998
    :cond_12
    sget v55, Lcom/threed/jpct/Config;->farPlane:F

    cmpl-float v55, v33, v55

    if-lez v55, :cond_f

    .line 5999
    add-int/lit8 v25, v25, 0x1

    .line 6000
    const/4 v9, 0x1

    goto :goto_7

    .line 6009
    :cond_13
    cmpl-float v55, v31, v34

    if-lez v55, :cond_10

    .line 6010
    add-int/lit8 v21, v21, 0x1

    .line 6011
    const/4 v9, 0x1

    goto :goto_8

    .line 6020
    :cond_14
    cmpl-float v55, v32, v34

    if-lez v55, :cond_11

    .line 6021
    add-int/lit8 v23, v23, 0x1

    .line 6022
    const/4 v9, 0x1

    goto :goto_9

    .line 6050
    .end local v9    # "culled":Z
    .end local v31    # "p1x":F
    .end local v32    # "p1y":F
    .end local v33    # "p1z":F
    .end local v35    # "pend":I
    .end local v36    # "pstart":I
    .restart local v14    # "leaflist":[Lcom/threed/jpct/OcTreeNode;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    move-object/from16 v55, v0

    aget-object v56, v14, v30

    invoke-virtual/range {v56 .. v56}, Lcom/threed/jpct/OcTreeNode;->getID()I

    move-result v56

    invoke-static/range {v56 .. v56}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6049
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    .line 6058
    .end local v30    # "p":I
    .restart local v12    # "endy":I
    .restart local v13    # "i":I
    :cond_16
    const/4 v7, 0x0

    .line 6059
    .local v7, "ci":Lcom/threed/jpct/CompiledInstance;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1a

    .line 6060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ci":Lcom/threed/jpct/CompiledInstance;
    check-cast v7, Lcom/threed/jpct/CompiledInstance;

    .line 6064
    .restart local v7    # "ci":Lcom/threed/jpct/CompiledInstance;
    :goto_a
    const/4 v3, 0x1

    .line 6065
    .local v3, "add":Z
    if-eqz v48, :cond_17

    invoke-virtual {v7}, Lcom/threed/jpct/CompiledInstance;->getTreeID()I

    move-result v55

    const/16 v56, -0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_17

    .line 6066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    move-object/from16 v55, v0

    invoke-virtual {v7}, Lcom/threed/jpct/CompiledInstance;->getTreeID()I

    move-result v56

    invoke-static/range {v56 .. v56}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 6068
    :cond_17
    if-eqz v3, :cond_19

    .line 6069
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isTrans:Z

    move/from16 v55, v0

    if-nez v55, :cond_18

    sget-boolean v55, Lcom/threed/jpct/Config;->stateOrientedSorting:Z

    if-nez v55, :cond_1b

    .line 6071
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->centerX:F

    move/from16 v55, v0

    mul-float v55, v55, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->centerY:F

    move/from16 v56, v0

    mul-float v56, v56, v42

    add-float v55, v55, v56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Object3D;->centerZ:F

    move/from16 v56, v0

    mul-float v56, v56, v45

    add-float v55, v55, v56

    add-float v53, v55, v6

    .line 6072
    .local v53, "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2, v13, v7}, Lcom/threed/jpct/VisList;->addToList(Lcom/threed/jpct/Object3D;FILcom/threed/jpct/CompiledInstance;)V

    .line 6056
    .end local v53    # "z":F
    :cond_19
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 6062
    .end local v3    # "add":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ci":Lcom/threed/jpct/CompiledInstance;
    check-cast v7, Lcom/threed/jpct/CompiledInstance;

    .restart local v7    # "ci":Lcom/threed/jpct/CompiledInstance;
    goto :goto_a

    .line 6076
    .restart local v3    # "add":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v55, v0

    iget v0, v7, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v56, v0

    aget v55, v55, v56

    :goto_c
    move/from16 v0, v55

    add-int/lit16 v0, v0, 0x2710

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v46, v0

    .line 6077
    .local v46, "sorty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1c

    .line 6078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->id:I

    move/from16 v55, v0

    move/from16 v0, v55

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    add-float v46, v46, v55

    .line 6080
    :cond_1c
    const v55, 0x4971b300    # 990000.0f

    cmpl-float v55, v46, v55

    if-lez v55, :cond_1d

    .line 6081
    const v55, 0x49742400    # 1000000.0f

    sub-float v46, v46, v55

    .line 6083
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2, v13, v7}, Lcom/threed/jpct/VisList;->addToList(Lcom/threed/jpct/Object3D;FILcom/threed/jpct/CompiledInstance;)V

    goto :goto_b

    .line 6076
    .end local v46    # "sorty":F
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aget v55, v55, v56

    goto :goto_c
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    .line 2015
    return-void
.end method

.method public translate(Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "trans"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->translate(Lcom/threed/jpct/SimpleVector;)V

    .line 1995
    return-void
.end method

.method public translateMesh()V
    .locals 3

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/Mesh;->translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V

    .line 1977
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/Animation;->translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V

    .line 1980
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 1981
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    .line 1982
    return-void
.end method

.method public wasTargetOfLastCollision()Z
    .locals 1

    .prologue
    .line 2956
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    return v0
.end method

.method public wasVisible()Z
    .locals 1

    .prologue
    .line 1503
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    return v0
.end method
