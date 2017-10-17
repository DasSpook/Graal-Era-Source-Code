.class public Lcom/fabzat/shop/utils/opengl/FZRenderer;
.super Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;
.source "FZRenderer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static dw:I


# instance fields
.field private aV:Lcom/fabzat/shop/model/FZ3DResource;

.field private cr:I

.field private dk:Lcom/fabzat/shop/activities/FZActivity;

.field private dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

.field private dm:F

.field private dn:Lcom/threed/jpct/FrameBuffer;

.field private do:Lcom/threed/jpct/World;

.field private dp:Lcom/threed/jpct/RGBColor;

.field private dq:F

.field private dr:F

.field private ds:Z

.field private dt:Lcom/threed/jpct/Object3D;

.field private du:Lcom/threed/jpct/Light;

.field private dv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/fabzat/shop/utils/opengl/FZRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->LOG_TAG:Ljava/lang/String;

    .line 61
    const/16 v0, 0xa

    sput v0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dw:I

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

    .line 64
    invoke-direct {p0}, Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;-><init>()V

    .line 41
    const v0, -0x43f105cb

    iput v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dm:F

    .line 43
    iput-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dn:Lcom/threed/jpct/FrameBuffer;

    .line 44
    iput-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    .line 45
    new-instance v0, Lcom/threed/jpct/RGBColor;

    invoke-direct {v0, v1, v1, v1, v3}, Lcom/threed/jpct/RGBColor;-><init>(IIII)V

    iput-object v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dp:Lcom/threed/jpct/RGBColor;

    .line 47
    iput v4, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dq:F

    .line 48
    iput v4, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dr:F

    .line 50
    iput-boolean v3, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->ds:Z

    .line 52
    iput-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    .line 54
    iput-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->du:Lcom/threed/jpct/Light;

    .line 59
    iput-boolean v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dv:Z

    .line 60
    iput v3, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->cr:I

    .line 65
    iput-object p1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    .line 66
    iput-object p2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    .line 67
    return-void
.end method

.method private T()V
    .locals 2

    .prologue
    .line 304
    iget v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->cr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->cr:I

    .line 306
    iget v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->cr:I

    sget v1, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dw:I

    if-le v0, v1, :cond_0

    .line 308
    sget-object v0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "\u0ca5_\u0ca5  Rendering failed too much times. Giving up."

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dv:Z

    .line 311
    :cond_0
    return-void
.end method

