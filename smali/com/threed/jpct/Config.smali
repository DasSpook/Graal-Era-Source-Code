.class public final Lcom/threed/jpct/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field static final ADD_Z_SORT:F = 1000000.0f

.field static final BLACK_MASK:I = 0xf0f0f0

.field static final COLLIDE_CAMERA_RANGE:F = 3.0f

.field private static final INT_VERSION:Ljava/lang/String; = "1.27"

.field public static aaMode:I

.field public static aggressiveStripping:Z

.field public static autoMaintainAspectRatio:Z

.field public static byteBufferLimit:I

.field public static cacheCompressedTextures:Z

.field public static collideEdgeMul:F

.field public static collideEllipsoidThreshold:F

.field public static collideOffset:F

.field public static collideSectorOffset:F

.field public static defaultCameraFOV:F

.field public static disableNativeBufferCopies:Z

.field static fadeoutLight:Z

.field public static farPlane:F

.field public static fixCollapsingVertices:Z

.field public static flashSortThreshold:I

.field public static glBatchSize:I

.field public static glDebugLevel:I

.field public static glDither:Z

.field public static glForceEnvMapToSecondStage:Z

.field public static glForceHighPrecision:Z

.field static glIgnoreAlphaBlendingFBO:Z

.field public static glIgnoreNearPlane:Z

.field public static glRevertADDtoMODULATE:Z

.field static glStageCount:I

.field public static glTransparencyMul:F

.field public static glTransparencyOffset:F

.field public static glTriangleStrips:Z

.field public static glTrilinear:Z

.field public static glUseIgnorantBlits:Z

.field public static internalMipmapCreation:Z

.field static lightDiscardDistance:F

.field static linearDiv:F

.field static loadMaxTrianglesASC:I

.field static loadMaxVerticesASC:I

.field public static maxAnimationSubSequences:I

.field public static maxLights:I

.field public static maxParentObjects:I

.field public static maxPolysVisible:I

.field public static maxTextureLayers:I

.field public static maxTextures:I

.field public static nearPlane:F

.field public static oldStyle3DSLoader:Z

.field public static polygonIDLimit:I

.field public static renderTargetsAsSubImages:Z

.field public static skipDefaultShaders:Z

.field public static specPow:F

.field public static specTerm:F

.field public static stateOrientedSorting:Z

.field public static unloadImmediately:Z

.field static useFBO:Z

.field public static useNormalsFromOBJ:Z

.field public static useRotationPivotFrom3DS:Z

.field public static useVBO:Z

.field public static vertexBufferSize:I

.field public static viewportOffsetAffectsRenderTarget:Z

.field public static viewportOffsetX:F

