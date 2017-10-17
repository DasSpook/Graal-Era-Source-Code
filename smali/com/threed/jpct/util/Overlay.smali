.class public Lcom/threed/jpct/util/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threed/jpct/util/Overlay$MyController;
    }
.end annotation


# static fields
.field private static cnt:I = 0x0

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private adjuster:Lcom/threed/jpct/util/Overlay$MyController;

.field private depth:F

.field private disposed:Z

.field private lowerRightU:I

.field private lowerRightV:I

.field private lowerRightX:I

.field private lowerRightY:I

.field private pivotX:I

.field private pivotY:I

.field private plane:Lcom/threed/jpct/Object3D;

.field private rotMode:Z

.field private rotation:F

.field private tmp1:Lcom/threed/jpct/SimpleVector;

.field private tmp2:Lcom/threed/jpct/SimpleVector;

.field private tmp3:Lcom/threed/jpct/SimpleVector;

.field private tmp4:Lcom/threed/jpct/SimpleVector;

.field private tmp5:Lcom/threed/jpct/SimpleVector;

.field private tmp6:Lcom/threed/jpct/SimpleVector;

.field private tmpMat:Lcom/threed/jpct/Matrix;

.field private upperLeftU:I

.field private upperLeftV:I

.field private upperLeftX:I

.field private upperLeftY:I

.field private uvChange:Z

.field private world:Lcom/threed/jpct/World;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/util/Overlay;->cnt:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/World;IIIILjava/lang/String;)V
    .locals 8
    .param p1, "world"    # Lcom/threed/jpct/World;
    .param p2, "upperLeftX"    # I
    .param p3, "upperLeftY"    # I
    .param p4, "lowerRightX"    # I
    .param p5, "lowerRightY"    # I
    .param p6, "textureName"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/util/Overlay;-><init>(Lcom/threed/jpct/World;IIIILjava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/World;IIIILjava/lang/String;Z)V
    .locals 7
    .param p1, "world"    # Lcom/threed/jpct/World;
    .param p2, "upperLeftX"    # I
    .param p3, "upperLeftY"    # I
    .param p4, "lowerRightX"    # I
    .param p5, "lowerRightY"    # I
    .param p6, "textureName"    # Ljava/lang/String;
    .param p7, "modifyUV"    # Z

    .prologue
    const/4 v6, 0x0

    const v2, -0x3b9ac9ff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v6, p0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;

    .line 36
    iput v2, p0, Lcom/threed/jpct/util/Overlay;->pivotX:I

    iput v2, p0, Lcom/threed/jpct/util/Overlay;->pivotY:I

    .line 37
    sget v2, Lcom/threed/jpct/Config;->nearPlane:F

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/threed/jpct/util/Overlay;->depth:F

    .line 38
    iput-boolean v0, p0, Lcom/threed/jpct/util/Overlay;->disposed:Z

    .line 39
    iput-boolean v0, p0, Lcom/threed/jpct/util/Overlay;->uvChange:Z

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/threed/jpct/util/Overlay;->rotation:F

    .line 41
    iput-boolean v0, p0, Lcom/threed/jpct/util/Overlay;->rotMode:Z

    .line 44
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp1:Lcom/threed/jpct/SimpleVector;

    .line 45
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp2:Lcom/threed/jpct/SimpleVector;

    .line 46
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp3:Lcom/threed/jpct/SimpleVector;

    .line 47
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp4:Lcom/threed/jpct/SimpleVector;

    .line 48
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp5:Lcom/threed/jpct/SimpleVector;

    .line 49
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp6:Lcom/threed/jpct/SimpleVector;

    .line 50
    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmpMat:Lcom/threed/jpct/Matrix;

    .line 109
    iput-object p1, p0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    .line 110
    iput p2, p0, Lcom/threed/jpct/util/Overlay;->upperLeftX:I

    .line 111
    iput p3, p0, Lcom/threed/jpct/util/Overlay;->upperLeftY:I

    .line 112
    iput p4, p0, Lcom/threed/jpct/util/Overlay;->lowerRightX:I

    .line 113
    iput p5, p0, Lcom/threed/jpct/util/Overlay;->lowerRightY:I

    .line 114
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v2

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    .line 115
    if-eqz p6, :cond_0

    .line 116
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2, p6}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "__overlay plane "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/threed/jpct/util/Overlay;->cnt:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/threed/jpct/util/Overlay;->cnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "__"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/threed/jpct/Object3D;->setName(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    sget-object v3, Lcom/threed/jpct/RGBColor;->WHITE:Lcom/threed/jpct/RGBColor;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/Object3D;->setAdditionalColor(Lcom/threed/jpct/RGBColor;)V

    .line 121
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/Object3D;->setLighting(I)V

    .line 122
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2, p0}, Lcom/threed/jpct/Object3D;->setUserObject(Ljava/lang/Object;)V

    .line 123
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {p1, v2}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 124
    new-instance v2, Lcom/threed/jpct/util/Overlay$MyController;

    invoke-direct {v2, v6}, Lcom/threed/jpct/util/Overlay$MyController;-><init>(Lcom/threed/jpct/util/Overlay$MyController;)V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;

    .line 125
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v2

    iget-object v3, p0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;

    invoke-virtual {v2, v3, v0}, Lcom/threed/jpct/Mesh;->setVertexController(Lcom/threed/jpct/IVertexController;Z)Z

    .line 126
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    if-eqz p7, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/threed/jpct/Object3D;->build(Z)V

    .line 127
    return-void

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public constructor <init>(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;Ljava/lang/String;)V
    .locals 7
    .param p1, "world"    # Lcom/threed/jpct/World;
    .param p2, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p3, "textureName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p2}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/util/Overlay;-><init>(Lcom/threed/jpct/World;IIIILjava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/threed/jpct/util/Overlay;->disposed:Z

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/util/Overlay;->disposed:Z

    .line 301
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    iget-object v1, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->removeObject(Lcom/threed/jpct/Object3D;)V

    .line 302
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->setUserObject(Ljava/lang/Object;)V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_0
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/threed/jpct/util/Overlay;->dispose()V

    .line 397
    return-void