.method private a([F)D
    .locals 14
    .param p1, "boundingBox"    # [F

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 79
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v2, v8

    .line 80
    .local v2, "deltaX":D
    const/4 v8, 0x2

    aget v8, p1, v8

    const/4 v9, 0x3

    aget v9, p1, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v4, v8

    .line 81
    .local v4, "deltaY":D
    const/4 v8, 0x4

    aget v8, p1, v8

    const/4 v9, 0x5

    aget v9, p1, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v6, v8

    .line 83
    .local v6, "deltaZ":D
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double v10, v2, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 85
    .local v0, "cameraDistance":D
    return-wide v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;F)Lcom/threed/jpct/Object3D;
    .locals 10
    .param p1, "objFName"    # Ljava/lang/String;
    .param p2, "mtlFName"    # Ljava/lang/String;
    .param p3, "scale"    # F

    .prologue
    .line 209
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "f1":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 212
    .local v6, "stream1":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, "f2":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 216
    .local v7, "stream2":Ljava/io/InputStream;
    invoke-static {v6, v7, p3}, Lcom/threed/jpct/Loader;->loadOBJ(Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object v4

    .line 217
    .local v4, "model":[Lcom/threed/jpct/Object3D;
    new-instance v5, Lcom/threed/jpct/Object3D;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 218
    .local v5, "o3d":Lcom/threed/jpct/Object3D;
    const/4 v8, 0x0

    .line 220
    .local v8, "temp":Lcom/threed/jpct/Object3D;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v4

    if-lt v3, v9, :cond_0

    .line 234
    invoke-virtual {v5}, Lcom/threed/jpct/Object3D;->build()V

    .line 235
    invoke-virtual {v5}, Lcom/threed/jpct/Object3D;->strip()V

    .line 236
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/threed/jpct/Object3D;->setCulling(Z)V

    .line 252
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

    .line 222
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

    .line 223
    sget-object v9, Lcom/threed/jpct/SimpleVector;->ORIGIN:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v8, v9}, Lcom/threed/jpct/Object3D;->setCenter(Lcom/threed/jpct/SimpleVector;)V

    .line 224
    const v9, -0x3fb6f025

    invoke-virtual {v8, v9}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    .line 225
    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 226
    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {v8, v9}, Lcom/threed/jpct/Object3D;->setRotationMatrix(Lcom/threed/jpct/Matrix;)V

    .line 227
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/threed/jpct/Object3D;->setCulling(Z)V

    .line 229
    invoke-static {v5, v8}, Lcom/threed/jpct/Object3D;->mergeObjects(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
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

    .line 241
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 252
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 243
    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2

    .line 247
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method

.method private a(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Camera;)V
    .locals 9
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "cam"    # Lcom/threed/jpct/Camera;

    .prologue
    const-wide/16 v1, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->getBoundingBox()[F

    move-result-object v7

    .line 96
    .local v7, "boundingBox":[F
    invoke-direct {p0, v7}, Lcom/fabzat/shop/utils/opengl/FZRenderer;->a([F)D

    move-result-wide v5

    .line 99
    .local v5, "cameraDistance":D
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getTransformedCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v8

    .line 101
    .local v8, "v":Lcom/threed/jpct/SimpleVector;
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    move-wide v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/SimpleVector;-><init>(DDD)V

    invoke-virtual {v8, v0}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 102
    invoke-virtual {p2, v8}, Lcom/threed/jpct/Camera;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    .line 103
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getTransformedCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/threed/jpct/Camera;->lookAt(Lcom/threed/jpct/SimpleVector;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v4, 0x0

    .line 261
    iget-boolean v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dv:Z

    if-nez v1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 266
    :cond_0
    iget v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dq:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threed/jpct/Matrix;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    iget v3, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dq:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/threed/jpct/Object3D;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    .line 268
    iput v4, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dq:F

    .line 271
    :cond_1
    iget v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dr:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    iget v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dr:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    .line 273
    iput v4, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dr:F

    .line 277
    :cond_2
    iget-boolean v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->ds:Z

    if-nez v1, :cond_3

    .line 278
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threed/jpct/Matrix;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    iget v3, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dm:F

    invoke-virtual {v1, v2, v3}, Lcom/threed/jpct/Object3D;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dn:Lcom/threed/jpct/FrameBuffer;

    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dp:Lcom/threed/jpct/RGBColor;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/FrameBuffer;->clear(Lcom/threed/jpct/RGBColor;)V

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dn:Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/World;->renderScene(Lcom/threed/jpct/FrameBuffer;)V

    .line 286
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    iget-object v2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dn:Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/World;->draw(Lcom/threed/jpct/FrameBuffer;)V

    .line 287
    iget-object v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dn:Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v1}, Lcom/threed/jpct/FrameBuffer;->display()V

    .line 288
    const/4 v1, 0x0

    iput v1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->cr:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/fabzat/shop/utils/opengl/FZRenderer;->LOG_TAG:Ljava/lang/String;

    const-string v2, "\u0ca5_\u0ca5  OutOfMemoryError Renderer could not draw the object."

    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 292
    invoke-direct {p0}, Lcom/fabzat/shop/utils/opengl/FZRenderer;->T()V

    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/fabzat/shop/utils/opengl/FZRenderer;->LOG_TAG:Ljava/lang/String;

    const-string v2, "\u0ca5_\u0ca5  Renderer could not draw the object."

    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/fabzat/shop/utils/opengl/FZRenderer;->T()V

    goto :goto_0

    .line 296
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fabzat/shop/utils/opengl/FZRenderer;->LOG_TAG:Ljava/lang/String;

    const-string v2, "\u0ca5_\u0ca5  Renderer could not draw the object."

    invoke-static {v1, v2}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/fabzat/shop/utils/opengl/FZRenderer;->T()V

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 111
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dn:Lcom/threed/jpct/FrameBuffer;

    if-eqz v7, :cond_0

    .line 112
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dn:Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v7}, Lcom/threed/jpct/FrameBuffer;->dispose()V

    .line 115
    :cond_0
    new-instance v7, Lcom/threed/jpct/FrameBuffer;

    invoke-direct {v7, p2, p3}, Lcom/threed/jpct/FrameBuffer;-><init>(II)V

    iput-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dn:Lcom/threed/jpct/FrameBuffer;

    .line 117
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dk:Lcom/fabzat/shop/activities/FZActivity;

    if-nez v7, :cond_1

    .line 119
    new-instance v7, Lcom/threed/jpct/World;

    invoke-direct {v7}, Lcom/threed/jpct/World;-><init>()V

    iput-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    .line 121
    new-instance v1, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;

    invoke-direct {v1}, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;-><init>()V

    .line 123
    .local v1, "helper":Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fabzat/shop/manager/FZFileManager;->getObjPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "objFile":Ljava/lang/String;
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fabzat/shop/manager/FZFileManager;->getMtlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "mtlFile":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->getTextureFiles(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v6

    .line 128
    .local v6, "textures":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 131
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/threed/jpct/TextureManager;->compress()V

    .line 133
    const-string v7, "Fabzat-JNI"

    const-string v8, "java Parsing"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/fabzat/shop/utils/FZTools;->logTimeStamp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    invoke-virtual {v1, v3}, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->loadFixedMtlFile(Ljava/lang/String;)V

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0, v4, v7, v8}, Lcom/fabzat/shop/utils/opengl/FZRenderer;->a(Ljava/lang/String;Ljava/lang/String;F)Lcom/threed/jpct/Object3D;

    move-result-object v7

    iput-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    .line 138
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    if-nez v7, :cond_3

    .line 140
    sget-object v7, Lcom/fabzat/shop/utils/opengl/FZRenderer;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error loading 3D Object"

    invoke-static {v7, v8}, Lcom/fabzat/shop/utils/FZLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dv:Z

    .line 143
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    if-eqz v7, :cond_1

    .line 145
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    invoke-interface {v7}, Lcom/fabzat/shop/utils/opengl/FZRendererListener;->hideInfo()V

    .line 146
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    .line 189
    .end local v1    # "helper":Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;
    .end local v3    # "mtlFile":Ljava/lang/String;
    .end local v4    # "objFile":Ljava/lang/String;
    .end local v6    # "textures":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 128
    .restart local v1    # "helper":Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;
    .restart local v3    # "mtlFile":Ljava/lang/String;
    .restart local v4    # "objFile":Ljava/lang/String;
    .restart local v6    # "textures":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    .local v5, "texture":Ljava/lang/String;
    iget-object v8, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->aV:Lcom/fabzat/shop/model/FZ3DResource;

    invoke-virtual {v1, v8, v5}, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->addTexture(Lcom/fabzat/shop/model/FZ3DResource;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v5    # "texture":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v3}, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->unloadFixedMtl(Ljava/lang/String;)V

    .line 152
    const-string v7, "Fabzat-JNI"

    const-string v8, "java Parsing"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/fabzat/shop/utils/FZTools;->logTimeStamp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    invoke-virtual {v7}, Lcom/threed/jpct/Object3D;->compile()V

    .line 156
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    iget-object v8, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    invoke-virtual {v7, v8}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 157
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    invoke-virtual {v7}, Lcom/threed/jpct/World;->buildAllObjects()V

    .line 161
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    invoke-virtual {v7}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v0

    .line 162
    .local v0, "cam":Lcom/threed/jpct/Camera;
    sget-object v7, Lcom/fabzat/shop/utils/opengl/FZRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FOV is set to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getFOV()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    invoke-direct {p0, v7, v0}, Lcom/fabzat/shop/utils/opengl/FZRenderer;->a(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Camera;)V

    .line 168
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    const/16 v8, 0x96

    const/16 v9, 0x96

    const/16 v10, 0x96

    invoke-virtual {v7, v8, v9, v10}, Lcom/threed/jpct/World;->setAmbientLight(III)V

    .line 170
    new-instance v7, Lcom/threed/jpct/Light;

    iget-object v8, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    invoke-direct {v7, v8}, Lcom/threed/jpct/Light;-><init>(Lcom/threed/jpct/World;)V

    iput-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->du:Lcom/threed/jpct/Light;

    .line 171
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->du:Lcom/threed/jpct/Light;

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v10, 0x437f0000    # 255.0f

    invoke-virtual {v7, v8, v9, v10}, Lcom/threed/jpct/Light;->setIntensity(FFF)V

    .line 173
    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getPosition()Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    .line 174
    .local v2, "lVec":Lcom/threed/jpct/SimpleVector;
    new-instance v7, Lcom/threed/jpct/SimpleVector;

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    invoke-direct {v7, v8, v9, v10}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    invoke-virtual {v2, v7}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 175
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->du:Lcom/threed/jpct/Light;

    invoke-virtual {v7, v2}, Lcom/threed/jpct/Light;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    .line 177
    invoke-static {}, Lcom/threed/jpct/util/MemoryHelper;->compact()V

    .line 179
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    if-eqz v7, :cond_4

    .line 180
    iget-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    invoke-interface {v7}, Lcom/fabzat/shop/utils/opengl/FZRendererListener;->hideInfo()V

    .line 181
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dl:Lcom/fabzat/shop/utils/opengl/FZRendererListener;

    .line 185
    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v8, p2

    mul-float/2addr v7, v8

    int-to-float v8, p3

    div-float/2addr v7, v8

    const v8, 0x3e19999a    # 0.15f

    add-float/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/threed/jpct/Camera;->setFOV(F)V

    .line 187
    sget-object v7, Lcom/fabzat/shop/utils/opengl/FZRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GLSURFACE W="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  H="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 257
    return-void
.end method

.method public setObjectTouched(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->ds:Z

    .line 76
    return-void
.end method

.method public setTouchedDelta(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dq:F

    .line 71
    iput p2, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dr:F

    .line 72
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->do:Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->removeAllObjects()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/fabzat/shop/utils/opengl/FZRenderer;->dt:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->clearObject()V

    .line 321
    :cond_1
    return-void
.end method