.field public static viewportOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    const/high16 v0, 0x3fa00000    # 1.25f

    sput v0, Lcom/threed/jpct/Config;->defaultCameraFOV:F

    .line 114
    sput-boolean v2, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    .line 121
    const/16 v0, 0x40

    sput v0, Lcom/threed/jpct/Config;->maxTextures:I

    .line 130
    const/16 v0, 0x200

    sput v0, Lcom/threed/jpct/Config;->maxPolysVisible:I

    .line 137
    const/16 v0, 0x8

    sput v0, Lcom/threed/jpct/Config;->maxLights:I

    .line 143
    const/16 v0, 0x14

    sput v0, Lcom/threed/jpct/Config;->maxAnimationSubSequences:I

    .line 164
    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/threed/jpct/Config;->collideOffset:F

    .line 177
    sput v5, Lcom/threed/jpct/Config;->collideEdgeMul:F

    .line 189
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/threed/jpct/Config;->collideSectorOffset:F

    .line 199
    sput v4, Lcom/threed/jpct/Config;->collideEllipsoidThreshold:F

    .line 205
    const/16 v0, 0x96

    sput v0, Lcom/threed/jpct/Config;->flashSortThreshold:I

    .line 211
    sput-boolean v2, Lcom/threed/jpct/Config;->stateOrientedSorting:Z

    .line 216
    sput v5, Lcom/threed/jpct/Config;->nearPlane:F

    .line 221
    const/high16 v0, 0x447a0000    # 1000.0f

    sput v0, Lcom/threed/jpct/Config;->farPlane:F

    .line 232
    sput v3, Lcom/threed/jpct/Config;->viewportOffsetX:F

    .line 243
    sput v3, Lcom/threed/jpct/Config;->viewportOffsetY:F

    .line 249
    sput-boolean v1, Lcom/threed/jpct/Config;->viewportOffsetAffectsRenderTarget:Z

    .line 255
    sput v2, Lcom/threed/jpct/Config;->maxParentObjects:I

    .line 261
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/threed/jpct/Config;->specTerm:F

    .line 267
    const/high16 v0, 0x40c00000    # 6.0f

    sput v0, Lcom/threed/jpct/Config;->specPow:F

    .line 274
    const/4 v0, 0x2

    sput v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    .line 280
    sput v4, Lcom/threed/jpct/Config;->glTransparencyOffset:F

    .line 287
    const v0, 0x3d75c28f    # 0.06f

    sput v0, Lcom/threed/jpct/Config;->glTransparencyMul:F

    .line 294
    sput-boolean v1, Lcom/threed/jpct/Config;->internalMipmapCreation:Z

    .line 301
    sput-boolean v2, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    .line 307
    sput-boolean v1, Lcom/threed/jpct/Config;->glTriangleStrips:Z

    .line 313
    sput-boolean v2, Lcom/threed/jpct/Config;->glDither:Z

    .line 321
    sput v1, Lcom/threed/jpct/Config;->glDebugLevel:I

    .line 328
    sput-boolean v1, Lcom/threed/jpct/Config;->glTrilinear:Z

    .line 343
    sput-boolean v1, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    .line 354
    sput-boolean v1, Lcom/threed/jpct/Config;->glUseIgnorantBlits:Z

    .line 360
    sput-boolean v1, Lcom/threed/jpct/Config;->glRevertADDtoMODULATE:Z

    .line 367
    const/16 v0, 0x1f40

    sput v0, Lcom/threed/jpct/Config;->glBatchSize:I

    .line 374
    sput-boolean v1, Lcom/threed/jpct/Config;->glForceHighPrecision:Z

    .line 383
    sput-boolean v2, Lcom/threed/jpct/Config;->renderTargetsAsSubImages:Z

    .line 390
    sput-boolean v2, Lcom/threed/jpct/Config;->useVBO:Z

    .line 397
    const/16 v0, 0x32

    sput v0, Lcom/threed/jpct/Config;->polygonIDLimit:I

    .line 404
    const/16 v0, 0xf0

    sput v0, Lcom/threed/jpct/Config;->vertexBufferSize:I

    .line 413
    sput-boolean v2, Lcom/threed/jpct/Config;->aggressiveStripping:Z

    .line 419
    sput-boolean v1, Lcom/threed/jpct/Config;->disableNativeBufferCopies:Z

    .line 427
    sput-boolean v1, Lcom/threed/jpct/Config;->unloadImmediately:Z

    .line 435
    sput-boolean v1, Lcom/threed/jpct/Config;->useRotationPivotFrom3DS:Z

    .line 443
    sput-boolean v1, Lcom/threed/jpct/Config;->useNormalsFromOBJ:Z

    .line 451
    sput-boolean v1, Lcom/threed/jpct/Config;->oldStyle3DSLoader:Z

    .line 458
    sput-boolean v1, Lcom/threed/jpct/Config;->cacheCompressedTextures:Z

    .line 466
    sput-boolean v1, Lcom/threed/jpct/Config;->skipDefaultShaders:Z

    .line 474
    sput-boolean v1, Lcom/threed/jpct/Config;->fixCollapsingVertices:Z

    .line 482
    const/high16 v0, 0x10000

    sput v0, Lcom/threed/jpct/Config;->byteBufferLimit:I

    .line 487
    sput v1, Lcom/threed/jpct/Config;->aaMode:I

    .line 490
    const v0, 0x101d0

    sput v0, Lcom/threed/jpct/Config;->loadMaxVerticesASC:I

    .line 491
    const v0, 0x101d0

    sput v0, Lcom/threed/jpct/Config;->loadMaxTrianglesASC:I

    .line 493
    sput-boolean v2, Lcom/threed/jpct/Config;->useFBO:Z

    .line 495
    sput-boolean v1, Lcom/threed/jpct/Config;->glIgnoreAlphaBlendingFBO:Z

    .line 497
    sput v2, Lcom/threed/jpct/Config;->glStageCount:I

    .line 499
    sput-boolean v1, Lcom/threed/jpct/Config;->fadeoutLight:Z

    .line 500
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/threed/jpct/Config;->linearDiv:F

    .line 501
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/threed/jpct/Config;->lightDiscardDistance:F

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getParameterNames()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 87
    const-class v5, Lcom/threed/jpct/Config;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 88
    .local v1, "fields":[Ljava/lang/reflect/Field;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 90
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_0

    .line 97
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    .line 91
    :cond_0
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "n":Ljava/lang/String;
    const-string v5, "VERSION"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 93
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 90
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    const-class v2, Lcom/threed/jpct/Config;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v2, Lcom/threed/jpct/Config;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 76
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "1.27"

    return-object v0
.end method

.method public static setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Lcom/threed/jpct/Config;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 52
    const-class v3, Lcom/threed/jpct/Config;

    invoke-virtual {v1, v3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "ia":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrong parameter value type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expected!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 57
    .end local v2    # "ia":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown parameter: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method
