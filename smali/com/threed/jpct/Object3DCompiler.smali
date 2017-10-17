.class Lcom/threed/jpct/Object3DCompiler;
.super Ljava/lang/Object;
.source "Object3DCompiler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private append(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "val"    # I

    .prologue
    .line 169
    add-int/lit16 p2, p2, 0x3e8

    .line 170
    const/high16 v2, 0x10000

    if-le p2, v2, :cond_0

    .line 171
    shr-int/lit8 v0, p2, 0x10

    .line 172
    .local v0, "high":I
    shl-int/lit8 v2, v0, 0x10

    sub-int v1, p2, v2

    .line 173
    .local v1, "low":I
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .end local v0    # "high":I
    .end local v1    # "low":I
    :goto_0
    return-void

    .line 176
    :cond_0
    int-to-char v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method compile(Lcom/threed/jpct/Object3D;)V
    .locals 38
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-eqz v35, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v35, v0

    if-eqz v35, :cond_6

    .line 19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2

    .line 20
    const-string v35, "Can\'t share data with an object that shares data itself. Share data with the source object instead!"

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 24
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 25
    .local v6, "cnt":I
    const/4 v11, 0x0

    .line 26
    .local v11, "fp":Z
    if-lez v6, :cond_3

    .line 27
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    instance-of v11, v0, Lcom/threed/jpct/CompiledInstanceFP;

    .line 29
    :cond_3
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-lt v13, v6, :cond_4

    .line 37
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Object "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " precompiled!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x2

    invoke-static/range {v35 .. v36}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 30
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/threed/jpct/CompiledInstance;

    move-object/from16 v0, v35

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    move/from16 v29, v0

    .line 31
    .local v29, "polyIndex":I
    if-eqz v11, :cond_5

    .line 32
    new-instance v35, Lcom/threed/jpct/CompiledInstanceFP;

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/CompiledInstanceFP;-><init>(Lcom/threed/jpct/Object3D;II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->addCompiled(Lcom/threed/jpct/CompiledInstance;)V

    .line 29
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 34
    :cond_5
    new-instance v35, Lcom/threed/jpct/CompiledInstance;

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/CompiledInstance;-><init>(Lcom/threed/jpct/Object3D;II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->addCompiled(Lcom/threed/jpct/CompiledInstance;)V

    goto :goto_2

    .line 43
    .end local v6    # "cnt":I
    .end local v11    # "fp":Z
    .end local v13    # "i":I
    .end local v29    # "polyIndex":I
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 45
    .local v31, "s":J
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v35

    if-nez v35, :cond_1a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1a

    .line 46
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v15, "instances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/threed/jpct/CompiledInstance;>;"
    sget v4, Lcom/threed/jpct/Config;->glBatchSize:I

    .line 48
    .local v4, "batchSize":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/Object3D;->batchSize:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_7

    .line 49
    move-object/from16 v0, p1

    iget v4, v0, Lcom/threed/jpct/Object3D;->batchSize:I

    .line 51
    :cond_7
    const/16 v35, 0x3e80

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v35

    move-object/from16 v0, v35

    iget v9, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 53
    .local v9, "end":I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v7, "count":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const/16 v21, 0x0

    .line 55
    .local v21, "leafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/OcTreeNode;>;"
    const/4 v12, 0x0

    .line 56
    .local v12, "hoc":Z
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getOcTree()Lcom/threed/jpct/OcTree;

    move-result-object v35

    if-eqz v35, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getOcTree()Lcom/threed/jpct/OcTree;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/threed/jpct/OcTree;->getRenderingUse()Z

    move-result v35

    if-eqz v35, :cond_8

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getOcTree()Lcom/threed/jpct/OcTree;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/threed/jpct/OcTree;->getFilledLeafs()Ljava/util/ArrayList;

    move-result-object v21

    .line 58
    const/4 v12, 0x1

    .line 61
    :cond_8
    const/16 v20, -0x1

    .line 63
    .local v20, "lastNode":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v16, "key":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v27, v0

    .line 65
    .local v27, "objtexture":[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v25, v0

    .line 66
    .local v25, "objmultiTex":[[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    move-object/from16 v23, v0

    .line 67
    .local v23, "objmultiMode":[[I
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_a

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->dynamic:Z

    move/from16 v35, v0

    if-eqz v35, :cond_9

    invoke-static {}, Lcom/threed/jpct/BufferUtilFactory;->hasNativeSupport()Z

    move-result v35

    if-nez v35, :cond_a

    :cond_9
    const/16 v22, 0x1

    .line 68
    .local v22, "objfixedPointMode":Z
    :goto_3
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    if-lt v13, v9, :cond_b

    .line 141
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 142
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    .local v19, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 145
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v33

    .line 146
    .local v33, "size":I
    const/4 v13, 0x0

    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-lt v13, v0, :cond_19

    .line 153
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Object "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " compiled to "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " subobjects in "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    sub-long v36, v36, v31

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "ms!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 155
    const/16 v36, 0x2

    .line 154
    invoke-static/range {v35 .. v36}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 67
    .end local v13    # "i":I
    .end local v19    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "objfixedPointMode":Z
    .end local v33    # "size":I
    :cond_a
    const/16 v22, 0x0

    goto :goto_3

    .line 69
    .restart local v13    # "i":I
    .restart local v22    # "objfixedPointMode":Z
    :cond_b
    const/16 v35, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 70
    aget v35, v27, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    .line 71
    if-eqz v25, :cond_c

    .line 72
    move-object/from16 v0, v25

    array-length v10, v0

    .line 73
    .local v10, "endLoop":I
    const/16 v28, 0x0

    .local v28, "p":I
    :goto_6
    move/from16 v0, v28

    if-lt v0, v10, :cond_12

    .line 83
    .end local v10    # "endLoop":I
    .end local v28    # "p":I
    :cond_c
    const/4 v14, -0x1

    .line 84
    .local v14, "id":I
    if-eqz v12, :cond_f

    .line 87
    const/16 v35, -0x1

    move/from16 v0, v20

    move/from16 v1, v35

    if-eq v0, v1, :cond_d

    .line 88
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/threed/jpct/OcTreeNode;

    invoke-virtual/range {v35 .. v35}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v30

    .line 89
    .local v30, "polys":[I
    move-object/from16 v0, v30

    array-length v10, v0

    .line 90
    .restart local v10    # "endLoop":I
    const/16 v34, 0x0

    .local v34, "x":I
    :goto_7
    move/from16 v0, v34

    if-lt v0, v10, :cond_13

    .line 98
    .end local v10    # "endLoop":I
    .end local v30    # "polys":[I
    .end local v34    # "x":I
    :cond_d
    :goto_8
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v14, v0, :cond_e

    .line 99
    const/16 v28, 0x0

    .restart local v28    # "p":I
    :goto_9
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v28

    move/from16 v1, v35

    if-lt v0, v1, :cond_15

    .line 112
    .end local v28    # "p":I
    :cond_e
    const-string v35, "_oc_"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    .line 116
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 117
    .local v17, "keyStr":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 118
    .local v8, "cs":[I
    if-nez v8, :cond_10

    .line 119
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v8, v0, [I

    .line 120
    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_10
    const/16 v35, 0x0

    aget v36, v8, v35

    add-int/lit8 v36, v36, 0x1

    aput v36, v8, v35

    .line 123
    const/16 v35, 0x5f

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    const/16 v35, 0x0

    aget v35, v8, v35

    div-int v35, v35, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 128
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/threed/jpct/CompiledInstance;

    .line 129
    .local v5, "ci":Lcom/threed/jpct/CompiledInstance;
    if-nez v5, :cond_11

    .line 130
    if-eqz v22, :cond_18

    .line 131
    new-instance v5, Lcom/threed/jpct/CompiledInstance;

    .end local v5    # "ci":Lcom/threed/jpct/CompiledInstance;
    move-object/from16 v0, p1

    invoke-direct {v5, v0, v13, v14}, Lcom/threed/jpct/CompiledInstance;-><init>(Lcom/threed/jpct/Object3D;II)V

    .line 135
    .restart local v5    # "ci":Lcom/threed/jpct/CompiledInstance;
    :goto_a
    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_11
    invoke-virtual {v5, v13}, Lcom/threed/jpct/CompiledInstance;->add(I)V

    .line 68
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 74
    .end local v5    # "ci":Lcom/threed/jpct/CompiledInstance;
    .end local v8    # "cs":[I
    .end local v14    # "id":I
    .end local v17    # "keyStr":Ljava/lang/String;
    .restart local v10    # "endLoop":I
    .restart local v28    # "p":I
    :cond_12
    aget-object v26, v25, v28

    .line 75
    .local v26, "objmultiTexp":[I
    aget-object v24, v23, v28

    .line 76
    .local v24, "objmultiModep":[I
    const/16 v35, 0x5f

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    aget v35, v26, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    .line 78
    const/16 v35, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    aget v35, v24, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    .line 73
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 91
    .end local v24    # "objmultiModep":[I
    .end local v26    # "objmultiTexp":[I
    .end local v28    # "p":I
    .restart local v14    # "id":I
    .restart local v30    # "polys":[I
    .restart local v34    # "x":I
    :cond_13
    aget v35, v30, v34

    move/from16 v0, v35

    if-ne v13, v0, :cond_14

    .line 92
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/threed/jpct/OcTreeNode;

    invoke-virtual/range {v35 .. v35}, Lcom/threed/jpct/OcTreeNode;->getID()I

    move-result v14

    .line 93
    goto/16 :goto_8

    .line 90
    :cond_14
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_7

    .line 100
    .end local v10    # "endLoop":I
    .end local v30    # "polys":[I
    .end local v34    # "x":I
    .restart local v28    # "p":I
    :cond_15
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/threed/jpct/OcTreeNode;

    invoke-virtual/range {v35 .. v35}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v30

    .line 101
    .restart local v30    # "polys":[I
    move-object/from16 v0, v30

    array-length v10, v0

    .line 102
    .restart local v10    # "endLoop":I
    const/16 v34, 0x0

    .restart local v34    # "x":I
    :goto_b
    move/from16 v0, v34

    if-lt v0, v10, :cond_16

    .line 99
    :goto_c
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 103
    :cond_16
    aget v35, v30, v34

    move/from16 v0, v35

    if-ne v13, v0, :cond_17

    .line 104
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/threed/jpct/OcTreeNode;

    invoke-virtual/range {v35 .. v35}, Lcom/threed/jpct/OcTreeNode;->getID()I

    move-result v14

    .line 105
    move/from16 v20, v28

    .line 106
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 107
    goto :goto_c

    .line 102
    :cond_17
    add-int/lit8 v34, v34, 0x1

    goto :goto_b

    .line 133
    .end local v10    # "endLoop":I
    .end local v28    # "p":I
    .end local v30    # "polys":[I
    .end local v34    # "x":I
    .restart local v5    # "ci":Lcom/threed/jpct/CompiledInstance;
    .restart local v8    # "cs":[I
    .restart local v17    # "keyStr":Ljava/lang/String;
    :cond_18
    new-instance v5, Lcom/threed/jpct/CompiledInstanceFP;

    .end local v5    # "ci":Lcom/threed/jpct/CompiledInstance;
    move-object/from16 v0, p1

    invoke-direct {v5, v0, v13, v14}, Lcom/threed/jpct/CompiledInstanceFP;-><init>(Lcom/threed/jpct/Object3D;II)V

    .restart local v5    # "ci":Lcom/threed/jpct/CompiledInstance;
    goto/16 :goto_a

    .line 147
    .end local v5    # "ci":Lcom/threed/jpct/CompiledInstance;
    .end local v8    # "cs":[I
    .end local v14    # "id":I
    .end local v17    # "keyStr":Ljava/lang/String;
    .restart local v19    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v33    # "size":I
    :cond_19
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 148
    .local v18, "keyo":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/threed/jpct/CompiledInstance;

    .line 149
    .restart local v5    # "ci":Lcom/threed/jpct/CompiledInstance;
    invoke-virtual {v5}, Lcom/threed/jpct/CompiledInstance;->fill()V

    .line 150
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/threed/jpct/CompiledInstance;->setKey(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/threed/jpct/Object3D;->addCompiled(Lcom/threed/jpct/CompiledInstance;)V

    .line 146
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 158
    .end local v4    # "batchSize":I
    .end local v5    # "ci":Lcom/threed/jpct/CompiledInstance;
    .end local v7    # "count":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    .end local v9    # "end":I
    .end local v12    # "hoc":Z
    .end local v13    # "i":I
    .end local v15    # "instances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/threed/jpct/CompiledInstance;>;"
    .end local v16    # "key":Ljava/lang/StringBuilder;
    .end local v18    # "keyo":Ljava/lang/String;
    .end local v19    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "lastNode":I
    .end local v21    # "leafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/OcTreeNode;>;"
    .end local v22    # "objfixedPointMode":Z
    .end local v23    # "objmultiMode":[[I
    .end local v25    # "objmultiTex":[[I
    .end local v27    # "objtexture":[I
    .end local v33    # "size":I
    :cond_1a
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_0

    .line 159
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 160
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Object "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " already compiled!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
