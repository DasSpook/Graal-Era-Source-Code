.class public Lcom/fabzat/shop/utils/opengl/FZRendererTest;
.super Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;
.source "FZRendererTest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private aV:Lcom/fabzat/shop/model/FZ3DResource;

.field dA:I

.field private dk:Lcom/fabzat/shop/activities/FZActivity;

.field private dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

.field private dm:F

.field private dn:Lcom/threed/jpct/FrameBuffer;

.field private do:Lcom/threed/jpct/World;

.field private dp:Lcom/threed/jpct/RGBColor;

.field private dq:F

.field private dr:F

.field private ds:Z

.field private du:Lcom/threed/jpct/Light;

.field private dx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/threed/jpct/Object3D;",
            ">;"
        }
    .end annotation
.end field

.field dy:Z

.field dz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/fabzat/shop/utils/opengl/FZRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/fabzat/shop/utils/opengl/FZRendererListener;Lcom/fabzat/shop/model/FZ3DResource;)V
    .locals 5
    .param p1, "listener"    # Lcom/fabzat/shop/utils/opengl/FZRendererListener;
    .param p2, "res"    # Lcom/fabzat/shop/model/FZ3DResource;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    invoke-direct {p0}, Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;-><init>()V

    .line 57
    const v0, -0x43f105cb

    iput v0, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dm:F

    .line 59
    iput-object v3, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dn:Lcom/threed/jpct/FrameBuffer;

    .line 60
    iput-object v3, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    .line 61
    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/threed/jpct/RGBColor;-><init>(IIII)V

    iput-object v0, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dp:Lcom/threed/jpct/RGBColor;

    .line 63
    iput v4, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dq:F

    .line 64
    iput v4, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dr:F

    .line 66
    iput-boolean v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->ds:Z

    .line 70
    iput-object v3, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->du:Lcom/threed/jpct/Light;

    .line 410
    iput-boolean v1, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dy:Z

    .line 411
    iput v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dz:I

    .line 412
    const/16 v0, 0x14

    iput v0, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dA:I

    .line 75
    iput-object p1, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    .line 76
    iput-object p2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    .line 77
    return-void
.end method

.method private T()V
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dz:I

    .line 470
    iget v0, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dz:I

    iget v1, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dA:I

    if-le v0, v1, :cond_0

    .line 472
    sget-object v0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "\u0ca5_\u0ca5  Rendering failed too much times. Giving up."

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dy:Z

    .line 475
    :cond_0
    return-void
.end method

