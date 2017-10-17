.class public Lcom/threed/jpct/util/SkyBox;
.super Ljava/lang/Object;
.source "SkyBox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private box:Lcom/threed/jpct/Object3D;

.field private disposed:Z

.field private size:F

.field private world:Lcom/threed/jpct/World;


# direct methods
.method public constructor <init>(F)V
    .locals 8
    .param p1, "size"    # F

    .prologue
    .line 40
    const-string v1, "left"

    const-string v2, "front"

    const-string v3, "right"

    const-string v4, "back"

    const-string v5, "up"

    const-string v6, "down"

    move-object v0, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/util/SkyBox;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 21
    .param p1, "left"    # Ljava/lang/String;
    .param p2, "front"    # Ljava/lang/String;
    .param p3, "right"    # Ljava/lang/String;
    .param p4, "back"    # Ljava/lang/String;
    .param p5, "up"    # Ljava/lang/String;
    .param p6, "down"    # Ljava/lang/String;
    .param p7, "size"    # F

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    .line 23
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    .line 25
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/threed/jpct/util/SkyBox;->disposed:Z

    .line 27
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/util/SkyBox;->size:F

    .line 65
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/util/SkyBox;->size:F

    .line 67
    new-instance v17, Lcom/threed/jpct/World;

    invoke-direct/range {v17 .. v17}, Lcom/threed/jpct/World;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    .line 68
    invoke-static {}, Lcom/threed/jpct/Object3D;->createDummyObj()Lcom/threed/jpct/Object3D;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    .line 70
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v14

    .line 72
    .local v14, "texMan":Lcom/threed/jpct/TextureManager;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v11

    .line 73
    .local v11, "lt":Lcom/threed/jpct/Texture;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v8

    .line 74
    .local v8, "ft":Lcom/threed/jpct/Texture;
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v4

    .line 75
    .local v4, "bt":Lcom/threed/jpct/Texture;
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v13

    .line 76
    .local v13, "rt":Lcom/threed/jpct/Texture;
    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v16

    .line 77
    .local v16, "ut":Lcom/threed/jpct/Texture;
    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v6

    .line 79
    .local v6, "dt":Lcom/threed/jpct/Texture;
    if-eqz v11, :cond_0

    if-eqz v13, :cond_0

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    if-eqz v16, :cond_0

    if-nez v6, :cond_1

    .line 80
    :cond_0
    const-string v17, "Skybox textures not found!"

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 150
    :goto_0
    return-void

    .line 84
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 85
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 86
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 87
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 88
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 89
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 91
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v7

    .line 92
    .local v7, "frontObj":Lcom/threed/jpct/Object3D;
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v10

    .line 93
    .local v10, "leftObj":Lcom/threed/jpct/Object3D;
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v12

    .line 94
    .local v12, "rightObj":Lcom/threed/jpct/Object3D;
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v3

    .line 95
    .local v3, "backObj":Lcom/threed/jpct/Object3D;
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v5

    .line 96
    .local v5, "downObj":Lcom/threed/jpct/Object3D;
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v15

    .line 98
    .local v15, "upObj":Lcom/threed/jpct/Object3D;
    const v17, 0x3fc90fdb

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    .line 99
    const v17, -0x4036f025

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    .line 100
    const v17, -0x4036f025

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/threed/jpct/Object3D;->rotateY(F)V

    .line 101
    const v17, -0x4036f025

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/threed/jpct/Object3D;->rotateY(F)V

    .line 102
    const v17, 0x3fc90fdb

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/threed/jpct/Object3D;->rotateY(F)V

    .line 103
    const v17, -0x3fb6f025

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    .line 104
    const v17, -0x3fb6f025

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/threed/jpct/Object3D;->rotateZ(F)V

    .line 105
    const v17, -0x4036f025

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/threed/jpct/Object3D;->rotateY(F)V

    .line 107
    invoke-virtual {v5}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 108
    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 109
    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 110
    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 111
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 113
    invoke-virtual {v7}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 114
    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 115
    invoke-virtual {v5}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 116
    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 117
    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 118
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 120
    const/high16 v17, 0x40000000    # 2.0f

    div-float v9, p7, v17

    .line 122
    .local v9, "halfSize":F
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1, v9}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 123
    const/16 v17, 0x0

    const/16 v18, 0x0

    neg-float v0, v9

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 124
    neg-float v0, v9

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 125
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v9, v0, v1}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 126
    const/16 v17, 0x0

    neg-float v0, v9

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 127
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v9, v1}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 129
    invoke-virtual {v7}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 130
    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 131
    invoke-virtual {v5}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 132
    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 133
    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 134
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 136
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 143
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v15, v17, v18

    const/16 v18, 0x2

    aput-object v10, v17, v18

    const/16 v18, 0x3

    aput-object v12, v17, v18

    const/16 v18, 0x4

    aput-object v3, v17, v18

    const/16 v18, 0x5

    aput-object v5, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/threed/jpct/Object3D;->mergeAll([Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/threed/jpct/Object3D;->build()V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    move-object/from16 v17, v0

    const/16 v18, 0xff

    const/16 v19, 0xff

    const/16 v20, 0xff

    invoke-virtual/range {v17 .. v20}, Lcom/threed/jpct/World;->setAmbientLight(III)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/threed/jpct/Object3D;->setLighting(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/World;->setClippingPlanes(FF)V

    goto/16 :goto_0
.end method


# virtual methods
.method public compile()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->compile()V

    .line 186
    return-void
.end method

.method public declared-synchronized dispose()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/threed/jpct/util/SkyBox;->disposed:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->removeAllObjects()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/util/SkyBox;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/threed/jpct/util/SkyBox;->dispose()V

    .line 166
    return-void
.end method

.method public getWorld()Lcom/threed/jpct/World;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    return-object v0
.end method

.method public render(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V
    .locals 2
    .param p1, "world"    # Lcom/threed/jpct/World;
    .param p2, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/threed/jpct/util/SkyBox;->disposed:Z

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 214
    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {v0, p2}, Lcom/threed/jpct/World;->renderScene(Lcom/threed/jpct/FrameBuffer;)V

    .line 215
    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {v0, p2}, Lcom/threed/jpct/World;->draw(Lcom/threed/jpct/FrameBuffer;)V

    goto :goto_0
.end method

.method public setCenter(Lcom/threed/jpct/SimpleVector;)V
    .locals 6
    .param p1, "trans"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    .line 195
    iget-object v1, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {v1}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v1

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v2, v5

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v3, v5

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/threed/jpct/Camera;->setPosition(FFF)V

    .line 196
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 197
    .local v0, "add":F
    iget-object v1, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    const/high16 v2, 0x42c80000    # 100.0f

    iget v3, p0, Lcom/threed/jpct/util/SkyBox;->size:F

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/threed/jpct/World;->setClippingPlanes(FF)V

    .line 198
    return-void
.end method
