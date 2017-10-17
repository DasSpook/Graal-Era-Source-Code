.class Lcom/threed/jpct/CompiledInstanceFP;
.super Lcom/threed/jpct/CompiledInstance;
.source "CompiledInstanceFP.java"


# static fields
.field protected static smallBufferOneF:[F

.field protected static smallBufferTwoF:[F


# instance fields
.field protected ncoords:[F

.field protected normals:Lcom/threed/jpct/FloatBufferWrapper;

.field protected vcoords:[F

.field protected vertices:Lcom/threed/jpct/FloatBufferWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/threed/jpct/CompiledInstanceFP;->BUFFER_SIZE:I

    new-array v0, v0, [F

    sput-object v0, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    .line 26
    sget v0, Lcom/threed/jpct/CompiledInstanceFP;->BUFFER_SIZE:I

    new-array v0, v0, [F

    sput-object v0, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    .line 18
    return-void
.end method

.method constructor <init>(Lcom/threed/jpct/Object3D;II)V
    .locals 1
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "polyIndex"    # I
    .param p3, "treeID"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/threed/jpct/CompiledInstance;-><init>(Lcom/threed/jpct/Object3D;II)V

    .line 20
    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    .line 21
    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    .line 22
    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    .line 23
    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    .line 30
    return-void
.end method


# virtual methods
.method public _fill()V
    .locals 57

    .prologue
    .line 686
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    .line 687
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    .line 688
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosThree:I

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v3, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 695
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->useStrip:I

    if-nez v3, :cond_1

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstanceFP;->checkStrips()V

    .line 699
    :cond_1
    const-wide/16 v44, 0x0

    .line 700
    .local v44, "time":J
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 704
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->hasBeenRefilled:Z

    .line 706
    const-wide/16 v39, 0x0

    .line 707
    .local v39, "s":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tris:Lcom/threed/jpct/IntList;

    if-eqz v3, :cond_15

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v3}, Lcom/threed/jpct/IntList;->size()I

    move-result v3

    mul-int/lit8 v50, v3, 0x3

    .line 709
    .local v50, "verts":I
    const/4 v4, 0x0

    .line 711
    .local v4, "init":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    if-nez v3, :cond_9

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    .line 713
    const/4 v4, 0x1

    .line 714
    new-instance v3, Lcom/threed/jpct/FloatBufferWrapper;

    mul-int/lit8 v54, v50, 0x3

    move/from16 v0, v54

    invoke-direct {v3, v0}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    .line 715
    new-instance v3, Lcom/threed/jpct/FloatBufferWrapper;

    mul-int/lit8 v54, v50, 0x3

    move/from16 v0, v54

    invoke-direct {v3, v0}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->hasVertexAlpha()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 718
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

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    .line 721
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    if-eqz v3, :cond_4

    .line 722
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

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    .line 725
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    .line 727
    .local v28, "len":I
    move/from16 v0, v28

    new-array v3, v0, [Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    .line 728
    sget v3, Lcom/threed/jpct/CompiledInstanceFP;->BUFFER_SIZE:I

    move/from16 v0, v28

    filled-new-array {v0, v3}, [I

    move-result-object v3

    sget-object v54, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v54

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferAttrs:[[I

    .line 729
    move/from16 v0, v28

    new-array v3, v0, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    .line 730
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 735
    .end local v19    # "i":I
    .end local v28    # "len":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indexed:Z

    if-eqz v3, :cond_6

    .line 736
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

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    .line 737
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertex2index:Ljava/util/HashMap;

    .line 740
    :cond_6
    const/16 v29, 0x1

    .line 741
    .local v29, "max":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v3, :cond_7

    .line 742
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v3, v3

    move/from16 v0, v19

    if-lt v0, v3, :cond_17

    .line 749
    .end local v19    # "i":I
    :cond_7
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    .line 750
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    sget v54, Lcom/threed/jpct/Config;->glStageCount:I

    move/from16 v0, v54

    if-le v3, v0, :cond_8

    .line 751
    sget v3, Lcom/threed/jpct/Config;->glStageCount:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    .line 754
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    new-array v3, v3, [Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    .line 756
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v0, v19

    if-lt v0, v3, :cond_18

    .line 761
    .end local v19    # "i":I
    .end local v29    # "max":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v0, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v34, v0

    .line 763
    .local v34, "objMesh":Lcom/threed/jpct/Mesh;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v51, v0

    .line 764
    .local v51, "x":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v52, v0

    .line 765
    .local v52, "y":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v53, v0

    .line 767
    .local v53, "z":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v31, v0

    .line 768
    .local v31, "nx":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v32, v0

    .line 769
    .local v32, "ny":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v33, v0

    .line 771
    .local v33, "nz":[F
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertex2index:Ljava/util/HashMap;

    if-eqz v3, :cond_a

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertex2index:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 776
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v3}, Lcom/threed/jpct/IntList;->size()I

    move-result v18

    .line 777
    .local v18, "endII":I
    const/16 v19, 0x0

    .line 779
    .restart local v19    # "i":I
    const/4 v13, 0x0

    .line 781
    .local v13, "cm":Lcom/threed/jpct/IntList;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    if-nez v3, :cond_b

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    if-nez v3, :cond_b

    .line 782
    new-instance v13, Lcom/threed/jpct/IntList;

    .end local v13    # "cm":Lcom/threed/jpct/IntList;
    invoke-direct {v13}, Lcom/threed/jpct/IntList;-><init>()V

    .line 785
    .restart local v13    # "cm":Lcom/threed/jpct/IntList;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->staticUV:Z

    if-eqz v3, :cond_1e

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    array-length v0, v3

    move/from16 v18, v0

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    if-eqz v3, :cond_1c

    .line 790
    const/16 v24, 0x0

    .line 791
    .local v24, "ix":I
    const/4 v11, 0x0

    .line 793
    .local v11, "c":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    move-object/from16 v49, v0

    .line 794
    .local v49, "vcoords":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    move-object/from16 v30, v0

    .line 796
    .local v30, "ncoords":[F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->needsCoordMapper:Z

    if-eqz v3, :cond_1a

    .line 798
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    .line 800
    .local v15, "coordMapper":[I
    const/16 v21, 0x0

    .local v21, "ii":I
    move/from16 v25, v24

    .end local v24    # "ix":I
    .local v25, "ix":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v18

    if-lt v0, v1, :cond_19

    .line 808
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    move/from16 v24, v25

    .line 823
    .end local v15    # "coordMapper":[I
    .end local v21    # "ii":I
    .end local v25    # "ix":I
    .restart local v24    # "ix":I
    :goto_5
    invoke-static {}, Lcom/threed/jpct/BufferUtilFactory;->getBufferUtil()Lcom/threed/jpct/BufferUtil;

    move-result-object v10

    .line 824
    .local v10, "bu":Lcom/threed/jpct/BufferUtil;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    move-object/from16 v0, v49

    invoke-interface {v10, v0, v3}, Lcom/threed/jpct/BufferUtil;->copy([FLcom/threed/jpct/FloatBufferWrapper;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    move-object/from16 v0, v30

    invoke-interface {v10, v0, v3}, Lcom/threed/jpct/BufferUtil;->copy([FLcom/threed/jpct/FloatBufferWrapper;)V

    .line 1055
    .end local v10    # "bu":Lcom/threed/jpct/BufferUtil;
    .end local v11    # "c":I
    .end local v24    # "ix":I
    .end local v30    # "ncoords":[F
    .end local v49    # "vcoords":[F
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    const/16 v54, 0x0

    aget-object v3, v3, v54

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v42

    .line 1057
    .local v42, "tLength":I
    const/4 v12, 0x0

    .line 1058
    .local v12, "cLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_d

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v12

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1063
    :cond_d
    const/16 v43, 0x0

    .line 1064
    .local v43, "tanLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_e

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v43

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1069
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v3}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v3}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    .line 1072
    const/16 v26, 0x0

    .local v26, "k":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v0, v26

    if-lt v0, v3, :cond_4b

    .line 1076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v3, :cond_f

    .line 1077
    const/16 v26, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    array-length v3, v3

    move/from16 v0, v26

    if-lt v0, v3, :cond_4c

    .line 1083
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    if-eqz v3, :cond_10

    .line 1084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1087
    :cond_10
    if-eqz v4, :cond_14

    .line 1089
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    if-nez v3, :cond_13

    .line 1090
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tris:Lcom/threed/jpct/IntList;

    .line 1091
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertex2index:Ljava/util/HashMap;

    .line 1092
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indexed:Z

    if-eqz v3, :cond_13

    .line 1093
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_11

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/threed/jpct/CompiledInstanceFP;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    .line 1096
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_12

    .line 1097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Lcom/threed/jpct/CompiledInstanceFP;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    .line 1099
    :cond_12
    const/16 v22, 0x0

    .local v22, "it":I
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v0, v22

    if-lt v0, v3, :cond_4d

    .line 1102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v3, :cond_13

    .line 1103
    const/16 v26, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    array-length v3, v3

    move/from16 v0, v26

    if-lt v0, v3, :cond_4e

    .line 1109
    .end local v22    # "it":I
    :cond_13
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    const/16 v54, 0x2

    move/from16 v0, v54

    if-lt v3, v0, :cond_14

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v54, "Subobject of object "

    move-object/from16 v0, v54

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

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

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

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

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-boolean v3, v3, Lcom/threed/jpct/Object3D;->indexed:Z

    if-eqz v3, :cond_4f

    const-string v3, "indexed"

    :goto_b
    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, " floating point data using "

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, "/"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/threed/jpct/FloatBufferWrapper;->limit()I

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

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->useStrip:I

    const/16 v55, 0x1

    move/from16 v0, v55

    if-ne v3, v0, :cond_50

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

    .line 1110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1115
    :cond_14
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1116
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v54, "Processing and uploading vertices of subobject of object "

    move-object/from16 v0, v54

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

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

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

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

    .line 1117
    const/16 v54, 0x3

    .line 1116
    move/from16 v0, v54

    invoke-static {v3, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1120
    .end local v4    # "init":Z
    .end local v12    # "cLength":I
    .end local v13    # "cm":Lcom/threed/jpct/IntList;
    .end local v18    # "endII":I
    .end local v19    # "i":I
    .end local v26    # "k":I
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
    :cond_15
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->filled:Z

    goto/16 :goto_0

    .line 731
    .restart local v4    # "init":Z
    .restart local v19    # "i":I
    .restart local v28    # "len":I
    .restart local v50    # "verts":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    move/from16 v0, v19

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

    aput-object v3, v54, v19

    .line 730
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 743
    .end local v28    # "len":I
    .restart local v29    # "max":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v3, v3, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    move/from16 v54, v0

    aget v3, v3, v54

    const/16 v54, -0x1

    move/from16 v0, v54

    if-eq v3, v0, :cond_7

    .line 746
    add-int/lit8 v29, v29, 0x1

    .line 742
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 757
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

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

    aput-object v54, v3, v19

    .line 756
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 801
    .end local v29    # "max":I
    .restart local v11    # "c":I
    .restart local v13    # "cm":Lcom/threed/jpct/IntList;
    .restart local v15    # "coordMapper":[I
    .restart local v18    # "endII":I
    .restart local v21    # "ii":I
    .restart local v25    # "ix":I
    .restart local v30    # "ncoords":[F
    .restart local v31    # "nx":[F
    .restart local v32    # "ny":[F
    .restart local v33    # "nz":[F
    .restart local v34    # "objMesh":Lcom/threed/jpct/Mesh;
    .restart local v49    # "vcoords":[F
    .restart local v51    # "x":[F
    .restart local v52    # "y":[F
    .restart local v53    # "z":[F
    :cond_19
    aget v11, v15, v21

    aget v3, v51, v11

    aput v3, v49, v25

    .line 802
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "ix":I
    .restart local v24    # "ix":I
    aget v3, v31, v11

    aput v3, v30, v25

    .line 803
    aget v3, v52, v11

    aput v3, v49, v24

    .line 804
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "ix":I
    .restart local v25    # "ix":I
    aget v3, v32, v11

    aput v3, v30, v24

    .line 805
    aget v3, v53, v11

    aput v3, v49, v25

    .line 806
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "ix":I
    .restart local v24    # "ix":I
    aget v3, v33, v11

    aput v3, v30, v25

    .line 800
    add-int/lit8 v21, v21, 0x1

    move/from16 v25, v24

    .end local v24    # "ix":I
    .restart local v25    # "ix":I
    goto/16 :goto_4

    .line 810
    .end local v15    # "coordMapper":[I
    .end local v21    # "ii":I
    .end local v25    # "ix":I
    .restart local v24    # "ix":I
    :cond_1a
    const/4 v11, 0x0

    move/from16 v25, v24

    .end local v24    # "ix":I
    .restart local v25    # "ix":I
    :goto_d
    move/from16 v0, v18

    if-lt v11, v0, :cond_1b

    .line 818
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    move/from16 v24, v25

    .end local v25    # "ix":I
    .restart local v24    # "ix":I
    goto/16 :goto_5

    .line 811
    .end local v24    # "ix":I
    .restart local v25    # "ix":I
    :cond_1b
    aget v3, v51, v11

    aput v3, v49, v25

    .line 812
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "ix":I
    .restart local v24    # "ix":I
    aget v3, v31, v11

    aput v3, v30, v25

    .line 813
    aget v3, v52, v11

    aput v3, v49, v24

    .line 814
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "ix":I
    .restart local v25    # "ix":I
    aget v3, v32, v11

    aput v3, v30, v24

    .line 815
    aget v3, v53, v11

    aput v3, v49, v25

    .line 816
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "ix":I
    .restart local v24    # "ix":I
    aget v3, v33, v11

    aput v3, v30, v25

    .line 810
    add-int/lit8 v11, v11, 0x1

    move/from16 v25, v24

    .end local v24    # "ix":I
    .restart local v25    # "ix":I
    goto :goto_d

    .line 828
    .end local v11    # "c":I
    .end local v25    # "ix":I
    .end local v30    # "ncoords":[F
    .end local v49    # "vcoords":[F
    :cond_1c
    const/16 v21, 0x0

    .restart local v21    # "ii":I
    :goto_e
    move/from16 v0, v21

    move/from16 v1, v18

    if-lt v0, v1, :cond_1d

    .line 839
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    goto/16 :goto_6

    .line 829
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    aget v11, v3, v21

    .line 831
    .restart local v11    # "c":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    aget v54, v51, v11

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    .line 832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    aget v54, v52, v11

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    aget v54, v53, v11

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    .line 835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    aget v54, v31, v11

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    aget v54, v32, v11

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    aget v54, v33, v11

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    .line 828
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 842
    .end local v11    # "c":I
    .end local v21    # "ii":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v5, v3, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 843
    .local v5, "objVectors":Lcom/threed/jpct/Vectors;
    iget-object v0, v5, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v46, v0

    .line 844
    .local v46, "u":[F
    iget-object v0, v5, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v48, v0

    .line 845
    .local v48, "v":[F
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v37, v0

    .line 847
    .local v37, "points":[[I
    const/16 v23, 0x0

    .local v23, "iu":I
    :goto_f
    const/4 v3, 0x4

    move/from16 v0, v23

    if-lt v0, v3, :cond_26

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    if-eqz v3, :cond_1f

    .line 852
    const/16 v23, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    array-length v3, v3

    move/from16 v0, v23

    if-lt v0, v3, :cond_27

    .line 857
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v3, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    .line 859
    .local v6, "tangentVectors":[[F
    const/16 v21, 0x0

    .restart local v21    # "ii":I
    :goto_11
    move/from16 v0, v21

    move/from16 v1, v18

    if-lt v0, v1, :cond_28

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    if-eqz v3, :cond_20

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->position()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indexCount:I

    .line 1015
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indexCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/nio/ShortBuffer;->limit()I

    move-result v54

    move/from16 v0, v54

    if-eq v3, v0, :cond_20

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    .line 1020
    :cond_20
    if-eqz v13, :cond_c

    .line 1021
    invoke-virtual {v13}, Lcom/threed/jpct/IntList;->size()I

    move-result v16

    .line 1022
    .local v16, "cs":I
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    const/16 v54, 0x2

    move/from16 v0, v54

    if-lt v3, v0, :cond_21

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v54, "Remapping "

    move-object/from16 v0, v54

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v54, " vertex indices!"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1025
    :cond_21
    move/from16 v0, v16

    new-array v3, v0, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    .line 1027
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    iget-boolean v3, v3, Lcom/threed/jpct/Animation;->cacheIndices:Z

    if-eqz v3, :cond_24

    .line 1028
    :cond_22
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    const/16 v54, 0x2

    move/from16 v0, v54

    if-lt v3, v0, :cond_23

    .line 1029
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v54, "Creating vertex cache ("

    move-object/from16 v0, v54

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v54, v16, 0x18

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

    .line 1031
    :cond_23
    mul-int/lit8 v3, v16, 0x3

    new-array v3, v3, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    .line 1032
    mul-int/lit8 v3, v16, 0x3

    new-array v3, v3, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    .line 1034
    :cond_24
    const/4 v14, 0x0

    .line 1035
    .local v14, "cnt":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->needsCoordMapper:Z

    .line 1036
    invoke-virtual {v13}, Lcom/threed/jpct/IntList;->size()I

    move-result v17

    .line 1037
    .local v17, "ei":I
    const/16 v20, 0x0

    .local v20, "ie":I
    :goto_12
    move/from16 v0, v20

    move/from16 v1, v17

    if-lt v0, v1, :cond_48

    .line 1044
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    const/16 v54, 0x2

    move/from16 v0, v54

    if-lt v3, v0, :cond_25

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->needsCoordMapper:Z

    if-eqz v3, :cond_4a

    .line 1046
    const-string v3, "Vertex indices will be mapped!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 1051
    :cond_25
    :goto_13
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 848
    .end local v6    # "tangentVectors":[[F
    .end local v14    # "cnt":I
    .end local v16    # "cs":I
    .end local v17    # "ei":I
    .end local v20    # "ie":I
    .end local v21    # "ii":I
    :cond_26
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosMT:[I

    const/16 v54, 0x0

    aput v54, v3, v23

    .line 847
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_f

    .line 853
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    const/16 v54, 0x0

    aput v54, v3, v23

    .line 852
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_10

    .line 860
    .restart local v6    # "tangentVectors":[[F
    .restart local v21    # "ii":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tris:Lcom/threed/jpct/IntList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v19

    .line 862
    const/16 v41, 0x0

    .line 863
    .local v41, "start":I
    if-lez v21, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->useStrip:I

    const/16 v54, 0x1

    move/from16 v0, v54

    if-ne v3, v0, :cond_29

    .line 864
    const/16 v41, 0x2

    .line 867
    :cond_29
    const/16 v27, 0x0

    .line 869
    .local v27, "key":Lcom/threed/jpct/GenericContainer;
    move/from16 v35, v41

    .local v35, "p":I
    :goto_14
    const/4 v3, 0x3

    move/from16 v0, v35

    if-lt v0, v3, :cond_2b

    .line 1006
    if-eqz v21, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->useStrip:I

    const/16 v54, 0x2

    move/from16 v0, v54

    if-ne v3, v0, :cond_47

    .line 1007
    :cond_2a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    add-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    .line 859
    :goto_15
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_11

    .line 870
    :cond_2b
    aget-object v3, v37, v19

    aget v7, v3, v35

    .line 871
    .local v7, "pind":I
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v8, v3, v7

    .line 873
    .local v8, "coord":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indexed:Z

    if-nez v3, :cond_33

    .line 876
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    aget v55, v51, v8

    aput v55, v3, v54

    .line 877
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    aget v55, v52, v8

    aput v55, v3, v54

    .line 878
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    aget v55, v53, v8

    aput v55, v3, v54

    .line 880
    add-int/lit8 v3, v18, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_32

    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_32

    const/4 v9, 0x1

    .line 881
    .local v9, "end":Z
    :goto_16
    sget v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->BUFFER_SIZE:I

    move/from16 v0, v54

    if-eq v3, v0, :cond_2c

    if-eqz v9, :cond_2d

    .line 882
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    sget-object v54, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    .line 883
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    .line 888
    :cond_2d
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    aget v55, v31, v8

    aput v55, v3, v54

    .line 889
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    aget v55, v32, v8

    aput v55, v3, v54

    .line 890
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    aget v55, v33, v8

    aput v55, v3, v54

    .line 893
    sget v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->BUFFER_SIZE:I

    move/from16 v0, v54

    if-eq v3, v0, :cond_2e

    if-eqz v9, :cond_2f

    .line 894
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    sget-object v54, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    .line 895
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    .line 898
    :cond_2f
    if-eqz v13, :cond_30

    .line 899
    invoke-virtual {v13, v8}, Lcom/threed/jpct/IntList;->add(I)V

    :cond_30
    move-object/from16 v3, p0

    .line 902
    invoke-virtual/range {v3 .. v9}, Lcom/threed/jpct/CompiledInstanceFP;->fillAttributes(ZLcom/threed/jpct/Vectors;[[FIIZ)V

    .line 869
    :cond_31
    :goto_17
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_14

    .line 880
    .end local v9    # "end":Z
    :cond_32
    const/4 v9, 0x0

    goto :goto_16

    .line 905
    :cond_33
    if-nez v27, :cond_3a

    .line 906
    new-instance v27, Lcom/threed/jpct/GenericContainer;

    .end local v27    # "key":Lcom/threed/jpct/GenericContainer;
    const/16 v3, 0xb

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lcom/threed/jpct/GenericContainer;-><init>(I)V

    .line 910
    .restart local v27    # "key":Lcom/threed/jpct/GenericContainer;
    :goto_18
    aget v3, v51, v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 911
    aget v3, v52, v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 912
    aget v3, v53, v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 914
    aget v3, v31, v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 915
    aget v3, v32, v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 916
    aget v3, v33, v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 918
    const/16 v26, 0x0

    .restart local v26    # "k":I
    :goto_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v0, v26

    if-lt v0, v3, :cond_3b

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_34

    .line 935
    iget-object v3, v5, Lcom/threed/jpct/Vectors;->alpha:[F

    aget v3, v3, v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 938
    :cond_34
    add-int/lit8 v3, v18, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_3e

    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_3e

    const/4 v9, 0x1

    .line 940
    .restart local v9    # "end":Z
    :goto_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertex2index:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Integer;

    .line 941
    .local v38, "pos":Ljava/lang/Integer;
    if-nez v38, :cond_3f

    .line 943
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    aget v55, v51, v8

    aput v55, v3, v54

    .line 944
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    aget v55, v52, v8

    aput v55, v3, v54

    .line 945
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    aget v55, v53, v8

    aput v55, v3, v54

    .line 947
    sget v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->BUFFER_SIZE:I

    move/from16 v0, v54

    if-eq v3, v0, :cond_35

    if-eqz v9, :cond_36

    .line 948
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    sget-object v54, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    .line 949
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    .line 952
    :cond_36
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    aget v55, v31, v8

    aput v55, v3, v54

    .line 953
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    aget v55, v32, v8

    aput v55, v3, v54

    .line 954
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    add-int/lit8 v55, v54, 0x1

    sput v55, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    aget v55, v33, v8

    aput v55, v3, v54

    .line 956
    sget v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->BUFFER_SIZE:I

    move/from16 v0, v54

    if-eq v3, v0, :cond_37

    if-eqz v9, :cond_38

    .line 957
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    sget-object v54, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    .line 958
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    .line 961
    :cond_38
    if-eqz v13, :cond_39

    .line 962
    invoke-virtual {v13, v8}, Lcom/threed/jpct/IntList;->add(I)V

    :cond_39
    move-object/from16 v3, p0

    .line 965
    invoke-virtual/range {v3 .. v9}, Lcom/threed/jpct/CompiledInstanceFP;->fillAttributes(ZLcom/threed/jpct/Vectors;[[FIIZ)V

    .line 967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v3}, Lcom/threed/jpct/FloatBufferWrapper;->position()I

    move-result v3

    sget v54, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    add-int v3, v3, v54

    add-int/lit8 v3, v3, -0x3

    div-int/lit8 v36, v3, 0x3

    .line 968
    .local v36, "pi":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertex2index:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v27

    move-object/from16 v1, v54

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 970
    const/16 v27, 0x0

    goto/16 :goto_17

    .line 908
    .end local v9    # "end":Z
    .end local v26    # "k":I
    .end local v36    # "pi":I
    .end local v38    # "pos":Ljava/lang/Integer;
    :cond_3a
    invoke-virtual/range {v27 .. v27}, Lcom/threed/jpct/GenericContainer;->clear()V

    goto/16 :goto_18

    .line 919
    .restart local v26    # "k":I
    :cond_3b
    if-nez v26, :cond_3d

    .line 920
    iget-object v0, v5, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v46, v0

    .line 921
    iget-object v0, v5, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v48, v0

    .line 922
    aget v3, v46, v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 923
    aget v3, v48, v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 918
    :cond_3c
    :goto_1b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_19

    .line 925
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget v3, v3, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    const/16 v54, 0x1

    move/from16 v0, v54

    if-le v3, v0, :cond_3c

    .line 926
    iget-object v3, v5, Lcom/threed/jpct/Vectors;->uMul:[[F

    add-int/lit8 v54, v26, -0x1

    aget-object v46, v3, v54

    .line 927
    iget-object v3, v5, Lcom/threed/jpct/Vectors;->vMul:[[F

    add-int/lit8 v54, v26, -0x1

    aget-object v48, v3, v54

    .line 928
    aget v3, v46, v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 929
    aget v3, v48, v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    goto :goto_1b

    .line 938
    :cond_3e
    const/4 v9, 0x0

    goto/16 :goto_1a

    .line 973
    .restart local v9    # "end":Z
    .restart local v38    # "pos":Ljava/lang/Integer;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move/from16 v0, v54

    int-to-short v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 975
    if-eqz v9, :cond_31

    .line 976
    sget v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    if-eqz v3, :cond_40

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    sget-object v54, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    .line 978
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    .line 980
    :cond_40
    sget v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    if-eqz v3, :cond_41

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    sget-object v54, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    .line 982
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    .line 984
    :cond_41
    sget v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosThree:I

    if-eqz v3, :cond_42

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    sget-object v54, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferThree:[I

    const/16 v55, 0x0

    sget v56, Lcom/threed/jpct/CompiledInstanceFP;->sbPosThree:I

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 986
    const/4 v3, 0x0

    sput v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosThree:I

    .line 988
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    if-eqz v3, :cond_43

    .line 989
    const/16 v47, 0x0

    .local v47, "ui":I
    :goto_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    array-length v3, v3

    move/from16 v0, v47

    if-lt v0, v3, :cond_45

    .line 996
    .end local v47    # "ui":I
    :cond_43
    const/16 v47, 0x0

    .restart local v47    # "ui":I
    :goto_1d
    const/4 v3, 0x4

    move/from16 v0, v47

    if-ge v0, v3, :cond_31

    .line 997
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosMT:[I

    aget v3, v3, v47

    if-eqz v3, :cond_44

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v47

    sget-object v54, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferMT:[[I

    aget-object v54, v54, v47

    const/16 v55, 0x0

    sget-object v56, Lcom/threed/jpct/CompiledInstanceFP;->sbPosMT:[I

    aget v56, v56, v47

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 999
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosMT:[I

    const/16 v54, 0x0

    aput v54, v3, v47

    .line 996
    :cond_44
    add-int/lit8 v47, v47, 0x1

    goto :goto_1d

    .line 990
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    aget v3, v3, v47

    if-eqz v3, :cond_46

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferAttrs:[[I

    move-object/from16 v54, v0

    aget-object v54, v54, v47

    const/16 v55, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    move-object/from16 v56, v0

    aget v56, v56, v47

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    const/16 v54, 0x0

    aput v54, v3, v47

    .line 989
    :cond_46
    add-int/lit8 v47, v47, 0x1

    goto :goto_1c

    .line 1009
    .end local v7    # "pind":I
    .end local v8    # "coord":I
    .end local v9    # "end":Z
    .end local v26    # "k":I
    .end local v38    # "pos":Ljava/lang/Integer;
    .end local v47    # "ui":I
    :cond_47
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    goto/16 :goto_15

    .line 1038
    .end local v27    # "key":Lcom/threed/jpct/GenericContainer;
    .end local v35    # "p":I
    .end local v41    # "start":I
    .restart local v14    # "cnt":I
    .restart local v16    # "cs":I
    .restart local v17    # "ei":I
    .restart local v20    # "ie":I
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v54

    aput v54, v3, v14

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    aget v3, v3, v14

    if-eq v3, v14, :cond_49

    .line 1040
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->needsCoordMapper:Z

    .line 1042
    :cond_49
    add-int/lit8 v14, v14, 0x1

    .line 1037
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_12

    .line 1048
    :cond_4a
    const-string v3, "Vertex indices will be accessed directly!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1073
    .end local v5    # "objVectors":Lcom/threed/jpct/Vectors;
    .end local v6    # "tangentVectors":[[F
    .end local v14    # "cnt":I
    .end local v16    # "cs":I
    .end local v17    # "ei":I
    .end local v20    # "ie":I
    .end local v21    # "ii":I
    .end local v23    # "iu":I
    .end local v37    # "points":[[I
    .end local v46    # "u":[F
    .end local v48    # "v":[F
    .restart local v12    # "cLength":I
    .restart local v26    # "k":I
    .restart local v42    # "tLength":I
    .restart local v43    # "tanLength":I
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v26

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1072
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_7

    .line 1078
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v54, v0

    aget-object v54, v54, v26

    invoke-virtual/range {v54 .. v54}, Ljava/nio/IntBuffer;->position()I

    move-result v54

    aput v54, v3, v26

    .line 1079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v26

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1077
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_8

    .line 1100
    .restart local v22    # "it":I
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v22

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Lcom/threed/jpct/CompiledInstanceFP;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    aput-object v3, v54, v22

    .line 1099
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_9

    .line 1104
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    move-object/from16 v55, v0

    aget v55, v55, v26

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Lcom/threed/jpct/CompiledInstanceFP;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    aput-object v3, v54, v26

    .line 1103
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    .line 1110
    .end local v22    # "it":I
    :cond_4f
    const-string v3, "flat"

    goto/16 :goto_b

    .line 1111
    :cond_50
    const-string v3, ""

    goto/16 :goto_c
.end method

.method protected compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V
    .locals 13
    .param p1, "gl11"    # Ljavax/microedition/khronos/opengles/GL11;
    .param p2, "renderer"    # Lcom/threed/jpct/GLRenderer;

    .prologue
    .line 1125
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-boolean v8, v8, Lcom/threed/jpct/Object3D;->sharing:Z

    if-eqz v8, :cond_3

    .line 1128
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v2, v8, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    .line 1129
    .local v2, "cis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/CompiledInstance;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1130
    .local v3, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 1369
    .end local v2    # "cis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/CompiledInstance;>;"
    .end local v3    # "end":I
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 1131
    .restart local v2    # "cis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/CompiledInstance;>;"
    .restart local v3    # "end":I
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/CompiledInstance;

    .line 1132
    .local v1, "ci":Lcom/threed/jpct/CompiledInstance;
    iget-boolean v8, v1, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    if-eqz v8, :cond_2

    .line 1133
    invoke-virtual {v1, p1, p2}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 1130
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1139
    .end local v1    # "ci":Lcom/threed/jpct/CompiledInstance;
    .end local v2    # "cis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/CompiledInstance;>;"
    .end local v3    # "end":I
    .end local v4    # "i":I
    :cond_3
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->buffersCreated:Z

    if-nez v8, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v8, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v8, :cond_0

    .line 1143
    :cond_4
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->hasBeenRefilled:Z

    if-eqz v8, :cond_0

    .line 1147
    :cond_5
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->hasBeenVirtualized:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    if-eqz v8, :cond_6

    .line 1148
    new-instance v9, Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v10, Ljava/nio/ByteBuffer;

    const-string v11, "vertices"

    invoke-virtual {v8, p0, v10, v11}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-direct {v9, v8}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    .line 1149
    new-instance v9, Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v10, Ljava/nio/ByteBuffer;

    const-string v11, "normals"

    invoke-virtual {v8, p0, v10, v11}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-direct {v9, v8}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    .line 1150
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/IntBuffer;

    const-string v10, "colors"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/IntBuffer;

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    .line 1151
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/IntBuffer;

    const-string v10, "tangents"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/IntBuffer;

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    .line 1152
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/ShortBuffer;

    const-string v10, "indices"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ShortBuffer;

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    .line 1154
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    if-lt v4, v8, :cond_1a

    .line 1159
    .end local v4    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v8}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    .line 1160
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v8}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    .line 1161
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_7

    .line 1162
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1164
    :cond_7
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_8

    .line 1165
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1167
    :cond_8
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    if-eqz v8, :cond_9

    .line 1168
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1170
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    if-lt v4, v8, :cond_1b

    .line 1176
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v8, :cond_a

    .line 1177
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    array-length v8, v8

    if-lt v5, v8, :cond_1d

    .line 1182
    .end local v5    # "k":I
    :cond_a
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->hasBeenRefilled:Z

    .line 1184
    iput-object p2, p0, Lcom/threed/jpct/CompiledInstanceFP;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    .line 1186
    const v6, 0x88e4

    .line 1187
    .local v6, "mode":I
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    if-eqz v8, :cond_b

    .line 1188
    const v6, 0x88e8

    .line 1191
    :cond_b
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->normalsId:I

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->buffersCreated:Z

    if-nez v8, :cond_12

    .line 1192
    :cond_c
    const/4 v8, 0x1

    new-array v0, v8, [I

    .line 1194
    .local v0, "buffer":[I
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v8, :cond_d

    .line 1195
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    .line 1199
    :cond_d
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1200
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->normalsId:I

    .line 1203
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1204
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->verticesId:I

    .line 1206
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->normalsId:I

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->verticesId:I

    if-nez v8, :cond_1e

    .line 1208
    :cond_e
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstanceFP;->bufferError()V

    .line 1214
    :goto_5
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_f

    .line 1215
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1216
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colorsId:I

    .line 1217
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colorsId:I

    if-nez v8, :cond_1f

    .line 1219
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstanceFP;->bufferError()V

    .line 1225
    :cond_f
    :goto_6
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_10

    .line 1226
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1227
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    .line 1228
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    if-nez v8, :cond_20

    .line 1230
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstanceFP;->bufferError()V

    .line 1236
    :cond_10
    :goto_7
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v8, :cond_11

    .line 1237
    const/4 v4, 0x0

    :goto_8
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    array-length v8, v8

    if-lt v4, v8, :cond_21

    .line 1249
    :cond_11
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    .line 1250
    const/4 v4, 0x0

    :goto_9
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    if-lt v4, v8, :cond_23

    .line 1261
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indexed:Z

    if-eqz v8, :cond_12

    .line 1263
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1264
    const/4 v8, 0x0

    aget v8, v0, v8

    iput v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indicesId:I

    .line 1265
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indicesId:I

    if-nez v8, :cond_25

    .line 1267
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstanceFP;->bufferError()V

    .line 1274
    .end local v0    # "buffer":[I
    :cond_12
    :goto_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->buffersCreated:Z

    .line 1276
    const v8, 0x8892

    iget v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->normalsId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1277
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v8}, Lcom/threed/jpct/FloatBufferWrapper;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1278
    .local v7, "vertexSize":I
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v9, v9, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1280
    const v8, 0x8892

    iget v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->verticesId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1281
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v8}, Lcom/threed/jpct/FloatBufferWrapper;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1282
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v9, v9, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1285
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_13

    .line 1286
    const v8, 0x8892

    iget v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->colorsId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1287
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1288
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1291
    :cond_13
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_14

    .line 1292
    const v8, 0x8892

    iget v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1293
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1294
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1298
    :cond_14
    const/4 v4, 0x0

    :goto_b
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    if-lt v4, v8, :cond_26

    .line 1304
    const v8, 0x8892

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1307
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    if-eqz v8, :cond_15

    .line 1308
    const/4 v4, 0x0

    :goto_c
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    array-length v8, v8

    if-lt v4, v8, :cond_27

    .line 1313
    const v8, 0x8892

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1316
    :cond_15
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indexed:Z

    if-eqz v8, :cond_16

    .line 1318
    const v8, 0x8893

    iget v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->indicesId:I

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1319
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1320
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v8

    mul-int/lit8 v7, v8, 0x2

    .line 1321
    const v8, 0x8893

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1322
    const v8, 0x8893

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1325
    :cond_16
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->firstCompile:Z

    if-eqz v8, :cond_18

    .line 1326
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_17

    .line 1327
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "VBO created for object \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

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

    .line 1329
    :cond_17
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->firstCompile:Z

    .line 1332
    :cond_18
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v8}, Lcom/threed/jpct/Virtualizer;->isFull()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1333
    iget-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->hasBeenVirtualized:Z

    if-eqz v8, :cond_29

    .line 1334
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    .line 1335
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    .line 1336
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    .line 1337
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    .line 1338
    const/4 v4, 0x0

    :goto_d
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    if-lt v4, v8, :cond_28

    .line 1361
    :cond_19
    new-instance v8, Lcom/threed/jpct/FloatBufferWrapper;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    goto/16 :goto_1

    .line 1155
    .end local v6    # "mode":I
    .end local v7    # "vertexSize":I
    :cond_1a
    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

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

    .line 1154
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1171
    :cond_1b
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v4

    if-eqz v8, :cond_1c

    .line 1172
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1170
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1178
    .restart local v5    # "k":I
    :cond_1d
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 1177
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 1210
    .end local v5    # "k":I
    .restart local v0    # "buffer":[I
    .restart local v6    # "mode":I
    :cond_1e
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->normalsId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    .line 1211
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->verticesId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto/16 :goto_5

    .line 1221
    :cond_1f
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colorsId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto/16 :goto_6

    .line 1232
    :cond_20
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto/16 :goto_7

    .line 1238
    :cond_21
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1239
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    const/4 v9, 0x0

    aget v9, v0, v9

    aput v9, v8, v4

    .line 1240
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    aget v8, v8, v4

    if-nez v8, :cond_22

    .line 1242
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstanceFP;->bufferError()V

    .line 1237
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 1244
    :cond_22
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    aget v8, v8, v4

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto :goto_e

    .line 1251
    :cond_23
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1252
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    const/4 v9, 0x0

    aget v9, v0, v9

    aput v9, v8, v4

    .line 1253
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    aget v8, v8, v4

    if-nez v8, :cond_24

    .line 1255
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstanceFP;->bufferError()V

    .line 1250
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 1257
    :cond_24
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    aget v8, v8, v4

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto :goto_f

    .line 1269
    :cond_25
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indicesId:I

    invoke-virtual {p2, v8}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto/16 :goto_a

    .line 1299
    .end local v0    # "buffer":[I
    .restart local v7    # "vertexSize":I
    :cond_26
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    aget v9, v9, v4

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1300
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1301
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v9, v9, v4

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1298
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 1309
    :cond_27
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    aget v9, v9, v4

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1310
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v7, v8, 0x4

    .line 1311
    const v8, 0x8892

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    aget-object v9, v9, v4

    invoke-interface {p1, v8, v7, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1308
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 1339
    :cond_28
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    aput-object v9, v8, v4

    .line 1338
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    .line 1342
    :cond_29
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->hasBeenVirtualized:Z

    .line 1343
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v9}, Lcom/threed/jpct/FloatBufferWrapper;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    const-string v10, "vertices"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1344
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v9}, Lcom/threed/jpct/FloatBufferWrapper;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    const-string v10, "normals"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1345
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    .line 1346
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    const-string v10, "colors"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1347
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    .line 1348
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    const-string v10, "tangents"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1349
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    .line 1350
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    const-string v10, "indices"

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1351
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    .line 1352
    const/4 v4, 0x0

    :goto_10
    iget v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    if-ge v4, v8, :cond_19

    .line 1353
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v9, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v9, v9, v4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "multiTextures"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p0, v9, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    .line 1354
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    aput-object v9, v8, v4

    .line 1352
    add-int/lit8 v4, v4, 0x1

    goto :goto_10
.end method

.method copy(Lcom/threed/jpct/CompiledInstance;)V
    .locals 8
    .param p1, "ci"    # Lcom/threed/jpct/CompiledInstance;

    .prologue
    const/4 v3, 0x0

    .line 609
    instance-of v4, p1, Lcom/threed/jpct/CompiledInstanceFP;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 610
    check-cast v1, Lcom/threed/jpct/CompiledInstanceFP;

    .line 612
    .local v1, "cis":Lcom/threed/jpct/CompiledInstanceFP;
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    .line 613
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->tris:Lcom/threed/jpct/IntList;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->tris:Lcom/threed/jpct/IntList;

    .line 614
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    .line 615
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    .line 616
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    .line 617
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    .line 618
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->sbPosAttrs:[I

    .line 619
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    .line 620
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    .line 621
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->vertex2index:Ljava/util/HashMap;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertex2index:Ljava/util/HashMap;

    .line 622
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    .line 623
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    iput-boolean v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    .line 624
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    .line 625
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    .line 626
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->indexed:Z

    iput-boolean v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->indexed:Z

    .line 627
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->staticUV:Z

    iput-boolean v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->staticUV:Z

    .line 628
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->treeID:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->treeID:I

    .line 629
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->key:Ljava/lang/String;

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->key:Ljava/lang/String;

    .line 630
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->indexCount:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->indexCount:I

    .line 631
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    .line 633
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->needsCoordMapper:Z

    iput-boolean v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->needsCoordMapper:Z

    .line 634
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->coordMapper:[I

    .line 635
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    .line 636
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    .line 638
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->buffersCreated:Z

    iput-boolean v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->buffersCreated:Z

    .line 639
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->verticesId:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->verticesId:I

    .line 640
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->normalsId:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->normalsId:I

    .line 641
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->indicesId:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->indicesId:I

    .line 642
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    .line 643
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->vboPossible:Z

    iput-boolean v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->vboPossible:Z

    .line 644
    iget v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->colorsId:I

    iput v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->colorsId:I

    .line 646
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    if-eqz v4, :cond_0

    .line 647
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "c":I
    iget-object v5, v1, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_3

    .line 655
    .end local v0    # "c":I
    :cond_0
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    if-eqz v4, :cond_1

    .line 656
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    .line 657
    const/4 v0, 0x0

    .line 658
    .restart local v0    # "c":I
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    array-length v5, v4

    :goto_1
    if-lt v3, v5, :cond_4

    .line 664
    .end local v0    # "c":I
    :cond_1
    iget-boolean v3, p0, Lcom/threed/jpct/CompiledInstanceFP;->buffersCreated:Z

    if-eqz v3, :cond_2

    .line 665
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Object \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v4}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' shares VBOs ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->verticesId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->normalsId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") with object \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    iget-object v4, v4, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    invoke-virtual {v4}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 670
    .end local v1    # "cis":Lcom/threed/jpct/CompiledInstanceFP;
    :cond_2
    return-void

    .line 649
    .restart local v0    # "c":I
    .restart local v1    # "cis":Lcom/threed/jpct/CompiledInstanceFP;
    :cond_3
    aget v2, v5, v4

    .line 650
    .local v2, "i":I
    iget-object v7, p0, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    aput v2, v7, v0

    .line 651
    add-int/lit8 v0, v0, 0x1

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 658
    .end local v2    # "i":I
    :cond_4
    aget v2, v4, v3

    .line 659
    .restart local v2    # "i":I
    iget-object v6, p0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    aput v2, v6, v0

    .line 660
    add-int/lit8 v0, v0, 0x1

    .line 658
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public declared-synchronized fill()V
    .locals 6

    .prologue
    .line 673
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->sbPosMT:[I

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 675
    :try_start_1
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstanceFP;->_fill()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v1, "State: "

    .line 678
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/threed/jpct/CompiledInstanceFP;->sbPosMT:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/threed/jpct/CompiledInstanceFP;->sbPosMT:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/threed/jpct/CompiledInstanceFP;->sbPosMT:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/threed/jpct/CompiledInstanceFP;->sbPosMT:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/threed/jpct/CompiledInstanceFP;->sbPosOne:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/threed/jpct/CompiledInstanceFP;->sbPosTwo:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/threed/jpct/CompiledInstanceFP;->sbPosThree:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 680
    throw v0

    .line 673
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
    .line 33
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    .line 34
    .local v10, "gl10":Ljavax/microedition/khronos/opengles/GL10;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 36
    .local v11, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    .line 37
    .local v4, "backType":I
    if-eqz p8, :cond_2

    const/16 v31, 0x1

    .line 38
    .local v31, "wireFrame":Z
    :goto_0
    if-eqz v31, :cond_0

    .line 39
    const/16 v33, 0x3

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    .line 40
    const/16 v33, 0x2

    move/from16 v0, p8

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 41
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    .line 45
    :cond_0
    sget-object v16, Lcom/threed/jpct/CompiledInstance;->lights4:[F

    .line 46
    .local v16, "lights4":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->obj:Lcom/threed/jpct/Object3D;

    move-object/from16 v21, v0

    .line 48
    .local v21, "obj":Lcom/threed/jpct/Object3D;
    invoke-virtual/range {v21 .. v21}, Lcom/threed/jpct/Object3D;->getShaderInternal()Lcom/threed/jpct/GLSLShader;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setShader(Lcom/threed/jpct/GLSLShader;)V

    .line 50
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 52
    .local v22, "objCompiledSize":I
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->sharing:Z

    move/from16 v33, v0

    if-nez v33, :cond_4

    .line 54
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 55
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

    .line 56
    const-string v33, "Number of compiled instances don\'t match...can\'t share data!"

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 37
    .end local v16    # "lights4":[F
    .end local v21    # "obj":Lcom/threed/jpct/Object3D;
    .end local v22    # "objCompiledSize":I
    .end local v31    # "wireFrame":Z
    :cond_2
    const/16 v31, 0x0

    goto :goto_0

    .line 60
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

    .line 81
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstanceFP;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 82
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->rendererID:I

    .line 83
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_4

    .line 84
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

    .line 88
    .end local v14    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->filled:Z

    move/from16 v33, v0

    if-nez v33, :cond_9

    .line 89
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

    .line 33
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

    .line 61
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

    .line 62
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

    .line 64
    .local v25, "scis":Lcom/threed/jpct/CompiledInstance;
    sget-boolean v33, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v33, :cond_8

    if-eqz v11, :cond_8

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    move/from16 v33, v0

    if-eqz v33, :cond_8

    .line 68
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

    .line 69
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    .line 70
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

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->rendererID:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 72
    :cond_6
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    .line 74
    :cond_7
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 75
    move/from16 v0, p1

    move-object/from16 v1, v25

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    .line 78
    :cond_8
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/threed/jpct/CompiledInstance;->copy(Lcom/threed/jpct/CompiledInstance;)V

    .line 79
    const/16 v33, 0x1

    move/from16 v0, v33

    iput-boolean v0, v5, Lcom/threed/jpct/CompiledInstance;->filled:Z

    .line 60
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 93
    .end local v5    # "dcis":Lcom/threed/jpct/CompiledInstance;
    .end local v14    # "i":I
    .end local v25    # "scis":Lcom/threed/jpct/CompiledInstance;
    :cond_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    move-object/from16 v32, v0

    .line 94
    .local v32, "world":Lcom/threed/jpct/World;
    if-eqz v32, :cond_1

    .line 98
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v15, v0, Lcom/threed/jpct/Lights;->lightCnt:I

    .line 100
    .local v15, "lightCnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-nez v33, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->colorsId:I

    move/from16 v33, v0

    if-nez v33, :cond_31

    const/16 v30, 0x0

    .line 101
    .local v30, "vertexAlpha":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-nez v33, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    move/from16 v33, v0

    if-nez v33, :cond_32

    const/4 v12, 0x0

    .line 103
    .local v12, "hasTangents":Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->rendererID:I

    move/from16 v33, v0

    const v34, -0x3b9ac9ff

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_33

    .line 104
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->rendererID:I

    .line 144
    :cond_a
    :goto_5
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    .line 146
    const/4 v6, 0x0

    check-cast v6, [F

    .line 147
    .local v6, "dump":[F
    const/16 v33, 0x1

    move/from16 v0, v22

    move/from16 v1, v33

    if-le v0, v1, :cond_3a

    const/16 v19, 0x1

    .line 149
    .local v19, "multi":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->dumpy:[F

    move-object/from16 v33, v0

    if-nez v33, :cond_b

    .line 150
    if-eqz v19, :cond_3b

    .line 151
    const/16 v33, 0x10

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->dumpy:[F

    .line 157
    :cond_b
    :goto_7
    if-eqz v19, :cond_c

    .line 158
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "dump":[F
    check-cast v6, [F

    .line 160
    .restart local v6    # "dump":[F
    :cond_c
    if-nez v6, :cond_d

    .line 162
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->mo:Lcom/threed/jpct/Matrix;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 164
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual/range {p6 .. p6}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 165
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual/range {v33 .. v33}, Lcom/threed/jpct/Matrix;->transformToGL()V

    .line 172
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->mo:Lcom/threed/jpct/Matrix;

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

    .line 173
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->mo:Lcom/threed/jpct/Matrix;

    sget-object v34, Lcom/threed/jpct/CompiledInstanceFP;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual/range {v33 .. v34}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 174
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->mo:Lcom/threed/jpct/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->dumpy:[F

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object v6

    .line 176
    if-eqz v19, :cond_d

    .line 177
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_d
    const/16 v33, 0x1700

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 182
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 183
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 185
    const/16 v23, 0x0

    .line 187
    .local v23, "resetCulling":Z
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->doCulling:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3c

    .line 188
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    move/from16 v33, v0

    if-eqz v33, :cond_e

    .line 189
    const/16 v33, 0x404

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 190
    const/16 v23, 0x1

    .line 196
    :cond_e
    :goto_8
    if-nez v31, :cond_48

    .line 198
    if-eqz v30, :cond_f

    .line 200
    const/16 v33, 0x3

    const/high16 v34, 0x3f800000    # 1.0f

    aput v34, p4, v33

    .line 203
    :cond_f
    const/16 v33, 0xb53

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 204
    const/16 v33, 0x408

    const/16 v34, 0x1600

    const/16 v35, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, p4

    move/from16 v3, v35

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 205
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->allOnes3:[F

    const/16 v34, 0x3

    const/16 v35, 0x3

    aget v35, p4, v35

    aput v35, v33, v34

    .line 209
    const/16 v20, 0x0

    .line 210
    .local v20, "nSum":F
    const/16 v33, 0x1

    move/from16 v0, v22

    move/from16 v1, v33

    if-le v0, v1, :cond_10

    .line 211
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    if-ge v14, v15, :cond_10

    const/16 v33, 0x8

    move/from16 v0, v33

    if-lt v14, v0, :cond_3d

    .line 224
    .end local v14    # "i":I
    :cond_10
    if-eqz v30, :cond_11

    .line 227
    const/16 v33, 0xb57

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 230
    :cond_11
    sget v33, Lcom/threed/jpct/CompiledInstanceFP;->chkSum:F

    cmpl-float v33, v33, v20

    if-nez v33, :cond_12

    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->lastObj:Lcom/threed/jpct/Object3D;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_16

    .line 232
    :cond_12
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    move/from16 v33, v0

    if-nez v33, :cond_13

    .line 233
    const/16 v33, 0x408

    const/16 v34, 0x1200

    sget-object v35, Lcom/threed/jpct/CompiledInstanceFP;->ALL_ONES_3:[F

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 234
    const/16 v33, 0x408

    const/16 v34, 0x1201

    sget-object v35, Lcom/threed/jpct/CompiledInstanceFP;->allOnes3:[F

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 235
    const/16 v33, 0x408

    const/16 v34, 0x1202

    sget-object v35, Lcom/threed/jpct/CompiledInstanceFP;->allOnes3:[F

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 238
    :cond_13
    sget v33, Lcom/threed/jpct/CompiledInstanceFP;->lastLightCnt:I

    move/from16 v0, v33

    if-ge v15, v0, :cond_14

    .line 240
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_a
    sget v33, Lcom/threed/jpct/CompiledInstanceFP;->lastLightCnt:I

    move/from16 v0, v33

    if-lt v14, v0, :cond_3f

    .line 245
    .end local v14    # "i":I
    :cond_14
    const/16 v33, 0x0

    sput v33, Lcom/threed/jpct/CompiledInstanceFP;->lastLightCnt:I

    .line 247
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_b
    if-ge v14, v15, :cond_15

    const/16 v33, 0x8

    move/from16 v0, v33

    if-lt v14, v0, :cond_40

    .line 305
    :cond_15
    sput-object v21, Lcom/threed/jpct/CompiledInstanceFP;->lastObj:Lcom/threed/jpct/Object3D;

    .line 306
    sput v20, Lcom/threed/jpct/CompiledInstanceFP;->chkSum:F

    .line 309
    .end local v14    # "i":I
    :cond_16
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    move/from16 v33, v0

    if-eqz v33, :cond_17

    .line 310
    const/16 v33, 0x1d00

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 316
    .end local v20    # "nSum":F
    :cond_17
    :goto_c
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 318
    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    .line 320
    .local v13, "hook":Lcom/threed/jpct/IRenderHook;
    if-eqz v13, :cond_18

    .line 321
    if-eqz p4, :cond_49

    const/16 v33, 0x3

    aget v33, p4, v33

    :goto_d
    move/from16 v0, v33

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->setTransparency(F)V

    .line 322
    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->setCurrentObject3D(Lcom/threed/jpct/Object3D;)V

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->beforeRendering(I)V

    .line 326
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    move-result-object v27

    .line 327
    .local v27, "shader":Lcom/threed/jpct/GLSLShader;
    if-eqz v27, :cond_19

    .line 328
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/threed/jpct/GLSLShader;->directMode:Z

    .line 330
    :cond_19
    if-eqz v13, :cond_1a

    .line 331
    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->setCurrentShader(Lcom/threed/jpct/GLSLShader;)V

    .line 334
    :cond_1a
    sget-boolean v33, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v33, :cond_1b

    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->vboPossible:Z

    move/from16 v33, v0

    if-nez v33, :cond_53

    .line 337
    :cond_1b
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->lastVertexBuffer:Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_4e

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    move-object/from16 v33, v0

    sput-object v33, Lcom/threed/jpct/CompiledInstanceFP;->lastVertexBuffer:Ljava/nio/Buffer;

    .line 339
    const/16 v33, 0x1406

    const/16 v34, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    move-object/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 340
    const/16 v33, 0x3

    const/16 v34, 0x1406

    const/16 v35, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 342
    const v33, 0x8075

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 343
    const v33, 0x8074

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 344
    if-nez v30, :cond_4a

    .line 345
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 351
    :goto_e
    if-nez v12, :cond_4b

    .line 352
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 357
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1c

    .line 358
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_4c

    .line 363
    .end local v14    # "i":I
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    .line 364
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_4d

    .line 390
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

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_25

    .line 391
    :cond_1e
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v29

    .line 392
    .local v29, "tm":Lcom/threed/jpct/TextureManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tex0:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->lastTex0:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    .line 393
    :cond_1f
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->lastTex0:I

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->lastTex0:I

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

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->tex0:I

    .line 396
    :cond_20
    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tex1:I

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

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->lastTex1:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_22

    .line 397
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    move/from16 v34, v0

    aget v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->lastTex1:I

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->lastTex1:I

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

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->tex1:I

    .line 401
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tex0:I

    move/from16 v28, v0

    .line 402
    .local v28, "tex":I
    const/16 v24, 0x0

    .line 403
    .local v24, "s":I
    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_23

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tex1:I

    move/from16 v28, v0

    .line 405
    const/16 v24, 0x1

    .line 409
    :cond_23
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    move-object/from16 v33, v0

    aget v33, v33, v24

    move/from16 v0, v33

    move/from16 v1, v28

    if-eq v0, v1, :cond_24

    .line 410
    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 418
    :cond_24
    const/16 v33, 0x1702

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 419
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 420
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 421
    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, 0x3f000000    # 0.5f

    const/high16 v35, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 422
    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, 0x3f000000    # 0.5f

    const/high16 v35, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 423
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 424
    const/16 v33, 0x1700

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 428
    .end local v24    # "s":I
    .end local v28    # "tex":I
    .end local v29    # "tm":Lcom/threed/jpct/TextureManager;
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->indexed:Z

    move/from16 v33, v0

    if-eqz v33, :cond_51

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->indexCount:I

    move/from16 v34, v0

    const/16 v35, 0x1403

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->indices:Ljava/nio/ShortBuffer;

    move-object/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 435
    :goto_12
    if-eqz v13, :cond_26

    invoke-interface {v13}, Lcom/threed/jpct/IRenderHook;->repeatRendering()Z

    move-result v33

    .line 427
    if-nez v33, :cond_25

    .line 437
    :cond_26
    if-eqz v12, :cond_27

    .line 438
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 441
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-eqz v33, :cond_28

    .line 442
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_52

    .line 447
    .end local v14    # "i":I
    :cond_28
    if-eqz v13, :cond_29

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->afterRendering(I)V

    .line 571
    :cond_29
    :goto_14
    if-eqz v27, :cond_2a

    .line 572
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/threed/jpct/GLSLShader;->directMode:Z

    .line 575
    :cond_2a
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2b

    .line 576
    const/16 v33, 0x1702

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 577
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 580
    :cond_2b
    const/16 v33, 0x1700

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 581
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 583
    if-eqz v30, :cond_2c

    .line 584
    const/16 v33, 0xb57

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 587
    :cond_2c
    if-eqz v23, :cond_2d

    .line 588
    const/16 v33, 0x405

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 591
    :cond_2d
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2e

    .line 592
    const/16 v33, 0x1d01

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 595
    :cond_2e
    if-eqz v31, :cond_2f

    .line 596
    const/16 v33, 0xb50

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 599
    :cond_2f
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->doCulling:Z

    move/from16 v33, v0

    if-nez v33, :cond_30

    .line 600
    const/16 v33, 0xb44

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 603
    :cond_30
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->closeShader()V

    .line 604
    move-object/from16 v0, p0

    iput v4, v0, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    goto/16 :goto_1

    .line 100
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

    .line 101
    .restart local v30    # "vertexAlpha":Z
    :cond_32
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 106
    .restart local v12    # "hasTangents":Z
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->rendererID:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, p1

    if-eq v0, v1, :cond_a

    .line 108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->buffersCreated:Z

    move/from16 v33, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v33, :cond_36

    .line 110
    :try_start_3
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_34

    .line 111
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

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->rendererID:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 113
    :cond_34
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->buffersCreated:Z

    .line 114
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    move-object/from16 v33, v0

    if-eqz v33, :cond_35

    .line 115
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 116
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_15
    move/from16 v0, v22

    if-lt v14, v0, :cond_37

    .line 132
    .end local v14    # "i":I
    :cond_35
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstanceFP;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 133
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->dynamic:Z

    move/from16 v33, v0

    if-eqz v33, :cond_36

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstanceFP;->fill()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    :cond_36
    :goto_16
    :try_start_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->rendererID:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 117
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

    .line 118
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

    .line 120
    .restart local v25    # "scis":Lcom/threed/jpct/CompiledInstance;
    sget-boolean v33, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v33, :cond_39

    if-eqz v11, :cond_39

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    move/from16 v33, v0

    if-eqz v33, :cond_39

    move-object/from16 v0, v25

    iget v0, v0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, p1

    if-eq v0, v1, :cond_39

    .line 121
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_38

    .line 122
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

    .line 124
    :cond_38
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    .line 125
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 126
    move/from16 v0, p1

    move-object/from16 v1, v25

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    .line 129
    :cond_39
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/threed/jpct/CompiledInstance;->copy(Lcom/threed/jpct/CompiledInstance;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_15

    .line 136
    .end local v5    # "dcis":Lcom/threed/jpct/CompiledInstance;
    .end local v14    # "i":I
    .end local v25    # "scis":Lcom/threed/jpct/CompiledInstance;
    :catch_0
    move-exception v7

    .line 137
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v33, "Unable to recover to use VBO...using normal vertex arrays instead!"

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_16

    .line 147
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "dump":[F
    :cond_3a
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 153
    .restart local v19    # "multi":Z
    :cond_3b
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->STATIC_DUMPY:[F

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->dumpy:[F

    goto/16 :goto_7

    .line 193
    .restart local v23    # "resetCulling":Z
    :cond_3c
    const/16 v33, 0xb44

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_8

    .line 212
    .restart local v14    # "i":I
    .restart local v20    # "nSum":F
    :cond_3d
    int-to-float v9, v14

    .line 213
    .local v9, "fi":F
    aget-object v17, p7, v14

    .line 214
    .local v17, "lightsi":[F
    const/16 v33, 0x0

    aget v33, v17, v33

    const v34, -0x39e3c400    # -9999.0f

    cmpl-float v33, v33, v34

    if-eqz v33, :cond_3e

    .line 215
    const v33, 0x3f37d567    # 0.7181f

    add-float v33, v33, v9

    const/16 v34, 0x0

    aget v34, v17, v34

    mul-float v33, v33, v34

    add-float v20, v20, v33

    .line 216
    const v33, 0x3f8ccccd    # 1.1f

    add-float v33, v33, v9

    const/16 v34, 0x1

    aget v34, v17, v34

    mul-float v33, v33, v34

    add-float v20, v20, v33

    .line 217
    const v33, 0x400f5c29    # 2.24f

    add-float v33, v33, v9

    const/16 v34, 0x2

    aget v34, v17, v34

    mul-float v33, v33, v34

    add-float v20, v20, v33

    .line 218
    const v33, 0x406449ba    # 3.567f

    add-float v33, v33, v9

    const/16 v34, 0x3

    aget v34, v17, v34

    mul-float v33, v33, v34

    add-float v20, v20, v33

    .line 219
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

    .line 211
    :cond_3e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 241
    .end local v9    # "fi":F
    .end local v17    # "lightsi":[F
    :cond_3f
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->LIGHTS:[I

    aget v33, v33, v14

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 240
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 248
    :cond_40
    aget-object v17, p7, v14

    .line 249
    .restart local v17    # "lightsi":[F
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->LIGHTS:[I

    aget v18, v33, v14

    .line 250
    .local v18, "lin":I
    const/16 v33, 0x0

    aget v33, v17, v33

    const v34, -0x39e3c400    # -9999.0f

    cmpl-float v33, v33, v34

    if-nez v33, :cond_41

    .line 251
    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 247
    :goto_17
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_b

    .line 253
    :cond_41
    sget v33, Lcom/threed/jpct/CompiledInstanceFP;->lastLightCnt:I

    add-int/lit8 v33, v33, 0x1

    sput v33, Lcom/threed/jpct/CompiledInstanceFP;->lastLightCnt:I

    .line 254
    sget v33, Lcom/threed/jpct/CompiledInstanceFP;->chkSum:F

    cmpl-float v33, v33, v20

    if-nez v33, :cond_44

    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->lastObj:Lcom/threed/jpct/Object3D;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_44

    const/16 v26, 0x0

    .line 256
    .local v26, "set":Z
    :goto_18
    if-eqz v26, :cond_43

    .line 257
    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 259
    const/16 v33, 0x0

    const/16 v34, 0x1

    aget v34, v17, v34

    aput v34, v16, v33

    .line 260
    const/16 v33, 0x1

    const/16 v34, 0x2

    aget v34, v17, v34

    aput v34, v16, v33

    .line 261
    const/16 v33, 0x2

    const/16 v34, 0x3

    aget v34, v17, v34

    aput v34, v16, v33

    .line 262
    const/16 v33, 0x3

    const/high16 v34, 0x3f800000    # 1.0f

    aput v34, v16, v33

    .line 263
    const/16 v33, 0x1203

    const/16 v34, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v16

    move/from16 v3, v34

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 266
    const/16 v33, 0x0

    const/16 v34, 0x4

    aget v34, v17, v34

    aput v34, v16, v33

    .line 267
    const/16 v33, 0x1

    const/16 v34, 0x5

    aget v34, v17, v34

    aput v34, v16, v33

    .line 268
    const/16 v33, 0x2

    const/16 v34, 0x6

    aget v34, v17, v34

    aput v34, v16, v33

    .line 269
    const/16 v33, 0x3

    const/16 v34, 0x0

    aput v34, v16, v33

    .line 270
    const/16 v33, 0x1201

    const/16 v34, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v16

    move/from16 v3, v34

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 272
    const/16 v33, 0x1200

    sget-object v34, Lcom/threed/jpct/CompiledInstanceFP;->ALL_ZEROS:[F

    const/16 v35, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 276
    const/16 v33, 0x0

    aget v33, v17, v33

    const/16 v34, 0x0

    cmpl-float v33, v33, v34

    if-ltz v33, :cond_45

    .line 277
    const/16 v33, 0x0

    aget v8, v17, v33

    .line 278
    .local v8, "f":F
    const/16 v33, 0x0

    cmpl-float v33, v8, v33

    if-nez v33, :cond_42

    .line 279
    const v8, 0x3a83126f    # 0.001f

    .line 281
    :cond_42
    const/16 v33, 0x1208

    const/high16 v34, 0x40800000    # 4.0f

    div-float v34, v34, v8

    move/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 287
    .end local v8    # "f":F
    :cond_43
    :goto_19
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->doSpecularLighting:Z

    move/from16 v33, v0

    if-nez v33, :cond_46

    .line 289
    const/16 v33, 0x1202

    sget-object v34, Lcom/threed/jpct/CompiledInstanceFP;->ALL_ZEROS:[F

    const/16 v35, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    goto/16 :goto_17

    .line 254
    .end local v26    # "set":Z
    :cond_44
    const/16 v26, 0x1

    goto/16 :goto_18

    .line 283
    .restart local v26    # "set":Z
    :cond_45
    const/16 v33, 0x1208

    const/16 v34, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    goto :goto_19

    .line 292
    :cond_46
    const/16 v33, 0x408

    const/16 v34, 0x1601

    sget v35, Lcom/threed/jpct/Config;->specPow:F

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 293
    if-nez v26, :cond_47

    .line 295
    const/16 v33, 0x0

    const/16 v34, 0x4

    aget v34, v17, v34

    aput v34, v16, v33

    .line 296
    const/16 v33, 0x1

    const/16 v34, 0x5

    aget v34, v17, v34

    aput v34, v16, v33

    .line 297
    const/16 v33, 0x2

    const/16 v34, 0x6

    aget v34, v17, v34

    aput v34, v16, v33

    .line 298
    const/16 v33, 0x3

    const/16 v34, 0x0

    aput v34, v16, v33

    .line 300
    :cond_47
    const/16 v33, 0x1202

    const/16 v34, 0x0

    move/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v16

    move/from16 v3, v34

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    goto/16 :goto_17

    .line 313
    .end local v14    # "i":I
    .end local v17    # "lightsi":[F
    .end local v18    # "lin":I
    .end local v20    # "nSum":F
    .end local v26    # "set":Z
    :cond_48
    const/16 v33, 0xb50

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_c

    .line 321
    .restart local v13    # "hook":Lcom/threed/jpct/IRenderHook;
    :cond_49
    const/high16 v33, 0x3f800000    # 1.0f

    goto/16 :goto_d

    .line 347
    .restart local v27    # "shader":Lcom/threed/jpct/GLSLShader;
    :cond_4a
    const/16 v33, 0x4

    const/16 v34, 0x140c

    const/16 v35, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->colors:Ljava/nio/IntBuffer;

    move-object/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 348
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto/16 :goto_e

    .line 354
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setTangents(Ljava/nio/Buffer;)V

    goto/16 :goto_f

    .line 359
    .restart local v14    # "i":I
    :cond_4c
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

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;Ljava/nio/Buffer;)V

    .line 358
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_10

    .line 365
    :cond_4d
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->stageMap:[I

    aget v33, v33, v14

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 366
    const v33, 0x8078

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 367
    const/16 v33, 0x2

    const/16 v34, 0x140c

    const/16 v35, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->multiTextures:[Ljava/nio/IntBuffer;

    move-object/from16 v36, v0

    aget-object v36, v36, v14

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v10, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 364
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_11

    .line 371
    .end local v14    # "i":I
    :cond_4e
    if-nez v30, :cond_4f

    .line 372
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 377
    :goto_1a
    if-nez v12, :cond_50

    .line 378
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 383
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1d

    .line 384
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v14, v0, :cond_1d

    .line 385
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

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;Ljava/nio/Buffer;)V

    .line 384
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    .line 374
    .end local v14    # "i":I
    :cond_4f
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_1a

    .line 380
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangents:Ljava/nio/IntBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setTangents(Ljava/nio/Buffer;)V

    goto :goto_1b

    .line 432
    :cond_51
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_12

    .line 443
    .restart local v14    # "i":I
    :cond_52
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

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributes:[Ljava/nio/IntBuffer;

    move-object/from16 v34, v0

    aget-object v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->unbindVertexAttributes(Lcom/threed/jpct/VertexAttributes;Ljava/nio/Buffer;)V

    .line 442
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .line 453
    .end local v14    # "i":I
    :cond_53
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/threed/jpct/CompiledInstanceFP;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    .line 455
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->lastVertexBuffer:Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_62

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    move-object/from16 v33, v0

    sput-object v33, Lcom/threed/jpct/CompiledInstanceFP;->lastVertexBuffer:Ljava/nio/Buffer;

    .line 458
    const v33, 0x8075

    move/from16 v0, v33

    invoke-interface {v11, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 459
    const v33, 0x8892

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->normalsId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 460
    const/16 v33, 0x1406

    const/16 v34, 0xc

    const/16 v35, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v11, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    .line 462
    const v33, 0x8074

    move/from16 v0, v33

    invoke-interface {v11, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 463
    const v33, 0x8892

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->verticesId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 464
    const/16 v33, 0x3

    const/16 v34, 0x1406

    const/16 v35, 0xc

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v11, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 466
    if-nez v30, :cond_5e

    .line 467
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 474
    :goto_1d
    if-nez v12, :cond_5f

    .line 475
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 480
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    move-object/from16 v33, v0

    if-eqz v33, :cond_54

    .line 481
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_60

    .line 486
    .end local v14    # "i":I
    :cond_54
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    .line 487
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_61

    .line 494
    const v33, 0x8892

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 518
    .end local v14    # "i":I
    :cond_55
    if-nez v31, :cond_5a

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5a

    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_5a

    .line 519
    :cond_56
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v29

    .line 520
    .restart local v29    # "tm":Lcom/threed/jpct/TextureManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tex0:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_57

    .line 521
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

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

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->tex0:I

    .line 523
    :cond_57
    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_58

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tex1:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_58

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->endStage:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_58

    .line 524
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

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

    iput v0, v1, Lcom/threed/jpct/CompiledInstanceFP;->tex1:I

    .line 527
    :cond_58
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tex0:I

    move/from16 v28, v0

    .line 528
    .restart local v28    # "tex":I
    const/16 v24, 0x0

    .line 529
    .restart local v24    # "s":I
    sget-boolean v33, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v33, :cond_59

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tex1:I

    move/from16 v28, v0

    .line 531
    const/16 v24, 0x1

    .line 534
    :cond_59
    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    .line 536
    const/16 v33, 0x1702

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 537
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 538
    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 539
    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, 0x3f000000    # 0.5f

    const/high16 v35, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 540
    const/high16 v33, 0x3f000000    # 0.5f

    const/high16 v34, 0x3f000000    # 0.5f

    const/high16 v35, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 541
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 542
    const/16 v33, 0x1700

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 546
    .end local v24    # "s":I
    .end local v28    # "tex":I
    .end local v29    # "tm":Lcom/threed/jpct/TextureManager;
    :cond_5a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->indexed:Z

    move/from16 v33, v0

    if-eqz v33, :cond_65

    .line 547
    const v33, 0x8893

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->indicesId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->indexCount:I

    move/from16 v34, v0

    const/16 v35, 0x1403

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v11, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 549
    const v33, 0x8893

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 554
    :goto_21
    if-eqz v13, :cond_5b

    invoke-interface {v13}, Lcom/threed/jpct/IRenderHook;->repeatRendering()Z

    move-result v33

    .line 545
    if-nez v33, :cond_5a

    .line 556
    :cond_5b
    if-eqz v12, :cond_5c

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    move/from16 v33, v0

    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->clearTangents(I)V

    .line 560
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    move-object/from16 v33, v0

    if-eqz v33, :cond_5d

    .line 561
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v14, v0, :cond_66

    .line 566
    .end local v14    # "i":I
    :cond_5d
    if-eqz v13, :cond_29

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->polyIndex:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-interface {v13, v0}, Lcom/threed/jpct/IRenderHook;->afterRendering(I)V

    goto/16 :goto_14

    .line 469
    :cond_5e
    const v33, 0x8892

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->colorsId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 470
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 471
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

    .line 477
    :cond_5f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    move/from16 v33, v0

    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setTangents(I)V

    goto/16 :goto_1e

    .line 482
    .restart local v14    # "i":I
    :cond_60
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

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    move-object/from16 v34, v0

    aget v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;I)V

    .line 481
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1f

    .line 488
    :cond_61
    sget-object v33, Lcom/threed/jpct/CompiledInstanceFP;->stageMap:[I

    aget v33, v33, v14

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 489
    const v33, 0x8078

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 490
    const v33, 0x8892

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->multiTexturesIds:[I

    move-object/from16 v34, v0

    aget v34, v34, v14

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 491
    const/16 v33, 0x2

    const/16 v34, 0x140c

    const/16 v35, 0x8

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v11, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 487
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_20

    .line 496
    .end local v14    # "i":I
    :cond_62
    if-nez v30, :cond_63

    .line 497
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 505
    :goto_23
    if-nez v12, :cond_64

    .line 506
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    .line 511
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    move-object/from16 v33, v0

    if-eqz v33, :cond_55

    .line 512
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v14, v0, :cond_55

    .line 513
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

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    move-object/from16 v34, v0

    aget v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->bindVertexAttributes(Lcom/threed/jpct/VertexAttributes;I)V

    .line 512
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 499
    .end local v14    # "i":I
    :cond_63
    const v33, 0x8892

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->colorsId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 500
    const v33, 0x8076

    move/from16 v0, v33

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 501
    const/16 v33, 0x4

    const/16 v34, 0x140c

    const/16 v35, 0x10

    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v11, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 502
    const v33, 0x8892

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v11, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_23

    .line 508
    :cond_64
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->tangentsId:I

    move/from16 v33, v0

    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLRenderer;->setTangents(I)V

    goto/16 :goto_24

    .line 551
    :cond_65
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->primitiveType:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->cnt:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v10, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_21

    .line 562
    .restart local v14    # "i":I
    :cond_66
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

    iget-object v0, v0, Lcom/threed/jpct/CompiledInstanceFP;->attributesIds:[I

    move-object/from16 v34, v0

    aget v34, v34, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/GLRenderer;->unbindVertexAttributes(Lcom/threed/jpct/VertexAttributes;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 561
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_22
.end method
