.class Lcom/threed/jpct/CompiledInstance;
.super Ljava/lang/Object;
.source "CompiledInstance.java"


# static fields
.field protected static final ALL_ONES:[F

.field protected static final ALL_ONES_3:[F

.field protected static final ALL_ZEROS:[F

.field protected static final BUFFER_SIZE:I

.field protected static final COORD_SCALE:F = 1.0f

.field protected static final LIGHTS:[I

.field protected static final STATIC_DUMPY:[F

.field protected static final ZEROS_ONE:[F

.field protected static final allOnes3:[F

.field public static chkSum:F = 0.0f

.field public static lastLightCnt:I = 0x0

.field public static lastObj:Lcom/threed/jpct/Object3D; = null

.field public static lastVertexBuffer:Ljava/nio/Buffer; = null

.field protected static final lights4:[F

.field protected static mat:Lcom/threed/jpct/Matrix; = null

.field protected static mo:Lcom/threed/jpct/Matrix; = null

.field protected static final sbPosMT:[I

.field protected static sbPosOne:I = 0x0

.field protected static sbPosThree:I = 0x0

.field protected static sbPosTwo:I = 0x0

.field protected static final serialVersionUID:J = 0x1L

.field protected static final smallBuffer:[I

.field protected static final smallBufferMT:[[I

.field protected static final smallBufferOne:[I

.field protected static final smallBufferThree:[I

.field protected static final smallBufferTwo:[I

.field protected static final stageMap:[I


# instance fields
.field protected attributes:[Ljava/nio/IntBuffer;

.field protected attributesIds:[I

.field protected buffersCreated:Z

.field protected cnt:I

.field protected colors:Ljava/nio/IntBuffer;

.field protected colorsId:I

.field protected coordMapper:[I

.field protected dumpy:[F

.field protected dynamic:Z

.field protected endStage:I

.field protected filled:Z

.field protected firstCompile:Z

.field protected hasBeenRefilled:Z

.field protected hasBeenVirtualized:Z

.field protected indexCount:I

.field protected indexed:Z

.field protected indices:Ljava/nio/ShortBuffer;

.field protected indicesId:I

.field protected key:Ljava/lang/String;

.field protected lastRenderer:Lcom/threed/jpct/GLRenderer;

.field protected lastTex0:I

.field protected lastTex1:I

.field protected multiTextures:[Ljava/nio/IntBuffer;

.field protected multiTexturesIds:[I

.field protected ncoords:[I

.field protected needsCoordMapper:Z

.field protected normals:Ljava/nio/IntBuffer;

.field protected normalsId:I

.field protected obj:Lcom/threed/jpct/Object3D;

.field protected polyIndex:I

.field protected primitiveType:I

.field protected rendererID:I

.field protected sbPosAttrs:[I

.field protected smallBufferAttrs:[[I

.field protected staticUV:Z

.field protected tangents:Ljava/nio/IntBuffer;

.field protected tangentsId:I

.field protected tex0:I

.field protected tex1:I

.field protected treeID:I

.field protected tris:Lcom/threed/jpct/IntList;

.field protected useStrip:I

.field protected vboPossible:Z

.field protected vcoords:[I

.field protected vertex2index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/threed/jpct/GenericContainer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected vertices:Ljava/nio/IntBuffer;

.field protected verticesId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 25
    sget v0, Lcom/threed/jpct/Config;->vertexBufferSize:I

    sput v0, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    .line 26
    sget v0, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    new-array v0, v0, [I

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    .line 27
    sget v0, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    new-array v0, v0, [I

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    .line 28
    sget v0, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    .line 29
    new-array v0, v2, [I

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    .line 30
    sget v0, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    new-array v0, v0, [I

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    .line 31
    new-array v0, v2, [I

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    .line 33
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->stageMap:[I

    .line 34
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->ALL_ONES:[F

    .line 35
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->ALL_ONES_3:[F

    .line 36
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->ZEROS_ONE:[F

    .line 37
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->ALL_ZEROS:[F

    .line 38
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->allOnes3:[F

    .line 39
    new-array v0, v2, [F

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->lights4:[F

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->STATIC_DUMPY:[F

    .line 42
    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    .line 43
    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    .line 44
    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->LIGHTS:[I

    .line 52
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    .line 53
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    .line 55
    sput-object v4, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    .line 58
    sput v3, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    .line 59
    sput-object v4, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    .line 21
    return-void

    .line 33
    :array_0
    .array-data 4
        0x84c0
        0x84c1
        0x84c2
        0x84c3
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 36
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 37
    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 38
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 49
    :array_6
    .array-data 4
        0x4000
        0x4001
        0x4002
        0x4003
        0x4004
        0x4005
        0x4006
        0x4007
    .end array-data
.end method

.method constructor <init>(Lcom/threed/jpct/Object3D;II)V
    .locals 6
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "polyIndex"    # I
    .param p3, "treeID"    # I

    .prologue
    const/16 v5, -0x63

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->smallBufferAttrs:[[I

    .line 47
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    .line 61
    iput-boolean v1, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    .line 63
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    .line 64
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    .line 65
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    .line 66
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    .line 67
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    .line 68
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    .line 69
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    .line 71
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    .line 73
    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    .line 74
    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    .line 75
    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    .line 76
    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    .line 77
    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    .line 78
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    .line 80
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    .line 82
    new-instance v0, Lcom/threed/jpct/IntList;

    invoke-direct {v0}, Lcom/threed/jpct/IntList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    .line 83
    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    .line 84
    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    .line 85
    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    .line 86
    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    .line 87
    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    .line 88
    iput v4, p0, Lcom/threed/jpct/CompiledInstance;->treeID:I

    .line 89
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    .line 90
    iput v4, p0, Lcom/threed/jpct/CompiledInstance;->tex0:I

    .line 91
    iput v4, p0, Lcom/threed/jpct/CompiledInstance;->tex1:I

    .line 92
    iput v5, p0, Lcom/threed/jpct/CompiledInstance;->lastTex0:I

    .line 93
    iput v5, p0, Lcom/threed/jpct/CompiledInstance;->lastTex1:I

    .line 94
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    .line 95
    const v0, -0x3b9ac9ff

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    .line 96
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    .line 97
    iput-boolean v1, p0, Lcom/threed/jpct/CompiledInstance;->filled:Z

    .line 98
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    .line 101
    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    .line 102
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    .line 103
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    .line 104
    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    .line 106
    iput-boolean v1, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    .line 107
    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    .line 109
    sget-boolean v0, Lcom/threed/jpct/Config;->glTriangleStrips:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    .line 110
    const/4 v0, 0x4

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    .line 113
    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->firstCompile:Z

    .line 115
    iput-boolean v1, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    .line 117
    iput-boolean v1, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    .line 120
    iput-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    .line 121
    iput p2, p0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    .line 122
    iput p3, p0, Lcom/threed/jpct/CompiledInstance;->treeID:I

    .line 123
    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->dynamic:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    .line 124
    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->indexed:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    .line 125
    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->staticUV:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    .line 126
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private compare([F[F)Z
    .locals 3
    .param p1, "a"    # [F
    .param p2, "b"    # [F

    .prologue
    .line 1733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 1738
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1734
    :cond_0
    aget v1, p1, v0

    aget v2, p2, v0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1735
    const/4 v1, 0x0

    goto :goto_1

    .line 1733
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public _fill()V
    .locals 57

    .prologue
    .line 835
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    .line 836
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    .line 837
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v3, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 844
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    if-nez v3, :cond_1

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->checkStrips()V

    .line 848
    :cond_1
    const-wide/16 v44, 0x0

    .line 849
    .local v44, "time":J
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 853
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    .line 855
    const-wide/16 v39, 0x0

    .line 857
    .local v39, "s":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    if-eqz v3, :cond_18

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v3}, Lcom/threed/jpct/IntList;->size()I

    move-result v3

    mul-int/lit8 v50, v3, 0x3

    .line 859
    .local v50, "verts":I
    const/4 v4, 0x0

    .line 861
    .local v4, "init":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    if-nez v3, :cond_9

    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    .line 863
    const/4 v4, 0x1

    .line 864
    mul-int/lit8 v3, v50, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    .line 865
    mul-int/lit8 v3, v50, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->hasVertexAlpha()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 868
    mul-int/lit8 v3, v50, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    .line 871
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    if-eqz v3, :cond_4

    .line 872
    mul-int/lit8 v3, v50, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    .line 875
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v27

    .line 877
    .local v27, "len":I
    move/from16 v0, v27

    new-array v3, v0, [Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    .line 878
    sget v3, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    move/from16 v0, v27

    filled-new-array {v0, v3}, [I

    move-result-object v3

    sget-object v54, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v54

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->smallBufferAttrs:[[I

    .line 879
    move/from16 v0, v27

    new-array v3, v0, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    .line 880
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_a

    .line 885
    .end local v18    # "i":I
    .end local v27    # "len":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v3, :cond_6

    .line 886
    mul-int/lit8 v3, v50, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    .line 887
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    .line 890
    :cond_6
    const/16 v29, 0x1

    .line 891
    .local v29, "max":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v3, :cond_7

    .line 892
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v3, v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_b

    .line 899
    .end local v18    # "i":I
    :cond_7
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    .line 900
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    sget v54, Lcom/threed/jpct/Config;->glStageCount:I

    move/from16 v0, v54

    if-le v3, v0, :cond_8

    .line 901
    sget v3, Lcom/threed/jpct/Config;->glStageCount:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    .line 904
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    new-array v3, v3, [Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    .line 906
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v0, v18

    if-lt v0, v3, :cond_c

    .line 911
    .end local v18    # "i":I
    .end local v29    # "max":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v0, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v34, v0

    .line 913
    .local v34, "objMesh":Lcom/threed/jpct/Mesh;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v51, v0

    .line 914
    .local v51, "x":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v52, v0

    .line 915
    .local v52, "y":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v53, v0

    .line 917
    .local v53, "z":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v31, v0

    .line 918
    .local v31, "nx":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v32, v0

    .line 919
    .local v32, "ny":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v33, v0

    .line 921
    .local v33, "nz":[F
    if-nez v31, :cond_d

    .line 922
    const-string v3, "Can\'t compile a mesh that has already been stripped!"

    const/16 v54, 0x0

    move/from16 v0, v54

    invoke-static {v3, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 881
    .end local v31    # "nx":[F
    .end local v32    # "ny":[F
    .end local v33    # "nz":[F
    .end local v34    # "objMesh":Lcom/threed/jpct/Mesh;
    .end local v51    # "x":[F
    .end local v52    # "y":[F
    .end local v53    # "z":[F
    .restart local v18    # "i":I
    .restart local v27    # "len":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/VertexAttributes;

    iget v3, v3, Lcom/threed/jpct/VertexAttributes;->type:I

    mul-int v3, v3, v50

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    aput-object v3, v54, v18

    .line 880
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 893
    .end local v27    # "len":I
    .restart local v29    # "max":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v3, v3, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v54, v0

    aget v3, v3, v54

    const/16 v54, -0x1

    move/from16 v0, v54

    if-eq v3, v0, :cond_7

    .line 896
    add-int/lit8 v29, v29, 0x1

    .line 892
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 907
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    mul-int/lit8 v54, v50, 0x2

    mul-int/lit8 v54, v54, 0x4

    invoke-static/range {v54 .. v54}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v54

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v54

    aput-object v54, v3, v18

    .line 906
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 926
    .end local v18    # "i":I
    .end local v29    # "max":I
    .restart local v31    # "nx":[F
    .restart local v32    # "ny":[F
    .restart local v33    # "nz":[F
    .restart local v34    # "objMesh":Lcom/threed/jpct/Mesh;
    .restart local v51    # "x":[F
    .restart local v52    # "y":[F
    .restart local v53    # "z":[F
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    if-eqz v3, :cond_e

    .line 928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 931
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v3}, Lcom/threed/jpct/IntList;->size()I

    move-result v17

    .line 932
    .local v17, "endII":I
    const/16 v18, 0x0

    .line 934
    .restart local v18    # "i":I
    const/4 v12, 0x0

    .line 936
    .local v12, "cm":Lcom/threed/jpct/IntList;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v3, :cond_f

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    if-nez v3, :cond_f

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    if-nez v3, :cond_f

    .line 937
    new-instance v12, Lcom/threed/jpct/IntList;

    .end local v12    # "cm":Lcom/threed/jpct/IntList;
    invoke-direct {v12}, Lcom/threed/jpct/IntList;-><init>()V

    .line 940
    .restart local v12    # "cm":Lcom/threed/jpct/IntList;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    if-eqz v3, :cond_1f

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    array-length v0, v3

    move/from16 v17, v0

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    if-eqz v3, :cond_1d

    .line 945
    const/16 v23, 0x0

    .line 946
    .local v23, "ix":I
    const/4 v10, 0x0

    .line 948
    .local v10, "c":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    move-object/from16 v49, v0

    .line 949
    .local v49, "vcoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    move-object/from16 v30, v0

    .line 951
    .local v30, "ncoords":[I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    if-eqz v3, :cond_1b

    .line 953
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    .line 955
    .local v14, "coordMapper":[I
    const/16 v20, 0x0

    .local v20, "ii":I
    move/from16 v24, v23

    .end local v23    # "ix":I
    .local v24, "ix":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v17

    if-lt v0, v1, :cond_1a

    .line 964
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    move/from16 v23, v24

    .line 977
    .end local v14    # "coordMapper":[I
    .end local v20    # "ii":I
    .end local v24    # "ix":I
    .restart local v23    # "ix":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 1202
    .end local v10    # "c":I
    .end local v23    # "ix":I
    .end local v30    # "ncoords":[I
    .end local v49    # "vcoords":[I
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v28

    .line 1203
    .local v28, "length":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    const/16 v54, 0x0

    aget-object v3, v3, v54

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v42

    .line 1205
    .local v42, "tLength":I
    const/4 v11, 0x0

    .line 1206
    .local v11, "cLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_11

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v11

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1211
    :cond_11
    const/16 v43, 0x0

    .line 1212
    .local v43, "tanLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_12

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v43

    .line 1214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1217
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1220
    const/16 v25, 0x0

    .local v25, "k":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v0, v25

    if-lt v0, v3, :cond_4c

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v3, :cond_13

    .line 1225
    const/16 v25, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    array-length v3, v3

    move/from16 v0, v25

    if-lt v0, v3, :cond_4d

    .line 1231
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    if-eqz v3, :cond_14

    .line 1232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1235
    :cond_14
    if-eqz v4, :cond_18

    .line 1236
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-nez v3, :cond_17

    .line 1237
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    .line 1238
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    .line 1239
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v3, :cond_17

    .line 1240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    .line 1241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    .line 1242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_15

    .line 1243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    .line 1246
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_16

    .line 1247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    .line 1249
    :cond_16
    const/16 v21, 0x0

    .local v21, "it":I
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v0, v21

    if-lt v0, v3, :cond_4e

    .line 1252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v3, :cond_17

    .line 1253
    const/16 v25, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    array-length v3, v3

    move/from16 v0, v25

    if-lt v0, v3, :cond_4f

    .line 1259
    .end local v21    # "it":I
    :cond_17
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    const/16 v54, 0x2

    move/from16 v0, v54

    if-lt v3, v0, :cond_18

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v54, "Subobject of object "

    move-object/from16 v0, v54

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v54

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, "/"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, " compiled to "

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-boolean v3, v3, Lcom/threed/jpct/Object3D;->indexed:Z

    if-eqz v3, :cond_50

    const-string v3, "indexed"

    :goto_b
    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, " fixed point data using "

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1261
    const-string v54, "/"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/nio/IntBuffer;->limit()I

    move-result v54

    div-int/lit8 v54, v54, 0x3

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, " vertices "

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    const/16 v55, 0x1

    move/from16 v0, v55

    if-ne v3, v0, :cond_51

    const-string v3, "in a strip "

    :goto_c
    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, "in "

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    sub-long v54, v54, v39

    move-wide/from16 v0, v54

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, "ms!"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1260
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1266
    .end local v4    # "init":Z
    .end local v11    # "cLength":I
    .end local v12    # "cm":Lcom/threed/jpct/IntList;
    .end local v17    # "endII":I
    .end local v18    # "i":I
    .end local v25    # "k":I
    .end local v28    # "length":I
    .end local v31    # "nx":[F
    .end local v32    # "ny":[F
    .end local v33    # "nz":[F
    .end local v34    # "objMesh":Lcom/threed/jpct/Mesh;
    .end local v42    # "tLength":I
    .end local v43    # "tanLength":I
    .end local v50    # "verts":I
    .end local v51    # "x":[F
    .end local v52    # "y":[F
    .end local v53    # "z":[F
    :cond_18
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1267
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v54, "Processing and uploading vertices of subobject of object "

    move-object/from16 v0, v54

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v54

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, "/"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, " took "

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    sub-long v54, v54, v44

    move-wide/from16 v0, v54

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, "ms"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1268
    const/16 v54, 0x3

    .line 1267
    move/from16 v0, v54

    invoke-static {v3, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1271
    :cond_19
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->filled:Z

    goto/16 :goto_0

    .line 957
    .restart local v4    # "init":Z
    .restart local v10    # "c":I
    .restart local v12    # "cm":Lcom/threed/jpct/IntList;
    .restart local v14    # "coordMapper":[I
    .restart local v17    # "endII":I
    .restart local v18    # "i":I
    .restart local v20    # "ii":I
    .restart local v24    # "ix":I
    .restart local v30    # "ncoords":[I
    .restart local v31    # "nx":[F
    .restart local v32    # "ny":[F
    .restart local v33    # "nz":[F
    .restart local v34    # "objMesh":Lcom/threed/jpct/Mesh;
    .restart local v49    # "vcoords":[I
    .restart local v50    # "verts":I
    .restart local v51    # "x":[F
    .restart local v52    # "y":[F
    .restart local v53    # "z":[F
    :cond_1a
    aget v10, v14, v20

    aget v3, v51, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v49, v24

    .line 958
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ix":I
    .restart local v23    # "ix":I
    aget v3, v31, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v30, v24

    .line 959
    aget v3, v52, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v49, v23

    .line 960
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ix":I
    .restart local v24    # "ix":I
    aget v3, v32, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v30, v23

    .line 961
    aget v3, v53, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v49, v24

    .line 962
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ix":I
    .restart local v23    # "ix":I
    aget v3, v33, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v30, v24

    .line 955
    add-int/lit8 v20, v20, 0x1

    move/from16 v24, v23

    .end local v23    # "ix":I
    .restart local v24    # "ix":I
    goto/16 :goto_4

    .line 966
    .end local v14    # "coordMapper":[I
    .end local v20    # "ii":I
    .end local v24    # "ix":I
    .restart local v23    # "ix":I
    :cond_1b
    const/4 v10, 0x0

    move/from16 v24, v23

    .end local v23    # "ix":I
    .restart local v24    # "ix":I
    :goto_d
    move/from16 v0, v17

    if-lt v10, v0, :cond_1c

    .line 974
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    move/from16 v23, v24

    .end local v24    # "ix":I
    .restart local v23    # "ix":I
    goto/16 :goto_5

    .line 967
    .end local v23    # "ix":I
    .restart local v24    # "ix":I
    :cond_1c
    aget v3, v51, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v49, v24

    .line 968
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ix":I
    .restart local v23    # "ix":I
    aget v3, v31, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v30, v24

    .line 969
    aget v3, v52, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v49, v23

    .line 970
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "ix":I
    .restart local v24    # "ix":I
    aget v3, v32, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v30, v23

    .line 971
    aget v3, v53, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v49, v24

    .line 972
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "ix":I
    .restart local v23    # "ix":I
    aget v3, v33, v10

    const/high16 v54, 0x47800000    # 65536.0f

    mul-float v3, v3, v54

    float-to-int v3, v3

    aput v3, v30, v24

    .line 966
    add-int/lit8 v10, v10, 0x1

    move/from16 v24, v23

    .end local v23    # "ix":I
    .restart local v24    # "ix":I
    goto :goto_d

    .line 980
    .end local v10    # "c":I
    .end local v24    # "ix":I
    .end local v30    # "ncoords":[I
    .end local v49    # "vcoords":[I
    :cond_1d
    const/16 v20, 0x0

    .restart local v20    # "ii":I
    :goto_e
    move/from16 v0, v20

    move/from16 v1, v17

    if-lt v0, v1, :cond_1e

    .line 991
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    goto/16 :goto_6

    .line 981
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    aget v10, v3, v20

    .line 983
    .restart local v10    # "c":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    aget v54, v51, v10

    const/high16 v55, 0x47800000    # 65536.0f

    mul-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    aget v54, v52, v10

    const/high16 v55, 0x47800000    # 65536.0f

    mul-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    aget v54, v53, v10

    const/high16 v55, 0x47800000    # 65536.0f

    mul-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    aget v54, v31, v10

    const/high16 v55, 0x47800000    # 65536.0f

    mul-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    aget v54, v32, v10

    const/high16 v55, 0x47800000    # 65536.0f

    mul-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    aget v54, v33, v10

    const/high16 v55, 0x47800000    # 65536.0f

    mul-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 980
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_e

    .line 995
    .end local v10    # "c":I
    .end local v20    # "ii":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v5, v3, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 996
    .local v5, "objVectors":Lcom/threed/jpct/Vectors;
    iget-object v0, v5, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v46, v0

    .line 997
    .local v46, "u":[F
    iget-object v0, v5, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v48, v0

    .line 998
    .local v48, "v":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v37, v0

    .line 1000
    .local v37, "points":[[I
    const/16 v22, 0x0

    .local v22, "iu":I
    :goto_f
    const/4 v3, 0x4

    move/from16 v0, v22

    if-lt v0, v3, :cond_27

    .line 1004
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    if-eqz v3, :cond_20

    .line 1005
    const/16 v22, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    array-length v3, v3

    move/from16 v0, v22

    if-lt v0, v3, :cond_28

    .line 1010
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v3, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    .line 1012
    .local v6, "tangentVectors":[[F
    const/16 v20, 0x0

    .restart local v20    # "ii":I
    :goto_11
    move/from16 v0, v20

    move/from16 v1, v17

    if-lt v0, v1, :cond_29

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    if-eqz v3, :cond_21

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->position()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    .line 1162
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/nio/ShortBuffer;->limit()I

    move-result v54

    move/from16 v0, v54

    if-eq v3, v0, :cond_21

    .line 1163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    .line 1167
    :cond_21
    if-eqz v12, :cond_10

    .line 1168
    invoke-virtual {v12}, Lcom/threed/jpct/IntList;->size()I

    move-result v15

    .line 1169
    .local v15, "cs":I
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    const/16 v54, 0x2

    move/from16 v0, v54

    if-lt v3, v0, :cond_22

    .line 1170
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v54, "Remapping "

    move-object/from16 v0, v54

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, " vertex indices!"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1172
    :cond_22
    new-array v3, v15, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    .line 1174
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    iget-boolean v3, v3, Lcom/threed/jpct/Animation;->cacheIndices:Z

    if-eqz v3, :cond_25

    .line 1175
    :cond_23
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    const/16 v54, 0x2

    move/from16 v0, v54

    if-lt v3, v0, :cond_24

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v54, "Creating vertex cache ("

    move-object/from16 v0, v54

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v54, v15, 0x18

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, " bytes)!"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1178
    :cond_24
    mul-int/lit8 v3, v15, 0x3

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    .line 1179
    mul-int/lit8 v3, v15, 0x3

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    .line 1181
    :cond_25
    const/4 v13, 0x0

    .line 1182
    .local v13, "cnt":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    .line 1183
    invoke-virtual {v12}, Lcom/threed/jpct/IntList;->size()I

    move-result v16

    .line 1184
    .local v16, "ei":I
    const/16 v19, 0x0

    .local v19, "ie":I
    :goto_12
    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_49

    .line 1191
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    const/16 v54, 0x2

    move/from16 v0, v54

    if-lt v3, v0, :cond_26

    .line 1192
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    if-eqz v3, :cond_4b

    .line 1193
    const-string v3, "Vertex indices will be mapped!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1198
    :cond_26
    :goto_13
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1001
    .end local v6    # "tangentVectors":[[F
    .end local v13    # "cnt":I
    .end local v15    # "cs":I
    .end local v16    # "ei":I
    .end local v19    # "ie":I
    .end local v20    # "ii":I
    :cond_27
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/16 v54, 0x0

    aput v54, v3, v22

    .line 1000
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_f

    .line 1006
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    const/16 v54, 0x0

    aput v54, v3, v22

    .line 1005
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 1013
    .restart local v6    # "tangentVectors":[[F
    .restart local v20    # "ii":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v18

    .line 1015
    const/16 v41, 0x0

    .line 1016
    .local v41, "start":I
    if-lez v20, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    const/16 v54, 0x1

    move/from16 v0, v54

    if-ne v3, v0, :cond_2a

    .line 1017
    const/16 v41, 0x2

    .line 1020
    :cond_2a
    const/16 v26, 0x0

    .line 1022
    .local v26, "key":Lcom/threed/jpct/GenericContainer;
    move/from16 v35, v41

    .local v35, "p":I
    :goto_14
    const/4 v3, 0x3

    move/from16 v0, v35

    if-lt v0, v3, :cond_2c

    .line 1153
    if-eqz v20, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    const/16 v54, 0x2

    move/from16 v0, v54

    if-ne v3, v0, :cond_48

    .line 1154
    :cond_2b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    add-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    .line 1012
    :goto_15
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_11

    .line 1023
    :cond_2c
    aget-object v3, v37, v18

    aget v7, v3, v35

    .line 1024
    .local v7, "pind":I
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v8, v3, v7

    .line 1026
    .local v8, "coord":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-nez v3, :cond_34

    .line 1028
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v55, v51, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1029
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v55, v52, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1030
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v55, v53, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1032
    add-int/lit8 v3, v17, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_33

    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_33

    const/4 v9, 0x1

    .line 1033
    .local v9, "end":Z
    :goto_16
    sget v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    sget v54, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    move/from16 v0, v54

    if-eq v3, v0, :cond_2d

    if-eqz v9, :cond_2e

    .line 1034
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    sget-object v54, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1035
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    .line 1038
    :cond_2e
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v55, v31, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1039
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v55, v32, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1040
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v55, v33, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1042
    sget v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    sget v54, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    move/from16 v0, v54

    if-eq v3, v0, :cond_2f

    if-eqz v9, :cond_30

    .line 1043
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    sget-object v54, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1044
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    .line 1047
    :cond_30
    if-eqz v12, :cond_31

    .line 1048
    invoke-virtual {v12, v8}, Lcom/threed/jpct/IntList;->add(I)V

    :cond_31
    move-object/from16 v3, p0

    .line 1051
    invoke-virtual/range {v3 .. v9}, Lcom/threed/jpct/CompiledInstance;->fillAttributes(ZLcom/threed/jpct/Vectors;[[FIIZ)V

    .line 1022
    :cond_32
    :goto_17
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_14

    .line 1032
    .end local v9    # "end":Z
    :cond_33
    const/4 v9, 0x0

    goto/16 :goto_16

    .line 1054
    :cond_34
    if-nez v26, :cond_3b

    .line 1055
    new-instance v26, Lcom/threed/jpct/GenericContainer;

    .end local v26    # "key":Lcom/threed/jpct/GenericContainer;
    const/16 v3, 0xb

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lcom/threed/jpct/GenericContainer;-><init>(I)V

    .line 1059
    .restart local v26    # "key":Lcom/threed/jpct/GenericContainer;
    :goto_18
    aget v3, v51, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1060
    aget v3, v52, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1061
    aget v3, v53, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1063
    aget v3, v31, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1064
    aget v3, v32, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1065
    aget v3, v33, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1067
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v0, v25

    if-lt v0, v3, :cond_3c

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_35

    .line 1084
    iget-object v3, v5, Lcom/threed/jpct/Vectors;->alpha:[F

    aget v3, v3, v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1087
    :cond_35
    add-int/lit8 v3, v17, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_3f

    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_3f

    const/4 v9, 0x1

    .line 1089
    .restart local v9    # "end":Z
    :goto_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Integer;

    .line 1090
    .local v38, "pos":Ljava/lang/Integer;
    if-nez v38, :cond_40

    .line 1092
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v55, v51, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1093
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v55, v52, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1094
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v55, v53, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1096
    sget v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    sget v54, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    move/from16 v0, v54

    if-eq v3, v0, :cond_36

    if-eqz v9, :cond_37

    .line 1097
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    sget-object v54, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1098
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    .line 1101
    :cond_37
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v55, v31, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1102
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v55, v32, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1103
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v55, v33, v8

    const/high16 v56, 0x47800000    # 65536.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    aput v55, v3, v54

    .line 1105
    sget v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    sget v54, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    move/from16 v0, v54

    if-eq v3, v0, :cond_38

    if-eqz v9, :cond_39

    .line 1106
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    sget-object v54, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1107
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    .line 1109
    :cond_39
    if-eqz v12, :cond_3a

    .line 1110
    invoke-virtual {v12, v8}, Lcom/threed/jpct/IntList;->add(I)V

    :cond_3a
    move-object/from16 v3, p0

    .line 1113
    invoke-virtual/range {v3 .. v9}, Lcom/threed/jpct/CompiledInstance;->fillAttributes(ZLcom/threed/jpct/Vectors;[[FIIZ)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v3

    sget v54, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int v3, v3, v54

    add-int/lit8 v3, v3, -0x3

    div-int/lit8 v36, v3, 0x3

    .line 1116
    .local v36, "pi":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 1118
    const/16 v26, 0x0

    goto/16 :goto_17

    .line 1057
    .end local v9    # "end":Z
    .end local v25    # "k":I
    .end local v36    # "pi":I
    .end local v38    # "pos":Ljava/lang/Integer;
    :cond_3b
    invoke-virtual/range {v26 .. v26}, Lcom/threed/jpct/GenericContainer;->clear()V

    goto/16 :goto_18

    .line 1068
    .restart local v25    # "k":I
    :cond_3c
    if-nez v25, :cond_3e

    .line 1069
    iget-object v0, v5, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v46, v0

    .line 1070
    iget-object v0, v5, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v48, v0

    .line 1071
    aget v3, v46, v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1072
    aget v3, v48, v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1067
    :cond_3d
    :goto_1b
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_19

    .line 1074
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget v3, v3, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    const/16 v54, 0x1

    move/from16 v0, v54

    if-le v3, v0, :cond_3d

    .line 1075
    iget-object v3, v5, Lcom/threed/jpct/Vectors;->uMul:[[F

    add-int/lit8 v54, v25, -0x1

    aget-object v46, v3, v54

    .line 1076
    iget-object v3, v5, Lcom/threed/jpct/Vectors;->vMul:[[F

    add-int/lit8 v54, v25, -0x1

    aget-object v48, v3, v54

    .line 1077
    aget v3, v46, v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 1078
    aget v3, v48, v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    goto :goto_1b

    .line 1087
    :cond_3f
    const/4 v9, 0x0

    goto/16 :goto_1a

    .line 1121
    .restart local v9    # "end":Z
    .restart local v38    # "pos":Ljava/lang/Integer;
    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move/from16 v0, v54

    int-to-short v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 1122
    if-eqz v9, :cond_32

    .line 1123
    sget v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    if-eqz v3, :cond_41

    .line 1124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    sget-object v54, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1125
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    .line 1127
    :cond_41
    sget v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    if-eqz v3, :cond_42

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    sget-object v54, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1129
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    .line 1131
    :cond_42
    sget v3, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    if-eqz v3, :cond_43

    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    sget-object v54, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1133
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    .line 1135
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    if-eqz v3, :cond_44

    .line 1136
    const/16 v47, 0x0

    .local v47, "ui":I
    :goto_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    array-length v3, v3

    move/from16 v0, v47

    if-lt v0, v3, :cond_46

    .line 1143
    .end local v47    # "ui":I
    :cond_44
    const/16 v47, 0x0

    .restart local v47    # "ui":I
    :goto_1d
    const/4 v3, 0x4

    move/from16 v0, v47

    if-ge v0, v3, :cond_32

    .line 1144
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v3, v3, v47

    if-eqz v3, :cond_45

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v47

    sget-object v54, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v54, v54, v47

    const/16 v55, 0x0

    sget-object v56, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v56, v56, v47

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1146
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/16 v54, 0x0

    aput v54, v3, v47

    .line 1143
    :cond_45
    add-int/lit8 v47, v47, 0x1

    goto :goto_1d

    .line 1137
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v3, v3, v47

    if-eqz v3, :cond_47

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->smallBufferAttrs:[[I

    move-object/from16 v54, v0

    aget-object v54, v54, v47

    const/16 v55, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    move-object/from16 v56, v0

    aget v56, v56, v47

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    const/16 v54, 0x0

    aput v54, v3, v47

    .line 1136
    :cond_47
    add-int/lit8 v47, v47, 0x1

    goto :goto_1c

    .line 1156
    .end local v7    # "pind":I
    .end local v8    # "coord":I
    .end local v9    # "end":Z
    .end local v25    # "k":I
    .end local v38    # "pos":Ljava/lang/Integer;
    .end local v47    # "ui":I
    :cond_48
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    goto/16 :goto_15

    .line 1185
    .end local v26    # "key":Lcom/threed/jpct/GenericContainer;
    .end local v35    # "p":I
    .end local v41    # "start":I
    .restart local v13    # "cnt":I
    .restart local v15    # "cs":I
    .restart local v16    # "ei":I
    .restart local v19    # "ie":I
    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v54

    aput v54, v3, v13

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    aget v3, v3, v13

    if-eq v3, v13, :cond_4a

    .line 1187
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    .line 1189
    :cond_4a
    add-int/lit8 v13, v13, 0x1

    .line 1184
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_12

    .line 1195
    :cond_4b
    const-string v3, "Vertex indices will be accessed directly!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1221
    .end local v5    # "objVectors":Lcom/threed/jpct/Vectors;
    .end local v6    # "tangentVectors":[[F
    .end local v13    # "cnt":I
    .end local v15    # "cs":I
    .end local v16    # "ei":I
    .end local v19    # "ie":I
    .end local v20    # "ii":I
    .end local v22    # "iu":I
    .end local v37    # "points":[[I
    .end local v46    # "u":[F
    .end local v48    # "v":[F
    .restart local v11    # "cLength":I
    .restart local v25    # "k":I
    .restart local v28    # "length":I
    .restart local v42    # "tLength":I
    .restart local v43    # "tanLength":I
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v25

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1220
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_7

    .line 1226
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v54, v0

    aget-object v54, v54, v25

    invoke-virtual/range {v54 .. v54}, Ljava/nio/IntBuffer;->position()I

    move-result v54

    aput v54, v3, v25

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v25

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1225
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_8

    .line 1250
    .restart local v21    # "it":I
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v21

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    aput-object v3, v54, v21

    .line 1249
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_9

    .line 1254
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    move-object/from16 v55, v0

    aget v55, v55, v25

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    aput-object v3, v54, v25

    .line 1253
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_a

    .line 1260
    .end local v21    # "it":I
    :cond_50
    const-string v3, "flat"

    goto/16 :goto_b

    .line 1261
    :cond_51
    const-string v3, ""

    goto/16 :goto_c
.end method

.method add(I)V
    .locals 1
    .param p1, "triIndex"    # I

    .prologue
    .line 813
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/IntList;->add(I)V

    .line 814
    return-void
.end method

.method protected bufferError()V
    .locals 2

    .prologue
    .line 1622
    const/4 v0, 0x0

    sput-boolean v0, Lcom/threed/jpct/Config;->useVBO:Z

    .line 1623
    const-string v0, "Unable to initialize VBO!"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1624
    return-void
.end method

.method protected checkStrips()V
    .locals 26

    .prologue
    .line 1650
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 1651
    const-string v23, "Triangle strip checker has been called multiple times!"

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/threed/jpct/IntList;->size()I

    move-result v8

    .line 1656
    .local v8, "endII":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 1657
    .local v12, "objVectors":Lcom/threed/jpct/Vectors;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 1658
    .local v11, "objMesh":Lcom/threed/jpct/Mesh;
    iget-object v15, v11, Lcom/threed/jpct/Mesh;->points:[[I

    .line 1660
    .local v15, "points":[[I
    iget-object v0, v11, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v20, v0

    .line 1661
    .local v20, "x":[F
    iget-object v0, v11, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v21, v0

    .line 1662
    .local v21, "y":[F
    iget-object v0, v11, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v22, v0

    .line 1664
    .local v22, "z":[F
    iget-object v0, v12, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v18, v0

    .line 1665
    .local v18, "u":[F
    iget-object v0, v12, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v19, v0

    .line 1667
    .local v19, "v":[F
    const-string v23, "Checking for triangle strip..."

    const/16 v24, 0x3

    invoke-static/range {v23 .. v24}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1669
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v3, v0, [[F

    .line 1670
    .local v3, "bucket":[[F
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v5, v0, [[F

    .line 1672
    .local v5, "cbucket":[[F
    if-lez v8, :cond_3

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v9

    .line 1674
    .local v9, "i":I
    const/4 v13, 0x0

    .local v13, "p":I
    :goto_1
    const/16 v23, 0x3

    move/from16 v0, v23

    if-lt v13, v0, :cond_2

    .line 1684
    const/4 v6, 0x0

    .line 1686
    .local v6, "cnt":I
    const/4 v10, 0x1

    .local v10, "ii":I
    :goto_2
    if-lt v10, v8, :cond_4

    .line 1725
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    .line 1726
    const/16 v23, 0x5

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    .line 1727
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 1728
    const-string v23, "Triangle strip found!"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1675
    .end local v6    # "cnt":I
    .end local v10    # "ii":I
    :cond_2
    iget-object v0, v11, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v23, v0

    aget-object v24, v15, v9

    aget v24, v24, v13

    aget v4, v23, v24

    .line 1676
    .local v4, "c":I
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v25, v20, v4

    aput v25, v23, v24

    const/16 v24, 0x1

    aget v25, v21, v4

    aput v25, v23, v24

    const/16 v24, 0x2

    aget v25, v22, v4

    aput v25, v23, v24

    const/16 v24, 0x3

    aget v25, v18, v4

    aput v25, v23, v24

    const/16 v24, 0x4

    aget v25, v19, v4

    aput v25, v23, v24

    aput-object v23, v3, v13

    .line 1677
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    aput-object v23, v5, v13

    .line 1674
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1680
    .end local v4    # "c":I
    .end local v9    # "i":I
    .end local v13    # "p":I
    :cond_3
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    goto/16 :goto_0

    .line 1687
    .restart local v6    # "cnt":I
    .restart local v9    # "i":I
    .restart local v10    # "ii":I
    .restart local v13    # "p":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v9

    .line 1688
    const/4 v13, 0x0

    :goto_3
    const/16 v23, 0x3

    move/from16 v0, v23

    if-lt v13, v0, :cond_5

    .line 1699
    if-nez v6, :cond_8

    .line 1700
    const/16 v23, 0x1

    aget-object v23, v3, v23

    const/16 v24, 0x1

    aget-object v24, v5, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/CompiledInstance;->compare([F[F)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x2

    aget-object v23, v3, v23

    const/16 v24, 0x0

    aget-object v24, v5, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/CompiledInstance;->compare([F[F)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v16, 0x1

    .line 1701
    .local v16, "res":Z
    :goto_4
    if-nez v16, :cond_7

    .line 1702
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    .line 1703
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1704
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Not a triangle strip at position "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3

    invoke-static/range {v23 .. v24}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1689
    .end local v16    # "res":Z
    :cond_5
    aget-object v23, v15, v9

    aget v14, v23, v13

    .line 1690
    .local v14, "pind":I
    iget-object v0, v11, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v23, v0

    aget v7, v23, v14

    .line 1692
    .local v7, "coord":I
    aget-object v23, v5, v13

    const/16 v24, 0x0

    aget v25, v20, v7

    aput v25, v23, v24

    .line 1693
    aget-object v23, v5, v13

    const/16 v24, 0x1

    aget v25, v21, v7

    aput v25, v23, v24

    .line 1694
    aget-object v23, v5, v13

    const/16 v24, 0x2

    aget v25, v22, v7

    aput v25, v23, v24

    .line 1695
    aget-object v23, v5, v13

    const/16 v24, 0x3

    aget v25, v18, v7

    aput v25, v23, v24

    .line 1696
    aget-object v23, v5, v13

    const/16 v24, 0x4

    aget v25, v19, v7

    aput v25, v23, v24

    .line 1688
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1700
    .end local v7    # "coord":I
    .end local v14    # "pind":I
    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 1708
    .restart local v16    # "res":Z
    :cond_7
    const/4 v6, 0x1

    .line 1721
    :goto_5
    move-object/from16 v17, v3

    .line 1722
    .local v17, "swap":[[F
    move-object v3, v5

    .line 1723
    move-object/from16 v5, v17

    .line 1686
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1711
    .end local v16    # "res":Z
    .end local v17    # "swap":[[F
    :cond_8
    const/16 v23, 0x0

    aget-object v23, v3, v23

    const/16 v24, 0x0

    aget-object v24, v5, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/CompiledInstance;->compare([F[F)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v23, 0x2

    aget-object v23, v3, v23

    const/16 v24, 0x1

    aget-object v24, v5, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/CompiledInstance;->compare([F[F)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v16, 0x1

    .line 1712
    .restart local v16    # "res":Z
    :goto_6
    if-nez v16, :cond_a

    .line 1713
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    .line 1714
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1715
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Not a triangle strip at position "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x3

    invoke-static/range {v23 .. v24}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1711
    .end local v16    # "res":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_6

    .line 1719
    .restart local v16    # "res":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 1677
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V
    .locals 13
    .param p1, "gl11"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p2, "renderer"    # Lcom/threed/jpct/GLRenderer;

    .prologue
    .line 1373
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-boolean v8, v8, Lcom/threed/jpct/Object3D;->sharing:Z

    if-eqz v8, :cond_3

    .line 1379
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v2, v8, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    .line 1380
    .local v2, "cis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/CompiledInstance;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1381
    .local v3, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 1619
    .end local v2    # "cis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/CompiledInstance;>;"
    .end local v3    # "end":I
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 1382
    .restart local v2    # "cis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/CompiledInstance;>;"
    .restart local v3    # "end":I
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/CompiledInstance;

    .line 1383
    .local v1, "ci":Lcom/threed/jpct/CompiledInstance;
    iget-boolean v8, v1, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    if-eqz v8, :cond_2

    .line 1384
    invoke-virtual {v1, p1, p2}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 1381
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1390
    .end local v1    # "ci":Lcom/threed/jpct/CompiledInstance;
    .end local v2    # "cis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/CompiledInstance;>;"
    .end local v3    # "end":I
    .end local v4    # "i":I
    :cond_3
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-nez v8, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v8, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v8, :cond_0

    .line 1394
    :cond_4
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    if-eqz v8, :cond_0

    .line 1399
    :cond_5
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    if-eqz v8, :cond_6

    .line 1400
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/IntBuffer;

    const-string v10, "vertices"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/IntBuffer;

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    .line 1401
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/IntBuffer;

    const-string v10, "normals"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/IntBuffer;

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    .line 1402
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/IntBuffer;

    const-string v10, "colors"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/IntBuffer;

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    .line 1403
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/IntBuffer;

    const-string v10, "tangents"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/IntBuffer;

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    .line 1404
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/ShortBuffer;

    const-string v10, "indices"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ShortBuffer;

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    .line 1406
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v8, :cond_1b

    .line 1411
    .end local v4    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1412
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1413
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_7

    .line 1414
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1416
    :cond_7
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_8

    .line 1417
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1419
    :cond_8
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    if-eqz v8, :cond_9

    .line 1420
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1422
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v8, :cond_1c

    .line 1428
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v8, :cond_a

    .line 1429
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    array-length v8, v8

    if-lt v5, v8, :cond_1e

    .line 1434
    .end local v5    # "k":I
    :cond_a
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    .line 1436
    iput-object p2, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    .line 1438
    const v6, 0x88e4

    .line 1439
    .local v6, "mode":I
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v8, :cond_b

    .line 1440
    const v6, 0x88e8

    .line 1443
    :cond_b
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-nez v8, :cond_13

    .line 1445
    :cond_c
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_d

    .line 1446
    const-string v8, "Creating buffers..."

    invoke-static {v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1449
    :cond_d
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v8, :cond_e

    .line 1450
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    .line 1453
    :cond_e
    const/4 v8, 0x1

    new-array v0, v8, [I

    .line 1455
    .local v0, "buffer":[I
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1456
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    .line 1459
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1460
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    .line 1462
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    if-eqz v8, :cond_f

    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    if-nez v8, :cond_1f

    .line 1464
    :cond_f
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    .line 1470
    :goto_5
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_10

    .line 1471
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1472
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    .line 1473
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    if-nez v8, :cond_20

    .line 1475
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    .line 1481
    :cond_10
    :goto_6
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_11

    .line 1482
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1483
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    .line 1484
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    if-nez v8, :cond_21

    .line 1486
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    .line 1492
    :cond_11
    :goto_7
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v8, :cond_12

    .line 1493
    const/4 v4, 0x0

    :goto_8
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    array-length v8, v8

    if-lt v4, v8, :cond_22

    .line 1505
    :cond_12
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    .line 1506
    const/4 v4, 0x0

    :goto_9
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v8, :cond_24

    .line 1517
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v8, :cond_13

    .line 1519
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1520
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    .line 1521
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    if-nez v8, :cond_26

    .line 1523
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    .line 1530
    .end local v0    # "buffer":[I
    :cond_13
    :goto_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    .line 1531
    const v8, 0x8892

    iget v9, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1532
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1533
    .local v7, "vertexSize":I
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1535
    const v8, 0x8892

    iget v9, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1536
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1537
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1540
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_14

    .line 1541
    const v8, 0x8892

    iget v9, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1542
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1543
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1546
    :cond_14
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_15

    .line 1547
    const v8, 0x8892

    iget v9, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1548
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1549
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1553
    :cond_15
    const/4 v4, 0x0

    :goto_b
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v8, :cond_27

    .line 1559
    const v8, 0x8892

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1562
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v8, :cond_16

    .line 1563
    const/4 v4, 0x0

    :goto_c
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    array-length v8, v8

    if-lt v4, v8, :cond_28

    .line 1568
    const v8, 0x8892

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1571
    :cond_16
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v8, :cond_17

    .line 1573
    const v8, 0x8893

    iget v9, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1574
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1575
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v8

    mul-int/lit8 v7, v8, 0x2

    .line 1576
    const v8, 0x8893

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1577
    const v8, 0x8893

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1580
    :cond_17
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->firstCompile:Z

    if-eqz v8, :cond_19

    .line 1581
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_18

    .line 1582
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "VBO created for object \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v9}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1584
    :cond_18
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->firstCompile:Z

    .line 1587
    :cond_19
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v8}, Lcom/threed/jpct/Virtualizer;->isFull()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1588
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    if-eqz v8, :cond_2a

    .line 1589
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    .line 1590
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    .line 1591
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    .line 1592
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    .line 1593
    const/4 v4, 0x0

    :goto_d
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v8, :cond_29

    .line 1617
    :cond_1a
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    goto/16 :goto_1

    .line 1407
    .end local v6    # "mode":I
    .end local v7    # "vertexSize":I
    :cond_1b
    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v10, Ljava/nio/IntBuffer;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "multiTextures"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, p0, v10, v11}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/IntBuffer;

    aput-object v8, v9, v4

    .line 1406
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1423
    :cond_1c
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v4

    if-eqz v8, :cond_1d

    .line 1424
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1422
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1430
    .restart local v5    # "k":I
    :cond_1e
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1429
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 1466
    .end local v5    # "k":I
    .restart local v0    # "buffer":[I
    .restart local v6    # "mode":I
    :cond_1f
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    .line 1467
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto/16 :goto_5

    .line 1477
    :cond_20
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto/16 :goto_6

    .line 1488
    :cond_21
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto/16 :goto_7

    .line 1494
    :cond_22
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1495
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    const/4 v9, 0x0

    aget v9, v0, v9

    aput v9, v8, v4

    .line 1496
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    aget v8, v8, v4

    if-nez v8, :cond_23

    .line 1498
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    .line 1493
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 1500
    :cond_23
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    aget v8, v8, v4

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto :goto_e

    .line 1507
    :cond_24
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1508
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    const/4 v9, 0x0

    aget v9, v0, v9

    aput v9, v8, v4

    .line 1509
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v8, v8, v4

    if-nez v8, :cond_25

    .line 1511
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    .line 1506
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 1513
    :cond_25
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v8, v8, v4

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto :goto_f

    .line 1525
    :cond_26
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto/16 :goto_a

    .line 1554
    .end local v0    # "buffer":[I
    .restart local v7    # "vertexSize":I
    :cond_27
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v9, v9, v4

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1555
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1556
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v9, v9, v4

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1553
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 1564
    :cond_28
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    aget v9, v9, v4

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1565
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1566
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    aget-object v9, v9, v4

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1563
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 1594
    :cond_29
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    aput-object v9, v8, v4

    .line 1593
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    .line 1597
    :cond_2a
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    .line 1598
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    const-string v10, "vertices"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1599
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    const-string v10, "normals"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1600
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    .line 1601
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    const-string v10, "colors"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1602
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    .line 1603
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    const-string v10, "tangents"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1604
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    .line 1605
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    const-string v10, "indices"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1606
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    .line 1607
    const/4 v4, 0x0

    :goto_10
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-ge v4, v8, :cond_1a

    .line 1608
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v9, v9, v4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "multiTextures"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1609
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    aput-object v9, v8, v4

    .line 1607
    add-int/lit8 v4, v4, 0x1

    goto :goto_10
.end method

.method copy(Lcom/threed/jpct/CompiledInstance;)V
    .locals 7
    .param p1, "cis"    # Lcom/threed/jpct/CompiledInstance;

    .prologue
    const/4 v2, 0x0

    .line 753
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    .line 754
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    .line 755
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    .line 756
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    .line 757
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    .line 758
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    .line 759
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    .line 760
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    .line 761
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    .line 762
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    .line 763
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    .line 764
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    .line 765
    iget-boolean v3, p1, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    .line 766
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    .line 767
    iget-boolean v3, p1, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    .line 768
    iget-boolean v3, p1, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    .line 769
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->treeID:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->treeID:I

    .line 770
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    .line 771
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    .line 772
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    .line 774
    iget-boolean v3, p1, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    .line 775
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    .line 776
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    .line 777
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    .line 779
    iget-boolean v3, p1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    .line 780
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    .line 781
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    .line 782
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    .line 783
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    .line 784
    iget v3, p1, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    .line 785
    iget-boolean v3, p1, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    iput-boolean v3, p0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    .line 787
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    if-eqz v3, :cond_0

    .line 788
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "c":I
    iget-object v4, p1, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_3

    .line 796
    .end local v0    # "c":I
    :cond_0
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    if-eqz v3, :cond_1

    .line 797
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    .line 798
    const/4 v0, 0x0

    .line 799
    .restart local v0    # "c":I
    iget-object v3, p1, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    array-length v4, v3

    :goto_1
    if-lt v2, v4, :cond_4

    .line 805
    .end local v0    # "c":I
    :cond_1
    iget-boolean v2, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-eqz v2, :cond_2

    .line 806
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Object \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' shares VBOs ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with object \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 810
    :cond_2
    return-void

    .line 790
    .restart local v0    # "c":I
    :cond_3
    aget v1, v4, v3

    .line 791
    .local v1, "i":I
    iget-object v6, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aput v1, v6, v0

    .line 792
    add-int/lit8 v0, v0, 0x1

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 799
    .end local v1    # "i":I
    :cond_4
    aget v1, v3, v2

    .line 800
    .restart local v1    # "i":I
    iget-object v5, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    aput v1, v5, v0

    .line 801
    add-int/lit8 v0, v0, 0x1

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected dispose(Lcom/threed/jpct/GLRenderer;)V
    .locals 3
    .param p1, "renderer"    # Lcom/threed/jpct/GLRenderer;

    .prologue
    .line 150
    iget-boolean v1, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    iget-boolean v1, v1, Lcom/threed/jpct/GLRenderer;->disposed:Z

    if-nez v1, :cond_1

    .line 151
    iget v1, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-virtual {p1, v1}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    .line 152
    iget v1, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-virtual {p1, v1}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    .line 153
    iget v1, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-virtual {p1, v1}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    .line 154
    iget v1, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    invoke-virtual {p1, v1}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    .line 155
    iget v1, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-virtual {p1, v1}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v0, v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    if-eqz v1, :cond_0

    .line 160
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VBO disposed for object \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 167
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    invoke-interface {v1}, Lcom/threed/jpct/IRenderHook;->onDispose()V

    .line 170
    :cond_2
    return-void

    .line 157
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 817
    const-string v0, "Error while compiling instance!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 818
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    return-void
.end method

.method public declared-synchronized fill()V
    .locals 6

    .prologue
    .line 822
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 824
    :try_start_1
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->_fill()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 832
    monitor-exit p0

    return-void

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v1, "State: "

    .line 827
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 829
    throw v0

    .line 822
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected fillAttributes(ZLcom/threed/jpct/Vectors;[[FIIZ)V
    .locals 17
    .param p1, "init"    # Z
    .param p2, "objVectors"    # Lcom/threed/jpct/Vectors;
    .param p3, "tangentVectors"    # [[F
    .param p4, "pind"    # I
    .param p5, "coord"    # I
    .param p6, "end"    # Z

    .prologue
    .line 1277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v12, :cond_0

    .line 1279
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    const/4 v13, 0x0

    const/high16 v14, 0x10000

    aput v14, v12, v13

    .line 1280
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    const/4 v13, 0x1

    const/high16 v14, 0x10000

    aput v14, v12, v13

    .line 1281
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    const/4 v13, 0x2

    const/high16 v14, 0x10000

    aput v14, v12, v13

    .line 1282
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    const/4 v13, 0x3

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/threed/jpct/Vectors;->alpha:[F

    aget v14, v14, p4

    const/high16 v15, 0x47800000    # 65536.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v12, v13

    .line 1284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    invoke-virtual {v12, v13}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 1287
    :cond_0
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v12, :cond_2

    .line 1289
    aget-object v7, p3, p5

    .line 1291
    .local v7, "tangentVectorsCoord":[F
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    sget v13, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    add-int/lit8 v14, v13, 0x1

    sput v14, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v14, 0x0

    aget v14, v7, v14

    const/high16 v15, 0x47800000    # 65536.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v12, v13

    .line 1292
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    sget v13, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    add-int/lit8 v14, v13, 0x1

    sput v14, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v14, 0x1

    aget v14, v7, v14

    const/high16 v15, 0x47800000    # 65536.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v12, v13

    .line 1293
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    sget v13, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    add-int/lit8 v14, v13, 0x1

    sput v14, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v14, 0x2

    aget v14, v7, v14

    const/high16 v15, 0x47800000    # 65536.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v12, v13

    .line 1294
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    sget v13, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    add-int/lit8 v14, v13, 0x1

    sput v14, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v14, 0x3

    aget v14, v7, v14

    const/high16 v15, 0x47800000    # 65536.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v12, v13

    .line 1296
    sget v12, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    sget v13, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v12, v13, :cond_1

    if-eqz p6, :cond_2

    .line 1297
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    const/4 v14, 0x0

    sget v15, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    invoke-virtual {v12, v13, v14, v15}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1298
    const/4 v12, 0x0

    sput v12, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    .line 1302
    .end local v7    # "tangentVectorsCoord":[F
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v12, v12, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v12, v12, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    if-eqz v12, :cond_3

    .line 1303
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v12, v12, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, v12, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    .line 1304
    .local v1, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/VertexAttributes;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1306
    .local v2, "endy":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-lt v3, v2, :cond_6

    .line 1336
    .end local v1    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/VertexAttributes;>;"
    .end local v2    # "endy":I
    .end local v3    # "k":I
    :cond_3
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    if-nez v12, :cond_5

    .line 1337
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v3, v12, :cond_d

    .line 1365
    .end local v3    # "k":I
    :cond_5
    return-void

    .line 1307
    .restart local v1    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/VertexAttributes;>;"
    .restart local v2    # "endy":I
    .restart local v3    # "k":I
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/threed/jpct/VertexAttributes;

    .line 1308
    .local v10, "vas":Lcom/threed/jpct/VertexAttributes;
    iget v12, v10, Lcom/threed/jpct/VertexAttributes;->type:I

    mul-int v4, p5, v12

    .line 1310
    .local v4, "posi":I
    iget-object v11, v10, Lcom/threed/jpct/VertexAttributes;->data:[F

    .line 1311
    .local v11, "vasdata":[F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->smallBufferAttrs:[[I

    aget-object v6, v12, v3

    .line 1313
    .local v6, "smallBufferAttrsk":[I
    iget v12, v10, Lcom/threed/jpct/VertexAttributes;->type:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 1314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    aget v12, v11, v4

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    .line 1329
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v12, v12, v3

    sget v13, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v12, v13, :cond_8

    if-eqz p6, :cond_9

    .line 1330
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    aget-object v12, v12, v3

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v14, v14, v3

    invoke-virtual {v12, v6, v13, v14}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1331
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    const/4 v13, 0x0

    aput v13, v12, v3

    .line 1306
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1315
    :cond_a
    iget v12, v10, Lcom/threed/jpct/VertexAttributes;->type:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_b

    .line 1316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "posi":I
    .local v5, "posi":I
    aget v12, v11, v4

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    .line 1317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    aget v12, v11, v5

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    move v4, v5

    .end local v5    # "posi":I
    .restart local v4    # "posi":I
    goto :goto_2

    .line 1318
    :cond_b
    iget v12, v10, Lcom/threed/jpct/VertexAttributes;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    .line 1319
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "posi":I
    .restart local v5    # "posi":I
    aget v12, v11, v4

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    .line 1320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "posi":I
    .restart local v4    # "posi":I
    aget v12, v11, v5

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    .line 1321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    aget v12, v11, v4

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    goto/16 :goto_2

    .line 1322
    :cond_c
    iget v12, v10, Lcom/threed/jpct/VertexAttributes;->type:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_7

    .line 1323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "posi":I
    .restart local v5    # "posi":I
    aget v12, v11, v4

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    .line 1324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "posi":I
    .restart local v4    # "posi":I
    aget v12, v11, v5

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    .line 1325
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "posi":I
    .restart local v5    # "posi":I
    aget v12, v11, v4

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    .line 1326
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->sbPosAttrs:[I

    aget v13, v12, v3

    add-int/lit8 v14, v13, 0x1

    aput v14, v12, v3

    aget v12, v11, v5

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    aput v12, v6, v13

    move v4, v5

    .end local v5    # "posi":I
    .restart local v4    # "posi":I
    goto/16 :goto_2

    .line 1338
    .end local v1    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/VertexAttributes;>;"
    .end local v2    # "endy":I
    .end local v4    # "posi":I
    .end local v6    # "smallBufferAttrsk":[I
    .end local v10    # "vas":Lcom/threed/jpct/VertexAttributes;
    .end local v11    # "vasdata":[F
    :cond_d
    if-nez v3, :cond_10

    .line 1339
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    .line 1340
    .local v8, "u":[F
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    .line 1342
    .local v9, "v":[F
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    add-int/lit8 v16, v15, 0x1

    aput v16, v13, v14

    aget v13, v8, p4

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    aput v13, v12, v15

    .line 1343
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    add-int/lit8 v16, v15, 0x1

    aput v16, v13, v14

    aget v13, v9, p4

    const/high16 v14, 0x47800000    # 65536.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    aput v13, v12, v15

    .line 1345
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    sget v13, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v12, v13, :cond_e

    if-eqz p6, :cond_f

    .line 1346
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v12, v12, v3

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    sget-object v15, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1347
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 1337
    .end local v8    # "u":[F
    .end local v9    # "v":[F
    :cond_f
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1350
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget v12, v12, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_f

    .line 1351
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    add-int/lit8 v13, v3, -0x1

    aget-object v8, v12, v13

    .line 1352
    .restart local v8    # "u":[F
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/threed/jpct/Vectors;->vMul:[[F

    add-int/lit8 v13, v3, -0x1

    aget-object v9, v12, v13

    .line 1354
    .restart local v9    # "v":[F
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v12, v12, v3

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v14, v13, v3

    add-int/lit8 v15, v14, 0x1

    aput v15, v13, v3

    aget v13, v8, p4

    const/high16 v15, 0x47800000    # 65536.0f

    mul-float/2addr v13, v15

    float-to-int v13, v13

    aput v13, v12, v14

    .line 1355
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v12, v12, v3

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v14, v13, v3

    add-int/lit8 v15, v14, 0x1

    aput v15, v13, v3

    aget v13, v9, p4

    const/high16 v15, 0x47800000    # 65536.0f

    mul-float/2addr v13, v15

    float-to-int v13, v13

    aput v13, v12, v14

    .line 1357
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v12, v12, v3

    sget v13, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v12, v13, :cond_11

    if-eqz p6, :cond_f

    .line 1358
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v12, v12, v3

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v13, v13, v3

    const/4 v14, 0x0

    sget-object v15, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v15, v15, v3

    invoke-virtual {v12, v13, v14, v15}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 1359
    sget-object v12, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v13, 0x0

    aput v13, v12, v3

    goto :goto_3
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {p0, v0}, Lcom/threed/jpct/CompiledInstance;->dispose(Lcom/threed/jpct/GLRenderer;)V

    .line 1745
    :cond_0
    return-void
.end method

.method protected flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;
    .locals 5
    .param p1, "sr"    # Ljava/nio/Buffer;
    .param p2, "length"    # I

    .prologue
    .line 1627
    instance-of v3, p1, Ljava/nio/IntBuffer;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 1628
    check-cast v1, Ljava/nio/IntBuffer;

    .line 1629
    .local v1, "src":Ljava/nio/IntBuffer;
    mul-int/lit8 v3, p2, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 1630
    .local v0, "dest":Ljava/nio/IntBuffer;
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1631
    new-array v2, p2, [I

    .line 1632
    .local v2, "tmp":[I
    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 1633
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 1634
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1645
    .end local v0    # "dest":Ljava/nio/IntBuffer;
    .end local v1    # "src":Ljava/nio/IntBuffer;
    .end local v2    # "tmp":[I
    :goto_0
    return-object v0

    :cond_0
    move-object v1, p1

    .line 1638
    check-cast v1, Ljava/nio/FloatBuffer;

    .line 1639
    .local v1, "src":Ljava/nio/FloatBuffer;
    mul-int/lit8 v3, p2, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 1640
    .local v0, "dest":Ljava/nio/FloatBuffer;
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 1641
    new-array v2, p2, [F

    .line 1642
    .local v2, "tmp":[F
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 1643
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1644
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPolyIndex()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    return v0
.end method

.method public getStageCount()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    return v0
.end method

.method public getTreeID()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->treeID:I

    return v0
.end method

.method public declared-synchronized isFilled()Z
    .locals 1

    .prologue
    .line 1368
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->filled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized render(ILcom/threed/jpct/GLRenderer;[F[FZLcom/threed/jpct/Camera;[[FI)V
    .locals 37
    .param p1, "myID"    # I
    .param p2, "rendy"    # Lcom/threed/jpct/GLRenderer;
    .param p3, "ambient"    # [F
    .param p4, "cols"    # [F
    .param p5, "intoDepthMap"    # Z
    .param p6, "cam"    # Lcom/threed/jpct/Camera;
    .param p7, "lights"    # [[F
    .param p8, "wireFrameMode"    # I

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    .line 174
    .local v10, "gl10":Ljavax/microedition/khronos/opengles/GL10;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 176
    .local v11, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    .line 177
    .local v4, "backType":I
    if-eqz p8, :cond_2

    const/16 v31, 0x1

    .line 179
    .local v31, "wireFrame":Z
    :goto_0
    if-eqz v31, :cond_0

    .line 180
    const/16 v33, 0x3

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    .line 181
    const/16 v33, 0x2

    move/from16 v0, p8

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 182
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    .line 186
    :cond_0
    sget-object v16, Lcom/threed/jpct/CompiledInstance;->lights4:[F

    .line 187
    .local v16, "lights4":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    move-object/from16 v21, v0

    .line 189
    .local v21, "obj":Lcom/threed/jpct/Object3D;
    invoke-virtual/range {v21 .. v21}, Lcom/threed/jpct/Object3D;->getShaderInternal()Lcom/threed/jpct/GLSLShader;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setShader(Lcom/threed/jpct/GLSLShader;)V

    .line 191
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 193
    .local v22, "objCompiledSize":I
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->sharing:Z

    move/from16 v33, v0

    if-nez v33, :cond_4

    .line 195
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 196
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v22

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 197
    const-string v33, "Number of compiled instances don\'t match...can\'t share data!"

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 177
    .end local v16    # "lights4":[F
    .end local v21    # "obj":Lcom/threed/jpct/Object3D;
    .end local v22    # "objCompiledSize":I
    .end local v31    # "wireFrame":Z
    :cond_2
    const/16 v31, 0x0

    goto :goto_0

    .line 201
    .restart local v16    # "lights4":[F
    .restart local v21    # "obj":Lcom/threed/jpct/Object3D;
    .restart local v22    # "objCompiledSize":I
    .restart local v31    # "wireFrame":Z
    :cond_3
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v22

    if-lt v14, v0, :cond_5

    .line 219
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 220
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    .line 221
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_4

    .line 222
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Object \'"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\' shares compiled data with object \'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 226
    .end local v14    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->filled:Z

    move/from16 v33, v0

    if-nez v33, :cond_9

    .line 227
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "render() called on an uncompiled object ("

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 173
    .end local v4    # "backType":I
    .end local v10    # "gl10":Ljavax/microedition/khronos/opengles/GL10;
    .end local v11    # "gl11":Ljavax/microedition/khronos/opengles/GL11;
    .end local v16    # "lights4":[F
    .end local v21    # "obj":Lcom/threed/jpct/Object3D;
    .end local v22    # "objCompiledSize":I
    .end local v31    # "wireFrame":Z
    :catchall_0
    move-exception v33

    monitor-exit p0

    throw v33

    .line 202
    .restart local v4    # "backType":I
    .restart local v10    # "gl10":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v11    # "gl11":Ljavax/microedition/khronos/opengles/GL11;
    .restart local v14    # "i":I
    .restart local v16    # "lights4":[F
    .restart local v21    # "obj":Lcom/threed/jpct/Object3D;
    .restart local v22    # "objCompiledSize":I
    .restart local v31    # "wireFrame":Z
    :cond_5
    :try_start_2
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/threed/jpct/CompiledInstance;

    .line 203
    .local v5, "dcis":Lcom/threed/jpct/CompiledInstance;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/threed/jpct/CompiledInstance;

    .line 205
    .local v25, "scis":Lcom/threed/jpct/CompiledInstance;
    sget-boolean v33, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v33, :cond_8

    if-eqz v11, :cond_8

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    move/from16 v33, v0

    if-eqz v33, :cond_8

    .line 206
    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, p1

    if-eq v0, v1, :cond_7

    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    move/from16 v33, v0

    const v34, -0x3b9ac9ff

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_7

    .line 207
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    .line 208
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "OpenGL context has changed(1)...recovering for renderer "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 210
    :cond_6
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    .line 212
    :cond_7
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 213
    move/from16 v0, p1

    move-object/from16 v1, v25

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    .line 216
    :cond_8
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/threed/jpct/CompiledInstance;->copy(Lcom/threed/jpct/CompiledInstance;)V

    .line 217
    const/16 v33, 0x1

    move/from16 v0, v33

    iput-boolean v0, v5, Lcom/threed/jpct/CompiledInstance;->filled:Z

    .line 201
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 231
    .end local v5    # "dcis":Lcom/threed/jpct/CompiledInstance;
    .end local v14    # "i":I
    .end local v25    # "scis":Lcom/threed/jpct/CompiledInstance;
    :cond_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v32, v0

    .line 232
    .local v32, "world":Lcom/threed/jpct/World;
    if-eqz v32, :cond_1

    .line 236
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v15, v0, Lcom/threed/jpct/Lights;->lightCnt:I

    .line 238
    .local v15, "lightCnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-nez v33, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    move/from16 v33, v0

    if-nez v33, :cond_31

    const/16 v30, 0x0

    .line 239
    .local v30, "vertexAlpha":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-nez v33, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    move/from16 v33, v0

    if-nez v33, :cond_32

    const/4 v12, 0x0

    .line 241
    .local v12, "hasTangents":Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    move/from16 v33, v0

    const v34, -0x3b9ac9ff

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_33

    .line 242
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    .line 281
    :cond_a
    :goto_5
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    .line 283
    const/4 v6, 0x0

    check-cast v6, [F

    .line 284
    .local v6, "dump":[F
    const/16 v33, 0x1

    move/from16 v0, v22

    move/from16 v1, v33

    if-le v0, v1, :cond_39

    const/16 v19, 0x1

    .line 286
    .local v19, "multi":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    move-object/from16 v33, v0

    if-nez v33, :cond_b

    .line 287
    if-eqz v19, :cond_3a

    .line 288
    const/16 v33, 0x10

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    .line 294
    :cond_b
    :goto_7
    if-eqz v19, :cond_c

    .line 295
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "dump":[F
    check-cast v6, [F

    .line 297
    .restart local v6    # "dump":[F
    :cond_c
    if-nez v6, :cond_d

    .line 299
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 301
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual/range {p6 .. p6}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 302
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual/range {v33 .. v33}, Lcom/threed/jpct/Matrix;->transformToGL()V

    .line 304
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    move-object/from16 v0, p6

    iget v0, v0, Lcom/threed/jpct/Camera;->backBx:F

    move/from16 v34, v0

    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p6

    iget v0, v0, Lcom/threed/jpct/Camera;->backBy:F

    move/from16 v35, v0

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p6

    iget v0, v0, Lcom/threed/jpct/Camera;->backBz:F

    move/from16 v36, v0

    move/from16 v0, v36

    neg-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v33 .. v36}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    .line 305
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    sget-object v34, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual/range {v33 .. v34}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 306
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object v6

    .line 308
    if-eqz v19, :cond_d

    .line 309
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_d
    const/16 v33, 0x1700

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 317
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 318
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 320
    const/16 v23, 0x0

    .line 322
    .local v23, "resetCulling":Z
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->doCulling:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3b

    .line 323
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    move/from16 v33, v0

    if-eqz v33, :cond_e

    .line 324
    const/16 v33, 0x404

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 325
    const/16 v23, 0x1

    .line 331
    :cond_e
    :goto_8
    if-nez v31, :cond_47

    .line 333
    if-eqz v30, :cond_f

    .line 335
    const/16 v33, 0x3

    const/high16 v34, 0x3f800000    # 1.0f

    aput v34, p4, v33

    .line 341
    :cond_f
    const/16 v33, 0xb53

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 342
    const/16 v33, 0x408

    const/16 v34, 0x1600

    const/16 v35, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, p4

    move/from16 v3, v35

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 344
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->allOnes3:[F

    const/16 v34, 0x3

    const/16 v35, 0x3

    aget v35, p4, v35

    aput v35, v33, v34

    .line 348
    const/16 v20, 0x0

    .line 349
    .local v20, "nSum":F
    const/16 v33, 0x1

    move/from16 v0, v22

    move/from16 v1, v33

    if-le v0, v1, :cond_10

    .line 351
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    if-ge v14, v15, :cond_10

    const/16 v33, 0x8

    move/from16 v0, v33

    if-lt v14, v0, :cond_3c

    .line 364
    .end local v14    # "i":I
    :cond_10
    if-eqz v30, :cond_11

    .line 367
    const/16 v33, 0xb57

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 370
    :cond_11
    sget v33, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    cmpl-float v33, v33, v20

    if-nez v33, :cond_12

    sget-object v33, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_16

    .line 372
    :cond_12
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    move/from16 v33, v0

    if-nez v33, :cond_13

    .line 373
    const/16 v33, 0x408

    const/16 v34, 0x1200

    sget-object v35, Lcom/threed/jpct/CompiledInstance;->ALL_ONES_3:[F

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 374
    const/16 v33, 0x408

    const/16 v34, 0x1201

    sget-object v35, Lcom/threed/jpct/CompiledInstance;->allOnes3:[F

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 375
    const/16 v33, 0x408

    const/16 v34, 0x1202

    sget-object v35, Lcom/threed/jpct/CompiledInstance;->allOnes3:[F

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 378
    :cond_13
    sget v33, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    move/from16 v0, v33

    if-ge v15, v0, :cond_14

    .line 380
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_a
    sget v33, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    move/from16 v0, v33

    if-lt v14, v0, :cond_3e

    .line 385
    .end local v14    # "i":I
    :cond_14
    const/16 v33, 0x0

    sput v33, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    .line 387
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_b
    if-ge v14, v15, :cond_15

    const/16 v33, 0x8

    move/from16 v0, v33

    if-lt v14, v0, :cond_3f

    .line 446
    :cond_15
    sput-object v21, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    .line 447
    sput v20, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    .line 450
    .end local v14    # "i":I
    :cond_16
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    move/from16 v33, v0

    if-eqz v33, :cond_17

    .line 451
    const/16 v33, 0x1d00

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 457
    .end local v20    # "nSum":F
    :cond_17
    :goto_c
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 459
    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    .line 461
    .local v13, "hook":Lcom/threed/jpct/IRenderHook;
    if-eqz v13, :cond_18

    .line 462
    if-eqz p4, :cond_48

    const/16 v33, 0x3

    aget v33, p4, v33

    :goto_d
    move/from16 v0, v33

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->setTransparency(F)V

    .line 463
    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->setCurrentObject3D(Lcom/threed/jpct/Object3D;)V

    .line 464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->beforeRendering(I)V

    .line 467
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    move-result-object v27

    .line 468
    .local v27, "shader":Lcom/threed/jpct/GLSLShader;
    if-eqz v27, :cond_19

    .line 469
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/threed/jpct/GLSLShader;->directMode:Z

    .line 471
    :cond_19
    if-eqz v13, :cond_1a

    .line 472
    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->setCurrentShader(Lcom/threed/jpct/GLSLShader;)V

    .line 475
    :cond_1a
    sget-boolean v33, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v33, :cond_1b

    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    move/from16 v33, v0

    if-nez v33, :cond_52

    .line 478
    :cond_1b
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_4d

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    sput-object v33, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    .line 480
    const/16 v33, 0x140c

    const/16 v34, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    move-object/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 481
    const/16 v33, 0x3

    const/16 v34, 0x140c

    const/16 v35, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    move-object/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 483
    const v33, 0x8075

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 484
    const v33, 0x8074

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 485
    if-nez v30, :cond_49

    .line 486
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 492
    :goto_e
    if-nez v12, :cond_4a

    .line 493
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 498
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1c

    .line 499
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_4b

    .line 504
    .end local v14    # "i":I
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    .line 505
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_4c

    .line 530
    .end local v14    # "i":I
    :cond_1d
    if-nez v31, :cond_25

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    move/from16 v33, v0

    if-eqz v33, :cond_25

    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_25

    .line 531
    :cond_1e
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v29

    .line 532
    .local v29, "tm":Lcom/threed/jpct/TextureManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tex0:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->lastTex0:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    .line 533
    :cond_1f
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->lastTex0:I

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->lastTex0:I

    move/from16 v33, v0

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    .line 536
    :cond_20
    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tex1:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->lastTex1:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_22

    .line 537
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->lastTex1:I

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->lastTex1:I

    move/from16 v33, v0

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    .line 541
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tex0:I

    move/from16 v28, v0

    .line 542
    .local v28, "tex":I
    const/16 v24, 0x0

    .line 543
    .local v24, "s":I
    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_23

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tex1:I

    move/from16 v28, v0

    .line 545
    const/16 v24, 0x1

    .line 549
    :cond_23
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    move-object/from16 v33, v0

    aget v33, v33, v24

    move/from16 v0, v33

    move/from16 v1, v28

    if-eq v0, v1, :cond_24

    .line 550
    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 558
    :cond_24
    const/16 v33, 0x1702

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 559
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 560
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 561
    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, 0x3f000000    # 0.5f

    const/high16 v35, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 562
    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, 0x3f000000    # 0.5f

    const/high16 v35, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 564
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 565
    const/16 v33, 0x1700

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 569
    .end local v24    # "s":I
    .end local v28    # "tex":I
    .end local v29    # "tm":Lcom/threed/jpct/TextureManager;
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    move/from16 v33, v0

    if-eqz v33, :cond_50

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    move/from16 v34, v0

    const/16 v35, 0x1403

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    move-object/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 575
    :goto_12
    if-eqz v13, :cond_26

    invoke-interface {v13}, Lcom/threed/jpct/IRenderHook;->repeatRendering()Z

    move-result v33

    .line 568
    if-nez v33, :cond_25

    .line 577
    :cond_26
    if-eqz v12, :cond_27

    .line 578
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 581
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-eqz v33, :cond_28

    .line 582
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_51

    .line 587
    .end local v14    # "i":I
    :cond_28
    if-eqz v13, :cond_29

    .line 588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->afterRendering(I)V

    .line 715
    :cond_29
    :goto_14
    if-eqz v27, :cond_2a

    .line 716
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/threed/jpct/GLSLShader;->directMode:Z

    .line 719
    :cond_2a
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2b

    .line 720
    const/16 v33, 0x1702

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 721
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 724
    :cond_2b
    const/16 v33, 0x1700

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 725
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 727
    if-eqz v30, :cond_2c

    .line 728
    const/16 v33, 0xb57

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 731
    :cond_2c
    if-eqz v23, :cond_2d

    .line 732
    const/16 v33, 0x405

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 735
    :cond_2d
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2e

    .line 736
    const/16 v33, 0x1d01

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 739
    :cond_2e
    if-eqz v31, :cond_2f

    .line 740
    const/16 v33, 0xb50

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 743
    :cond_2f
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->doCulling:Z

    move/from16 v33, v0

    if-nez v33, :cond_30

    .line 744
    const/16 v33, 0xb44

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 747
    :cond_30
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    .line 749
    move-object/from16 v0, p0

    iput v4, v0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    goto/16 :goto_1

    .line 238
    .end local v6    # "dump":[F
    .end local v12    # "hasTangents":Z
    .end local v13    # "hook":Lcom/threed/jpct/IRenderHook;
    .end local v19    # "multi":Z
    .end local v23    # "resetCulling":Z
    .end local v27    # "shader":Lcom/threed/jpct/GLSLShader;
    .end local v30    # "vertexAlpha":Z
    :cond_31
    const/16 v30, 0x1

    goto/16 :goto_3

    .line 239
    .restart local v30    # "vertexAlpha":Z
    :cond_32
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 244
    .restart local v12    # "hasTangents":Z
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, p1

    if-eq v0, v1, :cond_a

    .line 246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    move/from16 v33, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v33, :cond_36

    .line 248
    :try_start_3
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_34

    .line 249
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "OpenGL context has changed(2)...recovering for renderer "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 251
    :cond_34
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    .line 252
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v33, v0

    if-eqz v33, :cond_35

    .line 253
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 254
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_15
    move/from16 v0, v22

    if-lt v14, v0, :cond_37

    .line 268
    .end local v14    # "i":I
    :cond_35
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 269
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    move/from16 v33, v0

    if-eqz v33, :cond_36

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->fill()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    :cond_36
    :goto_16
    :try_start_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 255
    .restart local v14    # "i":I
    :cond_37
    :try_start_5
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/threed/jpct/CompiledInstance;

    .line 256
    .restart local v5    # "dcis":Lcom/threed/jpct/CompiledInstance;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/threed/jpct/CompiledInstance;

    .line 258
    .restart local v25    # "scis":Lcom/threed/jpct/CompiledInstance;
    sget-boolean v33, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v33, :cond_38

    if-eqz v11, :cond_38

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    move/from16 v33, v0

    if-eqz v33, :cond_38

    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, p1

    if-eq v0, v1, :cond_38

    .line 259
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Uploading data for parent object "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 260
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    .line 261
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 262
    move/from16 v0, p1

    move-object/from16 v1, v25

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    .line 265
    :cond_38
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/threed/jpct/CompiledInstance;->copy(Lcom/threed/jpct/CompiledInstance;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 254
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_15

    .line 272
    .end local v5    # "dcis":Lcom/threed/jpct/CompiledInstance;
    .end local v14    # "i":I
    .end local v25    # "scis":Lcom/threed/jpct/CompiledInstance;
    :catch_0
    move-exception v7

    .line 273
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v33, "Unable to recover to use VBO...using normal vertex arrays instead!"

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 274
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_16

    .line 284
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "dump":[F
    :cond_39
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 290
    .restart local v19    # "multi":Z
    :cond_3a
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->STATIC_DUMPY:[F

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    goto/16 :goto_7

    .line 328
    .restart local v23    # "resetCulling":Z
    :cond_3b
    const/16 v33, 0xb44

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_8

    .line 352
    .restart local v14    # "i":I
    .restart local v20    # "nSum":F
    :cond_3c
    int-to-float v9, v14

    .line 353
    .local v9, "fi":F
    aget-object v17, p7, v14

    .line 354
    .local v17, "lightsi":[F
    const/16 v33, 0x0

    aget v33, v17, v33

    const v34, -0x39e3c400    # -9999.0f

    cmpl-float v33, v33, v34

    if-eqz v33, :cond_3d

    .line 355
    const v33, 0x3f37d567    # 0.7181f

    add-float v33, v33, v9

    const/16 v34, 0x0

    aget v34, v17, v34

    mul-float v33, v33, v34

    add-float v20, v20, v33

    .line 356
    const v33, 0x3f8ccccd    # 1.1f

    add-float v33, v33, v9

    const/16 v34, 0x1

    aget v34, v17, v34

    mul-float v33, v33, v34

    add-float v20, v20, v33

    .line 357
    const v33, 0x400f5c29    # 2.24f

    add-float v33, v33, v9

    const/16 v34, 0x2

    aget v34, v17, v34

    mul-float v33, v33, v34

    add-float v20, v20, v33

    .line 358
    const v33, 0x406449ba    # 3.567f

    add-float v33, v33, v9

    const/16 v34, 0x3

    aget v34, v17, v34

    mul-float v33, v33, v34

    add-float v20, v20, v33

    .line 359
    int-to-float v0, v14

    move/from16 v33, v0

    const v34, 0x411ba29c

    add-float v33, v33, v34

    const/16 v34, 0x4

    aget v34, v17, v34

    const v35, 0x3fb33333    # 1.4f

    const/16 v36, 0x5

    aget v36, v17, v36

    mul-float v35, v35, v36

    add-float v34, v34, v35

    const v35, 0x4091eb85    # 4.56f

    const/16 v36, 0x6

    aget v36, v17, v36

    mul-float v35, v35, v36

    add-float v34, v34, v35

    mul-float v33, v33, v34

    add-float v20, v20, v33

    .line 351
    :cond_3d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 381
    .end local v9    # "fi":F
    .end local v17    # "lightsi":[F
    :cond_3e
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->LIGHTS:[I

    aget v33, v33, v14

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 380
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 388
    :cond_3f
    aget-object v17, p7, v14

    .line 389
    .restart local v17    # "lightsi":[F
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->LIGHTS:[I

    aget v18, v33, v14

    .line 390
    .local v18, "lin":I
    const/16 v33, 0x0

    aget v33, v17, v33

    const v34, -0x39e3c400    # -9999.0f

    cmpl-float v33, v33, v34

    if-nez v33, :cond_40

    .line 391
    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 387
    :goto_17
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_b

    .line 393
    :cond_40
    sget v33, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    add-int/lit8 v33, v33, 0x1

    sput v33, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    .line 394
    sget v33, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    cmpl-float v33, v33, v20

    if-nez v33, :cond_43

    sget-object v33, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_43

    const/16 v26, 0x0

    .line 396
    .local v26, "set":Z
    :goto_18
    if-eqz v26, :cond_42

    .line 397
    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 399
    const/16 v33, 0x0

    const/16 v34, 0x1

    aget v34, v17, v34

    aput v34, v16, v33

    .line 400
    const/16 v33, 0x1

    const/16 v34, 0x2

    aget v34, v17, v34

    aput v34, v16, v33

    .line 401
    const/16 v33, 0x2

    const/16 v34, 0x3

    aget v34, v17, v34

    aput v34, v16, v33

    .line 402
    const/16 v33, 0x3

    const/high16 v34, 0x3f800000    # 1.0f

    aput v34, v16, v33

    .line 403
    const/16 v33, 0x1203

    const/16 v34, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v16

    move/from16 v3, v34

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 406
    const/16 v33, 0x0

    const/16 v34, 0x4

    aget v34, v17, v34

    aput v34, v16, v33

    .line 407
    const/16 v33, 0x1

    const/16 v34, 0x5

    aget v34, v17, v34

    aput v34, v16, v33

    .line 408
    const/16 v33, 0x2

    const/16 v34, 0x6

    aget v34, v17, v34

    aput v34, v16, v33

    .line 409
    const/16 v33, 0x3

    const/16 v34, 0x0

    aput v34, v16, v33

    .line 411
    const/16 v33, 0x1201

    const/16 v34, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v16

    move/from16 v3, v34

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 412
    const/16 v33, 0x1200

    sget-object v34, Lcom/threed/jpct/CompiledInstance;->ALL_ZEROS:[F

    const/16 v35, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 417
    const/16 v33, 0x0

    aget v33, v17, v33

    const/16 v34, 0x0

    cmpl-float v33, v33, v34

    if-ltz v33, :cond_44

    .line 418
    const/16 v33, 0x0

    aget v8, v17, v33

    .line 419
    .local v8, "f":F
    const/16 v33, 0x0

    cmpl-float v33, v8, v33

    if-nez v33, :cond_41

    .line 420
    const v8, 0x3a83126f    # 0.001f

    .line 422
    :cond_41
    const/16 v33, 0x1208

    const/high16 v34, 0x40800000    # 4.0f

    div-float v34, v34, v8

    move/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 428
    .end local v8    # "f":F
    :cond_42
    :goto_19
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->doSpecularLighting:Z

    move/from16 v33, v0

    if-nez v33, :cond_45

    .line 430
    const/16 v33, 0x1202

    sget-object v34, Lcom/threed/jpct/CompiledInstance;->ALL_ZEROS:[F

    const/16 v35, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    goto/16 :goto_17

    .line 394
    .end local v26    # "set":Z
    :cond_43
    const/16 v26, 0x1

    goto/16 :goto_18

    .line 424
    .restart local v26    # "set":Z
    :cond_44
    const/16 v33, 0x1208

    const/16 v34, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    goto :goto_19

    .line 433
    :cond_45
    const/16 v33, 0x408

    const/16 v34, 0x1601

    sget v35, Lcom/threed/jpct/Config;->specPow:F

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 434
    if-nez v26, :cond_46

    .line 436
    const/16 v33, 0x0

    const/16 v34, 0x4

    aget v34, v17, v34

    aput v34, v16, v33

    .line 437
    const/16 v33, 0x1

    const/16 v34, 0x5

    aget v34, v17, v34

    aput v34, v16, v33

    .line 438
    const/16 v33, 0x2

    const/16 v34, 0x6

    aget v34, v17, v34

    aput v34, v16, v33

    .line 439
    const/16 v33, 0x3

    const/16 v34, 0x0

    aput v34, v16, v33

    .line 441
    :cond_46
    const/16 v33, 0x1202

    const/16 v34, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v16

    move/from16 v3, v34

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    goto/16 :goto_17

    .line 454
    .end local v14    # "i":I
    .end local v17    # "lightsi":[F
    .end local v18    # "lin":I
    .end local v20    # "nSum":F
    .end local v26    # "set":Z
    :cond_47
    const/16 v33, 0xb50

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_c

    .line 462
    .restart local v13    # "hook":Lcom/threed/jpct/IRenderHook;
    :cond_48
    const/high16 v33, 0x3f800000    # 1.0f

    goto/16 :goto_d

    .line 488
    .restart local v27    # "shader":Lcom/threed/jpct/GLSLShader;
    :cond_49
    const/16 v33, 0x4

    const/16 v34, 0x140c

    const/16 v35, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    move-object/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 489
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto/16 :goto_e

    .line 495
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setTangents(Ljava/nio/Buffer;)V

    goto/16 :goto_f

    .line 500
    .restart local v14    # "i":I
    :cond_4b
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/threed/jpct/VertexAttributes;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;Ljava/nio/Buffer;)V

    .line 499
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_10

    .line 506
    :cond_4c
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->stageMap:[I

    aget v33, v33, v14

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 507
    const v33, 0x8078

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 508
    const/16 v33, 0x2

    const/16 v34, 0x140c

    const/16 v35, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    move-object/from16 v36, v0

    aget-object v36, v36, v14

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 505
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_11

    .line 511
    .end local v14    # "i":I
    :cond_4d
    if-nez v30, :cond_4e

    .line 512
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 517
    :goto_1a
    if-nez v12, :cond_4f

    .line 518
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 523
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1d

    .line 524
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v14, v0, :cond_1d

    .line 525
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/threed/jpct/VertexAttributes;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;Ljava/nio/Buffer;)V

    .line 524
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    .line 514
    .end local v14    # "i":I
    :cond_4e
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_1a

    .line 520
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setTangents(Ljava/nio/Buffer;)V

    goto :goto_1b

    .line 572
    :cond_50
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_12

    .line 583
    .restart local v14    # "i":I
    :cond_51
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/threed/jpct/VertexAttributes;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->unbindVertexAttributes(Lcom/threed/jpct/VertexAttributes;Ljava/nio/Buffer;)V

    .line 582
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .line 593
    .end local v14    # "i":I
    :cond_52
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 595
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_61

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    sput-object v33, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    .line 598
    const v33, 0x8075

    move/from16 v0, v33

    invoke-interface {v11, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 599
    const v33, 0x8892

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 600
    const/16 v33, 0x140c

    const/16 v34, 0xc

    const/16 v35, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v11, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    .line 602
    const v33, 0x8074

    move/from16 v0, v33

    invoke-interface {v11, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 603
    const v33, 0x8892

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 604
    const/16 v33, 0x3

    const/16 v34, 0x140c

    const/16 v35, 0xc

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v11, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 606
    if-nez v30, :cond_5d

    .line 607
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 614
    :goto_1d
    if-nez v12, :cond_5e

    .line 615
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 620
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    move-object/from16 v33, v0

    if-eqz v33, :cond_53

    .line 621
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_5f

    .line 626
    .end local v14    # "i":I
    :cond_53
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    .line 627
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_60

    .line 634
    const v33, 0x8892

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 660
    .end local v14    # "i":I
    :cond_54
    if-nez v31, :cond_59

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    move/from16 v33, v0

    if-eqz v33, :cond_59

    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_59

    .line 661
    :cond_55
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v29

    .line 662
    .restart local v29    # "tm":Lcom/threed/jpct/TextureManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tex0:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_56

    .line 663
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    .line 665
    :cond_56
    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_57

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tex1:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_57

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_57

    .line 666
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    .line 669
    :cond_57
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tex0:I

    move/from16 v28, v0

    .line 670
    .restart local v28    # "tex":I
    const/16 v24, 0x0

    .line 671
    .restart local v24    # "s":I
    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_58

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tex1:I

    move/from16 v28, v0

    .line 673
    const/16 v24, 0x1

    .line 676
    :cond_58
    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 678
    const/16 v33, 0x1702

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 679
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 680
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 681
    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, 0x3f000000    # 0.5f

    const/high16 v35, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 682
    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, 0x3f000000    # 0.5f

    const/high16 v35, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 684
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 685
    const/16 v33, 0x1700

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 689
    .end local v24    # "s":I
    .end local v28    # "tex":I
    .end local v29    # "tm":Lcom/threed/jpct/TextureManager;
    :cond_59
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    move/from16 v33, v0

    if-eqz v33, :cond_64

    .line 690
    const v33, 0x8893

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 691
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    move/from16 v34, v0

    const/16 v35, 0x1403

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v11, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 692
    const v33, 0x8893

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 698
    :goto_21
    if-eqz v13, :cond_5a

    invoke-interface {v13}, Lcom/threed/jpct/IRenderHook;->repeatRendering()Z

    move-result v33

    .line 688
    if-nez v33, :cond_59

    .line 700
    :cond_5a
    if-eqz v12, :cond_5b

    .line 701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    move/from16 v33, v0

    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->clearTangents(I)V

    .line 704
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    move-object/from16 v33, v0

    if-eqz v33, :cond_5c

    .line 705
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_65

    .line 710
    .end local v14    # "i":I
    :cond_5c
    if-eqz v13, :cond_29

    .line 711
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->afterRendering(I)V

    goto/16 :goto_14

    .line 609
    :cond_5d
    const v33, 0x8892

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 610
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 611
    const/16 v33, 0x4

    const/16 v34, 0x140c

    const/16 v35, 0x10

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v11, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    goto/16 :goto_1d

    .line 617
    :cond_5e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    move/from16 v33, v0

    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setTangents(I)V

    goto/16 :goto_1e

    .line 622
    .restart local v14    # "i":I
    :cond_5f
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/threed/jpct/VertexAttributes;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    move-object/from16 v34, v0

    aget v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;I)V

    .line 621
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1f

    .line 628
    :cond_60
    sget-object v33, Lcom/threed/jpct/CompiledInstance;->stageMap:[I

    aget v33, v33, v14

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 629
    const v33, 0x8078

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 630
    const v33, 0x8892

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    move-object/from16 v34, v0

    aget v34, v34, v14

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 631
    const/16 v33, 0x2

    const/16 v34, 0x140c

    const/16 v35, 0x8

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v11, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 627
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_20

    .line 637
    .end local v14    # "i":I
    :cond_61
    if-nez v30, :cond_62

    .line 638
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 647
    :goto_23
    if-nez v12, :cond_63

    .line 648
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 653
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    move-object/from16 v33, v0

    if-eqz v33, :cond_54

    .line 654
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v14, v0, :cond_54

    .line 655
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/threed/jpct/VertexAttributes;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    move-object/from16 v34, v0

    aget v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;I)V

    .line 654
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 640
    .end local v14    # "i":I
    :cond_62
    const v33, 0x8892

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 641
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 642
    const/16 v33, 0x4

    const/16 v34, 0x140c

    const/16 v35, 0x10

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v11, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 644
    const v33, 0x8892

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_23

    .line 650
    :cond_63
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    move/from16 v33, v0

    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setTangents(I)V

    goto/16 :goto_24

    .line 694
    :cond_64
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_21

    .line 706
    .restart local v14    # "i":I
    :cond_65
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/threed/jpct/VertexAttributes;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstance;->attributesIds:[I

    move-object/from16 v34, v0

    aget v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->unbindVertexAttributes(Lcom/threed/jpct/VertexAttributes;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 705
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_22
.end method

.method setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    .line 130
    return-void
.end method
