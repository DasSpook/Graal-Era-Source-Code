.class public final Lcom/threed/jpct/OcTree;
.super Ljava/lang/Object;
.source "OcTree.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COLLISION_DONT_USE:Z = false

.field public static final COLLISION_USE:Z = true

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_OPTIMIZED:I = 0x1

.field public static final RENDERING_DONT_USE:Z = false

.field public static final RENDERING_USE:Z = true

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private allLeafs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threed/jpct/OcTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private curLeafs:I

.field private leafCount:[I

.field private leafList:[Lcom/threed/jpct/OcTreeNode;

.field leafs:I

.field maxDepth:I

.field maxPoly:I

.field mode:I

.field nodes:I

.field private objArray:[Ljava/lang/Object;

.field private objMesh:Lcom/threed/jpct/Mesh;

.field private radiusMul:F

.field root:Lcom/threed/jpct/OcTreeNode;

.field private threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

.field totalPolys:I

.field tris:[I

.field useForCollision:Z

.field useForRendering:Z

.field private used:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private visibleLeafs:[Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    .line 60
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 62
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 66
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 68
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 70
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    .line 74
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 78
    iput v2, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 80
    iput v2, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 82
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 84
    iput v2, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 88
    iput v2, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 90
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 92
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 96
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Mesh;II)V
    .locals 5
    .param p1, "mesh"    # Lcom/threed/jpct/Mesh;
    .param p2, "maxPoly"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    .line 60
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 62
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 66
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 68
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 70
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    .line 74
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 78
    iput v2, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 80
    iput v2, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 82
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 84
    iput v2, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    .line 86
    iput v4, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 88
    iput v2, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 90
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 92
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 96
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 118
    invoke-direct {p0, p1, p2, v4, p3}, Lcom/threed/jpct/OcTree;->initOcTree(Lcom/threed/jpct/Mesh;III)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Mesh;III)V
    .locals 4
    .param p1, "mesh"    # Lcom/threed/jpct/Mesh;
    .param p2, "maxPoly"    # I
    .param p3, "maxDepth"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    .line 60
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 62
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 66
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 68
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 70
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    .line 74
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 78
    iput v2, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 80
    iput v2, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 82
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 84
    iput v2, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 88
    iput v2, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 90
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 92
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 96
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/threed/jpct/OcTree;->initOcTree(Lcom/threed/jpct/Mesh;III)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;II)V
    .locals 5
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "maxPoly"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    .line 60
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 62
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 66
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 68
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 70
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    .line 74
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 78
    iput v2, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 80
    iput v2, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 82
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 84
    iput v2, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    .line 86
    iput v4, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 88
    iput v2, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 90
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 92
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 96
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 165
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v0

    invoke-direct {p0, v0, p2, v4, p3}, Lcom/threed/jpct/OcTree;->initOcTree(Lcom/threed/jpct/Mesh;III)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;III)V
    .locals 4
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "maxPoly"    # I
    .param p3, "maxDepth"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    .line 60
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 62
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 66
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 68
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 70
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    .line 74
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 78
    iput v2, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 80
    iput v2, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 82
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 84
    iput v2, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 88
    iput v2, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 90
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 92
    iput-boolean v3, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 96
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 189
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/threed/jpct/OcTree;->initOcTree(Lcom/threed/jpct/Mesh;III)V

    .line 190
    return-void
.end method

.method private buildTree()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 664
    invoke-static {}, Lcom/threed/jpct/OcTreeNode;->resetNodeID()V

    .line 665
    new-instance v0, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v0}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Building octree for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " triangles!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 669
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->calcBoundingBox()[F

    move-result-object v7

    .line 671
    .local v7, "mins":[F
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    aget v1, v7, v9

    aget v2, v7, v8

    const/4 v3, 0x4

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v5, 0x3

    aget v5, v7, v5

    const/4 v6, 0x5

    aget v6, v7, v6

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    .line 672
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    invoke-direct {p0, v0, v9}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Octree constructed with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/threed/jpct/OcTree;->nodes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nodes / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/threed/jpct/OcTree;->leafs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leafs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 675
    return-void
.end method

.method private createChildren(Lcom/threed/jpct/OcTreeNode;I)Z
    .locals 54
    .param p1, "of"    # Lcom/threed/jpct/OcTreeNode;
    .param p2, "level"    # I

    .prologue
    .line 478
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 479
    const/4 v14, 0x0

    .line 480
    .local v14, "triCnt":I
    add-int/lit8 p2, p2, 0x1

    .line 482
    if-eqz p1, :cond_14

    .line 483
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v3, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt v15, v3, :cond_4

    .line 525
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->maxPoly:I

    if-le v14, v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->maxDepth:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    .line 526
    :cond_1
    if-eqz v14, :cond_3

    .line 528
    const/16 v46, 0x0

    .local v46, "ii":I
    :goto_1
    move/from16 v0, v46

    if-lt v0, v14, :cond_9

    .line 556
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->mode:I

    const/4 v13, 0x1

    if-ne v3, v13, :cond_2

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->packPoints()V

    .line 560
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->totalPolys:I

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v13

    add-int/2addr v3, v13

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 561
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->leafs:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 658
    .end local v46    # "ii":I
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    .line 660
    .end local v15    # "i":I
    :goto_3
    return v3

    .line 484
    .restart local v15    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x0

    aget v13, v13, v27

    aget v16, v3, v13

    .line 485
    .local v16, "p0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x0

    aget v13, v13, v27

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x1

    aget v13, v13, v27

    aget v17, v3, v13

    .line 488
    .local v17, "p1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x2

    aget v13, v13, v27

    aget v18, v3, v13

    .line 490
    .local v18, "p2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v4, v3, v16

    .line 491
    .local v4, "x1":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v5, v3, v16

    .line 492
    .local v5, "y1":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v6, v3, v16

    .line 494
    .local v6, "z1":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v7, v3, v17

    .line 495
    .local v7, "x2":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v8, v3, v17

    .line 496
    .local v8, "y2":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v9, v3, v17

    .line 498
    .local v9, "z2":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v10, v3, v18

    .line 499
    .local v10, "x3":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v11, v3, v18

    .line 500
    .local v11, "y3":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v12, v3, v18

    .line 502
    .local v12, "z3":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->tris:[I

    array-length v3, v3

    add-int/lit8 v13, v14, 0x1

    if-ge v3, v13, :cond_5

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->tris:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v51, v0

    .line 504
    .local v51, "tmpTris":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->tris:[I

    const/4 v13, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/OcTree;->tris:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v51

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v3, v13, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/OcTree;->tris:[I

    .end local v51    # "tmpTris":[I
    :cond_5
    move-object/from16 v3, p1

    .line 508
    invoke-virtual/range {v3 .. v12}, Lcom/threed/jpct/OcTreeNode;->completeFit(FFFFFFFFF)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->tris:[I

    aput v15, v3, v14

    .line 510
    add-int/lit8 v14, v14, 0x1

    .line 518
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->maxPoly:I

    if-le v14, v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->maxDepth:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 483
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    .end local v6    # "z1":F
    .end local v7    # "x2":F
    .end local v8    # "y2":F
    .end local v9    # "z2":F
    .end local v10    # "x3":F
    .end local v11    # "y3":F
    .end local v12    # "z3":F
    .end local v17    # "p1":I
    .end local v18    # "p2":I
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .restart local v4    # "x1":F
    .restart local v5    # "y1":F
    .restart local v6    # "z1":F
    .restart local v7    # "x2":F
    .restart local v8    # "y2":F
    .restart local v9    # "z2":F
    .restart local v10    # "x3":F
    .restart local v11    # "y3":F
    .restart local v12    # "z3":F
    .restart local v17    # "p1":I
    .restart local v18    # "p2":I
    :cond_8
    move-object/from16 v3, p1

    .line 512
    invoke-virtual/range {v3 .. v12}, Lcom/threed/jpct/OcTreeNode;->partialFit(FFFFFFFFF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->tris:[I

    aput v15, v3, v14

    .line 514
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 529
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    .end local v6    # "z1":F
    .end local v7    # "x2":F
    .end local v8    # "y2":F
    .end local v9    # "z2":F
    .end local v10    # "x3":F
    .end local v11    # "y3":F
    .end local v12    # "z3":F
    .end local v16    # "p0":I
    .end local v17    # "p1":I
    .end local v18    # "p2":I
    .restart local v46    # "ii":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->tris:[I

    aget v15, v3, v46

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x0

    aget v13, v13, v27

    aget v16, v3, v13

    .line 531
    .restart local v16    # "p0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x1

    aget v13, v13, v27

    aget v17, v3, v13

    .line 532
    .restart local v17    # "p1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x2

    aget v13, v13, v27

    aget v18, v3, v13

    .line 534
    .restart local v18    # "p2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v4, v3, v16

    .line 535
    .restart local v4    # "x1":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v5, v3, v16

    .line 536
    .restart local v5    # "y1":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v6, v3, v16

    .line 538
    .restart local v6    # "z1":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v7, v3, v17

    .line 539
    .restart local v7    # "x2":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v8, v3, v17

    .line 540
    .restart local v8    # "y2":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v9, v3, v17

    .line 542
    .restart local v9    # "z2":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v10, v3, v18

    .line 543
    .restart local v10    # "x3":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v11, v3, v18

    .line 544
    .restart local v11    # "y3":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v12, v3, v18

    .restart local v12    # "z3":F
    move-object/from16 v3, p1

    .line 546
    invoke-virtual/range {v3 .. v12}, Lcom/threed/jpct/OcTreeNode;->partialFit(FFFFFFFFF)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v3, p1

    .line 547
    invoke-virtual/range {v3 .. v12}, Lcom/threed/jpct/OcTreeNode;->extendDimensions(FFFFFFFFF)V

    :cond_a
    move-object/from16 v13, p1

    .line 549
    invoke-virtual/range {v13 .. v18}, Lcom/threed/jpct/OcTreeNode;->addTriangle(IIIII)V

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x0

    aget v13, v13, v27

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x1

    aget v13, v13, v27

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v13, v13, v15

    const/16 v27, 0x2

    aget v13, v13, v27

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_1

    .line 565
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    .end local v6    # "z1":F
    .end local v7    # "x2":F
    .end local v8    # "y2":F
    .end local v9    # "z2":F
    .end local v10    # "x3":F
    .end local v11    # "y3":F
    .end local v12    # "z3":F
    .end local v16    # "p0":I
    .end local v17    # "p1":I
    .end local v18    # "p2":I
    .end local v46    # "ii":I
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    move/from16 v20, v0

    .line 566
    .local v20, "xLow":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    move/from16 v53, v0

    .line 567
    .local v53, "yLow":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    move/from16 v22, v0

    .line 569
    .local v22, "zLow":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    move/from16 v37, v0

    .line 570
    .local v37, "xHigh":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    move/from16 v24, v0

    .line 571
    .local v24, "yHigh":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    move/from16 v32, v0

    .line 573
    .local v32, "zHigh":F
    sub-float v3, v37, v20

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v3, v13

    add-float v23, v3, v20

    .line 574
    .local v23, "xHalf":F
    sub-float v3, v24, v53

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v3, v13

    add-float v21, v3, v53

    .line 575
    .local v21, "yHalf":F
    sub-float v3, v32, v22

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v3, v13

    add-float v25, v3, v22

    .line 577
    .local v25, "zHalf":F
    new-instance v19, Lcom/threed/jpct/OcTreeNode;

    invoke-direct/range {v19 .. v19}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    .line 578
    .local v19, "upperLeftFront":Lcom/threed/jpct/OcTreeNode;
    new-instance v26, Lcom/threed/jpct/OcTreeNode;

    invoke-direct/range {v26 .. v26}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    .line 580
    .local v26, "upperLeftBack":Lcom/threed/jpct/OcTreeNode;
    new-instance v33, Lcom/threed/jpct/OcTreeNode;

    invoke-direct/range {v33 .. v33}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    .line 581
    .local v33, "upperRightFront":Lcom/threed/jpct/OcTreeNode;
    new-instance v52, Lcom/threed/jpct/OcTreeNode;

    invoke-direct/range {v52 .. v52}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    .line 583
    .local v52, "upperRightBack":Lcom/threed/jpct/OcTreeNode;
    new-instance v48, Lcom/threed/jpct/OcTreeNode;

    invoke-direct/range {v48 .. v48}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    .line 584
    .local v48, "lowerLeftFront":Lcom/threed/jpct/OcTreeNode;
    new-instance v47, Lcom/threed/jpct/OcTreeNode;

    invoke-direct/range {v47 .. v47}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    .line 586
    .local v47, "lowerLeftBack":Lcom/threed/jpct/OcTreeNode;
    new-instance v50, Lcom/threed/jpct/OcTreeNode;

    invoke-direct/range {v50 .. v50}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    .line 587
    .local v50, "lowerRightFront":Lcom/threed/jpct/OcTreeNode;
    new-instance v49, Lcom/threed/jpct/OcTreeNode;

    invoke-direct/range {v49 .. v49}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    .line 589
    .local v49, "lowerRightBack":Lcom/threed/jpct/OcTreeNode;
    invoke-virtual/range {v19 .. v25}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move/from16 v27, v20

    move/from16 v28, v21

    move/from16 v29, v25

    move/from16 v30, v23

    move/from16 v31, v24

    .line 590
    invoke-virtual/range {v26 .. v32}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move/from16 v34, v23

    move/from16 v35, v21

    move/from16 v36, v22

    move/from16 v38, v24

    move/from16 v39, v25

    .line 592
    invoke-virtual/range {v33 .. v39}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object/from16 v38, v52

    move/from16 v39, v23

    move/from16 v40, v21

    move/from16 v41, v25

    move/from16 v42, v37

    move/from16 v43, v24

    move/from16 v44, v32

    .line 593
    invoke-virtual/range {v38 .. v44}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object/from16 v38, v48

    move/from16 v39, v20

    move/from16 v40, v53

    move/from16 v41, v22

    move/from16 v42, v23

    move/from16 v43, v21

    move/from16 v44, v25

    .line 595
    invoke-virtual/range {v38 .. v44}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object/from16 v38, v47

    move/from16 v39, v20

    move/from16 v40, v53

    move/from16 v41, v25

    move/from16 v42, v23

    move/from16 v43, v21

    move/from16 v44, v32

    .line 596
    invoke-virtual/range {v38 .. v44}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object/from16 v38, v50

    move/from16 v39, v23

    move/from16 v40, v53

    move/from16 v41, v22

    move/from16 v42, v37

    move/from16 v43, v21

    move/from16 v44, v25

    .line 598
    invoke-virtual/range {v38 .. v44}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object/from16 v38, v49

    move/from16 v39, v23

    move/from16 v40, v53

    move/from16 v41, v25

    move/from16 v42, v37

    move/from16 v43, v21

    move/from16 v44, v32

    .line 599
    invoke-virtual/range {v38 .. v44}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    .line 601
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v45

    .line 603
    .local v45, "hasC":Z
    if-nez v45, :cond_c

    invoke-virtual/range {v19 .. v19}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_c

    .line 604
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 605
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 608
    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 609
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v45

    .line 610
    if-nez v45, :cond_d

    invoke-virtual/range {v33 .. v33}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_d

    .line 611
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 612
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 615
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v45

    .line 617
    if-nez v45, :cond_e

    invoke-virtual/range {v26 .. v26}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 618
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 619
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 622
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 623
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v45

    .line 624
    if-nez v45, :cond_f

    invoke-virtual/range {v52 .. v52}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_f

    .line 625
    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 626
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 629
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v45

    .line 631
    if-nez v45, :cond_10

    invoke-virtual/range {v48 .. v48}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_10

    .line 632
    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 633
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 636
    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v45

    .line 638
    if-nez v45, :cond_11

    invoke-virtual/range {v50 .. v50}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_11

    .line 639
    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 640
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 643
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 644
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v45

    .line 645
    if-nez v45, :cond_12

    invoke-virtual/range {v47 .. v47}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_12

    .line 646
    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 647
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 650
    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 651
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v45

    .line 652
    if-nez v45, :cond_3

    invoke-virtual/range {v49 .. v49}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 653
    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    .line 654
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    goto/16 :goto_2

    .line 658
    .end local v19    # "upperLeftFront":Lcom/threed/jpct/OcTreeNode;
    .end local v20    # "xLow":F
    .end local v21    # "yHalf":F
    .end local v22    # "zLow":F
    .end local v23    # "xHalf":F
    .end local v24    # "yHigh":F
    .end local v25    # "zHalf":F
    .end local v26    # "upperLeftBack":Lcom/threed/jpct/OcTreeNode;
    .end local v32    # "zHigh":F
    .end local v33    # "upperRightFront":Lcom/threed/jpct/OcTreeNode;
    .end local v37    # "xHigh":F
    .end local v45    # "hasC":Z
    .end local v47    # "lowerLeftBack":Lcom/threed/jpct/OcTreeNode;
    .end local v48    # "lowerLeftFront":Lcom/threed/jpct/OcTreeNode;
    .end local v49    # "lowerRightBack":Lcom/threed/jpct/OcTreeNode;
    .end local v50    # "lowerRightFront":Lcom/threed/jpct/OcTreeNode;
    .end local v52    # "upperRightBack":Lcom/threed/jpct/OcTreeNode;
    .end local v53    # "yLow":F
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 660
    .end local v15    # "i":I
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method private fillLeafs(Lcom/threed/jpct/OcTreeNode;)V
    .locals 2
    .param p1, "n"    # Lcom/threed/jpct/OcTreeNode;

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 232
    return-void

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildren()[Lcom/threed/jpct/OcTreeNode;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/threed/jpct/OcTree;->fillLeafs(Lcom/threed/jpct/OcTreeNode;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getColliderLeafs(Lcom/threed/jpct/OcTreeNode;FFFF[I[Lcom/threed/jpct/OcTreeNode;)[Ljava/lang/Object;
    .locals 15
    .param p1, "node"    # Lcom/threed/jpct/OcTreeNode;
    .param p2, "bx"    # F
    .param p3, "by"    # F
    .param p4, "bz"    # F
    .param p5, "radius"    # F
    .param p6, "leafCnt"    # [I
    .param p7, "colLeafList"    # [Lcom/threed/jpct/OcTreeNode;

    .prologue
    .line 381
    const/4 v13, 0x0

    .line 382
    .local v13, "intersects":Z
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    invoke-virtual/range {p1 .. p5}, Lcom/threed/jpct/OcTreeNode;->sphereIntersectsNode(FFFF)Z

    move-result v13

    .line 386
    :cond_1
    if-eqz v13, :cond_5

    .line 387
    sget-object v10, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    .line 389
    .local v10, "defaultThread":Ljava/lang/Thread;
    if-nez v10, :cond_2

    .line 390
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/World;->setDefaultThread(Ljava/lang/Thread;)V

    .line 391
    sget-object v10, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    .line 394
    :cond_2
    if-nez p7, :cond_4

    .line 395
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    .line 396
    .local v14, "trd":Ljava/lang/Thread;
    if-eqz v10, :cond_3

    if-ne v14, v10, :cond_3

    if-ne v10, v14, :cond_6

    iget-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    if-nez v1, :cond_6

    .line 397
    :cond_3
    iget v1, p0, Lcom/threed/jpct/OcTree;->leafs:I

    new-array v0, v1, [Lcom/threed/jpct/OcTreeNode;

    move-object/from16 p7, v0

    .line 398
    if-eqz v10, :cond_4

    if-ne v10, v14, :cond_4

    .line 399
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 408
    .end local v14    # "trd":Ljava/lang/Thread;
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 409
    const/4 v1, 0x0

    aget v1, p6, v1

    aput-object p1, p7, v1

    .line 410
    const/4 v1, 0x0

    aget v2, p6, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p6, v1

    .line 422
    .end local v10    # "defaultThread":Ljava/lang/Thread;
    :cond_5
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-static {v3}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 423
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p7, v1, v2

    .line 425
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    return-object v1

    .line 402
    .restart local v10    # "defaultThread":Ljava/lang/Thread;
    .restart local v14    # "trd":Ljava/lang/Thread;
    :cond_6
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    if-eqz v1, :cond_4

    .line 403
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    move-object/from16 p7, v0

    goto :goto_0

    .line 412
    .end local v14    # "trd":Ljava/lang/Thread;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_5

    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v11

    .line 414
    .local v11, "end":I
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildren()[Lcom/threed/jpct/OcTreeNode;

    move-result-object v9

    .line 415
    .local v9, "children":[Lcom/threed/jpct/OcTreeNode;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_5

    .line 416
    aget-object v2, v9, v12

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/threed/jpct/OcTree;->getColliderLeafs(Lcom/threed/jpct/OcTreeNode;FFFF[I[Lcom/threed/jpct/OcTreeNode;)[Ljava/lang/Object;

    .line 415
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method private getVisibleLeafs(Lcom/threed/jpct/OcTreeNode;Lcom/threed/jpct/Matrix;FF[I)V
    .locals 14
    .param p1, "node"    # Lcom/threed/jpct/OcTreeNode;
    .param p2, "transform"    # Lcom/threed/jpct/Matrix;
    .param p3, "divX"    # F
    .param p4, "divY"    # F
    .param p5, "leafCnt"    # [I

    .prologue
    .line 443
    const/4 v13, 0x0

    .line 444
    .local v13, "visible":Z
    const/4 v12, 0x0

    .line 446
    .local v12, "visComplete":Z
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v7

    .line 448
    .local v7, "childCount":I
    if-nez v7, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    :cond_0
    invoke-virtual/range {p1 .. p4}, Lcom/threed/jpct/OcTreeNode;->isVisible(Lcom/threed/jpct/Matrix;FF)I

    move-result v11

    .line 450
    .local v11, "vis":I
    const/16 v1, 0x3e7

    if-ne v11, v1, :cond_1

    .line 451
    const/4 v12, 0x1

    .line 452
    if-eqz v7, :cond_4

    .line 453
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/OcTree;->markAllLeafsAsVisible(Lcom/threed/jpct/OcTreeNode;[I)V

    .line 454
    const/4 v11, 0x0

    .line 459
    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-ne v11, v1, :cond_5

    const/4 v13, 0x1

    .line 462
    .end local v11    # "vis":I
    :cond_2
    :goto_1
    if-eqz v13, :cond_6

    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v1

    if-eqz v1, :cond_6

    if-nez v7, :cond_6

    .line 463
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    const/4 v2, 0x0

    aget v2, p5, v2

    aput-object p1, v1, v2

    .line 464
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    const/4 v2, 0x0

    aget v2, p5, v2

    aput-boolean v12, v1, v2

    .line 465
    const/4 v1, 0x0

    aget v2, p5, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p5, v1

    .line 475
    :cond_3
    return-void

    .line 456
    .restart local v11    # "vis":I
    :cond_4
    const/4 v11, 0x1

    goto :goto_0

    .line 459
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 467
    .end local v11    # "vis":I
    :cond_6
    if-eqz v13, :cond_3

    if-eqz v7, :cond_3

    .line 468
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildren()[Lcom/threed/jpct/OcTreeNode;

    move-result-object v10

    .line 469
    .local v10, "tmpChilds":[Lcom/threed/jpct/OcTreeNode;
    move v8, v7

    .line 470
    .local v8, "end":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_3

    .line 471
    aget-object v2, v10, v9

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/threed/jpct/OcTree;->getVisibleLeafs(Lcom/threed/jpct/OcTreeNode;Lcom/threed/jpct/Matrix;FF[I)V

    .line 470
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method private initOcTree(Lcom/threed/jpct/Mesh;III)V
    .locals 3
    .param p1, "mesh"    # Lcom/threed/jpct/Mesh;
    .param p2, "maxPoly"    # I
    .param p3, "maxDepth"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 203
    iput v1, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 204
    iput v1, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 205
    iput p3, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 206
    iput p2, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    .line 207
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 208
    iput-object p1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 209
    invoke-direct {p0}, Lcom/threed/jpct/OcTree;->buildTree()V

    .line 210
    iput-object v2, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    .line 211
    iput-object v2, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 212
    iput p4, p0, Lcom/threed/jpct/OcTree;->mode:I

    .line 213
    iput-boolean v1, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 214
    invoke-virtual {p0}, Lcom/threed/jpct/OcTree;->postConstruct()V

    .line 215
    return-void
.end method

.method private markAllLeafsAsVisible(Lcom/threed/jpct/OcTreeNode;[I)V
    .locals 7
    .param p1, "node"    # Lcom/threed/jpct/OcTreeNode;
    .param p2, "leafCnt"    # [I

    .prologue
    const/4 v6, 0x0

    .line 429
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 430
    iget-object v3, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    aget v4, p2, v6

    aput-object p1, v3, v4

    .line 431
    iget-object v3, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    aget v4, p2, v6

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 432
    aget v3, p2, v6

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v6

    .line 440
    :cond_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildren()[Lcom/threed/jpct/OcTreeNode;

    move-result-object v0

    .line 435
    .local v0, "children":[Lcom/threed/jpct/OcTreeNode;
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v1

    .line 436
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 437
    aget-object v3, v0, v2

    invoke-direct {p0, v3, p2}, Lcom/threed/jpct/OcTree;->markAllLeafsAsVisible(Lcom/threed/jpct/OcTreeNode;[I)V

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method getAffectedLeafs(FFFF)Ljava/util/List;
    .locals 5
    .param p1, "bx"    # F
    .param p2, "by"    # F
    .param p3, "bz"    # F
    .param p4, "radius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Ljava/util/List",
            "<",
            "Lcom/threed/jpct/OcTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/threed/jpct/OcTree;->getColliderLeafs(FFFF)[Ljava/lang/Object;

    move-result-object v2

    .line 336
    .local v2, "res":[Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/threed/jpct/OcTreeNode;>;"
    if-eqz v2, :cond_0

    .line 338
    const/4 v4, 0x0

    aget-object v0, v2, v4

    check-cast v0, Ljava/lang/Integer;

    .line 339
    .local v0, "cnt":Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 343
    .end local v0    # "cnt":Ljava/lang/Integer;
    .end local v1    # "i":I
    :cond_0
    return-object v3

    .line 340
    .restart local v0    # "cnt":Ljava/lang/Integer;
    .restart local v1    # "i":I
    :cond_1
    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, [Lcom/threed/jpct/OcTreeNode;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getColliderLeafs(FFFF)[Ljava/lang/Object;
    .locals 8
    .param p1, "bx"    # F
    .param p2, "by"    # F
    .param p3, "bz"    # F
    .param p4, "radius"    # F

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    aput v1, v0, v1

    .line 356
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    iget-object v6, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/OcTree;->getColliderLeafs(Lcom/threed/jpct/OcTreeNode;FFFF[I[Lcom/threed/jpct/OcTreeNode;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionUse()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    return v0
.end method

.method public getFilledLeafs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threed/jpct/OcTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 220
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    invoke-direct {p0, v0}, Lcom/threed/jpct/OcTree;->fillLeafs(Lcom/threed/jpct/OcTreeNode;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLeafCount()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    return v0
.end method

.method getLeafList()[Lcom/threed/jpct/OcTreeNode;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    return-object v0
.end method

.method public getRadiusMultiplier()F
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/threed/jpct/OcTree;->radiusMul:F

    return v0
.end method

.method public getRenderingUse()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    return v0
.end method

.method getTotalLeafs()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    return v0
.end method

.method getTotalPolyCount()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    return v0
.end method

.method getVisibleLeafs(Lcom/threed/jpct/Matrix;FF)I
    .locals 7
    .param p1, "transform"    # Lcom/threed/jpct/Matrix;
    .param p2, "divX"    # F
    .param p3, "divY"    # F

    .prologue
    const/4 v6, 0x0

    .line 347
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    aput v6, v0, v6

    .line 348
    iput v6, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    .line 349
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    iget-object v5, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/OcTree;->getVisibleLeafs(Lcom/threed/jpct/OcTreeNode;Lcom/threed/jpct/Matrix;FF[I)V

    .line 350
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    aget v0, v0, v6

    iput v0, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    .line 351
    iget v0, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    return v0
.end method

.method isCompletelyVisible(I)Z
    .locals 1
    .param p1, "leafNum"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isOfOrderZero()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    invoke-virtual {v0}, Lcom/threed/jpct/OcTreeNode;->isLeaf()Z

    move-result v0

    return v0
.end method

.method postConstruct()V
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    new-array v0, v0, [Lcom/threed/jpct/OcTreeNode;

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 198
    iget v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 199
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/threed/jpct/OcTree;->radiusMul:F

    .line 200
    return-void
.end method

.method public setCollisionUse(Z)V
    .locals 0
    .param p1, "useIt"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 245
    return-void
.end method

.method public setRadiusMultiplier(F)V
    .locals 1
    .param p1, "mul"    # F

    .prologue
    .line 296
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 297
    iput p1, p0, Lcom/threed/jpct/OcTree;->radiusMul:F

    .line 299
    :cond_0
    return-void
.end method

.method public setRenderingUse(Z)V
    .locals 0
    .param p1, "useIt"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 259
    return-void
.end method
