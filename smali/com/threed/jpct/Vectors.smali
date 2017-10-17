.class final Lcom/threed/jpct/Vectors;
.super Ljava/lang/Object;
.source "Vectors.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field alpha:[F

.field private baseMesh:Lcom/threed/jpct/Mesh;

.field maxVectors:I

.field nuOrg:[F

.field nvOrg:[F

.field uMul:[[F

.field vMul:[[F


# direct methods
.method constructor <init>(ILcom/threed/jpct/Mesh;)V
    .locals 1
    .param p1, "max"    # I
    .param p2, "mesh"    # Lcom/threed/jpct/Mesh;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    .line 37
    iput p1, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    .line 39
    iget v0, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    .line 40
    iget v0, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    .line 41
    return-void
.end method


# virtual methods
.method addVertex(FFF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 84
    iget-object v1, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget v0, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 85
    .local v0, "pos3":I
    iget-object v1, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->xOrg:[F

    aput p1, v1, v0

    .line 86
    iget-object v1, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->yOrg:[F

    aput p2, v1, v0

    .line 87
    iget-object v1, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->zOrg:[F

    aput p3, v1, v0

    .line 88
    iget-object v1, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget v2, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 89
    return v0
.end method

.method checkCoords(FFF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 67
    iget-object v4, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget v4, v4, Lcom/threed/jpct/Mesh;->anzCoords:I

    add-int/lit8 v0, v4, -0x1

    .line 68
    .local v0, "i":I
    iget-object v4, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, v4, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 69
    .local v1, "xOrg":[F
    iget-object v4, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, v4, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 70
    .local v2, "yOrg":[F
    iget-object v4, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v4, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 72
    .local v3, "zOrg":[F
    :goto_0
    if-gez v0, :cond_1

    .line 79
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 73
    .restart local v0    # "i":I
    :cond_1
    aget v4, v1, v0

    cmpl-float v4, v4, p1

    if-nez v4, :cond_2

    aget v4, v2, v0

    cmpl-float v4, v4, p2

    if-nez v4, :cond_2

    aget v4, v3, v0

    cmpl-float v4, v4, p3

    if-eqz v4, :cond_0

    .line 76
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method createAlpha()V
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/threed/jpct/Vectors;->alpha:[F

    if-nez v1, :cond_0

    .line 53
    iget v1, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/Vectors;->alpha:[F

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    if-lt v0, v1, :cond_1

    .line 58
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 55
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/Vectors;->alpha:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method createMultiCoords()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/threed/jpct/Vectors;->uMul:[[F

    if-nez v0, :cond_0

    .line 46
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->uMul:[[F

    .line 47
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->vMul:[[F

    .line 49
    :cond_0
    return-void
.end method

.method killMultiCoords()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/threed/jpct/Vectors;->uMul:[[F

    .line 62
    iput-object v0, p0, Lcom/threed/jpct/Vectors;->vMul:[[F

    .line 63
    return-void
.end method

.method setMesh(Lcom/threed/jpct/Mesh;)V
    .locals 0
    .param p1, "Mesh"    # Lcom/threed/jpct/Mesh;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    .line 94
    return-void
.end method

.method strip()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    .line 98
    iput-object v0, p0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    .line 100
    iput-object v0, p0, Lcom/threed/jpct/Vectors;->uMul:[[F

    .line 101
    iput-object v0, p0, Lcom/threed/jpct/Vectors;->vMul:[[F

    .line 103
    iput-object v0, p0, Lcom/threed/jpct/Vectors;->alpha:[F

    .line 104
    return-void
.end method