.method private a([F)D
    .locals 14
    .param p1, "boundingBox"    # [F

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 89
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v2, v8

    .line 90
    .local v2, "deltaX":D
    const/4 v8, 0x2

    aget v8, p1, v8

    const/4 v9, 0x3

    aget v9, p1, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v4, v8

    .line 91
    .local v4, "deltaY":D
    const/4 v8, 0x4

    aget v8, p1, v8

    const/4 v9, 0x5

    aget v9, p1, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v6, v8

    .line 93
    .local v6, "deltaZ":D
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double v10, v2, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 95
    .local v0, "cameraDistance":D
    return-wide v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;F)Lcom/threed/jpct/Object3D;
    .locals 10
    .param p1, "objFName"    # Ljava/lang/String;
    .param p2, "mtlFName"    # Ljava/lang/String;
    .param p3, "scale"    # F

    .prologue
    .line 354
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, "f1":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 357
    .local v6, "stream1":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v2, "f2":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 361
    .local v7, "stream2":Ljava/io/InputStream;
    invoke-static {v6, v7, p3}, Lcom/threed/jpct/Loader;->loadOBJ(Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object v4

    .line 362
    .local v4, "model":[Lcom/threed/jpct/Object3D;
    new-instance v5, Lcom/threed/jpct/Object3D;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 363
    .local v5, "o3d":Lcom/threed/jpct/Object3D;
    const/4 v8, 0x0

    .line 365
    .local v8, "temp":Lcom/threed/jpct/Object3D;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    .line 367
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v4

    if-lt v3, v9, :cond_0

    .line 384
    invoke-virtual {v5}, Lcom/threed/jpct/Object3D;->build()V

    .line 385
    invoke-virtual {v5}, Lcom/threed/jpct/Object3D;->strip()V

    .line 386
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/threed/jpct/Object3D;->setCulling(Z)V

    .line 402
    .end local v1    # "f1":Ljava/io/File;
    .end local v2    # "f2":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "model":[Lcom/threed/jpct/Object3D;
    .end local v5    # "o3d":Lcom/threed/jpct/Object3D;
    .end local v6    # "stream1":Ljava/io/InputStream;
    .end local v7    # "stream2":Ljava/io/InputStream;
    .end local v8    # "temp":Lcom/threed/jpct/Object3D;
    :goto_1
    return-object v5

    .line 369
    .restart local v1    # "f1":Ljava/io/File;
    .restart local v2    # "f2":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v4    # "model":[Lcom/threed/jpct/Object3D;
    .restart local v5    # "o3d":Lcom/threed/jpct/Object3D;
    .restart local v6    # "stream1":Ljava/io/InputStream;
    .restart local v7    # "stream2":Ljava/io/InputStream;
    .restart local v8    # "temp":Lcom/threed/jpct/Object3D;
    :cond_0
    aget-object v8, v4, v3

    .line 370
    sget-object v9, Lcom/threed/jpct/SimpleVector;->ORIGIN:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v8, v9}, Lcom/threed/jpct/Object3D;->setCenter(Lcom/threed/jpct/SimpleVector;)V

    .line 371
    const v9, -0x3fb6f025

    invoke-virtual {v8, v9}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    .line 372
    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 373
    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {v8, v9}, Lcom/threed/jpct/Object3D;->setRotationMatrix(Lcom/threed/jpct/Matrix;)V

    .line 374
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/threed/jpct/Object3D;->setCulling(Z)V

    .line 376
    iget-object v9, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    invoke-virtual {v9, v8}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 377
    iget-object v9, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-static {v5, v8}, Lcom/threed/jpct/Object3D;->mergeObjects(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "f1":Ljava/io/File;
    .end local v2    # "f2":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "model":[Lcom/threed/jpct/Object3D;
    .end local v5    # "o3d":Lcom/threed/jpct/Object3D;
    .end local v6    # "stream1":Ljava/io/InputStream;
    .end local v7    # "stream2":Ljava/io/InputStream;
    .end local v8    # "temp":Lcom/threed/jpct/Object3D;
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 402
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 393
    :catch_1
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2

    .line 397
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method

.method private a(Lcom/threed/jpct/Camera;)V
    .locals 21
    .param p1, "cam"    # Lcom/threed/jpct/Camera;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/threed/jpct/Object3D;

    .line 106
    .local v19, "obj":Lcom/threed/jpct/Object3D;
    invoke-virtual/range {v19 .. v19}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threed/jpct/Mesh;->getBoundingBox()[F

    move-result-object v16

    .line 107
    .local v16, "boundingBox":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->a([F)D

    move-result-wide v7

    .line 109
    .local v7, "cameraDistance":D
    const/4 v2, 0x2

    aget v2, v16, v2

    const/4 v3, 0x3

    aget v3, v16, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v17, v0

    .line 110
    .local v17, "deltaY":D
    invoke-virtual/range {v19 .. v19}, Lcom/threed/jpct/Object3D;->getTransformedCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v20

    .line 112
    .local v20, "v":Lcom/threed/jpct/SimpleVector;
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/threed/jpct/SimpleVector;-><init>(DDD)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Camera;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    .line 114
    invoke-virtual/range {v19 .. v19}, Lcom/threed/jpct/Object3D;->getTransformedCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/threed/jpct/Camera;->lookAt(Lcom/threed/jpct/SimpleVector;)V

    .line 116
    new-instance v9, Lcom/threed/jpct/SimpleVector;

    const-wide/16 v10, 0x0

    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    div-double v12, v17, v2

    const-wide/16 v14, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/threed/jpct/SimpleVector;-><init>(DDD)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 117
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Camera;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    .line 119
    return-void
.end method

.method private addTexture(Lcom/fabzat/shop/model/FZ3DResource;Ljava/lang/String;)V
    .locals 8
    .param p1, "res"    # Lcom/fabzat/shop/model/FZ3DResource;
    .param p2, "textName"    # Ljava/lang/String;

    .prologue
    .line 276
    sget-object v5, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding texture : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "fname":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/threed/jpct/Texture;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/threed/jpct/Texture;-><init>(Ljava/io/InputStream;)V

    .line 281
    .local v4, "texture":Lcom/threed/jpct/Texture;
    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->removeAlpha()V

    .line 283
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    .end local v4    # "texture":Lcom/threed/jpct/Texture;
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v3

    .line 286
    .local v3, "o":Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OutOfMemoryError, Could not load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v3    # "o":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->g(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v4

    .line 292
    .restart local v4    # "texture":Lcom/threed/jpct/Texture;
    :try_start_1
    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->removeAlpha()V

    .line 293
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 295
    :catch_2
    move-exception v1

    .line 296
    .local v1, "e2":Ljava/lang/Exception;
    sget-object v5, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "done":Z
    const/4 v2, 0x1

    .line 305
    .local v2, "downsampleBy":I
    const/4 v0, 0x0

    .line 306
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    move v3, v2

    .line 308
    .end local v2    # "downsampleBy":I
    .local v3, "downsampleBy":I
    :goto_0
    if-eqz v1, :cond_0

    .line 319
    return-object v0

    .line 309
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "downsampleBy":I
    .restart local v2    # "downsampleBy":I
    iput v3, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 311
    :try_start_0
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 312
    const/4 v1, 0x1

    move v3, v2

    .line 313
    .end local v2    # "downsampleBy":I
    .restart local v3    # "downsampleBy":I
    goto :goto_0

    .line 314
    .end local v3    # "downsampleBy":I
    .restart local v2    # "downsampleBy":I
    :catch_0
    move-exception v5

    move v3, v2

    .end local v2    # "downsampleBy":I
    .restart local v3    # "downsampleBy":I
    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Lcom/threed/jpct/Texture;
    .locals 7
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 326
    :try_start_0
    sget-object v5, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Rescaling texture"

    invoke-static {v5, v6}, Lcom/fabzat/shop/utils/FZLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 345
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 333
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Lcom/fabzat/shop/utils/FZTools;->getNearestPowerOfTwo(I)I

    move-result v3

    .line 334
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Lcom/fabzat/shop/utils/FZTools;->getNearestPowerOfTwo(I)I

    move-result v2

    .line 340
    .local v2, "height":I
    new-instance v5, Lcom/threed/jpct/Texture;

    invoke-static {v0, v3, v2}, Lcom/threed/jpct/util/BitmapHelper;->rescale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/threed/jpct/Texture;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v5

    goto :goto_0

    .line 342
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 344
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method

.method private getTextureFiles(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 206
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/String;

    const-string v10, "([a-zA-Z0-9\\-\\_]+\\.jpg)"

    aput-object v10, v7, v9

    const-string v10, "([a-zA-Z0-9\\-\\_]+\\.png)"

    aput-object v10, v7, v11

    .line 207
    .local v7, "patterns":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 209
    .local v4, "filenames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 213
    .local v8, "stream":Ljava/io/InputStream;
    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "fileString":Ljava/lang/String;
    array-length v10, v7

    :goto_0
    if-lt v9, v10, :cond_0

    .line 230
    .end local v3    # "fileString":Ljava/lang/String;
    .end local v8    # "stream":Ljava/io/InputStream;
    :goto_1
    return-object v4

    .line 215
    .restart local v3    # "fileString":Ljava/lang/String;
    .restart local v8    # "stream":Ljava/io/InputStream;
    :cond_0
    aget-object v6, v7, v9

    .line 217
    .local v6, "pattern":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 218
    .local v0, "currentPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 220
    .local v5, "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-nez v11, :cond_2

    .line 215
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 221
    :cond_2
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 222
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 226
    .end local v0    # "currentPattern":Ljava/util/regex/Pattern;
    .end local v3    # "fileString":Ljava/lang/String;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "pattern":Ljava/lang/String;
    .end local v8    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadFixedMtlFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "mtlFile"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v2, "[kK][dD]\\ 0\\.000000\\ 0\\.000000\\ 0\\.000000"

    .line 236
    .local v2, "fixPattern":Ljava/lang/String;
    const-string v3, "Kd 0.100000 0.100000 0.100000"

    .line 238
    .local v3, "fixed":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v6, "tmp":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 245
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 246
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 250
    .local v7, "writer":Ljava/io/BufferedWriter;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 253
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 254
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 261
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 251
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "tmp":Ljava/io/File;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private unloadFixedMtl(Ljava/lang/String;)V
    .locals 3
    .param p1, "mtlFile"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v5, 0x0

    .line 416
    iget-boolean v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dy:Z

    if-nez v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dq:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_2

    .line 426
    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 428
    iput v5, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dq:F

    .line 431
    :cond_2
    iget v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dr:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    .line 432
    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 434
    iput v5, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dr:F

    .line 438
    :cond_3
    iget-boolean v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->ds:Z

    if-nez v2, :cond_4

    .line 439
    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 443
    :cond_4
    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dn:Lcom/threed/jpct/FrameBuffer;

    iget-object v3, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dp:Lcom/threed/jpct/RGBColor;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/FrameBuffer;->clear(Lcom/threed/jpct/RGBColor;)V

    .line 449
    :try_start_0
    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    iget-object v3, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dn:Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/World;->renderScene(Lcom/threed/jpct/FrameBuffer;)V

    .line 450
    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    iget-object v3, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dn:Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/World;->draw(Lcom/threed/jpct/FrameBuffer;)V

    .line 451
    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dn:Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v2}, Lcom/threed/jpct/FrameBuffer;->display()V

    .line 452
    const/4 v2, 0x0

    iput v2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dz:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v2, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "\u0ca5_\u0ca5  OutOfMemoryError Renderer could not draw the object."

    invoke-static {v2, v3}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 456
    invoke-direct {p0}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->T()V

    goto :goto_0

    .line 426
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/Object3D;

    .line 427
    .local v1, "obj":Lcom/threed/jpct/Object3D;
    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threed/jpct/Matrix;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    iget v4, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dq:F

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/threed/jpct/Object3D;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    goto :goto_1

    .line 432
    .end local v1    # "obj":Lcom/threed/jpct/Object3D;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/Object3D;

    .line 433
    .restart local v1    # "obj":Lcom/threed/jpct/Object3D;
    iget v3, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dr:F

    neg-float v3, v3

    invoke-virtual {v1, v3}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    goto :goto_2

    .line 439
    .end local v1    # "obj":Lcom/threed/jpct/Object3D;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/Object3D;

    .line 440
    .restart local v1    # "obj":Lcom/threed/jpct/Object3D;
    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threed/jpct/Matrix;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    iget v4, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dm:F

    invoke-virtual {v1, v3, v4}, Lcom/threed/jpct/Object3D;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    goto :goto_3

    .line 457
    .end local v1    # "obj":Lcom/threed/jpct/Object3D;
    :catch_1
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "\u0ca5_\u0ca5  Renderer could not draw the object."

    invoke-static {v2, v3}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->T()V

    goto/16 :goto_0

    .line 460
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "\u0ca5_\u0ca5  Renderer could not draw the object."

    invoke-static {v2, v3}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->T()V

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 122
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dn:Lcom/threed/jpct/FrameBuffer;

    if-eqz v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dn:Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v6}, Lcom/threed/jpct/FrameBuffer;->dispose()V

    .line 126
    :cond_0
    new-instance v6, Lcom/threed/jpct/FrameBuffer;

    invoke-direct {v6, p2, p3}, Lcom/threed/jpct/FrameBuffer;-><init>(II)V

    iput-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dn:Lcom/threed/jpct/FrameBuffer;

    .line 128
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dk:Lcom/fabzat/shop/activities/FZActivity;

    if-nez v6, :cond_1

    .line 130
    new-instance v6, Lcom/threed/jpct/World;

    invoke-direct {v6}, Lcom/threed/jpct/World;-><init>()V

    iput-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    .line 132
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    invoke-virtual {v6}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fabzat/shop/manager/FZFileManager;->getObjPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "objFile":Ljava/lang/String;
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    invoke-virtual {v6}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fabzat/shop/manager/FZFileManager;->getMtlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "mtlFile":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->getTextureFiles(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v5

    .line 137
    .local v5, "textures":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 139
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/threed/jpct/TextureManager;->compress()V

    .line 141
    const-string v6, "Fabzat-JNI"

    const-string v7, "java Parsing"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/fabzat/shop/utils/FZTools;->logTimeStamp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
    invoke-direct {p0, v2}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->loadFixedMtlFile(Ljava/lang/String;)V

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v6, v7}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->a(Ljava/lang/String;Ljava/lang/String;F)Lcom/threed/jpct/Object3D;

    .line 146
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    if-nez v6, :cond_3

    .line 148
    sget-object v6, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error loading 3D Object"

    invoke-static {v6, v7}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dy:Z

    .line 151
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    if-eqz v6, :cond_1

    .line 153
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    invoke-interface {v6}, Lcom/fabzat/shop/utils/opengl/FZRendererListener;->hideInfo()V

    .line 154
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    .line 197
    .end local v2    # "mtlFile":Ljava/lang/String;
    .end local v3    # "objFile":Ljava/lang/String;
    .end local v5    # "textures":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 137
    .restart local v2    # "mtlFile":Ljava/lang/String;
    .restart local v3    # "objFile":Ljava/lang/String;
    .restart local v5    # "textures":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 138
    .local v4, "texture":Ljava/lang/String;
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    invoke-direct {p0, v7, v4}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->addTexture(Lcom/fabzat/shop/model/FZ3DResource;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v4    # "texture":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v2}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->unloadFixedMtl(Ljava/lang/String;)V

    .line 160
    const-string v6, "Fabzat-JNI"

    const-string v7, "java Parsing"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/fabzat/shop/utils/FZTools;->logTimeStamp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    invoke-virtual {v6}, Lcom/threed/jpct/World;->buildAllObjects()V

    .line 169
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    invoke-virtual {v6}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v0

    .line 170
    .local v0, "cam":Lcom/threed/jpct/Camera;
    sget-object v6, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FOV is set to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getFOV()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v0}, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->a(Lcom/threed/jpct/Camera;)V

    .line 176
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    const/16 v7, 0x96

    const/16 v8, 0x96

    const/16 v9, 0x96

    invoke-virtual {v6, v7, v8, v9}, Lcom/threed/jpct/World;->setAmbientLight(III)V

    .line 178
    new-instance v6, Lcom/threed/jpct/Light;

    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    invoke-direct {v6, v7}, Lcom/threed/jpct/Light;-><init>(Lcom/threed/jpct/World;)V

    iput-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->du:Lcom/threed/jpct/Light;

    .line 179
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->du:Lcom/threed/jpct/Light;

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x437f0000    # 255.0f

    invoke-virtual {v6, v7, v8, v9}, Lcom/threed/jpct/Light;->setIntensity(FFF)V

    .line 181
    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getPosition()Lcom/threed/jpct/SimpleVector;

    move-result-object v1

    .line 182
    .local v1, "lVec":Lcom/threed/jpct/SimpleVector;
    new-instance v6, Lcom/threed/jpct/SimpleVector;

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    invoke-direct {v6, v7, v8, v9}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    invoke-virtual {v1, v6}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 183
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->du:Lcom/threed/jpct/Light;

    invoke-virtual {v6, v1}, Lcom/threed/jpct/Light;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    .line 185
    invoke-static {}, Lcom/threed/jpct/util/MemoryHelper;->compact()V

    .line 187
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    if-eqz v6, :cond_4

    .line 188
    iget-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    invoke-interface {v6}, Lcom/fabzat/shop/utils/opengl/FZRendererListener;->hideInfo()V

    .line 189
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    .line 193
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, p2

    mul-float/2addr v6, v7

    int-to-float v7, p3

    div-float/2addr v6, v7

    const v7, 0x3e19999a    # 0.15f

    add-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/threed/jpct/Camera;->setFOV(F)V

    .line 195
    sget-object v6, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GLSURFACE W="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  H="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 407
    return-void
.end method

.method public setObjectTouched(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->ds:Z

    .line 86
    return-void
.end method

.method public setTouchedDelta(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dq:F

    .line 81
    iput p2, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dr:F

    .line 82
    return-void
.end method

.method public unload()V
    .locals 3

    .prologue
    .line 479
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->do:Lcom/threed/jpct/World;

    invoke-virtual {v1}, Lcom/threed/jpct/World;->removeAllObjects()V

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRendererTest;->dx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 489
    :cond_1
    return-void

    .line 483
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    .line 484
    .local v0, "obj":Lcom/threed/jpct/Object3D;
    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->clearObject()V

    goto :goto_0
.end method