.end method

.method public getObject3D()Lcom/threed/jpct/Object3D;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    return-object v0
.end method

.method public setColor(Lcom/threed/jpct/RGBColor;)V
    .locals 1
    .param p1, "color"    # Lcom/threed/jpct/RGBColor;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setAdditionalColor(Lcom/threed/jpct/RGBColor;)V

    .line 171
    return-void
.end method

.method public setDepth(F)V
    .locals 2
    .param p1, "depth"    # F

    .prologue
    .line 142
    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 143
    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float p1, v0, v1

    .line 145
    :cond_0
    iput p1, p0, Lcom/threed/jpct/util/Overlay;->depth:F

    .line 146
    return-void
.end method

.method public setNewCoordinates(IIII)V
    .locals 0
    .param p1, "upperLeftX"    # I
    .param p2, "upperLeftY"    # I
    .param p3, "lowerRightX"    # I
    .param p4, "lowerRightY"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/threed/jpct/util/Overlay;->upperLeftX:I

    .line 231
    iput p2, p0, Lcom/threed/jpct/util/Overlay;->upperLeftY:I

    .line 232
    iput p3, p0, Lcom/threed/jpct/util/Overlay;->lowerRightX:I

    .line 233
    iput p4, p0, Lcom/threed/jpct/util/Overlay;->lowerRightY:I

    .line 234
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 265
    iput p1, p0, Lcom/threed/jpct/util/Overlay;->rotation:F

    .line 266
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/util/Overlay;->rotMode:Z

    .line 269
    :cond_0
    return-void
.end method

