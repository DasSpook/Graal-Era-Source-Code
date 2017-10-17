.class final Lcom/threed/jpct/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final AGGREGATE_BLITS:Z = true

.field private static COLOR_INV:F = 0.0f

.field private static final VERTEX_ARRAY_SIZE:I = 0x258

.field private static modeMap:[I

.field private static rendererID:I

.field private static stageMap:[I


# instance fields
.field private ambient:[F

.field private blending:Z

.field private blitAdditive:Z

.field private blitBuffer:Lcom/threed/jpct/Texture;

.field private blitBufferHeight:I

.field private blitBufferWidth:I

.field private blitCoords1:Lcom/threed/jpct/SimpleVector;

.field private blitCoords2:Lcom/threed/jpct/SimpleVector;

.field private blitMode:Z

.field private blitScaling:I

.field private blitTrans:Z

.field private cameraMatrix:[F

.field private colPos:I

.field private colorArray:[I

.field private colors:Ljava/nio/IntBuffer;

.field private cols:[F

.field private curPos:I

.field private currentFogColor:I

.field private currentFogDistance:F

.field private currentFoggingState:Z

.field private currentRGBScaling:I

.field private depthBuffer:Z

.field disposed:Z

.field protected dumpy:[F

.field private enabledStages:[Z

.field private extensions:Ljava/lang/String;

.field private fogColors:Ljava/nio/FloatBuffer;

.field gl10:Ljavax/microedition/khronos/opengles/GL10;

.field gl11:Ljavax/microedition/khronos/opengles/GL11;

.field gl20:Z

.field private gl20Handler:Lcom/threed/jpct/GL20Handler;

.field private hasToReEnable:Z

.field private indexArray:[S

.field private indexPos:I

.field private indices:Ljava/nio/ShortBuffer;

.field private init:Z

.field private lastActivatedStage:I

.field private lastFOV:F

.field private lastFOVMode:Z

.field private lastFarPlane:F

.field private lastMode:[I

.field private lastMultiModes:[I

.field private lastMultiTextures:[I

.field private lastNearPlane:F

.field lastTextures:[I

.field private lastWorldHash:I

.field lineCol:[F

.field private lineColorShader:Lcom/threed/jpct/GLSLShader;

.field private lineMode:Z

.field private listener:Lcom/threed/jpct/IPaintListener;

.field private listenerActive:Z

.field protected matrixCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/threed/jpct/Object3D;",
            "[F>;"
        }
    .end annotation
.end field

.field private maxStages:I

.field private minDriverAndConfig:I

.field private mipmapsByGpu:Z

.field private moMat:Lcom/threed/jpct/Matrix;

.field myID:I

.field private myWorld:Lcom/threed/jpct/World;

.field private pixelBuffer:Ljava/nio/IntBuffer;

.field private pixelBufferSize:I

.field private renderTarget:Lcom/threed/jpct/Texture;

.field private scissorClearAll:Z

.field private scissorEnabled:Z

.field private singleTexturing:Z

.field private smallBuffer:[Ljava/nio/IntBuffer;

.field private stageInitialized:[Z

.field private stateChanges:I

.field private texMan:Lcom/threed/jpct/TextureManager;

.field private texPos:I

.field private textureArray:[I

.field private textureMatrixSet:Z

.field private textureScale:Lcom/threed/jpct/Matrix;

.field private textures:Ljava/nio/IntBuffer;

.field private tmpMat:Lcom/threed/jpct/Matrix;

.field private toUnload:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/threed/jpct/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private uploadedTextures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/threed/jpct/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private vbos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vertPos:I

.field private vertexArray:[I

.field private vertexArraysInitialized:Z

.field private vertices:Ljava/nio/IntBuffer;

.field private yTargetStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x3b808081

    sput v0, Lcom/threed/jpct/GLRenderer;->COLOR_INV:F

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/threed/jpct/GLRenderer;->stageMap:[I

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/GLRenderer;->rendererID:I

    .line 21
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x84c0
        0x84c1
        0x84c2
        0x84c3
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x2100
        0x2100
        0x104
        0x1e01
        0xbe2
    .end array-data
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const v5, -0x3b864000    # -999.0f

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    .line 25
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->disposed:Z

    .line 43
    sget-boolean v1, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->lastFOVMode:Z

    .line 45
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    .line 47
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->stateChanges:I

    .line 49
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    .line 53
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->pixelBufferSize:I

    .line 57
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->blitBufferWidth:I

    .line 59
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->blitBufferHeight:I

    .line 61
    iput v6, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    .line 63
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    .line 65
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->vertexArraysInitialized:Z

    .line 67
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    .line 69
    iput-boolean v6, p0, Lcom/threed/jpct/GLRenderer;->listenerActive:Z

    .line 71
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->stageInitialized:[Z

    .line 73
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    .line 75
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    .line 77
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastMultiTextures:[I

    .line 79
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastMultiModes:[I

    .line 81
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastMode:[I

    .line 83
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    .line 85
    iput v5, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    .line 87
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    .line 88
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->colorArray:[I

    .line 90
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    .line 91
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->vertexArray:[I

    .line 93
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    .line 94
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->textureArray:[I

    .line 96
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    .line 97
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->indexArray:[S

    .line 99
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    .line 101
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->yTargetStart:I

    .line 103
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->textureScale:Lcom/threed/jpct/Matrix;

    .line 105
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    .line 107
    iput-boolean v6, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Lcom/threed/jpct/GLRenderer;->currentFogColor:I

    .line 111
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    .line 113
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/threed/jpct/GLRenderer;->currentFogDistance:F

    .line 115
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->smallBuffer:[Ljava/nio/IntBuffer;

    .line 117
    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->blitCoords1:Lcom/threed/jpct/SimpleVector;

    .line 119
    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->blitCoords2:Lcom/threed/jpct/SimpleVector;

    .line 121
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    .line 123
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    .line 125
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    .line 127
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitAdditive:Z

    .line 129
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    .line 131
    iput-boolean v6, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    .line 133
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->blitScaling:I

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    .line 139
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->lineMode:Z

    .line 141
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    .line 142
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 143
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    .line 145
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blending:Z

    .line 159
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    .line 160
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->cols:[F

    .line 162
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->dumpy:[F

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    .line 166
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->textureMatrixSet:Z

    .line 168
    const/4 v1, -0x1

    iput v1, p0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    .line 170
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    .line 172
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->mipmapsByGpu:Z

    .line 174
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    .line 176
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    .line 178
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    .line 180
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->lastWorldHash:I

    .line 182
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->tmpMat:Lcom/threed/jpct/Matrix;

    .line 183
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    .line 184
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->cameraMatrix:[F

    .line 185
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    .line 187
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->extensions:Ljava/lang/String;

    .line 191
    const/16 v1, 0x10

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 193
    .local v0, "mf":[F
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->textureScale:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->setDump([F)V

    .line 195
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->resetStates()V

    .line 197
    sget v1, Lcom/threed/jpct/GLRenderer;->rendererID:I

    iput v1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    .line 198
    sget v1, Lcom/threed/jpct/GLRenderer;->rendererID:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/threed/jpct/GLRenderer;->rendererID:I

    .line 200
    iput v5, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    .line 201
    iput v5, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    .line 202
    iput v5, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    .line 203
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    .line 204
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->stateChanges:I

    .line 205
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->pixelBuffer:Ljava/nio/IntBuffer;

    .line 206
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->pixelBufferSize:I

    .line 207
    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    .line 208
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->blitBufferWidth:I

    .line 209
    iput v3, p0, Lcom/threed/jpct/GLRenderer;->blitBufferHeight:I

    .line 210
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    .line 211
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLRenderer created with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 214
    :cond_0
    return-void

    .line 191
    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private activateStage(I)V
    .locals 2
    .param p1, "stage"    # I

    .prologue
    .line 605
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    if-eq v0, p1, :cond_0

    .line 606
    iput p1, p0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    .line 607
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v1, Lcom/threed/jpct/GLRenderer;->stageMap:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 609
    :cond_0
    return-void
.end method

.method private bindAndProject(ILcom/threed/jpct/Texture;)V
    .locals 2
    .param p1, "stage"    # I
    .param p2, "texture"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 627
    iget v1, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p2, v1}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v0

    .line 629
    .local v0, "texID":I
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_1

    .line 630
    invoke-virtual {p0, p1, v0}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    if-eqz p1, :cond_0

    .line 633
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    goto :goto_0
.end method

.method private blit(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;FFIIIIZIIIIII)V
    .locals 40
    .param p1, "fb"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "t"    # Lcom/threed/jpct/Texture;
    .param p3, "spx"    # F
    .param p4, "spy"    # F
    .param p5, "sw"    # I
    .param p6, "sh"    # I
    .param p7, "posx"    # I
    .param p8, "posy"    # I
    .param p9, "addData"    # Z
    .param p10, "addX"    # I
    .param p11, "addY"    # I
    .param p12, "transValue"    # I
    .param p13, "red"    # I
    .param p14, "green"    # I
    .param p15, "blue"    # I

    .prologue
    .line 1337
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/threed/jpct/GLRenderer;->init:Z

    if-eqz v4, :cond_0

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-nez v4, :cond_1

    .line 1615
    :cond_0
    :goto_0
    return-void

    .line 1343
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v4}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v16

    .line 1344
    .local v16, "camera":Lcom/threed/jpct/Camera;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/threed/jpct/Camera;->scaleX:F

    .line 1345
    .local v2, "curScaleX":F
    move-object/from16 v0, v16

    iget v3, v0, Lcom/threed/jpct/Camera;->scaleY:F

    .line 1347
    .local v3, "curScaleY":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/threed/jpct/GLRenderer;->vertexArraysInitialized:Z

    if-nez v4, :cond_2

    .line 1348
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->initializeVertexArrays()V

    .line 1355
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->disableUnusedStages()V

    .line 1356
    const/4 v4, 0x0

    sget-object v5, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    .line 1362
    const v39, -0x407fff58    # -1.00002f

    .line 1364
    .local v39, "z":F
    sget-boolean v4, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-nez v4, :cond_3

    sget v4, Lcom/threed/jpct/Config;->nearPlane:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 1365
    sget v4, Lcom/threed/jpct/Config;->nearPlane:F

    neg-float v4, v4

    const v5, 0x3951b717    # 2.0E-4f

    sub-float v39, v4, v5

    .line 1368
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v4

    int-to-float v0, v4

    move/from16 v21, v0

    .line 1369
    .local v21, "h":F
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v4

    int-to-float v0, v4

    move/from16 v38, v0

    .line 1371
    .local v38, "w":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v25

    .line 1373
    .local v25, "texID":I
    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/threed/jpct/Texture;->getMarker(I)I

    move-result v4

    sget v5, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-ne v4, v5, :cond_6

    .line 1374
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v5, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/threed/jpct/Texture;->setMarker(II)V

    .line 1375
    if-eqz v25, :cond_5

    .line 1376
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/threed/jpct/GLRenderer;->getSmallBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v14

    .line 1377
    .local v14, "buf":Ljava/nio/IntBuffer;
    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 1378
    invoke-virtual {v14}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 1379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v14}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 1381
    .end local v14    # "buf":Ljava/nio/IntBuffer;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    .line 1382
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v25

    .line 1385
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move/from16 v0, v25

    if-eq v0, v4, :cond_7

    .line 1386
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    .line 1387
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 1390
    :cond_7
    const/high16 v28, 0x3f800000    # 1.0f

    .line 1392
    .local v28, "trans":F
    if-eqz p9, :cond_a

    .line 1393
    sget v4, Lcom/threed/jpct/Config;->glTransparencyOffset:F

    move/from16 v0, p12

    int-to-float v5, v0

    sget v6, Lcom/threed/jpct/Config;->glTransparencyMul:F

    mul-float/2addr v5, v6

    add-float v28, v4, v5

    .line 1394
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v28, v4

    if-lez v4, :cond_8

    .line 1395
    const/high16 v28, 0x3f800000    # 1.0f

    .line 1406
    :cond_8
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v19, v4, v38

    .line 1407
    .local v19, "dw":F
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v18, v4, v21

    .line 1409
    .local v18, "dh":F
    mul-float v29, v19, p3

    .line 1410
    .local v29, "u1":F
    mul-float v33, v18, p4

    .line 1411
    .local v33, "v1":F
    move/from16 v0, p5

    int-to-float v4, v0

    add-float v4, v4, p3

    mul-float v30, v19, v4

    .line 1412
    .local v30, "u2":F
    move/from16 v0, p6

    int-to-float v4, v0

    add-float v4, v4, p4

    mul-float v34, v18, v4

    .line 1414
    .local v34, "v2":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 1416
    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/GLRenderer;->blitCoords1:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v4, p1

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v2 .. v8}, Lcom/threed/jpct/Interact2D;->reproject2D3DBlit(FFLcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    .line 1417
    add-int v5, p7, p10

    add-int v6, p8, p11

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/GLRenderer;->blitCoords2:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Lcom/threed/jpct/Interact2D;->reproject2D3DBlit(FFLcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    .line 1419
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->curPos:I

    const/16 v5, 0x252

    if-lt v4, v5, :cond_9

    .line 1420
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    .line 1423
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->colorArray:[I

    move-object/from16 v17, v0

    .line 1424
    .local v17, "colorArray":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->vertexArray:[I

    move-object/from16 v35, v0

    .line 1425
    .local v35, "vertexArray":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->textureArray:[I

    move-object/from16 v26, v0

    .line 1426
    .local v26, "textureArray":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->indexArray:[S

    move-object/from16 v22, v0

    .line 1429
    .local v22, "indexArray":[S
    shl-int/lit8 v24, p13, 0x8

    .line 1430
    .local v24, "ri":I
    shl-int/lit8 v20, p14, 0x8

    .line 1431
    .local v20, "gi":I
    shl-int/lit8 v13, p15, 0x8

    .line 1432
    .local v13, "bi":I
    const/high16 v4, 0x47800000    # 65536.0f

    mul-float v4, v4, v28

    float-to-int v0, v4

    move/from16 v27, v0

    .line 1434
    .local v27, "ti":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v24, v17, v4

    .line 1435
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v20, v17, v4

    .line 1436
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v13, v17, v4

    .line 1437
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v27, v17, v4

    .line 1438
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v24, v17, v4

    .line 1439
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v20, v17, v4

    .line 1440
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v13, v17, v4

    .line 1441
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v27, v17, v4

    .line 1442
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v24, v17, v4

    .line 1443
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v20, v17, v4

    .line 1444
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v13, v17, v4

    .line 1445
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v27, v17, v4

    .line 1446
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v24, v17, v4

    .line 1447
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v20, v17, v4

    .line 1448
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v13, v17, v4

    .line 1449
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->colPos:I

    aput v27, v17, v4

    .line 1453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->blitCoords1:Lcom/threed/jpct/SimpleVector;

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->x:F

    const/high16 v5, 0x47800000    # 65536.0f

    mul-float/2addr v4, v5

    float-to-int v9, v4

    .line 1454
    .local v9, "b1x":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->blitCoords2:Lcom/threed/jpct/SimpleVector;

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->x:F

    const/high16 v5, 0x47800000    # 65536.0f

    mul-float/2addr v4, v5

    float-to-int v11, v4

    .line 1455
    .local v11, "b2x":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->blitCoords1:Lcom/threed/jpct/SimpleVector;

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->y:F

    neg-float v4, v4

    const/high16 v5, 0x47800000    # 65536.0f

    mul-float/2addr v4, v5

    float-to-int v10, v4

    .line 1456
    .local v10, "b1y":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threed/jpct/GLRenderer;->blitCoords2:Lcom/threed/jpct/SimpleVector;

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->y:F

    neg-float v4, v4

    const/high16 v5, 0x47800000    # 65536.0f

    mul-float/2addr v4, v5

    float-to-int v12, v4

    .line 1457
    .local v12, "b2y":I
    const/high16 v4, 0x47800000    # 65536.0f

    mul-float v4, v4, v39

    float-to-int v15, v4

    .line 1459
    .local v15, "bz":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v9, v35, v4

    .line 1460
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v12, v35, v4

    .line 1461
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v15, v35, v4

    .line 1462
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v11, v35, v4

    .line 1463
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v12, v35, v4

    .line 1464
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v15, v35, v4

    .line 1465
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v9, v35, v4

    .line 1466
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v10, v35, v4

    .line 1467
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v15, v35, v4

    .line 1468
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v11, v35, v4

    .line 1469
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v10, v35, v4

    .line 1470
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    aput v15, v35, v4

    .line 1472
    const/high16 v4, 0x47800000    # 65536.0f

    mul-float v4, v4, v29

    float-to-int v0, v4

    move/from16 v31, v0

    .line 1473
    .local v31, "ui1":I
    const/high16 v4, 0x47800000    # 65536.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v32, v0

    .line 1474
    .local v32, "ui2":I
    const/high16 v4, 0x47800000    # 65536.0f

    mul-float v4, v4, v33

    float-to-int v0, v4

    move/from16 v36, v0

    .line 1475
    .local v36, "vi1":I
    const/high16 v4, 0x47800000    # 65536.0f

    mul-float v4, v4, v34

    float-to-int v0, v4

    move/from16 v37, v0

    .line 1477
    .local v37, "vi2":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v31, v26, v4

    .line 1478
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v37, v26, v4

    .line 1479
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v32, v26, v4

    .line 1480
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v37, v26, v4

    .line 1481
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v31, v26, v4

    .line 1482
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v36, v26, v4

    .line 1483
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v32, v26, v4

    .line 1484
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->texPos:I

    aput v36, v26, v4

    .line 1486
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    add-int/lit8 v4, v4, -0xc

    div-int/lit8 v4, v4, 0x3

    int-to-short v0, v4

    move/from16 v23, v0

    .line 1487
    .local v23, "ip":S
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    aput-short v23, v22, v4

    .line 1488
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v23, 0x1

    int-to-short v5, v5

    aput-short v5, v22, v4

    .line 1489
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v23, 0x2

    int-to-short v5, v5

    aput-short v5, v22, v4

    .line 1490
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v23, 0x2

    int-to-short v5, v5

    aput-short v5, v22, v4

    .line 1491
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v23, 0x3

    int-to-short v5, v5

    aput-short v5, v22, v4

    .line 1492
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    add-int/lit8 v5, v23, 0x1

    int-to-short v5, v5

    aput-short v5, v22, v4

    .line 1608
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GLRenderer;->curPos:I

    add-int/lit8 v4, v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/threed/jpct/GLRenderer;->curPos:I

    goto/16 :goto_0

    .line 1398
    .end local v9    # "b1x":I
    .end local v10    # "b1y":I
    .end local v11    # "b2x":I
    .end local v12    # "b2y":I
    .end local v13    # "bi":I
    .end local v15    # "bz":I
    .end local v17    # "colorArray":[I
    .end local v18    # "dh":F
    .end local v19    # "dw":F
    .end local v20    # "gi":I
    .end local v22    # "indexArray":[S
    .end local v23    # "ip":S
    .end local v24    # "ri":I
    .end local v26    # "textureArray":[I
    .end local v27    # "ti":I
    .end local v29    # "u1":F
    .end local v30    # "u2":F
    .end local v31    # "ui1":I
    .end local v32    # "ui2":I
    .end local v33    # "v1":F
    .end local v34    # "v2":F
    .end local v35    # "vertexArray":[I
    .end local v36    # "vi1":I
    .end local v37    # "vi2":I
    :cond_a
    move/from16 p10, p5

    .line 1399
    move/from16 p11, p6

    .line 1401
    const/16 p13, 0xff

    .line 1402
    const/16 p14, 0xff

    .line 1403
    const/16 p15, 0xff

    goto/16 :goto_1
.end method

.method private buildMipmap(Ljavax/microedition/khronos/opengles/GL10;Lcom/threed/jpct/Texture;II[I)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "tex"    # Lcom/threed/jpct/Texture;
    .param p3, "textureID"    # I
    .param p4, "mode"    # I
    .param p5, "data"    # [I

    .prologue
    const/4 v8, 0x1

    .line 988
    const/4 v4, 0x1

    .line 989
    .local v4, "level":I
    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    .line 990
    .local v1, "width":I
    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v0

    shr-int/lit8 v2, v0, 0x1

    .line 992
    .local v2, "height":I
    :goto_0
    if-ge v2, v8, :cond_0

    if-ge v1, v8, :cond_0

    .line 1018
    return-void

    .line 994
    :cond_0
    iget-boolean v0, p2, Lcom/threed/jpct/Texture;->convertTo4444:Z

    if-eqz v0, :cond_2

    .line 995
    iget-boolean v0, p2, Lcom/threed/jpct/Texture;->alpha:Z

    if-eqz v0, :cond_1

    .line 996
    const/4 v0, 0x0

    invoke-static {p5, v1, v2, v0}, Lcom/threed/jpct/GLRenderer;->rescale16([IIIZ)[I

    move-result-object p5

    .line 1004
    :goto_1
    array-length v0, p5

    shl-int/lit8 v7, v0, 0x2

    .line 1005
    .local v7, "len":I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1006
    .local v5, "temp":Ljava/nio/ByteBuffer;
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1007
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1008
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-object v0, p0

    move v3, p4

    move-object v6, p2

    .line 1012
    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/GLRenderer;->uploadInternal(IIIILjava/nio/ByteBuffer;Lcom/threed/jpct/Texture;)V

    .line 1013
    add-int/lit8 v4, v4, 0x1

    .line 1015
    shr-int/lit8 v2, v2, 0x1

    .line 1016
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    .end local v5    # "temp":Ljava/nio/ByteBuffer;
    .end local v7    # "len":I
    :cond_1
    invoke-static {p5, v1, v2, v8}, Lcom/threed/jpct/GLRenderer;->rescale16([IIIZ)[I

    move-result-object p5

    goto :goto_1

    .line 1001
    :cond_2
    invoke-static {p5, v1, v2}, Lcom/threed/jpct/GLRenderer;->rescale32([III)[I

    move-result-object p5

    goto :goto_1
.end method

.method private disableAllHigherStages()V
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    if-lt v0, v1, :cond_0

    .line 352
    return-void

    .line 350
    :cond_0
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->disableStage(I)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final disableCompiledPipeline()V
    .locals 2

    .prologue
    .line 646
    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    .line 647
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 648
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb50

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 649
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xba1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 650
    return-void
.end method

.method private final disableDepthBuffer()V
    .locals 2

    .prologue
    .line 1110
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    .line 1115
    :cond_0
    return-void
.end method

.method private final disableFogging()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb60

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    .line 708
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->currentFogColor:I

    .line 709
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->currentFogDistance:F

    .line 710
    return-void
.end method

.method private disableScissor()V
    .locals 2

    .prologue
    .line 1735
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xc11

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    .line 1739
    :cond_0
    return-void
.end method

.method private final disableStage(I)V
    .locals 4
    .param p1, "stage"    # I

    .prologue
    const/4 v3, 0x0

    .line 612
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    if-nez v1, :cond_0

    .line 613
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    .line 614
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xde1

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 615
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aput-boolean v3, v1, p1

    .line 616
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    .line 617
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    if-lt v0, v1, :cond_1

    .line 624
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 618
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    .line 619
    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    goto :goto_1

    .line 617
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final disableUnusedStages()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 580
    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    if-nez v1, :cond_0

    .line 581
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    if-lt v0, v1, :cond_1

    .line 588
    invoke-direct {p0, v3}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    .line 589
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    .line 591
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 582
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    .line 583
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    .line 584
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xde1

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 585
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aput-boolean v3, v1, v0

    .line 581
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private doPostProcessing(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/IPostProcessor;)V
    .locals 4
    .param p1, "fb"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "post"    # Lcom/threed/jpct/IPostProcessor;

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-interface {p2}, Lcom/threed/jpct/IPostProcessor;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-interface {p2, p1}, Lcom/threed/jpct/IPostProcessor;->init(Lcom/threed/jpct/FrameBuffer;)V

    .line 277
    :cond_0
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    .line 278
    .local v0, "scaleTmp":I
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableAllHigherStages()V

    .line 281
    invoke-direct {p0, v3}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    .line 283
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    .line 285
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLRenderer;->resetViewport(Lcom/threed/jpct/FrameBuffer;)V

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v2, -0x1

    aput v2, v1, v3

    .line 290
    sget-object v1, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    aget v1, v1, v3

    invoke-direct {p0, v3, v1}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    .line 291
    invoke-interface {p2}, Lcom/threed/jpct/IPostProcessor;->process()V

    .line 293
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v1, :cond_2

    .line 294
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->setViewport(Lcom/threed/jpct/FrameBuffer;)V

    .line 296
    :cond_2
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    .line 297
    return-void
.end method

.method private enableBlitting(Lcom/threed/jpct/FrameBuffer;ZZ)V
    .locals 5
    .param p1, "fb"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "trans"    # Z
    .param p3, "additive"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1141
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-nez v3, :cond_0

    .line 1144
    new-instance v3, Lcom/threed/jpct/World;

    invoke-direct {v3}, Lcom/threed/jpct/World;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    .line 1146
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v2

    .line 1147
    .local v2, "width":I
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v0

    .line 1154
    .local v0, "height":I
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v3}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/threed/jpct/Camera;->calcFOV(II)V

    .line 1155
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    invoke-direct {p0, v3, p1}, Lcom/threed/jpct/GLRenderer;->setFrustum(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V

    .line 1158
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_4

    iget-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    if-nez v3, :cond_4

    .line 1159
    :cond_1
    iget-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    if-eqz v3, :cond_2

    .line 1160
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    .line 1162
    :cond_2
    const/4 v1, 0x0

    .line 1163
    .local v1, "mode":I
    if-eqz p3, :cond_3

    .line 1164
    const/4 v1, 0x1

    .line 1166
    :cond_3
    iput-boolean p3, p0, Lcom/threed/jpct/GLRenderer;->blitAdditive:Z

    .line 1167
    invoke-direct {p0, v1}, Lcom/threed/jpct/GLRenderer;->setBlendingMode(I)V

    .line 1168
    iput-boolean v4, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    .line 1171
    .end local v1    # "mode":I
    :cond_4
    iget-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    if-nez v3, :cond_7

    .line 1172
    iget v3, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    iput v3, p0, Lcom/threed/jpct/GLRenderer;->blitScaling:I

    .line 1173
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-eqz v3, :cond_5

    .line 1174
    invoke-direct {p0, v4}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    .line 1176
    :cond_5
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableDepthBuffer()V

    .line 1177
    iput-boolean v4, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    .line 1195
    :cond_6
    :goto_0
    return-void

    .line 1180
    :cond_7
    iget-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    if-eqz v3, :cond_8

    if-nez p2, :cond_8

    .line 1181
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    .line 1182
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0xbe2

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1183
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    .line 1185
    :cond_8
    iget-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    if-eqz v3, :cond_6

    if-eqz p2, :cond_6

    iget-boolean v3, p0, Lcom/threed/jpct/GLRenderer;->blitAdditive:Z

    if-eq p3, v3, :cond_6

    .line 1186
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    .line 1187
    iput-boolean p3, p0, Lcom/threed/jpct/GLRenderer;->blitAdditive:Z

    .line 1188
    const/4 v1, 0x0

    .line 1189
    .restart local v1    # "mode":I
    if-eqz p3, :cond_9

    .line 1190
    const/4 v1, 0x1

    .line 1192
    :cond_9
    invoke-direct {p0, v1}, Lcom/threed/jpct/GLRenderer;->setBlendingMode(I)V

    goto :goto_0
.end method

.method private enableColorArray()V
    .locals 5

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x4

    const/16 v2, 0x140c

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 1121
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1122
    return-void
.end method

.method private final enableCompiledPipeline()V
    .locals 2

    .prologue
    .line 639
    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    .line 640
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xba1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 641
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb50

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 642
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 643
    return-void
.end method

.method private final enableDepthBuffer()V
    .locals 2

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    if-nez v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->depthBuffer:Z

    .line 1107
    :cond_0
    return-void
.end method

.method private final enableFogging(FFFFF)V
    .locals 5
    .param p1, "start"    # F
    .param p2, "distance"    # F
    .param p3, "r"    # F
    .param p4, "g"    # F
    .param p5, "b"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    .line 724
    cmpg-float v1, p3, v2

    if-gez v1, :cond_6

    .line 725
    const/4 p3, 0x0

    .line 731
    :cond_0
    :goto_0
    cmpg-float v1, p4, v2

    if-gez v1, :cond_7

    .line 732
    const/4 p4, 0x0

    .line 738
    :cond_1
    :goto_1
    cmpg-float v1, p5, v2

    if-gez v1, :cond_8

    .line 739
    const/4 p5, 0x0

    .line 746
    :cond_2
    :goto_2
    float-to-int v1, p3

    shl-int/lit8 v1, v1, 0x10

    float-to-int v2, p4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    float-to-int v2, p5

    or-int v0, v1, v2

    .line 748
    .local v0, "col":I
    iget v1, p0, Lcom/threed/jpct/GLRenderer;->currentFogDistance:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->currentFogColor:I

    if-eq v0, v1, :cond_5

    .line 750
    :cond_3
    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    if-eqz v1, :cond_4

    .line 751
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableFogging()V

    .line 753
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    .line 755
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 756
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    div-float v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 757
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    div-float v2, p4, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 758
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    div-float v2, p5, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 759
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 760
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 762
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xb60

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 763
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xb63

    invoke-interface {v1, v2, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 764
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xb64

    invoke-interface {v1, v2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 765
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xb65

    const/16 v3, 0x2601

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 766
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xb66

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->fogColors:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 767
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xb62

    invoke-interface {v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 769
    iput v0, p0, Lcom/threed/jpct/GLRenderer;->currentFogColor:I

    .line 770
    iput p2, p0, Lcom/threed/jpct/GLRenderer;->currentFogDistance:F

    .line 772
    :cond_5
    return-void

    .line 727
    .end local v0    # "col":I
    :cond_6
    cmpl-float v1, p3, v3

    if-lez v1, :cond_0

    .line 728
    const/high16 p3, 0x437f0000    # 255.0f

    goto/16 :goto_0

    .line 734
    :cond_7
    cmpl-float v1, p4, v3

    if-lez v1, :cond_1

    .line 735
    const/high16 p4, 0x437f0000    # 255.0f

    goto/16 :goto_1

    .line 741
    :cond_8
    cmpl-float v1, p5, v3

    if-lez v1, :cond_2

    .line 742
    const/high16 p5, 0x437f0000    # 255.0f

    goto/16 :goto_2
.end method

.method private enableScissor(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;IIII)V
    .locals 8
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "renderTarget"    # Lcom/threed/jpct/Texture;
    .param p3, "xMin"    # I
    .param p4, "yMin"    # I
    .param p5, "xMax"    # I
    .param p6, "yMax"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1689
    const/4 v1, 0x0

    .line 1690
    .local v1, "xcMin":I
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1691
    .local v3, "ycMin":I
    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v0

    .line 1692
    .local v0, "xcMax":I
    invoke-virtual {p2}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v2

    .line 1694
    .local v2, "ycMax":I
    if-eq p3, v6, :cond_0

    .line 1695
    iput-boolean v7, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    .line 1696
    add-int/2addr v1, p3

    .line 1699
    :cond_0
    if-eq p4, v6, :cond_1

    .line 1700
    iput-boolean v7, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    .line 1701
    add-int/2addr v3, p4

    .line 1704
    :cond_1
    if-eq p5, v6, :cond_2

    .line 1705
    iput-boolean v7, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    .line 1706
    add-int v4, p3, p5

    sub-int/2addr v0, v4

    .line 1709
    :cond_2
    if-eq p6, v6, :cond_3

    .line 1710
    iput-boolean v7, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    .line 1711
    add-int v4, p4, p6

    sub-int/2addr v2, v4

    .line 1714
    :cond_3
    iget-boolean v4, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v4, :cond_8

    .line 1715
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0xc11

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1717
    if-gez v1, :cond_4

    .line 1718
    const/4 v1, 0x0

    .line 1720
    :cond_4
    if-gez v0, :cond_5

    .line 1721
    const/4 v0, 0x0

    .line 1723
    :cond_5
    if-gez v3, :cond_6

    .line 1724
    const/4 v3, 0x0

    .line 1726
    :cond_6
    if-gez v2, :cond_7

    .line 1727
    const/4 v2, 0x0

    .line 1730
    :cond_7
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 1732
    :cond_8
    return-void
.end method

.method private final enableStage(I)V
    .locals 2
    .param p1, "stage"    # I

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    .line 595
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 597
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 598
    if-lez p1, :cond_0

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->singleTexturing:Z

    .line 602
    :cond_0
    return-void
.end method

.method private executeBufferedBlits()V
    .locals 7

    .prologue
    const/16 v6, 0xb60

    const/4 v5, 0x0

    .line 1289
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    if-nez v0, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1295
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->colorArray:[I

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->colPos:I

    invoke-virtual {v0, v1, v5, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1296
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1297
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1298
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->vertexArray:[I

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    invoke-virtual {v0, v1, v5, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1299
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1300
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1301
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->textureArray:[I

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->texPos:I

    invoke-virtual {v0, v1, v5, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1302
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1303
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1304
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->indexArray:[S

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    invoke-virtual {v0, v1, v5, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 1305
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1308
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    .line 1309
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    .line 1311
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    if-eqz v0, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1315
    :cond_2
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    .line 1316
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renableVertexArrays()V

    .line 1317
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->enableColorArray()V

    .line 1319
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x4

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    const/16 v3, 0x1403

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1321
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    .line 1322
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    .line 1324
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->currentFoggingState:Z

    if-eqz v0, :cond_3

    .line 1325
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1328
    :cond_3
    iput v5, p0, Lcom/threed/jpct/GLRenderer;->curPos:I

    .line 1329
    iput v5, p0, Lcom/threed/jpct/GLRenderer;->colPos:I

    .line 1330
    iput v5, p0, Lcom/threed/jpct/GLRenderer;->texPos:I

    .line 1331
    iput v5, p0, Lcom/threed/jpct/GLRenderer;->vertPos:I

    .line 1332
    iput v5, p0, Lcom/threed/jpct/GLRenderer;->indexPos:I

    goto/16 :goto_0
.end method

.method private final getSmallBuffer(I)Ljava/nio/IntBuffer;
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 695
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->smallBuffer:[Ljava/nio/IntBuffer;

    aget-object v0, v1, p1

    .line 696
    .local v0, "smallBuffer":Ljava/nio/IntBuffer;
    if-nez v0, :cond_0

    .line 697
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->smallBuffer:[Ljava/nio/IntBuffer;

    aput-object v0, v1, p1

    .line 702
    :goto_0
    return-object v0

    .line 700
    :cond_0
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private final getTextureStages()I
    .locals 4

    .prologue
    .line 1651
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 1652
    .local v1, "sm":Ljava/nio/IntBuffer;
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x84e2

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 1653
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 1654
    .local v0, "max":I
    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    .line 1655
    const/4 v0, 0x4

    .line 1657
    :cond_0
    return v0
.end method

.method private final getTextureStagesRaw()I
    .locals 4

    .prologue
    .line 1661
    iget-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v2, :cond_0

    .line 1662
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v2}, Lcom/threed/jpct/GL20Handler;->getTextureStagesRaw()I

    move-result v0

    .line 1667
    :goto_0
    return v0

    .line 1664
    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 1665
    .local v1, "sm":Ljava/nio/IntBuffer;
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x84e2

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 1666
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 1667
    .local v0, "max":I
    goto :goto_0
.end method

.method private hasExtension(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->extensions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2420
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1f03

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->extensions:Ljava/lang/String;

    .line 2422
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->extensions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private final init(Ljavax/microedition/khronos/opengles/GL10;IIZ)V
    .locals 11
    .param p1, "glContext"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "openGLES20"    # Z

    .prologue
    const/4 v6, 0x1

    const v8, -0x3b864000    # -999.0f

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 359
    if-eqz p4, :cond_0

    .line 364
    :try_start_0
    const-string v4, "com.threed.jpct.GL20"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 365
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    instance-of v4, p1, Lcom/threed/jpct/GL20Handler;

    if-eqz v4, :cond_1

    .line 372
    iput-boolean v6, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    move-object v4, p1

    .line 373
    check-cast v4, Lcom/threed/jpct/GL20Handler;

    iput-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    .line 376
    :cond_1
    sget v4, Lcom/threed/jpct/Config;->glDebugLevel:I

    if-eqz v4, :cond_2

    .line 377
    invoke-static {p1}, Lcom/threed/jpct/GLDebug;->create(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    .end local p1    # "glContext":Ljavax/microedition/khronos/opengles/GL10;
    check-cast p1, Ljavax/microedition/khronos/opengles/GL10;

    .line 380
    .restart local p1    # "glContext":Ljavax/microedition/khronos/opengles/GL10;
    :cond_2
    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    .line 381
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v4, v4, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v4, :cond_3

    .line 382
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .end local p1    # "glContext":Ljavax/microedition/khronos/opengles/GL10;
    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 385
    :cond_3
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 386
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 388
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v5, v5, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 389
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x1701

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 390
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 391
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x1700

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 392
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 394
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x1d01

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 395
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 396
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->enableDepthBuffer()V

    .line 397
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x203

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 399
    sget-boolean v4, Lcom/threed/jpct/Config;->glDither:Z

    if-eqz v4, :cond_4

    .line 400
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0xbd0

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 410
    :goto_1
    invoke-direct {p0, v5}, Lcom/threed/jpct/GLRenderer;->initTextureStage(I)V

    .line 412
    iput v8, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    .line 413
    iput v8, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    .line 414
    iput v8, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    .line 416
    if-nez p4, :cond_5

    .line 417
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->getTextureStages()I

    move-result v4

    sget v7, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    .line 422
    :goto_2
    iget v4, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    sput v4, Lcom/threed/jpct/Config;->glStageCount:I

    .line 424
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->getTextureStagesRaw()I

    move-result v3

    .line 426
    .local v3, "raw":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "OpenGL vendor:     "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v8, 0x1f00

    invoke-interface {v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "OpenGL renderer:   "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v8, 0x1f01

    invoke-interface {v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "OpenGL version:    "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v8, 0x1f02

    invoke-interface {v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "OpenGL renderer initialized (using "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " texture stages)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 431
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v9, v9, v9, v9}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 432
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x4100

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 434
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x1f03

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "generate_mipmap"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x1f02

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1.1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/threed/jpct/GLRenderer;->mipmapsByGpu:Z

    .line 436
    iput-boolean v6, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    .line 437
    return-void

    .line 366
    .end local v3    # "raw":I
    .restart local p1    # "glContext":Ljavax/microedition/khronos/opengles/GL10;
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 402
    .end local v2    # "e":Ljava/lang/Exception;
    .end local p1    # "glContext":Ljavax/microedition/khronos/opengles/GL10;
    :cond_4
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0xbd0

    invoke-interface {v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_1

    .line 419
    :cond_5
    const/4 v4, 0x4

    sget v7, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    goto/16 :goto_2

    .restart local v3    # "raw":I
    :cond_6
    move v4, v6

    .line 434
    goto :goto_3
.end method

.method private final initTextureStage(I)V
    .locals 2
    .param p1, "stage"    # I

    .prologue
    .line 1671
    sget-object v0, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/GLRenderer;->initTextureStage(II)V

    .line 1672
    return-void
.end method

.method private final initTextureStage(II)V
    .locals 2
    .param p1, "stage"    # I
    .param p2, "mode"    # I

    .prologue
    .line 575
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    .line 576
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->stageInitialized:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 577
    return-void
.end method

.method private final initializeVertexArrays()V
    .locals 6

    .prologue
    const/16 v5, 0x960

    const/16 v4, 0x140c

    .line 1261
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    if-eqz v0, :cond_0

    .line 1262
    const/16 v0, 0x2580

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    .line 1263
    const/16 v0, 0x1c20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    .line 1265
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x4

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->colors:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 1266
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x3

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 1268
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1269
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1270
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1272
    const/16 v0, 0x12c0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    .line 1273
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 1275
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->indices:Ljava/nio/ShortBuffer;

    .line 1277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->vertexArraysInitialized:Z

    .line 1280
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->colorArray:[I

    .line 1281
    const/16 v0, 0x708

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertexArray:[I

    .line 1282
    const/16 v0, 0x4b0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->textureArray:[I

    .line 1283
    const/16 v0, 0x258

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/threed/jpct/GLRenderer;->indexArray:[S

    .line 1286
    :cond_0
    return-void
.end method

.method private prepareForBlitting([III)V
    .locals 6
    .param p1, "src"    # [I
    .param p2, "sourceWidth"    # I
    .param p3, "sourceHeight"    # I

    .prologue
    const/4 v5, 0x1

    .line 1235
    const/4 v1, 0x0

    .line 1236
    .local v1, "sTexID":I
    move v2, p2

    .line 1237
    .local v2, "w":I
    move v0, p3

    .line 1239
    .local v0, "h":I
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    if-eqz v3, :cond_2

    .line 1240
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iget v4, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v4}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v1

    .line 1241
    iget v3, p0, Lcom/threed/jpct/GLRenderer;->blitBufferWidth:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/threed/jpct/GLRenderer;->blitBufferHeight:I

    if-ne v3, v0, :cond_1

    .line 1242
    sget-boolean v3, Lcom/threed/jpct/Config;->glUseIgnorantBlits:Z

    if-nez v3, :cond_0

    .line 1243
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    invoke-virtual {v3, p1, v2, v0}, Lcom/threed/jpct/Texture;->refill([III)V

    .line 1244
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iget v4, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v5, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-virtual {v3, v4, v5}, Lcom/threed/jpct/Texture;->setMarker(II)V

    .line 1245
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iget v4, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v4, v1}, Lcom/threed/jpct/Texture;->setOpenGLID(II)V

    .line 1256
    :cond_0
    :goto_0
    iput v2, p0, Lcom/threed/jpct/GLRenderer;->blitBufferWidth:I

    .line 1257
    iput v0, p0, Lcom/threed/jpct/GLRenderer;->blitBufferHeight:I

    .line 1258
    return-void

    .line 1248
    :cond_1
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    invoke-virtual {p0, v3}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V

    .line 1249
    new-instance v3, Lcom/threed/jpct/Texture;

    invoke-direct {v3, p1, v2, v0, v5}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    iput-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    .line 1250
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iget v4, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v5, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-virtual {v3, v4, v5}, Lcom/threed/jpct/Texture;->setMarker(II)V

    .line 1251
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    iget v4, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v4, v1}, Lcom/threed/jpct/Texture;->setOpenGLID(II)V

    goto :goto_0

    .line 1254
    :cond_2
    new-instance v3, Lcom/threed/jpct/Texture;

    invoke-direct {v3, p1, v2, v0, v5}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    iput-object v3, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    goto :goto_0
.end method

.method private final renableVertexArrays()V
    .locals 6

    .prologue
    const/16 v5, 0x140c

    const/4 v4, 0x0

    .line 1125
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x3

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 1128
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1129
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8075

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 1131
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    .line 1132
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v1, Lcom/threed/jpct/GLRenderer;->stageMap:[I

    aget v1, v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 1133
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1134
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->textures:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 1135
    iput-boolean v4, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    .line 1137
    :cond_0
    return-void
.end method

.method private renderToTarget()Z
    .locals 13

    .prologue
    const/16 v1, 0xde1

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return v2

    .line 310
    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/threed/jpct/Config;->useFBO:Z

    if-eqz v0, :cond_1

    move v2, v11

    .line 311
    goto :goto_0

    .line 314
    :cond_1
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableUnusedStages()V

    .line 315
    sget-object v0, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    aget v0, v0, v2

    invoke-direct {p0, v2, v0}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    .line 317
    iget v9, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    .line 318
    .local v9, "scaleTmp":I
    invoke-direct {p0, v11}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    .line 320
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v3, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v0, v3}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v3, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v4, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {v0, v3, v4}, Lcom/threed/jpct/Texture;->setMarker(II)V

    .line 322
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {p0, v0}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    .line 323
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v3, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v0, v3}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v10

    .line 327
    .local v10, "tid":I
    invoke-virtual {p0, v2, v10}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 329
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    const-string v0, "Copy data from framebuffer into render target..."

    invoke-static {v0, v12}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 333
    :cond_3
    sget-boolean v0, Lcom/threed/jpct/Config;->renderTargetsAsSubImages:Z

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget v6, p0, Lcom/threed/jpct/GLRenderer;->yTargetStart:I

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v3}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v7

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v3}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v8

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 339
    :goto_1
    invoke-direct {p0, v9}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    .line 341
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    const-string v0, "...success!"

    invoke-static {v0, v12}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_4
    move v2, v11

    .line 345
    goto :goto_0

    .line 336
    :cond_5
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1907

    iget v5, p0, Lcom/threed/jpct/GLRenderer;->yTargetStart:I

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v7

    move v4, v2

    move v8, v2

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    goto :goto_1
.end method

.method private static rescale16([IIIZ)[I
    .locals 20
    .param p0, "data"    # [I
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "alphaOne"    # Z

    .prologue
    .line 1021
    const/16 v18, 0x1

    mul-int v19, p1, p2

    shr-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    new-array v15, v0, [I

    .line 1022
    .local v15, "res":[I
    if-nez p0, :cond_1

    .line 1069
    :cond_0
    return-object v15

    .line 1025
    :cond_1
    move/from16 v14, p1

    .line 1026
    .local v14, "oldWidth":I
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 1027
    shr-int/lit8 v18, p1, 0x1

    mul-int v11, v17, v18

    .line 1028
    .local v11, "offset":I
    shl-int/lit8 v18, v17, 0x1

    mul-int v13, v18, v14

    .line 1030
    .local v13, "oldOffset":I
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p1

    if-lt v0, v1, :cond_2

    .line 1026
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1031
    :cond_2
    shr-int/lit8 v18, v16, 0x1

    add-int v6, v11, v18

    .line 1032
    .local v6, "index":I
    add-int v12, v13, v16

    .line 1034
    .local v12, "oldIndex":I
    if-nez p3, :cond_4

    .line 1035
    aget v18, p0, v12

    const v19, 0xffff

    and-int v2, v18, v19

    .line 1036
    .local v2, "c0":I
    aget v18, p0, v12

    const/high16 v19, -0x10000

    and-int v18, v18, v19

    shr-int/lit8 v3, v18, 0x10

    .line 1037
    .local v3, "c1":I
    add-int v18, v12, v14

    aget v18, p0, v18

    const v19, 0xffff

    and-int v4, v18, v19

    .line 1038
    .local v4, "c2":I
    add-int v18, v12, v14

    aget v18, p0, v18

    const/high16 v19, -0x10000

    and-int v18, v18, v19

    shr-int/lit8 v5, v18, 0x10

    .line 1040
    .local v5, "c3":I
    ushr-int/lit8 v18, v2, 0xc

    and-int/lit8 v18, v18, 0xf

    ushr-int/lit8 v19, v3, 0xc

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    ushr-int/lit8 v19, v4, 0xc

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    ushr-int/lit8 v19, v5, 0xc

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0xf

    shl-int/lit8 v10, v18, 0xc

    .line 1041
    .local v10, "nr":I
    shr-int/lit8 v18, v2, 0x8

    and-int/lit8 v18, v18, 0xf

    shr-int/lit8 v19, v3, 0x8

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    shr-int/lit8 v19, v4, 0x8

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    shr-int/lit8 v19, v5, 0x8

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0xf

    shl-int/lit8 v9, v18, 0x8

    .line 1042
    .local v9, "ng":I
    shr-int/lit8 v18, v2, 0x4

    and-int/lit8 v18, v18, 0xf

    shr-int/lit8 v19, v3, 0x4

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    shr-int/lit8 v19, v4, 0x4

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    shr-int/lit8 v19, v5, 0x4

    and-int/lit8 v19, v19, 0xf

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0xf

    shl-int/lit8 v8, v18, 0x4

    .line 1043
    .local v8, "nb":I
    and-int/lit8 v18, v2, 0xf

    and-int/lit8 v19, v3, 0xf

    add-int v18, v18, v19

    and-int/lit8 v19, v4, 0xf

    add-int v18, v18, v19

    and-int/lit8 v19, v5, 0xf

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v7, v18, 0xf

    .line 1045
    .local v7, "na":I
    and-int/lit8 v18, v16, 0x1

    if-nez v18, :cond_3

    .line 1046
    or-int v18, v7, v10

    or-int v18, v18, v9

    or-int v18, v18, v8

    aput v18, v15, v6

    .line 1030
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1048
    :cond_3
    aget v18, v15, v6

    or-int v19, v7, v10

    or-int v19, v19, v9

    or-int v19, v19, v8

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    aput v18, v15, v6

    goto :goto_2

    .line 1051
    .end local v2    # "c0":I
    .end local v3    # "c1":I
    .end local v4    # "c2":I
    .end local v5    # "c3":I
    .end local v7    # "na":I
    .end local v8    # "nb":I
    .end local v9    # "ng":I
    .end local v10    # "nr":I
    :cond_4
    aget v18, p0, v12

    const v19, 0xffff

    and-int v2, v18, v19

    .line 1052
    .restart local v2    # "c0":I
    aget v18, p0, v12

    const/high16 v19, -0x10000

    and-int v18, v18, v19

    shr-int/lit8 v3, v18, 0x10

    .line 1053
    .restart local v3    # "c1":I
    add-int v18, v12, v14

    aget v18, p0, v18

    const v19, 0xffff

    and-int v4, v18, v19

    .line 1054
    .restart local v4    # "c2":I
    add-int v18, v12, v14

    aget v18, p0, v18

    const/high16 v19, -0x10000

    and-int v18, v18, v19

    shr-int/lit8 v5, v18, 0x10

    .line 1056
    .restart local v5    # "c3":I
    ushr-int/lit8 v18, v2, 0xb

    and-int/lit8 v18, v18, 0x1f

    ushr-int/lit8 v19, v3, 0xb

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    ushr-int/lit8 v19, v4, 0xb

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    ushr-int/lit8 v19, v5, 0xb

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0x1f

    shl-int/lit8 v10, v18, 0xb

    .line 1057
    .restart local v10    # "nr":I
    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1f

    shr-int/lit8 v19, v3, 0x6

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    shr-int/lit8 v19, v4, 0x6

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    shr-int/lit8 v19, v5, 0x6

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0x1f

    shl-int/lit8 v9, v18, 0x6

    .line 1058
    .restart local v9    # "ng":I
    shr-int/lit8 v18, v2, 0x1

    and-int/lit8 v18, v18, 0x1f

    shr-int/lit8 v19, v3, 0x1

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    shr-int/lit8 v19, v4, 0x1

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    shr-int/lit8 v19, v5, 0x1

    and-int/lit8 v19, v19, 0x1f

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0x1f

    shl-int/lit8 v8, v18, 0x1

    .line 1059
    .restart local v8    # "nb":I
    and-int/lit8 v18, v2, 0x1

    and-int/lit8 v19, v3, 0x1

    add-int v18, v18, v19

    and-int/lit8 v19, v4, 0x1

    add-int v18, v18, v19

    and-int/lit8 v19, v5, 0x1

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v7, v18, 0x1

    .line 1061
    .restart local v7    # "na":I
    and-int/lit8 v18, v16, 0x1

    if-nez v18, :cond_5

    .line 1062
    or-int v18, v7, v10

    or-int v18, v18, v9

    or-int v18, v18, v8

    aput v18, v15, v6

    goto/16 :goto_2

    .line 1064
    :cond_5
    aget v18, v15, v6

    or-int v19, v7, v10

    or-int v19, v19, v9

    or-int v19, v19, v8

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    aput v18, v15, v6

    goto/16 :goto_2
.end method

.method private static rescale32([III)[I
    .locals 20
    .param p0, "data"    # [I
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 1073
    mul-int v18, p1, p2

    move/from16 v0, v18

    new-array v15, v0, [I

    .line 1074
    .local v15, "res":[I
    if-nez p0, :cond_1

    .line 1098
    :cond_0
    return-object v15

    .line 1077
    :cond_1
    shl-int/lit8 v14, p1, 0x1

    .line 1078
    .local v14, "oldWidth":I
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 1079
    mul-int v11, v17, p1

    .line 1080
    .local v11, "offset":I
    shl-int/lit8 v18, v17, 0x1

    mul-int v13, v18, v14

    .line 1081
    .local v13, "oldOffset":I
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p1

    if-lt v0, v1, :cond_2

    .line 1078
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1082
    :cond_2
    add-int v6, v11, v16

    .line 1083
    .local v6, "index":I
    shl-int/lit8 v18, v16, 0x1

    add-int v12, v13, v18

    .line 1085
    .local v12, "oldIndex":I
    aget v2, p0, v12

    .line 1086
    .local v2, "c0":I
    add-int/lit8 v18, v12, 0x1

    aget v3, p0, v18

    .line 1087
    .local v3, "c1":I
    add-int v18, v12, v14

    aget v4, p0, v18

    .line 1088
    .local v4, "c2":I
    add-int/lit8 v18, v12, 0x1

    add-int v18, v18, v14

    aget v5, p0, v18

    .line 1090
    .local v5, "c3":I
    ushr-int/lit8 v18, v2, 0x18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    ushr-int/lit8 v19, v3, 0x18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    ushr-int/lit8 v19, v4, 0x18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    ushr-int/lit8 v19, v5, 0x18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v7, v18, 0x18

    .line 1091
    .local v7, "na":I
    shr-int/lit8 v18, v2, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shr-int/lit8 v19, v3, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    shr-int/lit8 v19, v4, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    shr-int/lit8 v19, v5, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v10, v18, 0x10

    .line 1092
    .local v10, "nr":I
    shr-int/lit8 v18, v2, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shr-int/lit8 v19, v3, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    shr-int/lit8 v19, v4, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    shr-int/lit8 v19, v5, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v9, v18, 0x8

    .line 1093
    .local v9, "ng":I
    and-int/lit16 v0, v2, 0xff

    move/from16 v18, v0

    and-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    and-int/lit16 v0, v5, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    .line 1095
    .local v8, "nb":I
    or-int v18, v7, v10

    or-int v18, v18, v9

    or-int v18, v18, v8

    aput v18, v15, v6

    .line 1081
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1
.end method

.method private resetStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 225
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->stageInitialized:[Z

    aput-boolean v3, v1, v0

    .line 219
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->enabledStages:[Z

    aput-boolean v3, v1, v0

    .line 220
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aput v3, v1, v0

    .line 221
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastMultiTextures:[I

    aput v3, v1, v0

    .line 222
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastMultiModes:[I

    aput v3, v1, v0

    .line 223
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastMode:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetTextureStates()V
    .locals 3

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 303
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setBlendingMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/16 v1, 0xbe2

    const/16 v2, 0x302

    .line 258
    packed-switch p1, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 262
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x303

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 266
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDepthBuffer()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 255
    :cond_0
    return-void
.end method

.method private setFrustum(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V
    .locals 13
    .param p1, "world"    # Lcom/threed/jpct/World;
    .param p2, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 1942
    invoke-virtual {p1}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v7

    .line 1943
    .local v7, "cam":Lcom/threed/jpct/Camera;
    invoke-virtual {v7}, Lcom/threed/jpct/Camera;->getFOV()F

    move-result v8

    .line 1944
    .local v8, "fov":F
    const/4 v9, 0x0

    .line 1945
    .local v9, "fovy":F
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    cmpl-float v0, v8, v0

    if-nez v0, :cond_1

    sget v0, Lcom/threed/jpct/Config;->farPlane:F

    iget v12, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    cmpl-float v0, v0, v12

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-nez v0, :cond_0

    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    iget v12, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    cmpl-float v0, v0, v12

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    iget-boolean v12, p0, Lcom/threed/jpct/GLRenderer;->lastFOVMode:Z

    if-eq v0, v12, :cond_5

    .line 1946
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v12, 0x1701

    invoke-interface {v0, v12}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1947
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1949
    invoke-virtual {p2}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v0

    int-to-float v10, v0

    .line 1950
    .local v10, "h":F
    invoke-virtual {p2}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v0

    int-to-float v11, v0

    .line 1952
    .local v11, "w":F
    iget-object v0, p2, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v0, :cond_2

    .line 1958
    iget v0, p2, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    if-lez v0, :cond_6

    iget v0, p2, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    if-lez v0, :cond_6

    .line 1959
    iget v0, p2, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    int-to-float v10, v0

    .line 1960
    iget v0, p2, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    int-to-float v11, v0

    .line 1967
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    if-eqz v0, :cond_7

    .line 1968
    div-float v0, v10, v11

    mul-float v9, v8, v0

    .line 1973
    :goto_1
    invoke-virtual {v7}, Lcom/threed/jpct/Camera;->getYFOV()F

    move-result v0

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_3

    .line 1974
    invoke-virtual {v7}, Lcom/threed/jpct/Camera;->getYFOV()F

    move-result v9

    .line 1977
    :cond_3
    sget v6, Lcom/threed/jpct/Config;->farPlane:F

    .line 1978
    .local v6, "far":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1979
    .local v5, "near":F
    sget-boolean v0, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-nez v0, :cond_4

    .line 1980
    sget v5, Lcom/threed/jpct/Config;->nearPlane:F

    .line 1984
    :cond_4
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v4, v9, v0

    .line 1985
    .local v4, "top":F
    neg-float v0, v9

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v3, v0, v12

    .line 1986
    .local v3, "bottom":F
    neg-float v0, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v1, v0, v12

    .line 1987
    .local v1, "left":F
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v2, v8, v0

    .line 1989
    .local v2, "right":F
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 1991
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v9

    add-float/2addr v0, v8

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    .line 1992
    sget v0, Lcom/threed/jpct/Config;->farPlane:F

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    .line 1993
    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    .line 1994
    sget-boolean v0, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->lastFOVMode:Z

    .line 1996
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "bottom":F
    .end local v4    # "top":F
    .end local v5    # "near":F
    .end local v6    # "far":F
    .end local v10    # "h":F
    .end local v11    # "w":F
    :cond_5
    return-void

    .line 1962
    .restart local v10    # "h":F
    .restart local v11    # "w":F
    :cond_6
    iget-object v0, p2, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v0, v0, Lcom/threed/jpct/Texture;->height:I

    int-to-float v10, v0

    .line 1963
    iget-object v0, p2, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    iget v0, v0, Lcom/threed/jpct/Texture;->width:I

    int-to-float v11, v0

    goto :goto_0

    .line 1970
    :cond_7
    move v9, v8

    goto :goto_1
.end method

.method private setLightsAndFog(Lcom/threed/jpct/World;)V
    .locals 9
    .param p1, "myWorld"    # Lcom/threed/jpct/World;

    .prologue
    const/4 v8, 0x0

    .line 1214
    iget-object v0, p1, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v0, v0, Lcom/threed/jpct/Lights;->rgbScale:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 1217
    .local v7, "hash":I
    const/4 v6, 0x0

    .line 1218
    .local v6, "forceEnable":Z
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->lastWorldHash:I

    if-eq v7, v0, :cond_0

    .line 1219
    iget-boolean v6, p1, Lcom/threed/jpct/World;->useFogging:Z

    .line 1220
    iput v7, p0, Lcom/threed/jpct/GLRenderer;->lastWorldHash:I

    .line 1223
    :cond_0
    iget v0, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v6, :cond_3

    .line 1224
    :cond_1
    iget v1, p1, Lcom/threed/jpct/World;->fogStart:F

    iget v2, p1, Lcom/threed/jpct/World;->fogDistance:F

    iget v3, p1, Lcom/threed/jpct/World;->fogColorR:F

    iget v4, p1, Lcom/threed/jpct/World;->fogColorG:F

    iget v5, p1, Lcom/threed/jpct/World;->fogColorB:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/GLRenderer;->enableFogging(FFFFF)V

    .line 1225
    iput v8, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    .line 1232
    :cond_2
    :goto_0
    return-void

    .line 1227
    :cond_3
    iget v0, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1228
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableFogging()V

    .line 1229
    iput v8, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    goto :goto_0
.end method

.method private setLineColor(Lcom/threed/jpct/RGBColor;)V
    .locals 5
    .param p1, "color"    # Lcom/threed/jpct/RGBColor;

    .prologue
    .line 2091
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v1

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v2

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v3

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedAlpha()F

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 2101
    :goto_0
    return-void

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v2

    aput v2, v0, v1

    .line 2097
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v2

    aput v2, v0, v1

    .line 2098
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v2

    aput v2, v0, v1

    .line 2099
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedAlpha()F

    move-result v2

    aput v2, v0, v1

    .line 2100
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    const-string v1, "color"

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLSLShader;->setUniform(Ljava/lang/String;[F)V

    goto :goto_0
.end method

.method private setLineShader()V
    .locals 3

    .prologue
    .line 2104
    iget-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v2, :cond_0

    .line 2114
    :goto_0
    return-void

    .line 2107
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    if-nez v2, :cond_1

    .line 2108
    const-string v1, "uniform mat4 modelViewProjectionMatrix; uniform vec4 color; attribute vec4 position; varying vec4 col; void main() {\tcol=color; gl_Position = modelViewProjectionMatrix * position; }"

    .line 2109
    .local v1, "vert":Ljava/lang/String;
    const-string v0, "precision lowp float; varying vec4 col; void main() { gl_FragColor=col; }"

    .line 2111
    .local v0, "frag":Ljava/lang/String;
    new-instance v2, Lcom/threed/jpct/GLSLShader;

    invoke-direct {v2, v1, v0}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    .line 2113
    .end local v0    # "frag":Ljava/lang/String;
    .end local v1    # "vert":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    invoke-virtual {p0, v2}, Lcom/threed/jpct/GLRenderer;->setShader(Lcom/threed/jpct/GLSLShader;)V

    goto :goto_0
.end method

.method private final setRGBScaling(I)V
    .locals 4
    .param p1, "scaling"    # I

    .prologue
    const/16 v3, 0x2300

    .line 713
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    if-eq p1, v0, :cond_0

    .line 714
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    .line 715
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2200

    const v2, 0x8570

    invoke-interface {v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 716
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8571

    const/16 v2, 0x2100

    invoke-interface {v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 717
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8573

    invoke-interface {v0, v3, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 718
    iput p1, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    .line 720
    :cond_0
    return-void
.end method

.method private setTextureMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 3
    .param p1, "m"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/16 v1, 0x1702

    const/4 v2, 0x0

    .line 2316
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->textureMatrixSet:Z

    if-eqz v0, :cond_0

    .line 2317
    invoke-direct {p0, v2}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    .line 2318
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2319
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 2320
    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->textureMatrixSet:Z

    .line 2322
    :cond_0
    if-nez p1, :cond_1

    .line 2333
    :goto_0
    return-void

    .line 2326
    :cond_1
    invoke-direct {p0, v2}, Lcom/threed/jpct/GLRenderer;->activateStage(I)V

    .line 2327
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2328
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2329
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->dumpy:[F

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    .line 2331
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->dumpy:[F

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 2332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->textureMatrixSet:Z

    goto :goto_0
.end method

.method private setTextures(Lcom/threed/jpct/Object3D;IILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V
    .locals 10
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "number"    # I
    .param p3, "modeNumber"    # I
    .param p4, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p5, "world"    # Lcom/threed/jpct/World;

    .prologue
    .line 2336
    const/4 v4, 0x0

    .line 2338
    .local v4, "texInd":I
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    if-eqz v7, :cond_0

    .line 2339
    const/4 p2, 0x0

    .line 2342
    :cond_0
    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iget-object v7, v7, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    iget-object v8, p1, Lcom/threed/jpct/Object3D;->texture:[I

    aget v8, v8, p2

    aget-object v5, v7, v8

    .line 2344
    .local v5, "texture":Lcom/threed/jpct/Texture;
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v5, v7}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v5, v7}, Lcom/threed/jpct/Texture;->getMarker(I)I

    move-result v7

    sget v8, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-ne v7, v8, :cond_4

    .line 2345
    :cond_1
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v8, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {v5, v7, v8}, Lcom/threed/jpct/Texture;->setMarker(II)V

    .line 2346
    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eq v5, v7, :cond_3

    .line 2348
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v5, v7}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v7

    if-eqz v7, :cond_2

    .line 2349
    invoke-virtual {p0, v5}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V

    .line 2351
    :cond_2
    invoke-virtual {p0, v5}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    .line 2353
    :cond_3
    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v8, 0x0

    const/4 v9, -0x1

    aput v9, v7, v8

    .line 2356
    :cond_4
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    invoke-direct {p0, v7}, Lcom/threed/jpct/GLRenderer;->setTextureMatrix(Lcom/threed/jpct/Matrix;)V

    .line 2357
    const/4 v7, 0x0

    invoke-direct {p0, v7, v5}, Lcom/threed/jpct/GLRenderer;->bindAndProject(ILcom/threed/jpct/Texture;)V

    .line 2359
    iget-boolean v7, p1, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    if-eqz v7, :cond_10

    .line 2360
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    iget v8, p1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    if-ge v7, v8, :cond_5

    .line 2361
    iget v7, p1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iput v7, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    .line 2362
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    iget v8, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    if-le v7, v8, :cond_5

    .line 2363
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    iput v7, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    .line 2367
    :cond_5
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v1, v7

    .line 2369
    .local v1, "len":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->maxStages:I

    if-lt v0, v7, :cond_6

    .line 2416
    .end local v0    # "i":I
    .end local v1    # "len":I
    :goto_1
    return-void

    .line 2371
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_6
    add-int/lit8 v4, v0, -0x1

    .line 2372
    if-lt v4, v1, :cond_c

    const/4 v6, -0x1

    .line 2373
    .local v6, "tt":I
    :goto_2
    const/4 v7, -0x1

    if-eq v6, v7, :cond_f

    .line 2374
    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iget-object v7, v7, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v3, v7, v6

    .line 2375
    .local v3, "tex":Lcom/threed/jpct/Texture;
    iget-boolean v7, v3, Lcom/threed/jpct/Texture;->enabled:Z

    if-eqz v7, :cond_e

    .line 2376
    sget-object v7, Lcom/threed/jpct/GLRenderer;->modeMap:[I

    iget-object v8, p1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v8, v8, v4

    aget v8, v8, p3

    aget v2, v7, v8

    .line 2377
    .local v2, "mode":I
    sget-boolean v7, Lcom/threed/jpct/Config;->glRevertADDtoMODULATE:Z

    if-eqz v7, :cond_7

    const/16 v7, 0x104

    if-ne v2, v7, :cond_7

    .line 2378
    const/16 v2, 0x2100

    .line 2380
    :cond_7
    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->stageInitialized:[Z

    aget-boolean v7, v7, v0

    if-nez v7, :cond_d

    .line 2381
    invoke-direct {p0, v0, v2}, Lcom/threed/jpct/GLRenderer;->initTextureStage(II)V

    .line 2386
    :goto_3
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v7}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v7}, Lcom/threed/jpct/Texture;->getMarker(I)I

    move-result v7

    sget v8, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-ne v7, v8, :cond_b

    .line 2387
    :cond_8
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v8, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {v3, v7, v8}, Lcom/threed/jpct/Texture;->setMarker(II)V

    .line 2388
    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eq v3, v7, :cond_a

    .line 2391
    iget v7, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v3, v7}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v7

    if-eqz v7, :cond_9

    .line 2392
    invoke-virtual {p0, v3}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V

    .line 2394
    :cond_9
    invoke-virtual {p0, v3}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    .line 2396
    :cond_a
    iget-object v7, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v8, -0x1

    aput v8, v7, v0

    .line 2398
    :cond_b
    invoke-direct {p0, v0, v3}, Lcom/threed/jpct/GLRenderer;->bindAndProject(ILcom/threed/jpct/Texture;)V

    .line 2369
    .end local v2    # "mode":I
    .end local v3    # "tex":Lcom/threed/jpct/Texture;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2372
    .end local v6    # "tt":I
    :cond_c
    iget-object v7, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v7, v7, v4

    aget v6, v7, p2

    goto :goto_2

    .line 2383
    .restart local v2    # "mode":I
    .restart local v3    # "tex":Lcom/threed/jpct/Texture;
    .restart local v6    # "tt":I
    :cond_d
    invoke-direct {p0, v0, v2}, Lcom/threed/jpct/GLRenderer;->switchTextureMode(II)V

    goto :goto_3

    .line 2400
    .end local v2    # "mode":I
    :cond_e
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->disableStage(I)V

    goto :goto_4

    .line 2403
    .end local v3    # "tex":Lcom/threed/jpct/Texture;
    :cond_f
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->disableStage(I)V

    goto :goto_4

    .line 2407
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v6    # "tt":I
    :cond_10
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableUnusedStages()V

    goto :goto_1
.end method

.method private setViewport(Lcom/threed/jpct/FrameBuffer;)V
    .locals 5
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 1683
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->yTargetStart:I

    .line 1684
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x0

    iget v2, p0, Lcom/threed/jpct/GLRenderer;->yTargetStart:I

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v3}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 1685
    return-void
.end method

.method private final switchTextureMode(II)V
    .locals 3
    .param p1, "stage"    # I
    .param p2, "mode"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lastMode:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_0

    .line 661
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    .line 662
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    invoke-interface {v0, v1, v2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 663
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lastMode:[I

    aput p2, v0, p1

    .line 665
    :cond_0
    return-void
.end method

.method private unloadTextures()V
    .locals 3

    .prologue
    .line 1634
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1635
    monitor-enter p0

    .line 1636
    :try_start_0
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1645
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1635
    monitor-exit p0

    .line 1648
    :cond_1
    return-void

    .line 1636
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Texture;

    .line 1637
    .local v0, "t":Lcom/threed/jpct/Texture;
    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v0, v2}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1638
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    if-eqz v2, :cond_3

    .line 1639
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v2, v0}, Lcom/threed/jpct/GL20Handler;->unloadRenderTarget(Lcom/threed/jpct/Texture;)V

    .line 1641
    :cond_3
    invoke-virtual {p0, v0}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V

    .line 1642
    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v0, v2}, Lcom/threed/jpct/Texture;->clearIDs(I)V

    goto :goto_0

    .line 1635
    .end local v0    # "t":Lcom/threed/jpct/Texture;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unsetBlendingMode()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 249
    return-void
.end method

.method private uploadInternal(IIIILjava/nio/ByteBuffer;Lcom/threed/jpct/Texture;)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "mode"    # I
    .param p4, "level"    # I
    .param p5, "texture"    # Ljava/nio/ByteBuffer;
    .param p6, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 977
    move-object/from16 v0, p6

    iget-boolean v1, v0, Lcom/threed/jpct/Texture;->etc1:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v1, :cond_2

    const/4 v11, 0x1

    .line 978
    .local v11, "doEtc":Z
    :goto_0
    if-eqz v11, :cond_0

    .line 979
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    move-object/from16 v0, p6

    iget-boolean v6, v0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/threed/jpct/GL20Handler;->uploadTexture(IIIIZLjava/nio/ByteBuffer;)Z

    move-result v11

    .line 982
    :cond_0
    if-nez v11, :cond_1

    .line 983
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xde1

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    move/from16 v3, p4

    move v5, p1

    move v6, p2

    move v9, p3

    move-object/from16 v10, p5

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 985
    :cond_1
    return-void

    .line 977
    .end local v11    # "doEtc":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addForUnload(Lcom/threed/jpct/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 686
    monitor-enter p0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 688
    sget-boolean v0, Lcom/threed/jpct/Config;->unloadImmediately:Z

    if-eqz v0, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->unloadTextures()V

    .line 686
    :cond_0
    monitor-exit p0

    .line 692
    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final bindTexture(II)V
    .locals 2
    .param p1, "stage"    # I
    .param p2, "texID"    # I

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->enableStage(I)V

    .line 654
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 655
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->stateChanges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->stateChanges:I

    .line 656
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aput p2, v0, p1

    .line 657
    return-void
.end method

.method public bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;I)V
    .locals 3
    .param p1, "vas"    # Lcom/threed/jpct/VertexAttributes;
    .param p2, "attributesId"    # I

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    iget-object v1, p1, Lcom/threed/jpct/VertexAttributes;->name:Ljava/lang/String;

    iget v2, p1, Lcom/threed/jpct/VertexAttributes;->type:I

    invoke-interface {v0, v1, v2, p2}, Lcom/threed/jpct/GL20Handler;->bindVertexAttributes(Ljava/lang/String;II)V

    .line 544
    :cond_0
    return-void
.end method

.method public bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;Ljava/nio/Buffer;)V
    .locals 3
    .param p1, "vas"    # Lcom/threed/jpct/VertexAttributes;
    .param p2, "attributes"    # Ljava/nio/Buffer;

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    iget-object v1, p1, Lcom/threed/jpct/VertexAttributes;->name:Ljava/lang/String;

    iget v2, p1, Lcom/threed/jpct/VertexAttributes;->type:I

    invoke-interface {v0, v1, v2, p2}, Lcom/threed/jpct/GL20Handler;->bindVertexAttributes(Ljava/lang/String;ILjava/nio/Buffer;)V

    .line 538
    :cond_0
    return-void
.end method

.method public blitIntArray([ILcom/threed/jpct/FrameBuffer;IIIIIIZII)V
    .locals 20
    .param p1, "src"    # [I
    .param p2, "frameBuffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p3, "srcX"    # I
    .param p4, "srcY"    # I
    .param p5, "destX"    # I
    .param p6, "destY"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "transparent"    # Z
    .param p10, "sourceWidth"    # I
    .param p11, "sourceHeight"    # I

    .prologue
    .line 1758
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p9

    invoke-direct {v0, v1, v2, v4}, Lcom/threed/jpct/GLRenderer;->enableBlitting(Lcom/threed/jpct/FrameBuffer;ZZ)V

    .line 1759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/GLRenderer;->prepareForBlitting([III)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    move/from16 v0, p3

    int-to-float v7, v0

    move/from16 v0, p4

    int-to-float v8, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v4 .. v19}, Lcom/threed/jpct/GLRenderer;->blit(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;FFIIIIZIIIIII)V

    .line 1761
    return-void
.end method

.method public blitTexture(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIIIZ)V
    .locals 19
    .param p1, "src"    # Lcom/threed/jpct/Texture;
    .param p2, "frameBuffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p3, "srcX"    # I
    .param p4, "srcY"    # I
    .param p5, "destX"    # I
    .param p6, "destY"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "transparent"    # Z

    .prologue
    .line 1746
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p9

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/GLRenderer;->enableBlitting(Lcom/threed/jpct/FrameBuffer;ZZ)V

    .line 1747
    move/from16 v0, p3

    int-to-float v6, v0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v3 .. v18}, Lcom/threed/jpct/GLRenderer;->blit(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;FFIIIIZIIIIII)V

    .line 1748
    return-void
.end method

.method public blitTexture(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIIIZZIIIIII)V
    .locals 19
    .param p1, "src"    # Lcom/threed/jpct/Texture;
    .param p2, "frameBuffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p3, "srcX"    # I
    .param p4, "srcY"    # I
    .param p5, "destX"    # I
    .param p6, "destY"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "additive"    # Z
    .param p10, "addColor"    # Z
    .param p11, "addX"    # I
    .param p12, "addY"    # I
    .param p13, "transValue"    # I
    .param p14, "red"    # I
    .param p15, "green"    # I
    .param p16, "blue"    # I

    .prologue
    .line 1752
    const/4 v3, -0x1

    move/from16 v0, p13

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p9

    invoke-direct {v0, v1, v3, v2}, Lcom/threed/jpct/GLRenderer;->enableBlitting(Lcom/threed/jpct/FrameBuffer;ZZ)V

    .line 1753
    move/from16 v0, p3

    int-to-float v6, v0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    invoke-direct/range {v3 .. v18}, Lcom/threed/jpct/GLRenderer;->blit(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;FFIIIIZIIIIII)V

    .line 1754
    return-void

    .line 1752
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clear(Lcom/threed/jpct/RGBColor;)V
    .locals 7
    .param p1, "col"    # Lcom/threed/jpct/RGBColor;

    .prologue
    const/16 v6, 0xc11

    const/4 v3, 0x0

    .line 1794
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1795
    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v1, :cond_0

    .line 1796
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1799
    :cond_0
    const/16 v0, 0x4100

    .line 1801
    .local v0, "cmode":I
    sget v1, Lcom/threed/jpct/Config;->aaMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1802
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1805
    :cond_1
    if-eqz p1, :cond_3

    .line 1806
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v2

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v3

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v4

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedAlpha()F

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 1810
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1811
    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v1, :cond_2

    .line 1812
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1814
    :cond_2
    return-void

    .line 1808
    :cond_3
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    goto :goto_0
.end method

.method public clearColorBufferOnly(Lcom/threed/jpct/RGBColor;)V
    .locals 7
    .param p1, "col"    # Lcom/threed/jpct/RGBColor;

    .prologue
    const/16 v6, 0xc11

    const/4 v3, 0x0

    .line 1828
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1829
    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v1, :cond_0

    .line 1830
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1832
    :cond_0
    const/16 v0, 0x4000

    .line 1833
    .local v0, "cmode":I
    sget v1, Lcom/threed/jpct/Config;->aaMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1834
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1837
    :cond_1
    if-eqz p1, :cond_3

    .line 1838
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v2

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v3

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v4

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getNormalizedAlpha()F

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 1843
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1844
    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v1, :cond_2

    .line 1845
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1847
    :cond_2
    return-void

    .line 1840
    :cond_3
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    goto :goto_0
.end method

.method public clearShader()V
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->lineMode:Z

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->clearShader()V

    .line 507
    :cond_0
    return-void
.end method

.method clearStageFlag()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    .line 572
    return-void
.end method

.method public clearTangents()V
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->clearTangents()V

    .line 562
    :cond_0
    return-void
.end method

.method public clearTangents(I)V
    .locals 1
    .param p1, "tangentsId"    # I

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0, p1}, Lcom/threed/jpct/GL20Handler;->clearTangents(I)V

    .line 568
    :cond_0
    return-void
.end method

.method public clearZBufferOnly()V
    .locals 3

    .prologue
    const/16 v2, 0xc11

    .line 1817
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1818
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1822
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->scissorClearAll:Z

    if-eqz v0, :cond_1

    .line 1823
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1825
    :cond_1
    return-void
.end method

.method public closeShader()V
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->resetShaderData()V

    .line 520
    :cond_0
    return-void
.end method

.method final convertTexture(Lcom/threed/jpct/Texture;)V
    .locals 39
    .param p1, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 775
    const/16 v38, 0x0

    .line 776
    .local v38, "virtual":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-nez v2, :cond_0

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    invoke-virtual {v2}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v37

    .line 778
    .local v37, "tv":Lcom/threed/jpct/Virtualizer;
    if-eqz v37, :cond_0

    .line 779
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/Texture;)Z

    move-result v26

    .line 780
    .local v26, "ok":Z
    if-eqz v26, :cond_0

    .line 781
    const/16 v38, 0x1

    .line 786
    .end local v26    # "ok":Z
    .end local v37    # "tv":Lcom/threed/jpct/Virtualizer;
    :cond_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->nPot:Z

    if-eqz v2, :cond_1

    const-string v2, "npot"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/threed/jpct/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    const-string v2, "This device doesn\'t support nPot-textures!"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 790
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Texture;->texels:[I

    move-object/from16 v27, v0

    .line 791
    .local v27, "pixels":[I
    if-nez v27, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-eqz v2, :cond_2

    .line 792
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    invoke-static {v2}, Lcom/threed/jpct/ZipHelper;->unzip([B)[I

    move-result-object v27

    .line 795
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v7

    .line 796
    .local v7, "h":I
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v6

    .line 798
    .local v6, "w":I
    if-eq v7, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v2, v2, Lcom/threed/jpct/GL20Handler;

    if-eqz v2, :cond_3

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Texture\'s size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but textures should be square for OpenGL ES2.0! This may result in a black texture!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 803
    :cond_3
    mul-int v35, v7, v6

    .line 805
    .local v35, "texLen":I
    const/16 v33, 0x0

    .line 806
    .local v33, "temp":Ljava/nio/ByteBuffer;
    shl-int/lit8 v24, v35, 0x2

    .line 808
    .local v24, "len":I
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->etc1:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_5

    .line 811
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 814
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    if-eqz v2, :cond_6

    .line 815
    shr-int/lit8 v24, v24, 0x1

    .line 818
    :cond_6
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Allocating native memory for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " texture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/threed/jpct/Texture;->bilinear:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/threed/jpct/Texture;->etc1:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 820
    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 819
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 820
    const/4 v3, 0x3

    .line 819
    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 823
    :cond_7
    invoke-static/range {v24 .. v24}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v33

    .line 825
    const/16 v10, 0x1401

    .line 826
    .local v10, "mode":I
    const/16 v28, 0x0

    check-cast v28, [I

    .line 827
    .local v28, "res":[I
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    if-eqz v2, :cond_1d

    .line 828
    move-object/from16 v19, v27

    .line 829
    .local v19, "alpha":[I
    if-eqz v27, :cond_9

    .line 830
    shr-int/lit8 v2, v35, 0x1

    new-array v0, v2, [I

    move-object/from16 v28, v0

    .line 831
    const v21, 0xf0f0f0

    .line 833
    .local v21, "cbm":I
    const v10, 0x8033

    .line 834
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->alpha:Z

    if-eqz v2, :cond_1a

    .line 835
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v35

    if-lt v0, v1, :cond_18

    .line 862
    :cond_8
    invoke-virtual/range {v33 .. v33}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 863
    invoke-virtual/range {v33 .. v33}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 888
    .end local v21    # "cbm":I
    .end local v23    # "i":I
    :cond_9
    :goto_2
    if-nez v27, :cond_b

    .line 889
    invoke-virtual/range {v33 .. v33}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 890
    invoke-virtual/range {v33 .. v33}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    if-eqz v3, :cond_a

    shr-int/lit8 v35, v35, 0x1

    .end local v35    # "texLen":I
    :cond_a
    move/from16 v0, v35

    new-array v3, v0, [I

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 893
    :cond_b
    move-object/from16 v11, v33

    .line 895
    .local v11, "texBuf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/threed/jpct/GLRenderer;->getSmallBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v20

    .line 896
    .local v20, "buf":Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 898
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v34

    .line 900
    .local v34, "texID":I
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New texture\'s id is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 904
    :cond_c
    if-nez v34, :cond_d

    .line 905
    const-string v2, "Failed to upload texture!"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 908
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    const/4 v3, 0x0

    aget v32, v2, v3

    .line 909
    .local v32, "sid":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 911
    const/16 v25, 0x2601

    .line 913
    .local v25, "myMode":I
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->nPot:Z

    if-nez v2, :cond_f

    .line 914
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->mipmap:Z

    if-eqz v2, :cond_e

    .line 915
    const/16 v25, 0x2701

    .line 917
    :cond_e
    sget-boolean v2, Lcom/threed/jpct/Config;->glTrilinear:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->etc1:Z

    if-nez v2, :cond_f

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->mipmap:Z

    if-eqz v2, :cond_f

    .line 918
    const/16 v25, 0x2703

    .line 922
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    const/16 v4, 0x2801

    move/from16 v0, v25

    invoke-interface {v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 924
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->bilinear:Z

    if-eqz v2, :cond_21

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    const/16 v4, 0x2800

    const/16 v5, 0x2601

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 930
    :goto_3
    const/16 v22, 0x2901

    .line 931
    .local v22, "clampMode":I
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->repeat:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->nPot:Z

    if-eqz v2, :cond_11

    .line 932
    :cond_10
    const v22, 0x812f

    .line 934
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    const/16 v4, 0x2802

    move/from16 v0, v22

    invoke-interface {v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    const/16 v4, 0x2803

    move/from16 v0, v22

    invoke-interface {v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 937
    const/16 v2, 0x2601

    move/from16 v0, v25

    if-eq v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_12

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->nPot:Z

    if-eqz v2, :cond_22

    .line 938
    :cond_12
    const/16 v28, 0x0

    check-cast v28, [I

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 960
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Lcom/threed/jpct/Texture;->setOpenGLID(II)V

    .line 961
    if-eqz v32, :cond_14

    .line 962
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 965
    :cond_14
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New texture uploaded: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 969
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 971
    if-eqz v38, :cond_16

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    invoke-virtual {v2}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/threed/jpct/Virtualizer;->freeHandles(Lcom/threed/jpct/Texture;)V

    .line 974
    :cond_16
    return-void

    .line 819
    .end local v10    # "mode":I
    .end local v11    # "texBuf":Ljava/nio/ByteBuffer;
    .end local v19    # "alpha":[I
    .end local v20    # "buf":Ljava/nio/IntBuffer;
    .end local v22    # "clampMode":I
    .end local v25    # "myMode":I
    .end local v28    # "res":[I
    .end local v32    # "sid":I
    .end local v34    # "texID":I
    .restart local v35    # "texLen":I
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 837
    .restart local v10    # "mode":I
    .restart local v19    # "alpha":[I
    .restart local v21    # "cbm":I
    .restart local v23    # "i":I
    .restart local v28    # "res":[I
    :cond_18
    aget v36, v27, v23

    .line 838
    .local v36, "texel":I
    const v2, 0xff00

    and-int v2, v2, v36

    shr-int/lit8 v2, v2, 0xc

    shl-int/lit8 v2, v2, 0x4

    move/from16 v0, v36

    and-int/lit16 v3, v0, 0xff

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    const/high16 v3, 0xff0000

    and-int v3, v3, v36

    shr-int/lit8 v3, v3, 0x14

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    shl-int/lit8 v29, v2, 0x4

    .line 839
    .local v29, "rgba":I
    aget v2, v19, v23

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x1c

    or-int v29, v29, v2

    .line 840
    and-int/lit8 v2, v23, 0x1

    if-nez v2, :cond_19

    .line 841
    shr-int/lit8 v2, v23, 0x1

    aput v29, v28, v2

    .line 835
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 843
    :cond_19
    shr-int/lit8 v2, v23, 0x1

    aget v3, v28, v2

    shl-int/lit8 v4, v29, 0x10

    or-int/2addr v3, v4

    aput v3, v28, v2

    goto :goto_5

    .line 847
    .end local v23    # "i":I
    .end local v29    # "rgba":I
    .end local v36    # "texel":I
    :cond_1a
    const v10, 0x8034

    .line 848
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v35

    if-ge v0, v1, :cond_8

    .line 850
    aget v36, v27, v23

    .line 851
    .restart local v36    # "texel":I
    const v2, 0xff00

    and-int v2, v2, v36

    shr-int/lit8 v2, v2, 0xb

    shl-int/lit8 v2, v2, 0x5

    move/from16 v0, v36

    and-int/lit16 v3, v0, 0xff

    shr-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    const/high16 v3, 0xff0000

    and-int v3, v3, v36

    shr-int/lit8 v3, v3, 0x13

    shl-int/lit8 v3, v3, 0xa

    or-int/2addr v2, v3

    shl-int/lit8 v29, v2, 0x1

    .line 852
    .restart local v29    # "rgba":I
    const v2, 0xffffff

    and-int v2, v2, v36

    and-int v2, v2, v21

    if-eqz v2, :cond_1b

    .line 853
    or-int/lit8 v29, v29, 0x1

    .line 855
    :cond_1b
    and-int/lit8 v2, v23, 0x1

    if-nez v2, :cond_1c

    .line 856
    shr-int/lit8 v2, v23, 0x1

    aput v29, v28, v2

    .line 848
    :goto_7
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 858
    :cond_1c
    shr-int/lit8 v2, v23, 0x1

    aget v3, v28, v2

    shl-int/lit8 v4, v29, 0x10

    or-int/2addr v3, v4

    aput v3, v28, v2

    goto :goto_7

    .line 866
    .end local v19    # "alpha":[I
    .end local v21    # "cbm":I
    .end local v23    # "i":I
    .end local v29    # "rgba":I
    .end local v36    # "texel":I
    :cond_1d
    move-object/from16 v19, v27

    .line 867
    .restart local v19    # "alpha":[I
    if-eqz v27, :cond_9

    .line 868
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 869
    const v21, 0xf0f0f0

    .line 870
    .restart local v21    # "cbm":I
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_8
    move/from16 v0, v23

    move/from16 v1, v35

    if-lt v0, v1, :cond_1e

    .line 883
    invoke-virtual/range {v33 .. v33}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 884
    invoke-virtual/range {v33 .. v33}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    goto/16 :goto_2

    .line 871
    :cond_1e
    aget v36, v27, v23

    .line 872
    .restart local v36    # "texel":I
    const v2, 0xff00

    and-int v2, v2, v36

    move/from16 v0, v36

    and-int/lit16 v3, v0, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/high16 v3, 0xff0000

    and-int v3, v3, v36

    shr-int/lit8 v3, v3, 0x10

    or-int v29, v2, v3

    .line 874
    .restart local v29    # "rgba":I
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->alpha:Z

    if-nez v2, :cond_20

    .line 875
    const v2, 0xffffff

    and-int v2, v2, v36

    and-int v2, v2, v21

    if-eqz v2, :cond_1f

    .line 876
    const/high16 v2, -0x1000000

    or-int v29, v29, v2

    .line 881
    :cond_1f
    :goto_9
    aput v29, v28, v23

    .line 870
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 879
    :cond_20
    aget v2, v19, v23

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int v29, v29, v2

    goto :goto_9

    .line 927
    .end local v21    # "cbm":I
    .end local v23    # "i":I
    .end local v29    # "rgba":I
    .end local v35    # "texLen":I
    .end local v36    # "texel":I
    .restart local v11    # "texBuf":Ljava/nio/ByteBuffer;
    .restart local v20    # "buf":Ljava/nio/IntBuffer;
    .restart local v25    # "myMode":I
    .restart local v32    # "sid":I
    .restart local v34    # "texID":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    const/16 v4, 0x2800

    const/16 v5, 0x2600

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    goto/16 :goto_3

    .line 941
    .restart local v22    # "clampMode":I
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 942
    .local v30, "s":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/threed/jpct/GLRenderer;->mipmapsByGpu:Z

    if-eqz v2, :cond_23

    sget-boolean v2, Lcom/threed/jpct/Config;->internalMipmapCreation:Z

    if-nez v2, :cond_23

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/threed/jpct/Texture;->etc1:Z

    if-nez v2, :cond_23

    .line 943
    const/16 v28, 0x0

    check-cast v28, [I

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    const v4, 0x8191

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 945
    const/16 v16, 0x0

    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move v15, v10

    move-object/from16 v17, v11

    move-object/from16 v18, p1

    invoke-direct/range {v12 .. v18}, Lcom/threed/jpct/GLRenderer;->uploadInternal(IIIILjava/nio/ByteBuffer;Lcom/threed/jpct/Texture;)V

    .line 946
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mipmaps generated by the GPU in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v30

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 952
    :cond_23
    const/16 v16, 0x0

    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move v15, v10

    move-object/from16 v17, v11

    move-object/from16 v18, p1

    invoke-direct/range {v12 .. v18}, Lcom/threed/jpct/GLRenderer;->uploadInternal(IIIILjava/nio/ByteBuffer;Lcom/threed/jpct/Texture;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move/from16 v15, v34

    move/from16 v16, v10

    move-object/from16 v17, v28

    invoke-direct/range {v12 .. v17}, Lcom/threed/jpct/GLRenderer;->buildMipmap(Ljavax/microedition/khronos/opengles/GL10;Lcom/threed/jpct/Texture;II[I)V

    .line 954
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mipmaps generated by the CPU in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v30

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_4
.end method

.method public deleteBuffer(I)V
    .locals 4
    .param p1, "bufferId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 483
    if-eqz p1, :cond_0

    .line 484
    new-array v0, v3, [I

    .line 485
    .local v0, "buffer":[I
    aput p1, v0, v2

    .line 486
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 487
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLRenderer;->unregisterVBO(I)V

    .line 489
    .end local v0    # "buffer":[I
    :cond_0
    return-void
.end method

.method public disableBlitting()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1198
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    if-eqz v0, :cond_2

    .line 1199
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->executeBufferedBlits()V

    .line 1200
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/GLRenderer;->blitScaling:I

    iget v1, p0, Lcom/threed/jpct/GLRenderer;->currentRGBScaling:I

    if-eq v0, v1, :cond_0

    .line 1201
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->blitScaling:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->setRGBScaling(I)V

    .line 1204
    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1206
    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->blitTrans:Z

    .line 1208
    :cond_1
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->enableDepthBuffer()V

    .line 1209
    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->blitMode:Z

    .line 1211
    :cond_2
    return-void
.end method

.method public disableLineMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2036
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 2038
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    .line 2039
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    .line 2041
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2042
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 2044
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2048
    :cond_0
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    .line 2054
    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    .line 2055
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renableVertexArrays()V

    .line 2056
    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    .line 2057
    return-void
.end method

.method public dispose()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const v6, -0x3b864000    # -999.0f

    const/4 v5, 0x0

    .line 440
    iget-boolean v4, p0, Lcom/threed/jpct/GLRenderer;->disposed:Z

    if-nez v4, :cond_1

    .line 441
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/threed/jpct/GLRenderer;->disposed:Z

    .line 442
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    .line 443
    iput v6, p0, Lcom/threed/jpct/GLRenderer;->lastFOV:F

    .line 444
    iput v6, p0, Lcom/threed/jpct/GLRenderer;->lastFarPlane:F

    .line 445
    iput v6, p0, Lcom/threed/jpct/GLRenderer;->lastNearPlane:F

    .line 446
    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->pixelBuffer:Ljava/nio/IntBuffer;

    .line 447
    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->blitBuffer:Lcom/threed/jpct/Texture;

    .line 448
    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    .line 449
    iput-object v5, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    .line 451
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v4

    iget-object v2, v4, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    .line 452
    .local v2, "tex":[Lcom/threed/jpct/Texture;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_2

    .line 458
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->unloadKnownTextures()V

    .line 460
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->texMan:Lcom/threed/jpct/TextureManager;

    iget v5, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v4, v5}, Lcom/threed/jpct/TextureManager;->flushOpenGLIDs(I)V

    .line 462
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v4, :cond_0

    .line 463
    const-string v4, "Disposing VBOs!"

    invoke-static {v4, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 465
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 466
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 465
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    const/4 v0, 0x0

    .line 471
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 474
    .end local v0    # "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    const-string v4, "Renderer disposed!"

    invoke-static {v4, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 476
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GLRenderer disposed with id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 480
    .end local v1    # "i":I
    .end local v2    # "tex":[Lcom/threed/jpct/Texture;
    :cond_1
    return-void

    .line 454
    .restart local v1    # "i":I
    .restart local v2    # "tex":[Lcom/threed/jpct/Texture;
    :cond_2
    :try_start_1
    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/threed/jpct/GLRenderer;->removeTexture(Lcom/threed/jpct/Texture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .restart local v0    # "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 467
    .local v3, "vboId":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    goto :goto_1

    .line 465
    .end local v3    # "vboId":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 455
    .end local v0    # "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public disposeProcessor(Lcom/threed/jpct/IPostProcessor;)V
    .locals 0
    .param p1, "pp"    # Lcom/threed/jpct/IPostProcessor;

    .prologue
    .line 1915
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1916
    invoke-interface {p1}, Lcom/threed/jpct/IPostProcessor;->dispose()V

    .line 1917
    return-void
.end method

.method public drawLine(Lcom/threed/jpct/Polyline;)V
    .locals 8
    .param p1, "line"    # Lcom/threed/jpct/Polyline;

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 2060
    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getData()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 2062
    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getColor()Lcom/threed/jpct/RGBColor;

    move-result-object v0

    .line 2063
    .local v0, "col":Lcom/threed/jpct/RGBColor;
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLRenderer;->setLineColor(Lcom/threed/jpct/RGBColor;)V

    .line 2065
    iget v1, v0, Lcom/threed/jpct/RGBColor;->alpha:I

    if-ge v1, v7, :cond_0

    .line 2066
    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getTransparencyMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/threed/jpct/GLRenderer;->setBlendingMode(I)V

    .line 2069
    :cond_0
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    .line 2071
    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->isPointMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2072
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getWidth()F

    move-result v2

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 2077
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x1406

    const/16 v3, 0xc

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getData()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-interface {v1, v6, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 2079
    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->isPointMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2080
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getLength()I

    move-result v2

    invoke-interface {v1, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 2085
    :goto_1
    iget v1, v0, Lcom/threed/jpct/RGBColor;->alpha:I

    if-ge v1, v7, :cond_1

    .line 2086
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->unsetBlendingMode()V

    .line 2088
    :cond_1
    return-void

    .line 2074
    :cond_2
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getWidth()F

    move-result v2

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    goto :goto_0

    .line 2082
    :cond_3
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->getLength()I

    move-result v2

    invoke-interface {v1, v6, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_1
.end method

.method public drawVertexArray(Lcom/threed/jpct/VisList;IILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V
    .locals 27
    .param p1, "visList"    # Lcom/threed/jpct/VisList;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p5, "world"    # Lcom/threed/jpct/World;

    .prologue
    .line 2117
    const/4 v2, 0x0

    sput-object v2, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    .line 2118
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    .line 2119
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    .line 2121
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/threed/jpct/GLRenderer;->init:Z

    if-eqz v2, :cond_0

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->resetShader()V

    .line 2123
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 2124
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->enableCompiledPipeline()V

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->lastMultiTextures:[I

    move-object/from16 v22, v0

    .line 2127
    .local v22, "lastMultiTextures":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->lastMultiModes:[I

    move-object/from16 v21, v0

    .line 2129
    .local v21, "lastMultiModes":[I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    move/from16 v0, v18

    if-lt v0, v2, :cond_1

    .line 2134
    const/16 v23, -0x270f

    .line 2135
    .local v23, "lastNumber":I
    const/16 v24, -0x270f

    .line 2137
    .local v24, "lastTNumber":I
    move/from16 v5, v23

    .line 2138
    .local v5, "number":I
    move/from16 v4, v24

    .line 2140
    .local v4, "tNumber":I
    const/4 v3, 0x0

    .line 2142
    .local v3, "obj":Lcom/threed/jpct/Object3D;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/threed/jpct/World;->fillAmbientLight([F)V

    .line 2144
    const/16 v18, 0x0

    :goto_1
    const/4 v2, 0x3

    move/from16 v0, v18

    if-lt v0, v2, :cond_2

    .line 2150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v2, v7

    .line 2152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/threed/jpct/GLRenderer;->blending:Z

    .line 2154
    move/from16 v19, p2

    .local v19, "ind":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, p3

    if-le v0, v1, :cond_4

    .line 2222
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/threed/jpct/GLRenderer;->setTextureMatrix(Lcom/threed/jpct/Matrix;)V

    .line 2223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2224
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->disableCompiledPipeline()V

    .line 2225
    const/4 v2, 0x0

    sput-object v2, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    .line 2227
    .end local v3    # "obj":Lcom/threed/jpct/Object3D;
    .end local v4    # "tNumber":I
    .end local v5    # "number":I
    .end local v18    # "i":I
    .end local v19    # "ind":I
    .end local v21    # "lastMultiModes":[I
    .end local v22    # "lastMultiTextures":[I
    .end local v23    # "lastNumber":I
    .end local v24    # "lastTNumber":I
    :cond_0
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/threed/jpct/GLRenderer;->lastActivatedStage:I

    .line 2228
    return-void

    .line 2130
    .restart local v18    # "i":I
    .restart local v21    # "lastMultiModes":[I
    .restart local v22    # "lastMultiTextures":[I
    :cond_1
    const/16 v2, -0x270f

    aput v2, v22, v18

    .line 2131
    const/16 v2, -0x270f

    aput v2, v21, v18

    .line 2129
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 2145
    .restart local v3    # "obj":Lcom/threed/jpct/Object3D;
    .restart local v4    # "tNumber":I
    .restart local v5    # "number":I
    .restart local v23    # "lastNumber":I
    .restart local v24    # "lastTNumber":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    aget v7, v7, v18

    sget v8, Lcom/threed/jpct/GLRenderer;->COLOR_INV:F

    mul-float/2addr v7, v8

    aput v7, v2, v18

    .line 2146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    aget v2, v2, v18

    const/4 v7, 0x0

    cmpg-float v2, v2, v7

    if-gez v2, :cond_3

    .line 2147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    const/4 v7, 0x0

    aput v7, v2, v18

    .line 2144
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 2156
    .restart local v19    # "ind":I
    :cond_4
    const/16 v17, 0x0

    .line 2158
    .local v17, "hasToReset":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v3, v2, v19

    .line 2160
    move/from16 v23, v5

    .line 2161
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v5, v2, v19

    .line 2163
    iget-boolean v2, v3, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    if-eqz v2, :cond_a

    .line 2164
    const/4 v4, 0x0

    .line 2165
    const/16 v24, 0x0

    .line 2171
    :goto_3
    iget v0, v3, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    move/from16 v16, v0

    .line 2172
    .local v16, "endStage":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    move/from16 v0, v16

    if-le v0, v2, :cond_5

    .line 2173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GLRenderer;->minDriverAndConfig:I

    move/from16 v16, v0

    .line 2176
    :cond_5
    iget-boolean v0, v3, Lcom/threed/jpct/Object3D;->isTrans:Z

    move/from16 v20, v0

    .line 2178
    .local v20, "isTransparent":Z
    if-eqz v20, :cond_7

    .line 2179
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/threed/jpct/GLRenderer;->blending:Z

    if-nez v2, :cond_6

    .line 2180
    iget v2, v3, Lcom/threed/jpct/Object3D;->transMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/threed/jpct/GLRenderer;->setBlendingMode(I)V

    .line 2181
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->setDepthBuffer()V

    .line 2183
    :cond_6
    const/16 v17, 0x1

    .line 2184
    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_7

    .line 2187
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    add-int/lit8 v7, v19, 0x1

    aget-object v25, v2, v7

    .line 2188
    .local v25, "nextObj":Lcom/threed/jpct/Object3D;
    invoke-virtual/range {v25 .. v25}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->isTrans:Z

    move/from16 v0, v20

    if-ne v2, v0, :cond_7

    move-object/from16 v0, v25

    iget v2, v0, Lcom/threed/jpct/Object3D;->transMode:I

    iget v7, v3, Lcom/threed/jpct/Object3D;->transMode:I

    if-ne v2, v7, :cond_7

    .line 2189
    const/16 v17, 0x0

    .line 2190
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/threed/jpct/GLRenderer;->blending:Z

    .end local v25    # "nextObj":Lcom/threed/jpct/Object3D;
    :cond_7
    move-object/from16 v2, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 2195
    invoke-direct/range {v2 .. v7}, Lcom/threed/jpct/GLRenderer;->setTextures(Lcom/threed/jpct/Object3D;IILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V

    .line 2197
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getAdditionalColor()Lcom/threed/jpct/RGBColor;

    move-result-object v15

    .line 2198
    .local v15, "col":Lcom/threed/jpct/RGBColor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/4 v7, 0x0

    invoke-virtual {v15}, Lcom/threed/jpct/RGBColor;->getNormalizedRed()F

    move-result v8

    aput v8, v2, v7

    .line 2199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/4 v7, 0x1

    invoke-virtual {v15}, Lcom/threed/jpct/RGBColor;->getNormalizedGreen()F

    move-result v8

    aput v8, v2, v7

    .line 2200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/4 v7, 0x2

    invoke-virtual {v15}, Lcom/threed/jpct/RGBColor;->getNormalizedBlue()F

    move-result v8

    aput v8, v2, v7

    .line 2201
    const/high16 v26, 0x3f800000    # 1.0f

    .line 2202
    .local v26, "tr":F
    if-eqz v20, :cond_8

    .line 2203
    sget v2, Lcom/threed/jpct/Config;->glTransparencyOffset:F

    iget v7, v3, Lcom/threed/jpct/Object3D;->transValue:I

    int-to-float v7, v7

    sget v8, Lcom/threed/jpct/Config;->glTransparencyMul:F

    mul-float/2addr v7, v8

    add-float v26, v2, v7

    .line 2204
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v26, v2

    if-lez v2, :cond_8

    .line 2205
    const/high16 v26, 0x3f800000    # 1.0f

    .line 2208
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/4 v7, 0x3

    aput v26, v2, v7

    .line 2210
    iget-object v2, v3, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v7, v7, v19

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/threed/jpct/CompiledInstance;

    .line 2211
    .local v6, "ci":Lcom/threed/jpct/CompiledInstance;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/threed/jpct/GLRenderer;->myID:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/threed/jpct/GLRenderer;->cols:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v2, :cond_b

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v13, v3, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v6 .. v14}, Lcom/threed/jpct/CompiledInstance;->render(ILcom/threed/jpct/GLRenderer;[F[FZLcom/threed/jpct/Camera;[[FI)V

    .line 2213
    if-eqz v17, :cond_9

    .line 2214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/threed/jpct/GLRenderer;->blending:Z

    .line 2215
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->unsetBlendingMode()V

    .line 2216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 2154
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 2167
    .end local v6    # "ci":Lcom/threed/jpct/CompiledInstance;
    .end local v15    # "col":Lcom/threed/jpct/RGBColor;
    .end local v16    # "endStage":I
    .end local v20    # "isTransparent":Z
    .end local v26    # "tr":F
    :cond_a
    move v4, v5

    .line 2168
    move/from16 v24, v23

    goto/16 :goto_3

    .line 2211
    .restart local v6    # "ci":Lcom/threed/jpct/CompiledInstance;
    .restart local v15    # "col":Lcom/threed/jpct/RGBColor;
    .restart local v16    # "endStage":I
    .restart local v20    # "isTransparent":Z
    .restart local v26    # "tr":F
    :cond_b
    const/4 v11, 0x0

    goto :goto_4
.end method

.method public drawWireframe(Lcom/threed/jpct/VisList;IIILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;IZ)V
    .locals 12
    .param p1, "visList"    # Lcom/threed/jpct/VisList;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "color"    # I
    .param p5, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p6, "world"    # Lcom/threed/jpct/World;
    .param p7, "size"    # I
    .param p8, "pointMode"    # Z

    .prologue
    .line 2231
    iget-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    if-eqz v2, :cond_2

    .line 2232
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableFogging()V

    .line 2233
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 2235
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    .line 2236
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    .line 2240
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->setLineShader()V

    .line 2241
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renableVertexArrays()V

    .line 2243
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v0, p7

    int-to-float v3, v0

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 2244
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v0, p7

    int-to-float v3, v0

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 2246
    iget-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v2, :cond_0

    .line 2247
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 2249
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xb71

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 2255
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableUnusedStages()V

    .line 2257
    iget-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v2, :cond_3

    .line 2258
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    shr-int/lit8 v3, p4, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    shr-int/lit8 v4, p4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    move/from16 v0, p4

    and-int/lit16 v5, v0, 0xff

    int-to-float v5, v5

    shr-int/lit8 v6, p4, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 2267
    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 2268
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 2269
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 2270
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 2272
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 2273
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 2274
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 2275
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->cols:[F

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 2277
    const/4 v2, 0x0

    sput-object v2, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    .line 2279
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->lineMode:Z

    .line 2280
    move v10, p2

    .local v10, "ind":I
    :goto_1
    if-le v10, p3, :cond_4

    .line 2286
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->lineMode:Z

    .line 2288
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    .line 2289
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    .line 2291
    iget-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v2, :cond_1

    .line 2292
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2294
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xb71

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2296
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    .line 2303
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    .line 2304
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renableVertexArrays()V

    .line 2305
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    .line 2306
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableCompiledPipeline()V

    .line 2307
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2308
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 2309
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 2310
    const/4 v2, 0x0

    sput-object v2, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    .line 2311
    const/4 v2, 0x0

    sput-object v2, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    .line 2313
    .end local v10    # "ind":I
    :cond_2
    return-void

    .line 2260
    :cond_3
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v3, 0x0

    shr-int/lit8 v4, p4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, v2, v3

    .line 2261
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v3, 0x1

    shr-int/lit8 v4, p4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, v2, v3

    .line 2262
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v3, 0x2

    move/from16 v0, p4

    and-int/lit16 v4, v0, 0xff

    int-to-float v4, v4

    aput v4, v2, v3

    .line 2263
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    const/4 v3, 0x3

    shr-int/lit8 v4, p4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, v2, v3

    .line 2264
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->lineColorShader:Lcom/threed/jpct/GLSLShader;

    const-string v3, "color"

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->lineCol:[F

    invoke-virtual {v2, v3, v4}, Lcom/threed/jpct/GLSLShader;->setUniform(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 2281
    .restart local v10    # "ind":I
    :cond_4
    iget-object v2, p1, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v11, v2, v10

    .line 2282
    .local v11, "obj":Lcom/threed/jpct/Object3D;
    iget-object v2, v11, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/CompiledInstance;

    .line 2283
    .local v1, "ci":Lcom/threed/jpct/CompiledInstance;
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    .line 2284
    iget v2, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->ambient:[F

    iget-object v5, p0, Lcom/threed/jpct/GLRenderer;->cols:[F

    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v3, :cond_5

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v8, v11, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    if-eqz p8, :cond_6

    const/4 v9, 0x2

    :goto_3
    move-object v3, p0

    invoke-virtual/range {v1 .. v9}, Lcom/threed/jpct/CompiledInstance;->render(ILcom/threed/jpct/GLRenderer;[F[FZLcom/threed/jpct/Camera;[[FI)V

    .line 2280
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2284
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v9, 0x1

    goto :goto_3
.end method

.method public enableLineMode(Lcom/threed/jpct/World;)V
    .locals 5
    .param p1, "world"    # Lcom/threed/jpct/World;

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 2001
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->clearShader()V

    .line 2002
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    .line 2004
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableCompiledPipeline()V

    .line 2006
    invoke-virtual {p1}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v0

    .line 2008
    .local v0, "cam":Lcom/threed/jpct/Camera;
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->tmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 2009
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->tmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->transformToGL()V

    .line 2011
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 2012
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    iget v2, v0, Lcom/threed/jpct/Camera;->backBx:F

    neg-float v2, v2

    iget v3, v0, Lcom/threed/jpct/Camera;->backBy:F

    neg-float v3, v3

    iget v4, v0, Lcom/threed/jpct/Camera;->backBz:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    .line 2013
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->tmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 2015
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->setLineShader()V

    .line 2016
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renableVertexArrays()V

    .line 2017
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->moMat:Lcom/threed/jpct/Matrix;

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->cameraMatrix:[F

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/GLRenderer;->cameraMatrix:[F

    .line 2019
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x1700

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2020
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2021
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 2022
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->cameraMatrix:[F

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 2024
    iget-boolean v1, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v1, :cond_0

    .line 2025
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xde1

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 2028
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x8074

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 2029
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x8078

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 2030
    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x8075

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 2032
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableUnusedStages()V

    .line 2033
    return-void
.end method

.method public endPainting()V
    .locals 1

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1903
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->resetTextureStates()V

    .line 1904
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->listenerActive:Z

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    invoke-interface {v0}, Lcom/threed/jpct/IPaintListener;->finishedPainting()V

    .line 1907
    :cond_0
    return-void
.end method

.method public endState()V
    .locals 0

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1743
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 2432
    return-void
.end method

.method public grabScreen(Lcom/threed/jpct/FrameBuffer;[I)V
    .locals 19
    .param p1, "fb"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "pixelout"    # [I

    .prologue
    .line 1850
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1851
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v4

    .line 1852
    .local v4, "w":I
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v5

    .line 1853
    .local v5, "h":I
    mul-int v13, v4, v5

    .line 1854
    .local v13, "sizeI":I
    shl-int/lit8 v12, v13, 0x2

    .line 1856
    .local v12, "size":I
    const/4 v8, 0x0

    .line 1857
    .local v8, "pixels":Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/GLRenderer;->pixelBuffer:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/threed/jpct/GLRenderer;->pixelBufferSize:I

    if-ne v12, v1, :cond_0

    .line 1858
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/GLRenderer;->pixelBuffer:Ljava/nio/IntBuffer;

    .line 1861
    :cond_0
    if-nez v8, :cond_1

    .line 1862
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    .line 1863
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/threed/jpct/GLRenderer;->pixelBuffer:Ljava/nio/IntBuffer;

    .line 1864
    move-object/from16 v0, p0

    iput v12, v0, Lcom/threed/jpct/GLRenderer;->pixelBufferSize:I

    .line 1868
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1870
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-lt v9, v13, :cond_2

    .line 1874
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_1
    shr-int/lit8 v1, v5, 0x1

    move/from16 v0, v16

    if-lt v0, v1, :cond_3

    .line 1885
    return-void

    .line 1871
    .end local v16    # "y":I
    :cond_2
    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    aput v1, p2, v9

    .line 1870
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1875
    .restart local v16    # "y":I
    :cond_3
    mul-int v17, v16, v4

    .line 1876
    .local v17, "y1":I
    add-int/lit8 v1, v5, -0x1

    sub-int v1, v1, v16

    mul-int v18, v1, v4

    .line 1877
    .local v18, "y2":I
    const/4 v15, 0x0

    .local v15, "x":I
    :goto_2
    if-lt v15, v4, :cond_4

    .line 1874
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1878
    :cond_4
    add-int v10, v15, v17

    .line 1879
    .local v10, "p1":I
    add-int v11, v18, v15

    .line 1880
    .local v11, "p2":I
    aget v14, p2, v10

    .line 1881
    .local v14, "tmpPix":I
    aget v1, p2, v11

    aput v1, p2, v10

    .line 1882
    aput v14, p2, v11

    .line 1877
    add-int/lit8 v15, v15, 0x1

    goto :goto_2
.end method

.method public final init(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "glContext"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 355
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/GLRenderer;->init(Ljavax/microedition/khronos/opengles/GL10;IIZ)V

    .line 356
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initShader()Lcom/threed/jpct/GLSLShader;
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->updateShaderData()Lcom/threed/jpct/GLSLShader;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->init:Z

    return v0
.end method

.method public postProcess(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/IPostProcessor;)V
    .locals 0
    .param p1, "fb"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "post"    # Lcom/threed/jpct/IPostProcessor;

    .prologue
    .line 1910
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1911
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/GLRenderer;->doPostProcessing(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/IPostProcessor;)V

    .line 1912
    return-void
.end method

.method public final registerVBO(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    monitor-exit p0

    .line 239
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeTexture(Lcom/threed/jpct/Texture;)V
    .locals 6
    .param p1, "t"    # Lcom/threed/jpct/Texture;

    .prologue
    const/4 v5, 0x1

    .line 668
    if-eqz p1, :cond_0

    iget v3, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p1, v3}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/threed/jpct/GLRenderer;->getSmallBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 670
    .local v0, "buf":Ljava/nio/IntBuffer;
    iget v3, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p1, v3}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v2

    .line 671
    .local v2, "tid":I
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 672
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 674
    :try_start_0
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_0
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unloaded texture: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 682
    .end local v0    # "buf":Ljava/nio/IntBuffer;
    .end local v2    # "tid":I
    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 683
    return-void

    .line 675
    .restart local v0    # "buf":Ljava/nio/IntBuffer;
    .restart local v2    # "tid":I
    :catch_0
    move-exception v1

    .line 676
    .local v1, "t2":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to unload texture due to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public resetShader()V
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->lineMode:Z

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0}, Lcom/threed/jpct/GL20Handler;->reset()V

    .line 495
    :cond_0
    return-void
.end method

.method resetViewport(Lcom/threed/jpct/FrameBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 1675
    sget v4, Lcom/threed/jpct/Config;->viewportOffsetX:F

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 1676
    .local v1, "xViewStart":I
    sget v4, Lcom/threed/jpct/Config;->viewportOffsetY:F

    neg-float v4, v4

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 1677
    .local v3, "yViewStart":I
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v0

    .line 1678
    .local v0, "xViewEnd":I
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v2

    .line 1679
    .local v2, "yViewEnd":I
    iget-object v4, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 1680
    return-void
.end method

.method public revalidate(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 1790
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 1791
    return-void
.end method

.method public setBufferViewport(IIII)V
    .locals 1
    .param p1, "xViewStart"    # I
    .param p2, "yViewStart"    # I
    .param p3, "xViewEnd"    # I
    .param p4, "yViewEnd"    # I

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1889
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/threed/jpct/Config;->viewportOffsetAffectsRenderTarget:Z

    if-eqz v0, :cond_1

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 1892
    :cond_1
    return-void
.end method

.method public setFrustumAndFog(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V
    .locals 2
    .param p1, "myWorld"    # Lcom/threed/jpct/World;
    .param p2, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    .line 1765
    .local v0, "oldWorld":Lcom/threed/jpct/World;
    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->myWorld:Lcom/threed/jpct/World;

    .line 1767
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/GLRenderer;->setFrustum(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V

    .line 1769
    if-eq p1, v0, :cond_0

    .line 1771
    iget-boolean v1, p1, Lcom/threed/jpct/World;->useFogging:Z

    if-eqz v1, :cond_1

    .line 1772
    const/4 v1, 0x1

    iput v1, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    .line 1777
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1779
    invoke-direct {p0, p1}, Lcom/threed/jpct/GLRenderer;->setLightsAndFog(Lcom/threed/jpct/World;)V

    .line 1780
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->unloadTextures()V

    .line 1781
    return-void

    .line 1774
    :cond_1
    const/4 v1, 0x2

    iput v1, p1, Lcom/threed/jpct/World;->fogModeChanged:I

    goto :goto_0
.end method

.method public final setPaintListener(Lcom/threed/jpct/IPaintListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/threed/jpct/IPaintListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    .line 229
    return-void
.end method

.method public setRenderTarget(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIZ)V
    .locals 8
    .param p1, "target"    # Lcom/threed/jpct/Texture;
    .param p2, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p3, "xMin"    # I
    .param p4, "yMin"    # I
    .param p5, "xMax"    # I
    .param p6, "yMax"    # I
    .param p7, "scissorClearAll"    # Z

    .prologue
    const/4 v7, 0x1

    .line 1920
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1921
    iput-object p1, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    .line 1923
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v0, :cond_1

    .line 1924
    iget-object v2, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/GLRenderer;->enableScissor(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;IIII)V

    .line 1929
    :goto_0
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/threed/jpct/Config;->useFBO:Z

    if-nez v0, :cond_3

    .line 1930
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-nez v0, :cond_2

    .line 1931
    invoke-virtual {p0, p2}, Lcom/threed/jpct/GLRenderer;->resetViewport(Lcom/threed/jpct/FrameBuffer;)V

    .line 1932
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 1939
    :goto_1
    return-void

    .line 1926
    :cond_1
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->disableScissor()V

    goto :goto_0

    .line 1934
    :cond_2
    invoke-direct {p0, p2}, Lcom/threed/jpct/GLRenderer;->setViewport(Lcom/threed/jpct/FrameBuffer;)V

    goto :goto_1

    .line 1937
    :cond_3
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    invoke-interface {v0, v1, p0, p2}, Lcom/threed/jpct/GL20Handler;->setRenderTarget(Lcom/threed/jpct/Texture;Lcom/threed/jpct/GLRenderer;Lcom/threed/jpct/FrameBuffer;)V

    goto :goto_1
.end method

.method public setShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 1
    .param p1, "shader"    # Lcom/threed/jpct/GLSLShader;

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->lineMode:Z

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0, p1}, Lcom/threed/jpct/GL20Handler;->setShader(Lcom/threed/jpct/GLSLShader;)V

    .line 501
    :cond_0
    return-void
.end method

.method public setTangents(I)V
    .locals 1
    .param p1, "tangentsId"    # I

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0, p1}, Lcom/threed/jpct/GL20Handler;->setTangents(I)V

    .line 532
    :cond_0
    return-void
.end method

.method public setTangents(Ljava/nio/Buffer;)V
    .locals 1
    .param p1, "tangents"    # Ljava/nio/Buffer;

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    invoke-interface {v0, p1}, Lcom/threed/jpct/GL20Handler;->setTangents(Ljava/nio/Buffer;)V

    .line 526
    :cond_0
    return-void
.end method

.method public startPainting()V
    .locals 1

    .prologue
    .line 1895
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1896
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->listenerActive:Z

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->listener:Lcom/threed/jpct/IPaintListener;

    invoke-interface {v0}, Lcom/threed/jpct/IPaintListener;->startPainting()V

    .line 1899
    :cond_0
    return-void
.end method

.method public swapBuffers()V
    .locals 1

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    .line 1785
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->renderToTarget()Z

    .line 1786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->hasToReEnable:Z

    .line 1787
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 2427
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 2428
    return-void
.end method

.method public unbindVertexAttributes(Lcom/threed/jpct/VertexAttributes;I)V
    .locals 3
    .param p1, "vas"    # Lcom/threed/jpct/VertexAttributes;
    .param p2, "attributesId"    # I

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    iget-object v1, p1, Lcom/threed/jpct/VertexAttributes;->name:Ljava/lang/String;

    iget v2, p1, Lcom/threed/jpct/VertexAttributes;->type:I

    invoke-interface {v0, v1, v2, p2}, Lcom/threed/jpct/GL20Handler;->unbindVertexAttributes(Ljava/lang/String;II)V

    .line 556
    :cond_0
    return-void
.end method

.method public unbindVertexAttributes(Lcom/threed/jpct/VertexAttributes;Ljava/nio/Buffer;)V
    .locals 3
    .param p1, "vas"    # Lcom/threed/jpct/VertexAttributes;
    .param p2, "attributes"    # Ljava/nio/Buffer;

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->gl20Handler:Lcom/threed/jpct/GL20Handler;

    iget-object v1, p1, Lcom/threed/jpct/VertexAttributes;->name:Ljava/lang/String;

    iget v2, p1, Lcom/threed/jpct/VertexAttributes;->type:I

    invoke-interface {v0, v1, v2, p2}, Lcom/threed/jpct/GL20Handler;->unbindVertexAttributes(Ljava/lang/String;ILjava/nio/Buffer;)V

    .line 550
    :cond_0
    return-void
.end method

.method public unloadKnownTextures()V
    .locals 2

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->toUnload:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1619
    invoke-direct {p0}, Lcom/threed/jpct/GLRenderer;->unloadTextures()V

    .line 1620
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->uploadedTextures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1621
    const-string v0, "All texture data unloaded from gpu!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1622
    return-void
.end method

.method public final unregisterVBO(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->vbos:Ljava/util/List;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    monitor-exit p0

    .line 245
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method upload(Lcom/threed/jpct/Texture;)V
    .locals 2
    .param p1, "t"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 1625
    monitor-enter p0

    .line 1626
    :try_start_0
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLRenderer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eq p1, v0, :cond_0

    .line 1627
    iget v0, p0, Lcom/threed/jpct/GLRenderer;->myID:I

    sget v1, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {p1, v0, v1}, Lcom/threed/jpct/Texture;->setMarker(II)V

    .line 1628
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    .line 1625
    :cond_0
    monitor-exit p0

    .line 1631
    return-void

    .line 1625
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
