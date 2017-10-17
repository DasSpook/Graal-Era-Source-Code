.class public Lcom/threed/jpct/PolygonManager;
.super Ljava/lang/Object;
.source "PolygonManager.java"


# instance fields
.field myObj:Lcom/threed/jpct/Object3D;

.field private u0:[F

.field private v0:[F


# direct methods
.method constructor <init>(Lcom/threed/jpct/Object3D;)V
    .locals 2
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    const/4 v1, 0x3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/threed/jpct/PolygonManager;->u0:[F

    .line 19
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/threed/jpct/PolygonManager;->v0:[F

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    .line 24
    iput-object p1, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    .line 25
    return-void
.end method

.method private outOfBounds(I)Z
    .locals 2
    .param p1, "polyID"    # I

    .prologue
    const/4 v0, 0x0

    .line 515
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt p1, v1, :cond_1

    .line 516
    :cond_0
    const-string v1, "No such polygon!"

    invoke-static {v1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 517
    const/4 v0, 0x1

    .line 519
    :cond_1
    return v0
.end method


# virtual methods
.method public addTexture(III)V
    .locals 14
    .param p1, "polyID"    # I
    .param p2, "tid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 109
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v9, v9, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    if-eqz v9, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-nez v9, :cond_3

    .line 114
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 115
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Creating texture arrays of size "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 117
    :cond_2
    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    sget v9, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v9, v9, -0x1

    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v11, v11

    filled-new-array {v9, v11}, [I

    move-result-object v9

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    iput-object v9, v10, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 118
    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    sget v9, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v9, v9, -0x1

    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v11, v11

    filled-new-array {v9, v11}, [I

    move-result-object v9

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    iput-object v9, v10, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 119
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v9, v9

    if-lt v2, v9, :cond_5

    .line 124
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v9}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    .line 127
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 128
    .local v0, "added":Z
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v9, v9

    if-lt v2, v9, :cond_7

    .line 145
    :goto_3
    if-nez v0, :cond_4

    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v9, v9

    sget v10, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_4

    .line 146
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Expanding texture arrays ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 147
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v10, v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 148
    .local v5, "mt":[[I
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiMode:[[I

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v10, v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 149
    .local v4, "mm":[[I
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v10, v10, Lcom/threed/jpct/Vectors;->maxVectors:I

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    .line 150
    .local v6, "mu":[[F
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->vMul:[[F

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v10, v10, Lcom/threed/jpct/Vectors;->maxVectors:I

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    .line 151
    .local v7, "mv":[[F
    const/4 v2, 0x0

    :goto_4
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v9, v9

    if-lt v2, v9, :cond_b

    .line 155
    const/4 v2, 0x0

    :goto_5
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v9, v9

    if-lt v2, v9, :cond_c

    .line 160
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v1, v9

    .line 161
    .local v1, "end":I
    const/4 v8, 0x0

    .local v8, "p":I
    :goto_6
    if-lt v8, v1, :cond_d

    .line 164
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v1, v9, Lcom/threed/jpct/Vectors;->maxVectors:I

    .line 165
    const/4 v8, 0x0

    :goto_7
    if-lt v8, v1, :cond_e

    .line 169
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iput-object v5, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 170
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iput-object v4, v9, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 171
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iput-object v6, v9, Lcom/threed/jpct/Vectors;->uMul:[[F

    .line 172
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iput-object v7, v9, Lcom/threed/jpct/Vectors;->vMul:[[F

    .line 173
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    aput p2, v9, p1

    .line 174
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiMode:[[I

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->multiMode:[[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    aput p3, v9, p1

    .line 175
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget v10, v10, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 176
    const/4 v0, 0x1

    .line 179
    .end local v1    # "end":I
    .end local v4    # "mm":[[I
    .end local v5    # "mt":[[I
    .end local v6    # "mu":[[F
    .end local v7    # "mv":[[F
    .end local v8    # "p":I
    :cond_4
    if-eqz v0, :cond_f

    .line 180
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 182
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget v9, v9, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    sget v10, Lcom/threed/jpct/Config;->maxTextureLayers:I

    if-le v9, v10, :cond_0

    .line 183
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    sget v10, Lcom/threed/jpct/Config;->maxTextureLayers:I

    iput v10, v9, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    goto/16 :goto_0

    .line 120
    .end local v0    # "added":Z
    :cond_5
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_8
    sget v9, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v9, v9, -0x1

    if-lt v3, v9, :cond_6

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 121
    :cond_6
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v9, v9, v3

    const/4 v10, -0x1

    aput v10, v9, v2

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 129
    .end local v3    # "ii":I
    .restart local v0    # "added":Z
    :cond_7
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v9, v9, v2

    aget v9, v9, p1

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    .line 130
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found empty stage at "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 133
    :cond_8
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v9, v9, v2

    aput p2, v9, p1

    .line 134
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v9, v9, v2

    aput p3, v9, p1

    .line 135
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget v10, v10, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    add-int/lit8 v11, v2, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 136
    const/4 v0, 0x1

    .line 137
    goto/16 :goto_3

    .line 139
    :cond_9
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Stage "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not empty: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v10, v10, v2

    aget v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 128
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 152
    .restart local v4    # "mm":[[I
    .restart local v5    # "mt":[[I
    .restart local v6    # "mu":[[F
    .restart local v7    # "mv":[[F
    :cond_b
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v9, v9, v2

    const/4 v10, 0x0

    aget-object v11, v5, v2

    const/4 v12, 0x0

    aget-object v13, v5, v2

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v9, v9, v2

    const/4 v10, 0x0

    aget-object v11, v4, v2

    const/4 v12, 0x0

    aget-object v13, v4, v2

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 156
    :cond_c
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v9, v9, v2

    const/4 v10, 0x0

    aget-object v11, v6, v2

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v13, v13, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v13, v13, Lcom/threed/jpct/Vectors;->maxVectors:I

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v9, v9, v2

    const/4 v10, 0x0

    aget-object v11, v7, v2

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v13, v13, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v13, v13, Lcom/threed/jpct/Vectors;->maxVectors:I

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 162
    .restart local v1    # "end":I
    .restart local v8    # "p":I
    :cond_d
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v9, v9

    aget-object v9, v5, v9

    const/4 v10, -0x1

    aput v10, v9, v8

    .line 161
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 166
    :cond_e
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v9, v9

    aget-object v9, v6, v9

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v10, v10, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v10, v10, v8

    aput v10, v9, v8

    .line 167
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->vMul:[[F

    array-length v9, v9

    aget-object v9, v7, v9

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v10, v10, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v10, v10, v8

    aput v10, v9, v8

    .line 165
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 186
    .end local v1    # "end":I
    .end local v4    # "mm":[[I
    .end local v5    # "mt":[[I
    .end local v6    # "mu":[[F
    .end local v7    # "mv":[[F
    .end local v8    # "p":I
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "No further texture stage available ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget v10, v10, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public getMaxPolygonID()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    return v0
.end method

.method public getPolygonTexture(I)I
    .locals 1
    .param p1, "polyID"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, -0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getPolygonTextures(I)[I
    .locals 5
    .param p1, "polyID"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    const/4 v2, 0x0

    .line 71
    :cond_0
    return-object v2

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    .local v0, "add":I
    iget-object v3, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v3, :cond_2

    .line 60
    iget-object v3, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v0, v3

    .line 63
    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .line 64
    .local v2, "res":[I
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v4, v4, Lcom/threed/jpct/Object3D;->texture:[I

    aget v4, v4, p1

    aput v4, v2, v3

    .line 65
    iget-object v3, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v3, :cond_0

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 67
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v4, v4, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v4, v4, v1

    aget v4, v4, p1

    aput v4, v2, v3

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTextureUV(II)Lcom/threed/jpct/SimpleVector;
    .locals 1
    .param p1, "polyID"    # I
    .param p2, "vertexNumber"    # I

    .prologue
    .line 360
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/threed/jpct/PolygonManager;->getTextureUV(IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getTextureUV(IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4
    .param p1, "polyID"    # I
    .param p2, "vertexNumber"    # I
    .param p3, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 377
    iget-object v3, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v3, v3, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-ltz p2, :cond_0

    const/4 v3, 0x2

    if-le p2, v3, :cond_1

    .line 378
    :cond_0
    const/4 v2, 0x0

    .line 388
    :goto_0
    return-object v2

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v3, v3, p1

    aget v1, v3, p2

    .line 383
    .local v1, "p":I
    iget-object v3, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v3, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 384
    .local v0, "objVectors":Lcom/threed/jpct/Vectors;
    move-object v2, p3

    .line 385
    .local v2, "uv":Lcom/threed/jpct/SimpleVector;
    iget-object v3, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v3, v3, v1

    iput v3, v2, Lcom/threed/jpct/SimpleVector;->x:F

    .line 386
    iget-object v3, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v3, v3, v1

    iput v3, v2, Lcom/threed/jpct/SimpleVector;->y:F

    .line 387
    const/4 v3, 0x0

    iput v3, v2, Lcom/threed/jpct/SimpleVector;->z:F

    goto :goto_0
.end method

.method public getTransformedNormal(I)Lcom/threed/jpct/SimpleVector;
    .locals 27
    .param p1, "polyID"    # I

    .prologue
    .line 462
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const/4 v2, 0x0

    .line 502
    :goto_0
    return-object v2

    .line 466
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 468
    .local v1, "trans":Lcom/threed/jpct/Matrix;
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v11

    .line 469
    .local v11, "s":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v7, v2, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 471
    .local v7, "objMesh":Lcom/threed/jpct/Mesh;
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v3, v7, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    aget v8, v2, v3

    .line 472
    .local v8, "p0":I
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v3, v7, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v3, v3, p1

    const/4 v4, 0x1

    aget v3, v3, v4

    aget v9, v2, v3

    .line 473
    .local v9, "p1":I
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v3, v7, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget v3, v3, v4

    aget v10, v2, v3

    .line 475
    .local v10, "p2":I
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v19, v2, v10

    .line 476
    .local v19, "x1":F
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v22, v2, v10

    .line 477
    .local v22, "y1":F
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v25, v2, v10

    .line 479
    .local v25, "z1":F
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v20, v2, v9

    .line 480
    .local v20, "x2":F
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v23, v2, v9

    .line 481
    .local v23, "y2":F
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v26, v2, v9

    .line 483
    .local v26, "z2":F
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v18, v2, v8

    .line 484
    .local v18, "x0":F
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v21, v2, v8

    .line 485
    .local v21, "y0":F
    iget-object v2, v7, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v24, v2, v8

    .line 487
    .local v24, "z0":F
    sub-float v12, v18, v19

    .line 488
    .local v12, "vx":F
    sub-float v13, v21, v22

    .line 489
    .local v13, "vy":F
    sub-float v14, v24, v25

    .line 491
    .local v14, "vz":F
    sub-float v15, v20, v19

    .line 492
    .local v15, "wx":F
    sub-float v16, v23, v22

    .line 493
    .local v16, "wy":F
    sub-float v17, v26, v25

    .line 495
    .local v17, "wz":F
    mul-float v2, v13, v17

    mul-float v3, v14, v16

    sub-float/2addr v2, v3

    iput v2, v11, Lcom/threed/jpct/SimpleVector;->x:F

    .line 496
    mul-float v2, v14, v15

    mul-float v3, v12, v17

    sub-float/2addr v2, v3

    iput v2, v11, Lcom/threed/jpct/SimpleVector;->y:F

    .line 497
    mul-float v2, v12, v16

    mul-float v3, v13, v15

    sub-float/2addr v2, v3

    iput v2, v11, Lcom/threed/jpct/SimpleVector;->z:F

    .line 499
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, Lcom/threed/jpct/Matrix;->setRow(IFFFF)V

    .line 500
    invoke-virtual {v11, v1}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 502
    invoke-virtual {v11, v11}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getTransformedVertex(II)Lcom/threed/jpct/SimpleVector;
    .locals 6
    .param p1, "polyID"    # I
    .param p2, "vertexNumber"    # I

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v4

    if-nez v4, :cond_0

    if-ltz p2, :cond_0

    const/4 v4, 0x2

    if-le p2, v4, :cond_1

    .line 331
    :cond_0
    const/4 v2, 0x0

    .line 345
    :goto_0
    return-object v2

    .line 333
    :cond_1
    iget-object v4, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v4}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v3

    .line 334
    .local v3, "trans":Lcom/threed/jpct/Matrix;
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    .line 336
    .local v2, "s":Lcom/threed/jpct/SimpleVector;
    iget-object v4, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v4, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 338
    .local v0, "objMesh":Lcom/threed/jpct/Mesh;
    iget-object v4, v0, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v5, v0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v5, v5, p1

    aget v5, v5, p2

    aget v1, v4, v5

    .line 340
    .local v1, "p":I
    iget-object v4, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v4, v4, v1

    iput v4, v2, Lcom/threed/jpct/SimpleVector;->x:F

    .line 341
    iget-object v4, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v4, v4, v1

    iput v4, v2, Lcom/threed/jpct/SimpleVector;->y:F

    .line 342
    iget-object v4, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v4, v4, v1

    iput v4, v2, Lcom/threed/jpct/SimpleVector;->z:F

    .line 344
    invoke-virtual {v2, v3}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    goto :goto_0
.end method

.method public setPolygonTexture(II)V
    .locals 1
    .param p1, "polyID"    # I
    .param p2, "textureID"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    aput p2, v0, p1

    goto :goto_0
.end method

.method public declared-synchronized setPolygonTexture(ILcom/threed/jpct/TextureInfo;)V
    .locals 15
    .param p1, "polyID"    # I
    .param p2, "tInf"    # Lcom/threed/jpct/TextureInfo;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v11, v11, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_1

    .line 286
    :cond_0
    monitor-exit p0

    return-void

    .line 208
    :cond_1
    if-eqz p2, :cond_0

    .line 209
    :try_start_1
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-nez v11, :cond_2

    move-object/from16 v0, p2

    iget v11, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    .line 210
    iget-object v12, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    sget v11, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v11, v11, -0x1

    iget-object v13, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v13, v13, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v13, v13

    filled-new-array {v11, v13}, [I

    move-result-object v11

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    iput-object v11, v12, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 211
    iget-object v12, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    sget v11, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v11, v11, -0x1

    iget-object v13, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v13, v13, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v13, v13

    filled-new-array {v11, v13}, [I

    move-result-object v11

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    iput-object v11, v12, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 212
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v11, v11

    if-lt v2, v11, :cond_5

    .line 217
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v11}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    .line 218
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 221
    .end local v2    # "i":I
    :cond_2
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v5, v11, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 223
    .local v5, "objVectors":Lcom/threed/jpct/Vectors;
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->u0:[F

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/threed/jpct/TextureInfo;->u0:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    .line 224
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->u0:[F

    const/4 v12, 0x1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/threed/jpct/TextureInfo;->u1:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    .line 225
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->u0:[F

    const/4 v12, 0x2

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/threed/jpct/TextureInfo;->u2:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    .line 227
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->v0:[F

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/threed/jpct/TextureInfo;->v0:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    .line 228
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->v0:[F

    const/4 v12, 0x1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/threed/jpct/TextureInfo;->v1:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    .line 229
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->v0:[F

    const/4 v12, 0x2

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/threed/jpct/TextureInfo;->v2:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    .line 231
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/threed/jpct/TextureInfo;->textures:[I

    const/4 v12, 0x0

    aget v8, v11, v12

    .line 233
    .local v8, "texturID":I
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget v11, v11, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    if-ge v11, v12, :cond_3

    .line 234
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    move-object/from16 v0, p2

    iget v12, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    iput v12, v11, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 237
    :cond_3
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v11, v11, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    if-eqz v11, :cond_7

    if-eqz p2, :cond_7

    const/4 v4, 0x1

    .line 239
    .local v4, "multi":Z
    :goto_1
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->texture:[I

    aput v8, v11, p1

    .line 241
    if-eqz v4, :cond_4

    .line 242
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    move-object/from16 v0, p2

    iget v11, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    add-int/lit8 v11, v11, -0x1

    if-lt v2, v11, :cond_8

    .line 247
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v11, v11

    sget v12, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 248
    .local v1, "end":I
    move-object/from16 v0, p2

    iget v11, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    add-int/lit8 v7, v11, -0x1

    .local v7, "t":I
    :goto_3
    if-lt v7, v1, :cond_9

    .line 253
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v7    # "t":I
    :cond_4
    const/4 v9, 0x0

    check-cast v9, [F

    .line 254
    .local v9, "u":[F
    const/4 v10, 0x0

    check-cast v10, [F

    .line 256
    .local v10, "v":[F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    const/4 v11, 0x3

    if-ge v2, v11, :cond_0

    .line 257
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v11, v11, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v11, v11, p1

    aget v6, v11, v2

    .line 259
    .local v6, "p":I
    iget-object v11, v5, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v12, p0, Lcom/threed/jpct/PolygonManager;->u0:[F

    aget v12, v12, v2

    aput v12, v11, v6

    .line 260
    iget-object v11, v5, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iget-object v12, p0, Lcom/threed/jpct/PolygonManager;->v0:[F

    aget v12, v12, v2

    aput v12, v11, v6

    .line 262
    packed-switch v2, :pswitch_data_0

    .line 280
    :goto_5
    const/4 v7, 0x0

    .restart local v7    # "t":I
    :goto_6
    move-object/from16 v0, p2

    iget v11, v0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    add-int/lit8 v11, v11, -0x1

    if-lt v7, v11, :cond_a

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 213
    .end local v4    # "multi":Z
    .end local v5    # "objVectors":Lcom/threed/jpct/Vectors;
    .end local v6    # "p":I
    .end local v7    # "t":I
    .end local v8    # "texturID":I
    .end local v9    # "u":[F
    .end local v10    # "v":[F
    :cond_5
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_7
    sget v11, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v11, v11, -0x1

    if-lt v3, v11, :cond_6

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 214
    :cond_6
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v11, v11, v3

    const/4 v12, -0x1

    aput v12, v11, v2

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 237
    .end local v2    # "i":I
    .end local v3    # "ii":I
    .restart local v5    # "objVectors":Lcom/threed/jpct/Vectors;
    .restart local v8    # "texturID":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 243
    .restart local v2    # "i":I
    .restart local v4    # "multi":Z
    :cond_8
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v11, v11, v2

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/threed/jpct/TextureInfo;->textures:[I

    add-int/lit8 v13, v2, 0x1

    aget v12, v12, v13

    aput v12, v11, p1

    .line 244
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v11, v11, v2

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/threed/jpct/TextureInfo;->mode:[I

    add-int/lit8 v13, v2, 0x1

    aget v12, v12, v13

    aput v12, v11, p1

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 249
    .restart local v1    # "end":I
    .restart local v7    # "t":I
    :cond_9
    iget-object v11, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v11, v11, v7

    const/4 v12, -0x1

    aput v12, v11, p1

    .line 248
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 264
    .end local v1    # "end":I
    .end local v7    # "t":I
    .restart local v6    # "p":I
    .restart local v9    # "u":[F
    .restart local v10    # "v":[F
    :pswitch_0
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/threed/jpct/TextureInfo;->u0:[F

    .line 265
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/threed/jpct/TextureInfo;->v0:[F

    .line 266
    goto :goto_5

    .line 269
    :pswitch_1
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/threed/jpct/TextureInfo;->u1:[F

    .line 270
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/threed/jpct/TextureInfo;->v1:[F

    .line 271
    goto :goto_5

    .line 274
    :pswitch_2
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/threed/jpct/TextureInfo;->u2:[F

    .line 275
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/threed/jpct/TextureInfo;->v2:[F

    goto :goto_5

    .line 281
    .restart local v7    # "t":I
    :cond_a
    iget-object v11, v5, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v11, v11, v7

    add-int/lit8 v12, v7, 0x1

    aget v12, v9, v12

    aput v12, v11, v6

    .line 282
    iget-object v11, v5, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v11, v11, v7

    add-int/lit8 v12, v7, 0x1

    aget v12, v10, v12

    aput v12, v11, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 204
    .end local v2    # "i":I
    .end local v4    # "multi":Z
    .end local v5    # "objVectors":Lcom/threed/jpct/Vectors;
    .end local v6    # "p":I
    .end local v7    # "t":I
    .end local v8    # "texturID":I
    .end local v9    # "u":[F
    .end local v10    # "v":[F
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVertexAlpha(IIF)V
    .locals 3
    .param p1, "polyID"    # I
    .param p2, "vertexNumber"    # I
    .param p3, "alpha"    # F

    .prologue
    .line 302
    iget-object v2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v2, v2, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v2

    if-nez v2, :cond_0

    if-ltz p2, :cond_0

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v2, v2, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v2, v2, p1

    aget v1, v2, p2

    .line 306
    .local v1, "p":I
    iget-object v2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v2, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 307
    .local v0, "objVectors":Lcom/threed/jpct/Vectors;
    invoke-virtual {v0}, Lcom/threed/jpct/Vectors;->createAlpha()V

    .line 309
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_3

    .line 310
    const/4 p3, 0x0

    .line 317
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/threed/jpct/Vectors;->alpha:[F

    aput p3, v2, v1

    goto :goto_0

    .line 312
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    .line 313
    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_1
.end method