.method public setRotationPivot(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/threed/jpct/util/Overlay;->pivotX:I

    .line 281
    iput p2, p0, Lcom/threed/jpct/util/Overlay;->pivotY:I

    .line 282
    return-void
.end method

.method public setSourceCoordinates(IIII)V
    .locals 1
    .param p1, "upperLeftX"    # I
    .param p2, "upperLeftY"    # I
    .param p3, "lowerRightX"    # I
    .param p4, "lowerRightY"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/threed/jpct/util/Overlay;->upperLeftU:I

    .line 252
    iput p2, p0, Lcom/threed/jpct/util/Overlay;->upperLeftV:I

    .line 253
    iput p3, p0, Lcom/threed/jpct/util/Overlay;->lowerRightU:I

    .line 254
    iput p4, p0, Lcom/threed/jpct/util/Overlay;->lowerRightV:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/util/Overlay;->uvChange:Z

    .line 256
    return-void
.end method

.method public setTexture(Lcom/threed/jpct/TextureInfo;)V
    .locals 1
    .param p1, "textureInfo"    # Lcom/threed/jpct/TextureInfo;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTexture(Lcom/threed/jpct/TextureInfo;)V

    .line 191
    return-void
.end method

.method public setTexture(Ljava/lang/String;)V
    .locals 1
    .param p1, "textureName"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setTransparency(I)V
    .locals 1
    .param p1, "trans"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTransparency(I)V

    .line 159
    return-void
.end method

.method public setTransparencyMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTransparencyMode(I)V

    .line 215
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setVisibility(Z)V

    .line 202
    return-void
.end method

.method public unlink()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->setUserObject(Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public update(Lcom/threed/jpct/FrameBuffer;)V
    .locals 31
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getVisibility()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/threed/jpct/util/Overlay;->disposed:Z

    if-nez v8, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/threed/jpct/util/Overlay;->uvChange:Z

    if-eqz v8, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getPolygonManager()Lcom/threed/jpct/PolygonManager;

    move-result-object v25

    .line 329
    .local v25, "pm":Lcom/threed/jpct/PolygonManager;
    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/threed/jpct/PolygonManager;->getPolygonTexture(I)I

    move-result v5

    .line 330
    .local v5, "tid":I
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v28

    .line 331
    .local v28, "t":Lcom/threed/jpct/Texture;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->upperLeftU:I

    int-to-float v8, v8

    invoke-virtual/range {v28 .. v28}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v6, v8, v12

    .line 332
    .local v6, "u1":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->upperLeftV:I

    int-to-float v8, v8

    invoke-virtual/range {v28 .. v28}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v8, v12

    .line 333
    .local v7, "v1":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->lowerRightU:I

    int-to-float v8, v8

    invoke-virtual/range {v28 .. v28}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v10, v8, v12

    .line 334
    .local v10, "u2":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->lowerRightV:I

    int-to-float v8, v8

    invoke-virtual/range {v28 .. v28}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v9, v8, v12

    .line 335
    .local v9, "v2":F
    new-instance v4, Lcom/threed/jpct/TextureInfo;

    move v8, v6

    move v11, v7

    invoke-direct/range {v4 .. v11}, Lcom/threed/jpct/TextureInfo;-><init>(IFFFFFF)V

    .line 336
    .local v4, "ti":Lcom/threed/jpct/TextureInfo;
    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v4}, Lcom/threed/jpct/PolygonManager;->setPolygonTexture(ILcom/threed/jpct/TextureInfo;)V

    .line 338
    new-instance v4, Lcom/threed/jpct/TextureInfo;

    .end local v4    # "ti":Lcom/threed/jpct/TextureInfo;
    move-object v11, v4

    move v12, v5

    move v13, v6

    move v14, v9

    move v15, v10

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Lcom/threed/jpct/TextureInfo;-><init>(IFFFFFF)V

    .line 339
    .restart local v4    # "ti":Lcom/threed/jpct/TextureInfo;
    const/4 v8, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v4}, Lcom/threed/jpct/PolygonManager;->setPolygonTexture(ILcom/threed/jpct/TextureInfo;)V

    .line 341
    .end local v4    # "ti":Lcom/threed/jpct/TextureInfo;
    .end local v5    # "tid":I
    .end local v6    # "u1":F
    .end local v7    # "v1":F
    .end local v9    # "v2":F
    .end local v10    # "u2":F
    .end local v25    # "pm":Lcom/threed/jpct/PolygonManager;
    .end local v28    # "t":Lcom/threed/jpct/Texture;
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    invoke-virtual {v8}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v11

    .line 343
    .local v11, "cam":Lcom/threed/jpct/Camera;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->pivotX:I

    const v12, -0x3b9ac9ff

    if-eq v8, v12, :cond_5

    const/16 v23, 0x1

    .line 345
    .local v23, "pivot":Z
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/threed/jpct/util/Overlay;->upperLeftX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/threed/jpct/util/Overlay;->upperLeftY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/Overlay;->tmp1:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v16, v0

    move-object/from16 v12, p1

    invoke-static/range {v11 .. v16}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v29

    .line 346
    .local v29, "upperLeft":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/threed/jpct/util/Overlay;->upperLeftX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/threed/jpct/util/Overlay;->lowerRightY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/Overlay;->tmp2:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v16, v0

    move-object/from16 v12, p1

    invoke-static/range {v11 .. v16}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v21

    .line 347
    .local v21, "lowerLeft":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/threed/jpct/util/Overlay;->lowerRightX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/threed/jpct/util/Overlay;->lowerRightY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/Overlay;->tmp3:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v16, v0

    move-object/from16 v12, p1

    invoke-static/range {v11 .. v16}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v22

    .line 348
    .local v22, "lowerRight":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/threed/jpct/util/Overlay;->lowerRightX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/threed/jpct/util/Overlay;->upperLeftY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/Overlay;->tmp4:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v16, v0

    move-object/from16 v12, p1

    invoke-static/range {v11 .. v16}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v30

    .line 350
    .local v30, "upperRight":Lcom/threed/jpct/SimpleVector;
    const/16 v24, 0x0

    .line 351
    .local v24, "pivotPoint":Lcom/threed/jpct/SimpleVector;
    if-eqz v23, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget v13, v0, Lcom/threed/jpct/util/Overlay;->pivotX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/threed/jpct/util/Overlay;->pivotY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/Overlay;->tmp6:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v16, v0

    move-object/from16 v12, p1

    invoke-static/range {v11 .. v16}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v24

    .line 355
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    invoke-virtual {v8}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v19

    .line 356
    .local v19, "camMat":Lcom/threed/jpct/Matrix;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    invoke-virtual {v8}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/util/Overlay;->tmp5:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v8, v12}, Lcom/threed/jpct/Camera;->getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v20

    .line 357
    .local v20, "camPos":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 358
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 359
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 360
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 361
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->tmpMat:Lcom/threed/jpct/Matrix;

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v26

    .line 363
    .local v26, "resMat":Lcom/threed/jpct/Matrix;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 364
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 365
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 366
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 368
    if-eqz v23, :cond_2

    .line 369
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 370
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 373
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/threed/jpct/util/Overlay$MyController;->setNewBounds(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/threed/jpct/Mesh;->applyVertexController()V

    .line 376
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/threed/jpct/util/Overlay;->rotMode:Z

    if-eqz v8, :cond_3

    .line 377
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v8

    invoke-virtual {v8}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/Overlay;->tmp1:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v27, v0

    .line 379
    .local v27, "s":Lcom/threed/jpct/SimpleVector;
    if-nez v23, :cond_6

    .line 380
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->tmp1:Lcom/threed/jpct/SimpleVector;

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 381
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 382
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 383
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 384
    const/high16 v8, 0x3e800000    # 0.25f

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 388
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/threed/jpct/Object3D;->setRotationPivot(Lcom/threed/jpct/SimpleVector;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual/range {v26 .. v26}, Lcom/threed/jpct/Matrix;->getZAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/threed/jpct/util/Overlay;->rotation:F

    invoke-virtual {v8, v12, v13}, Lcom/threed/jpct/Object3D;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    .line 391
    .end local v27    # "s":Lcom/threed/jpct/SimpleVector;
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->touch()V

    .line 393
    .end local v11    # "cam":Lcom/threed/jpct/Camera;
    .end local v19    # "camMat":Lcom/threed/jpct/Matrix;
    .end local v20    # "camPos":Lcom/threed/jpct/SimpleVector;
    .end local v21    # "lowerLeft":Lcom/threed/jpct/SimpleVector;
    .end local v22    # "lowerRight":Lcom/threed/jpct/SimpleVector;
    .end local v23    # "pivot":Z
    .end local v24    # "pivotPoint":Lcom/threed/jpct/SimpleVector;
    .end local v26    # "resMat":Lcom/threed/jpct/Matrix;
    .end local v29    # "upperLeft":Lcom/threed/jpct/SimpleVector;
    .end local v30    # "upperRight":Lcom/threed/jpct/SimpleVector;
    :cond_4
    return-void

    .line 343
    .restart local v11    # "cam":Lcom/threed/jpct/Camera;
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 386
    .restart local v19    # "camMat":Lcom/threed/jpct/Matrix;
    .restart local v20    # "camPos":Lcom/threed/jpct/SimpleVector;
    .restart local v21    # "lowerLeft":Lcom/threed/jpct/SimpleVector;
    .restart local v22    # "lowerRight":Lcom/threed/jpct/SimpleVector;
    .restart local v23    # "pivot":Z
    .restart local v24    # "pivotPoint":Lcom/threed/jpct/SimpleVector;
    .restart local v26    # "resMat":Lcom/threed/jpct/Matrix;
    .restart local v27    # "s":Lcom/threed/jpct/SimpleVector;
    .restart local v29    # "upperLeft":Lcom/threed/jpct/SimpleVector;
    .restart local v30    # "upperRight":Lcom/threed/jpct/SimpleVector;
    :cond_6
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    goto :goto_1
.end method
