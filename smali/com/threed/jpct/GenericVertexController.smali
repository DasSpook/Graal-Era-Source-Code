.class public abstract Lcom/threed/jpct/GenericVertexController;
.super Ljava/lang/Object;
.source "GenericVertexController.java"

# interfaces
.implements Lcom/threed/jpct/IVertexController;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private initialized:Z

.field private mesh:Lcom/threed/jpct/Mesh;

.field private meshData:[Lcom/threed/jpct/SimpleVector;

.field private meshTarget:[Lcom/threed/jpct/SimpleVector;

.field private meshnxOrg:[F

.field private meshnyOrg:[F

.field private meshnzOrg:[F

.field private meshxOrg:[F

.field private meshyOrg:[F

.field private meshzOrg:[F

.field private normalData:[Lcom/threed/jpct/SimpleVector;

.field private normalTarget:[Lcom/threed/jpct/SimpleVector;

.field private size:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/threed/jpct/GenericVertexController;->size:I

    .line 36
    iput-boolean v1, p0, Lcom/threed/jpct/GenericVertexController;->initialized:Z

    .line 40
    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshxOrg:[F

    .line 41
    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshyOrg:[F

    .line 42
    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshzOrg:[F

    .line 44
    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshnxOrg:[F

    .line 45
    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshnyOrg:[F

    .line 46
    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshnzOrg:[F

    .line 20
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/threed/jpct/GenericVertexController;->cleanup()V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GenericVertexController;->initialized:Z

    .line 278
    return-void
.end method

.method public final getDestinationMesh()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public final getDestinationNormals()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public final getMeshSize()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/threed/jpct/GenericVertexController;->size:I

    return v0
.end method

.method public getPolygonIDs(II)[I
    .locals 8
    .param p1, "vertex"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v7, 0x0

    .line 288
    new-array v2, p2, [I

    .line 289
    .local v2, "ids":[I
    const/4 v0, 0x0

    .line 290
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget v4, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    if-ge v1, v4, :cond_0

    if-lt v0, p2, :cond_1

    .line 297
    :cond_0
    new-array v3, v0, [I

    .line 298
    .local v3, "ids2":[I
    invoke-static {v2, v7, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-object v3

    .line 291
    .end local v3    # "ids2":[I
    :cond_1
    iget-object v4, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v4, v4, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v5, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v5, v5, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    aget v4, v4, v5

    if-eq v4, p1, :cond_2

    iget-object v4, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v4, v4, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v5, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v5, v5, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    aget v4, v4, v5

    if-eq v4, p1, :cond_2

    iget-object v4, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v4, v4, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v5, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v5, v5, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x2

    aget v5, v5, v6

    aget v4, v4, v5

    if-ne v4, p1, :cond_3

    .line 292
    :cond_2
    aput v1, v2, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 290
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final getSourceMesh()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshData:[Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public final getSourceNormals()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/threed/jpct/GenericVertexController;->normalData:[Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public final init(Lcom/threed/jpct/Mesh;Z)Z
    .locals 11
    .param p1, "mesh"    # Lcom/threed/jpct/Mesh;
    .param p2, "modify"    # Z

    .prologue
    .line 49
    const/4 v4, 0x1

    .line 51
    .local v4, "ok":Z
    iget-boolean v9, p0, Lcom/threed/jpct/GenericVertexController;->initialized:Z

    if-nez v9, :cond_6

    .line 52
    iput-object p1, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    .line 54
    iget-object v9, p1, Lcom/threed/jpct/Mesh;->xOrg:[F

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshxOrg:[F

    .line 55
    iget-object v9, p1, Lcom/threed/jpct/Mesh;->yOrg:[F

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshyOrg:[F

    .line 56
    iget-object v9, p1, Lcom/threed/jpct/Mesh;->zOrg:[F

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshzOrg:[F

    .line 58
    iget-object v9, p1, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshnxOrg:[F

    .line 59
    iget-object v9, p1, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshnyOrg:[F

    .line 60
    iget-object v9, p1, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshnzOrg:[F

    .line 62
    iget-boolean v9, p1, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    if-nez v9, :cond_0

    .line 63
    const-string v9, "No normals have been calculated for this mesh yet!"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 66
    :cond_0
    iget v5, p1, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 67
    .local v5, "size":I
    if-eqz v5, :cond_1

    iget v9, p1, Lcom/threed/jpct/Mesh;->obbEnd:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p1, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-eq v9, v10, :cond_2

    .line 68
    :cond_1
    iget v5, p1, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 71
    :cond_2
    iput v5, p0, Lcom/threed/jpct/GenericVertexController;->size:I

    .line 73
    new-array v9, v5, [Lcom/threed/jpct/SimpleVector;

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshData:[Lcom/threed/jpct/SimpleVector;

    .line 74
    new-array v9, v5, [Lcom/threed/jpct/SimpleVector;

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->normalData:[Lcom/threed/jpct/SimpleVector;

    .line 76
    if-eqz p2, :cond_3

    .line 77
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshData:[Lcom/threed/jpct/SimpleVector;

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    .line 78
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->normalData:[Lcom/threed/jpct/SimpleVector;

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    .line 84
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v5, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/threed/jpct/GenericVertexController;->setup()Z

    move-result v9

    and-int/2addr v4, v9

    .line 99
    iput-boolean v4, p0, Lcom/threed/jpct/GenericVertexController;->initialized:Z

    .line 104
    .end local v0    # "i":I
    .end local v5    # "size":I
    :goto_2
    return v4

    .line 80
    .restart local v5    # "size":I
    :cond_3
    new-array v9, v5, [Lcom/threed/jpct/SimpleVector;

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    .line 81
    new-array v9, v5, [Lcom/threed/jpct/SimpleVector;

    iput-object v9, p0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    goto :goto_0

    .line 85
    .restart local v0    # "i":I
    :cond_4
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshxOrg:[F

    aget v6, v9, v0

    .line 86
    .local v6, "x":F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshyOrg:[F

    aget v7, v9, v0

    .line 87
    .local v7, "y":F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshzOrg:[F

    aget v8, v9, v0

    .line 88
    .local v8, "z":F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshnxOrg:[F

    aget v1, v9, v0

    .line 89
    .local v1, "nx":F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshnyOrg:[F

    aget v2, v9, v0

    .line 90
    .local v2, "ny":F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshnzOrg:[F

    aget v3, v9, v0

    .line 91
    .local v3, "nz":F
    if-nez p2, :cond_5

    .line 92
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    new-instance v10, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v10, v6, v7, v8}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v10, v9, v0

    .line 93
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    new-instance v10, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v10, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v10, v9, v0

    .line 95
    :cond_5
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshData:[Lcom/threed/jpct/SimpleVector;

    new-instance v10, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v10, v6, v7, v8}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v10, v9, v0

    .line 96
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->normalData:[Lcom/threed/jpct/SimpleVector;

    new-instance v10, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v10, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v10, v9, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "i":I
    .end local v1    # "nx":F
    .end local v2    # "ny":F
    .end local v3    # "nz":F
    .end local v5    # "size":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "z":F
    :cond_6
    const/4 v4, 0x0

    .line 102
    const-string v9, "This instance has already been assigned to another Mesh!"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public refreshMeshData()V
    .locals 10

    .prologue
    .line 139
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v5, v9, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 140
    .local v5, "meshxOrg":[F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v9, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 141
    .local v6, "meshyOrg":[F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v9, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 143
    .local v7, "meshzOrg":[F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v2, v9, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 144
    .local v2, "meshnxOrg":[F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v9, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 145
    .local v3, "meshnyOrg":[F
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v4, v9, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 147
    .local v4, "meshnzOrg":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v9, p0, Lcom/threed/jpct/GenericVertexController;->size:I

    if-lt v0, v9, :cond_0

    .line 160
    return-void

    .line 149
    :cond_0
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    aget-object v1, v9, v0

    .line 150
    .local v1, "meshTargeti":Lcom/threed/jpct/SimpleVector;
    iget-object v9, p0, Lcom/threed/jpct/GenericVertexController;->normalData:[Lcom/threed/jpct/SimpleVector;

    aget-object v8, v9, v0

    .line 152
    .local v8, "normalDatai":Lcom/threed/jpct/SimpleVector;
    aget v9, v5, v0

    iput v9, v1, Lcom/threed/jpct/SimpleVector;->x:F

    .line 153
    aget v9, v6, v0

    iput v9, v1, Lcom/threed/jpct/SimpleVector;->y:F

    .line 154
    aget v9, v7, v0

    iput v9, v1, Lcom/threed/jpct/SimpleVector;->z:F

    .line 156
    aget v9, v2, v0

    iput v9, v8, Lcom/threed/jpct/SimpleVector;->x:F

    .line 157
    aget v9, v3, v0

    iput v9, v8, Lcom/threed/jpct/SimpleVector;->y:F

    .line 158
    aget v9, v4, v0

    iput v9, v8, Lcom/threed/jpct/SimpleVector;->z:F

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setup()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public final updateMesh()V
    .locals 24

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->size:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 273
    :goto_0
    return-void

    .line 175
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/GenericVertexController;->x:F

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/GenericVertexController;->y:F

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/GenericVertexController;->z:F

    .line 179
    move-object/from16 v0, p0

    iget v15, v0, Lcom/threed/jpct/GenericVertexController;->x:F

    .line 180
    .local v15, "minx":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/GenericVertexController;->x:F

    .line 181
    .local v3, "maxx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->y:F

    move/from16 v16, v0

    .line 182
    .local v16, "miny":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GenericVertexController;->y:F

    .line 183
    .local v4, "maxy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->z:F

    move/from16 v17, v0

    .line 184
    .local v17, "minz":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/threed/jpct/GenericVertexController;->z:F

    .line 186
    .local v5, "maxz":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    .line 187
    .local v7, "meshTarget":[Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    move-object/from16 v18, v0

    .line 189
    .local v18, "normalTarget":[Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threed/jpct/GenericVertexController;->meshxOrg:[F

    .line 190
    .local v12, "meshxOrg":[F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/GenericVertexController;->meshyOrg:[F

    .line 191
    .local v13, "meshyOrg":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threed/jpct/GenericVertexController;->meshzOrg:[F

    .line 193
    .local v14, "meshzOrg":[F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/threed/jpct/GenericVertexController;->meshnxOrg:[F

    .line 194
    .local v9, "meshnxOrg":[F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/threed/jpct/GenericVertexController;->meshnyOrg:[F

    .line 195
    .local v10, "meshnyOrg":[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/threed/jpct/GenericVertexController;->meshnzOrg:[F

    .line 197
    .local v11, "meshnzOrg":[F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    .line 199
    .local v6, "mesh":Lcom/threed/jpct/Mesh;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->size:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v2, v0, :cond_2

    .line 232
    iget v0, v6, Lcom/threed/jpct/Mesh;->obbStart:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 233
    iget v0, v6, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v6, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->size:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x7

    move/from16 v0, v22

    iput v0, v6, Lcom/threed/jpct/Mesh;->obbEnd:I

    .line 235
    iget v0, v6, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x8

    move/from16 v0, v22

    iput v0, v6, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 238
    :cond_1
    iget v0, v6, Lcom/threed/jpct/Mesh;->obbStart:I

    move/from16 v20, v0

    .line 242
    .local v20, "pos":I
    aput v15, v12, v20

    .line 243
    aput v16, v13, v20

    .line 244
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "pos":I
    .local v21, "pos":I
    aput v17, v14, v20

    .line 246
    aput v15, v12, v21

    .line 247
    aput v16, v13, v21

    .line 248
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "pos":I
    .restart local v20    # "pos":I
    aput v5, v14, v21

    .line 250
    aput v3, v12, v20

    .line 251
    aput v16, v13, v20

    .line 252
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "pos":I
    .restart local v21    # "pos":I
    aput v17, v14, v20

    .line 254
    aput v3, v12, v21

    .line 255
    aput v16, v13, v21

    .line 256
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "pos":I
    .restart local v20    # "pos":I
    aput v5, v14, v21

    .line 258
    aput v3, v12, v20

    .line 259
    aput v4, v13, v20

    .line 260
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "pos":I
    .restart local v21    # "pos":I
    aput v17, v14, v20

    .line 262
    aput v3, v12, v21

    .line 263
    aput v4, v13, v21

    .line 264
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "pos":I
    .restart local v20    # "pos":I
    aput v5, v14, v21

    .line 266
    aput v15, v12, v20

    .line 267
    aput v4, v13, v20

    .line 268
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "pos":I
    .restart local v21    # "pos":I
    aput v17, v14, v20

    .line 270
    aput v15, v12, v21

    .line 271
    aput v4, v13, v21

    .line 272
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "pos":I
    .restart local v20    # "pos":I
    aput v5, v14, v21

    goto/16 :goto_0

    .line 201
    .end local v20    # "pos":I
    :cond_2
    aget-object v8, v7, v2

    .line 202
    .local v8, "meshTargeti":Lcom/threed/jpct/SimpleVector;
    aget-object v19, v18, v2

    .line 204
    .local v19, "normalTargeti":Lcom/threed/jpct/SimpleVector;
    iget v0, v8, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/GenericVertexController;->x:F

    .line 205
    iget v0, v8, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/GenericVertexController;->y:F

    .line 206
    iget v0, v8, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/GenericVertexController;->z:F

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->x:F

    move/from16 v22, v0

    aput v22, v12, v2

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->y:F

    move/from16 v22, v0

    aput v22, v13, v2

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->z:F

    move/from16 v22, v0

    aput v22, v14, v2

    .line 211
    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v22, v0

    aput v22, v9, v2

    .line 212
    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v22, v0

    aput v22, v10, v2

    .line 213
    move-object/from16 v0, v19

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v22, v0

    aput v22, v11, v2

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->x:F

    move/from16 v22, v0

    cmpg-float v22, v22, v15

    if-gez v22, :cond_6

    .line 216
    move-object/from16 v0, p0

    iget v15, v0, Lcom/threed/jpct/GenericVertexController;->x:F

    .line 220
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->y:F

    move/from16 v22, v0

    cmpg-float v22, v22, v16

    if-gez v22, :cond_7

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->y:F

    move/from16 v16, v0

    .line 225
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->z:F

    move/from16 v22, v0

    cmpg-float v22, v22, v17

    if-gez v22, :cond_8

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->z:F

    move/from16 v17, v0

    .line 199
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 217
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->x:F

    move/from16 v22, v0

    cmpl-float v22, v22, v3

    if-lez v22, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/GenericVertexController;->x:F

    goto :goto_2

    .line 222
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->y:F

    move/from16 v22, v0

    cmpl-float v22, v22, v4

    if-lez v22, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/GenericVertexController;->y:F

    goto :goto_3

    .line 227
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/GenericVertexController;->z:F

    move/from16 v22, v0

    cmpl-float v22, v22, v5

    if-lez v22, :cond_5

    .line 228
    move-object/from16 v0, p0

    iget v5, v0, Lcom/threed/jpct/GenericVertexController;->z:F

    goto :goto_4
.end method
