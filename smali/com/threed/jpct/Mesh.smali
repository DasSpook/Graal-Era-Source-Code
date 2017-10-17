.class public final Lcom/threed/jpct/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COMPRESS:Z = true

.field public static final DONT_COMPRESS:Z = false

.field public static final SERIALIZE_ALL:I = 0x0

.field public static final SERIALIZE_LOW_PRECISION:I = 0x2

.field public static final SERIALIZE_VERTICES_ONLY:I = 0x1

.field private static final serialVersionUID:J = 0x2L

.field private static verts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/threed/jpct/GenericContainer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field anzCoords:I

.field anzTri:I

.field anzVectors:I

.field attrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/threed/jpct/VertexAttributes;",
            ">;"
        }
    .end annotation
.end field

.field coords:[I

.field private locked:Z

.field maxVectors:I

.field myController:Lcom/threed/jpct/IVertexController;

.field normalsCalculated:Z

.field nxOrg:[F

.field transient nxiOrg:[I

.field nyOrg:[F

.field transient nyiOrg:[I

.field nzOrg:[F

.field transient nziOrg:[I

.field obbEnd:I

.field obbStart:I

.field points:[[I

.field private serializeMethod:I

.field snxOrg:[S

.field snyOrg:[S

.field snzOrg:[S

.field sxOrg:[S

.field syOrg:[S

.field szOrg:[S

.field tangentVectors:[[F

.field tangentsCalculated:Z

.field xOrg:[F

.field yOrg:[F

.field zOrg:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    .line 54
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    .line 56
    iput-boolean v0, p0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 58
    iput-boolean v0, p0, Lcom/threed/jpct/Mesh;->tangentsCalculated:Z

    .line 94
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->sxOrg:[S

    .line 96
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->syOrg:[S

    .line 98
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->szOrg:[S

    .line 100
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->snxOrg:[S

    .line 102
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->snyOrg:[S

    .line 104
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->snzOrg:[S

    .line 108
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    .line 116
    iput p1, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    .line 117
    iput v0, p0, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 118
    iput v0, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 119
    iput v0, p0, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 120
    iput v0, p0, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 121
    iput v0, p0, Lcom/threed/jpct/Mesh;->obbEnd:I

    .line 122
    iput-boolean v0, p0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 124
    iget v0, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->points:[[I

    .line 126
    iget v0, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->coords:[I

    .line 128
    iget v0, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 129
    iget v0, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 130
    iget v0, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 132
    iget v0, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 133
    iget v0, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 134
    iget v0, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 136
    return-void
.end method

.method private final calcNormalsFast()V
    .locals 42

    .prologue
    .line 893
    sget-object v39, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    if-nez v39, :cond_0

    .line 894
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    sput-object v39, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    .line 897
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-lt v4, v0, :cond_1

    .line 922
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-lt v4, v0, :cond_4

    .line 1001
    sget-object v39, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->clear()V

    .line 1002
    return-void

    .line 899
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v39, v0

    aget-object v15, v39, v4

    .line 900
    .local v15, "pp":[I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_2
    const/16 v39, 0x3

    move/from16 v0, v39

    if-lt v11, v0, :cond_2

    .line 897
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 902
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v39, v0

    aget v40, v15, v11

    aget v12, v39, v40

    .line 904
    .local v12, "p0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v39, v0

    aget v24, v39, v12

    .line 905
    .local v24, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v39, v0

    aget v29, v39, v12

    .line 906
    .local v29, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v39, v0

    aget v34, v39, v12

    .line 908
    .local v34, "z":F
    new-instance v16, Lcom/threed/jpct/GenericContainer;

    const/16 v39, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/threed/jpct/GenericContainer;-><init>(I)V

    .line 909
    .local v16, "sb":Lcom/threed/jpct/GenericContainer;
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 910
    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 911
    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 913
    sget-object v39, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 914
    .local v10, "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v10, :cond_3

    .line 915
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v39, 0x3

    move/from16 v0, v39

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 916
    .restart local v10    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v39, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_3
    invoke-static {v4}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 924
    .end local v10    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "p":I
    .end local v12    # "p0":I
    .end local v15    # "pp":[I
    .end local v16    # "sb":Lcom/threed/jpct/GenericContainer;
    .end local v24    # "x":F
    .end local v29    # "y":F
    .end local v34    # "z":F
    :cond_4
    const/4 v2, 0x0

    .line 934
    .local v2, "adjacent":I
    const/4 v7, 0x0

    .line 935
    .local v7, "nx":F
    const/4 v8, 0x0

    .line 936
    .local v8, "ny":F
    const/4 v9, 0x0

    .line 938
    .local v9, "nz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v39, v0

    aget v25, v39, v4

    .line 939
    .local v25, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v39, v0

    aget v30, v39, v4

    .line 940
    .local v30, "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v39, v0

    aget v35, v39, v4

    .line 942
    .local v35, "z1":F
    new-instance v16, Lcom/threed/jpct/GenericContainer;

    const/16 v39, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/threed/jpct/GenericContainer;-><init>(I)V

    .line 943
    .restart local v16    # "sb":Lcom/threed/jpct/GenericContainer;
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 944
    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 945
    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GenericContainer;->add(F)V

    .line 947
    sget-object v39, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 948
    .local v17, "tri":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v17, :cond_5

    .line 950
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 952
    .local v3, "end":I
    const/4 v11, 0x0

    .restart local v11    # "p":I
    :goto_3
    if-lt v11, v3, :cond_8

    .line 987
    .end local v3    # "end":I
    .end local v11    # "p":I
    :cond_5
    if-eqz v2, :cond_7

    .line 989
    mul-float v39, v7, v7

    mul-float v40, v8, v8

    add-float v39, v39, v40

    mul-float v40, v9, v9

    add-float v39, v39, v40

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v39

    move-wide/from16 v0, v39

    double-to-float v6, v0

    .line 991
    .local v6, "n":F
    const/16 v39, 0x0

    cmpl-float v39, v6, v39

    if-nez v39, :cond_6

    .line 992
    const v6, 0x2b8cbccc    # 1.0E-12f

    .line 994
    :cond_6
    const/high16 v39, 0x3f800000    # 1.0f

    div-float v6, v39, v6

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v39, v0

    mul-float v40, v7, v6

    aput v40, v39, v4

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v39, v0

    mul-float v40, v8, v6

    aput v40, v39, v4

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v39, v0

    mul-float v40, v9, v6

    aput v40, v39, v4

    .line 922
    .end local v6    # "n":F
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 953
    .restart local v3    # "end":I
    .restart local v11    # "p":I
    :cond_8
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 955
    .local v5, "i2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v40, v0

    aget-object v40, v40, v5

    const/16 v41, 0x0

    aget v40, v40, v41

    aget v12, v39, v40

    .line 956
    .restart local v12    # "p0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v40, v0

    aget-object v40, v40, v5

    const/16 v41, 0x1

    aget v40, v40, v41

    aget v13, v39, v40

    .line 957
    .local v13, "p1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v40, v0

    aget-object v40, v40, v5

    const/16 v41, 0x2

    aget v40, v40, v41

    aget v14, v39, v40

    .line 959
    .local v14, "p2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v39, v0

    aget v28, v39, v14

    .line 960
    .local v28, "xn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v39, v0

    aget v33, v39, v14

    .line 961
    .local v33, "yn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v39, v0

    aget v38, v39, v14

    .line 963
    .local v38, "zn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v39, v0

    aget v26, v39, v12

    .line 964
    .local v26, "xn0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v39, v0

    aget v31, v39, v12

    .line 965
    .local v31, "yn0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v39, v0

    aget v36, v39, v12

    .line 967
    .local v36, "zn0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v39, v0

    aget v27, v39, v13

    .line 968
    .local v27, "xn1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v39, v0

    aget v32, v39, v13

    .line 969
    .local v32, "yn1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v39, v0

    aget v37, v39, v13

    .line 971
    .local v37, "zn1":F
    add-int/lit8 v2, v2, 0x1

    .line 973
    sub-float v18, v26, v28

    .line 974
    .local v18, "vx":F
    sub-float v19, v31, v33

    .line 975
    .local v19, "vy":F
    sub-float v20, v36, v38

    .line 977
    .local v20, "vz":F
    sub-float v21, v27, v28

    .line 978
    .local v21, "wx":F
    sub-float v22, v32, v33

    .line 979
    .local v22, "wy":F
    sub-float v23, v37, v38

    .line 981
    .local v23, "wz":F
    mul-float v39, v19, v23

    mul-float v40, v20, v22

    sub-float v39, v39, v40

    add-float v7, v7, v39

    .line 982
    mul-float v39, v20, v21

    mul-float v40, v18, v23

    sub-float v39, v39, v40

    add-float v8, v8, v39

    .line 983
    mul-float v39, v18, v22

    mul-float v40, v19, v21

    sub-float v39, v39, v40

    add-float v9, v9, v39

    .line 952
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3
.end method

.method private floatToShort([F)[S
    .locals 3
    .param p1, "data"    # [F

    .prologue
    .line 1085
    if-nez p1, :cond_1

    .line 1086
    const/4 v1, 0x0

    .line 1091
    :cond_0
    return-object v1

    .line 1088
    :cond_1
    array-length v2, p1

    new-array v1, v2, [S

    .line 1089
    .local v1, "result":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1090
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 1089
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1019
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1021
    iget v0, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->sxOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 1023
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->sxOrg:[S

    .line 1024
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->syOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 1025
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->syOrg:[S

    .line 1026
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->szOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 1027
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->szOrg:[S

    .line 1028
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->snxOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 1029
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->snxOrg:[S

    .line 1030
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->snyOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 1031
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->snyOrg:[S

    .line 1032
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->snzOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 1033
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->snzOrg:[S

    .line 1035
    :cond_0
    iget v0, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 1037
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 1038
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 1039
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->points:[[I

    if-eqz v0, :cond_1

    .line 1040
    invoke-virtual {p0}, Lcom/threed/jpct/Mesh;->calcNormals()V

    .line 1043
    :cond_1
    return-void
.end method

.method private shortToFloat([S)[F
    .locals 3
    .param p1, "data"    # [S

    .prologue
    .line 1095
    if-nez p1, :cond_1

    .line 1096
    const/4 v1, 0x0

    .line 1101
    :cond_0
    return-object v1

    .line 1098
    :cond_1
    array-length v2, p1

    new-array v1, v2, [F

    .line 1099
    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1100
    aget-short v2, p1, v0

    shl-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v1, v0

    .line 1099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1048
    iget-object v3, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 1049
    .local v3, "cxOrg":[F
    iget-object v4, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 1050
    .local v4, "cyOrg":[F
    iget-object v5, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 1051
    .local v5, "czOrg":[F
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 1052
    .local v0, "cnxOrg":[F
    iget-object v1, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 1053
    .local v1, "cnyOrg":[F
    iget-object v2, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 1055
    .local v2, "cnzOrg":[F
    iget v6, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 1056
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 1057
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 1058
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 1060
    :cond_0
    iget v6, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 1061
    iget-object v6, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->sxOrg:[S

    .line 1062
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 1063
    iget-object v6, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->syOrg:[S

    .line 1064
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 1065
    iget-object v6, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->szOrg:[S

    .line 1066
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 1067
    iget-object v6, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->snxOrg:[S

    .line 1068
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 1069
    iget-object v6, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->snyOrg:[S

    .line 1070
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 1071
    iget-object v6, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->snzOrg:[S

    .line 1072
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 1074
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1076
    iput-object v3, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 1077
    iput-object v4, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 1078
    iput-object v5, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 1079
    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 1080
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 1081
    iput-object v2, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 1082
    return-void
.end method


# virtual methods
.method public addVertexAttributes(Lcom/threed/jpct/VertexAttributes;)V
    .locals 2
    .param p1, "attrs"    # Lcom/threed/jpct/VertexAttributes;

    .prologue
    .line 422
    iget v0, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/VertexAttributes;->matches(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->attrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    const-string v0, "Number of elements in vertex attributes doesn\'t match mesh size!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public applyVertexController()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    invoke-interface {v0}, Lcom/threed/jpct/IVertexController;->apply()V

    .line 176
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    invoke-interface {v0}, Lcom/threed/jpct/IVertexController;->updateMesh()V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v0, "No controller has been assigned to this mesh"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method calcBoundingBox()[F
    .locals 13

    .prologue
    .line 710
    const/4 v12, 0x6

    new-array v8, v12, [F

    .line 712
    .local v8, "result":[F
    const v5, 0x51ba43b7    # 9.9999998E10f

    .line 713
    .local v5, "minx":F
    const v2, -0x2e45bc49    # -9.9999998E10f

    .line 714
    .local v2, "maxx":F
    const v6, 0x51ba43b7    # 9.9999998E10f

    .line 715
    .local v6, "miny":F
    const v3, -0x2e45bc49    # -9.9999998E10f

    .line 716
    .local v3, "maxy":F
    const v7, 0x51ba43b7    # 9.9999998E10f

    .line 717
    .local v7, "minz":F
    const v4, -0x2e45bc49    # -9.9999998E10f

    .line 719
    .local v4, "maxz":F
    iget v0, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 720
    .local v0, "end":I
    iget v12, p0, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v12, :cond_0

    .line 721
    iget v0, p0, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 724
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 750
    const/4 v12, 0x0

    aput v5, v8, v12

    .line 751
    const/4 v12, 0x1

    aput v2, v8, v12

    .line 752
    const/4 v12, 0x2

    aput v6, v8, v12

    .line 753
    const/4 v12, 0x3

    aput v3, v8, v12

    .line 754
    const/4 v12, 0x4

    aput v7, v8, v12

    .line 755
    const/4 v12, 0x5

    aput v4, v8, v12

    .line 757
    return-object v8

    .line 726
    :cond_1
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v9, v12, v1

    .line 727
    .local v9, "x1":F
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v10, v12, v1

    .line 728
    .local v10, "y1":F
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v11, v12, v1

    .line 730
    .local v11, "z1":F
    cmpg-float v12, v9, v5

    if-gez v12, :cond_2

    .line 731
    move v5, v9

    .line 733
    :cond_2
    cmpl-float v12, v9, v2

    if-lez v12, :cond_3

    .line 734
    move v2, v9

    .line 736
    :cond_3
    cmpg-float v12, v10, v6

    if-gez v12, :cond_4

    .line 737
    move v6, v10

    .line 739
    :cond_4
    cmpl-float v12, v10, v3

    if-lez v12, :cond_5

    .line 740
    move v3, v10

    .line 742
    :cond_5
    cmpg-float v12, v11, v7

    if-gez v12, :cond_6

    .line 743
    move v7, v11

    .line 745
    :cond_6
    cmpl-float v12, v11, v4

    if-lez v12, :cond_7

    .line 746
    move v4, v11

    .line 724
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method calcCenter()Lcom/threed/jpct/SimpleVector;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 641
    const/4 v5, 0x0

    .line 642
    .local v5, "xm":F
    const/4 v8, 0x0

    .line 643
    .local v8, "zm":F
    const/4 v6, 0x0

    .line 644
    .local v6, "ym":F
    const/4 v0, 0x0

    .line 646
    .local v0, "anz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v9, p0, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt v2, v9, :cond_0

    .line 657
    if-eqz v0, :cond_2

    .line 658
    int-to-float v1, v0

    .line 659
    .local v1, "fanz":F
    div-float v9, v5, v1

    div-float v10, v6, v1

    div-float v11, v8, v1

    invoke-static {v9, v10, v11}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v9

    .line 661
    .end local v1    # "fanz":F
    :goto_1
    return-object v9

    .line 647
    :cond_0
    iget-object v9, p0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v4, v9, v2

    .line 648
    .local v4, "pp":[I
    const/4 v7, 0x0

    .local v7, "z":I
    :goto_2
    const/4 v9, 0x3

    if-lt v7, v9, :cond_1

    .line 646
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 649
    :cond_1
    iget-object v9, p0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v10, v4, v7

    aget v3, v9, v10

    .line 650
    .local v3, "p":I
    iget-object v9, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v9, v9, v3

    add-float/2addr v5, v9

    .line 651
    iget-object v9, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v9, v9, v3

    add-float/2addr v6, v9

    .line 652
    iget-object v9, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v9, v9, v3

    add-float/2addr v8, v9

    .line 653
    add-int/lit8 v0, v0, 0x1

    .line 648
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 661
    .end local v3    # "p":I
    .end local v4    # "pp":[I
    .end local v7    # "z":I
    :cond_2
    invoke-static {v11, v11, v11}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v9

    goto :goto_1
.end method

.method calcNormals()V
    .locals 5

    .prologue
    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 510
    .local v0, "s":J
    invoke-direct {p0}, Lcom/threed/jpct/Mesh;->calcNormalsFast()V

    .line 511
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Normal vectors calculated in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 514
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 515
    return-void
.end method

.method final calcNormalsMD2([Ljava/util/Vector;)[Ljava/util/Vector;
    .locals 36
    .param p1, "adjacentList"    # [Ljava/util/Vector;

    .prologue
    .line 519
    const/4 v14, 0x0

    check-cast v14, [Ljava/util/Vector;

    .line 520
    .local v14, "tmpList":[Ljava/util/Vector;
    if-nez p1, :cond_0

    .line 521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v14, v0, [Ljava/util/Vector;

    .line 524
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v4, v0, :cond_1

    .line 633
    if-nez p1, :cond_10

    .line 636
    .end local v14    # "tmpList":[Ljava/util/Vector;
    :goto_1
    return-object v14

    .line 526
    .restart local v14    # "tmpList":[Ljava/util/Vector;
    :cond_1
    if-nez p1, :cond_2

    .line 527
    new-instance v33, Ljava/util/Vector;

    invoke-direct/range {v33 .. v33}, Ljava/util/Vector;-><init>()V

    aput-object v33, v14, v4

    .line 530
    :cond_2
    const/4 v2, 0x0

    .line 532
    .local v2, "adjacent":I
    const/4 v8, 0x0

    .line 533
    .local v8, "nx":F
    const/4 v9, 0x0

    .line 534
    .local v9, "ny":F
    const/4 v10, 0x0

    .line 536
    .local v10, "nz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v33, v0

    aget v21, v33, v4

    .line 537
    .local v21, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v33, v0

    aget v25, v33, v4

    .line 538
    .local v25, "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v33, v0

    aget v29, v33, v4

    .line 540
    .local v29, "z1":F
    if-nez p1, :cond_b

    .line 542
    const/4 v5, 0x0

    .local v5, "i2":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v5, v0, :cond_6

    .line 619
    .end local v5    # "i2":I
    :cond_3
    if-eqz v2, :cond_5

    .line 620
    mul-float v33, v8, v8

    mul-float v34, v9, v9

    add-float v33, v33, v34

    mul-float v34, v10, v10

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v7, v0

    .line 622
    .local v7, "n":F
    const/16 v33, 0x0

    cmpl-float v33, v7, v33

    if-nez v33, :cond_4

    .line 623
    const v7, 0x2b8cbccc    # 1.0E-12f

    .line 625
    :cond_4
    const/high16 v33, 0x3f800000    # 1.0f

    div-float v7, v33, v7

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v33, v0

    mul-float v34, v8, v7

    aput v34, v33, v4

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v33, v0

    mul-float v34, v9, v7

    aput v34, v33, v4

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v33, v0

    mul-float v34, v10, v7

    aput v34, v33, v4

    .line 524
    .end local v7    # "n":F
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 543
    .restart local v5    # "i2":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v34, v0

    aget-object v34, v34, v5

    const/16 v35, 0x0

    aget v34, v34, v35

    aget v11, v33, v34

    .line 544
    .local v11, "p0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v34, v0

    aget-object v34, v34, v5

    const/16 v35, 0x1

    aget v34, v34, v35

    aget v12, v33, v34

    .line 545
    .local v12, "p1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v34, v0

    aget-object v34, v34, v5

    const/16 v35, 0x2

    aget v34, v34, v35

    aget v13, v33, v34

    .line 547
    .local v13, "p2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v33, v0

    aget v24, v33, v13

    .line 548
    .local v24, "xn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v33, v0

    aget v28, v33, v13

    .line 549
    .local v28, "yn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v33, v0

    aget v32, v33, v13

    .line 551
    .local v32, "zn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v33, v0

    aget v22, v33, v11

    .line 552
    .local v22, "xn0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v33, v0

    aget v26, v33, v11

    .line 553
    .local v26, "yn0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v33, v0

    aget v30, v33, v11

    .line 555
    .local v30, "zn0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v33, v0

    aget v23, v33, v12

    .line 556
    .local v23, "xn1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v33, v0

    aget v27, v33, v12

    .line 557
    .local v27, "yn1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v33, v0

    aget v31, v33, v12

    .line 559
    .local v31, "zn1":F
    cmpl-float v33, v21, v24

    if-nez v33, :cond_7

    cmpl-float v33, v25, v28

    if-nez v33, :cond_7

    cmpl-float v33, v29, v32

    if-eqz v33, :cond_9

    :cond_7
    cmpl-float v33, v21, v23

    if-nez v33, :cond_8

    cmpl-float v33, v25, v27

    if-nez v33, :cond_8

    cmpl-float v33, v29, v31

    if-eqz v33, :cond_9

    :cond_8
    cmpl-float v33, v21, v22

    if-nez v33, :cond_a

    cmpl-float v33, v25, v26

    if-nez v33, :cond_a

    cmpl-float v33, v29, v30

    if-nez v33, :cond_a

    .line 561
    :cond_9
    aget-object v33, v14, v4

    invoke-static {v5}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 563
    add-int/lit8 v2, v2, 0x1

    .line 565
    sub-float v15, v22, v24

    .line 566
    .local v15, "vx":F
    sub-float v16, v26, v28

    .line 567
    .local v16, "vy":F
    sub-float v17, v30, v32

    .line 569
    .local v17, "vz":F
    sub-float v18, v23, v24

    .line 570
    .local v18, "wx":F
    sub-float v19, v27, v28

    .line 571
    .local v19, "wy":F
    sub-float v20, v31, v32

    .line 573
    .local v20, "wz":F
    mul-float v33, v16, v20

    mul-float v34, v17, v19

    sub-float v33, v33, v34

    add-float v8, v8, v33

    .line 574
    mul-float v33, v17, v18

    mul-float v34, v15, v20

    sub-float v33, v33, v34

    add-float v9, v9, v33

    .line 575
    mul-float v33, v15, v19

    mul-float v34, v16, v18

    sub-float v33, v33, v34

    add-float v10, v10, v33

    .line 542
    .end local v15    # "vx":F
    .end local v16    # "vy":F
    .end local v17    # "vz":F
    .end local v18    # "wx":F
    .end local v19    # "wy":F
    .end local v20    # "wz":F
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 579
    .end local v5    # "i2":I
    .end local v11    # "p0":I
    .end local v12    # "p1":I
    .end local v13    # "p2":I
    .end local v22    # "xn0":F
    .end local v23    # "xn1":F
    .end local v24    # "xn2":F
    .end local v26    # "yn0":F
    .end local v27    # "yn1":F
    .end local v28    # "yn2":F
    .end local v30    # "zn0":F
    .end local v31    # "zn1":F
    .end local v32    # "zn2":F
    :cond_b
    aget-object v33, p1, v4

    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v3

    .line 580
    .local v3, "end":I
    const/4 v6, 0x0

    .local v6, "i3":I
    :goto_3
    if-ge v6, v3, :cond_3

    .line 582
    aget-object v33, p1, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 584
    .restart local v5    # "i2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v34, v0

    aget-object v34, v34, v5

    const/16 v35, 0x0

    aget v34, v34, v35

    aget v11, v33, v34

    .line 585
    .restart local v11    # "p0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v34, v0

    aget-object v34, v34, v5

    const/16 v35, 0x1

    aget v34, v34, v35

    aget v12, v33, v34

    .line 586
    .restart local v12    # "p1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v34, v0

    aget-object v34, v34, v5

    const/16 v35, 0x2

    aget v34, v34, v35

    aget v13, v33, v34

    .line 588
    .restart local v13    # "p2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v33, v0

    aget v24, v33, v13

    .line 589
    .restart local v24    # "xn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v33, v0

    aget v28, v33, v13

    .line 590
    .restart local v28    # "yn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v33, v0

    aget v32, v33, v13

    .line 592
    .restart local v32    # "zn2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v33, v0

    aget v22, v33, v11

    .line 593
    .restart local v22    # "xn0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v33, v0

    aget v26, v33, v11

    .line 594
    .restart local v26    # "yn0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v33, v0

    aget v30, v33, v11

    .line 596
    .restart local v30    # "zn0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v33, v0

    aget v23, v33, v12

    .line 597
    .restart local v23    # "xn1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v33, v0

    aget v27, v33, v12

    .line 598
    .restart local v27    # "yn1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v33, v0

    aget v31, v33, v12

    .line 600
    .restart local v31    # "zn1":F
    cmpl-float v33, v21, v24

    if-nez v33, :cond_c

    cmpl-float v33, v25, v28

    if-nez v33, :cond_c

    cmpl-float v33, v29, v32

    if-eqz v33, :cond_e

    :cond_c
    cmpl-float v33, v21, v23

    if-nez v33, :cond_d

    cmpl-float v33, v25, v27

    if-nez v33, :cond_d

    cmpl-float v33, v29, v31

    if-eqz v33, :cond_e

    :cond_d
    cmpl-float v33, v21, v22

    if-nez v33, :cond_f

    cmpl-float v33, v25, v26

    if-nez v33, :cond_f

    cmpl-float v33, v29, v30

    if-nez v33, :cond_f

    .line 602
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 604
    sub-float v15, v22, v24

    .line 605
    .restart local v15    # "vx":F
    sub-float v16, v26, v28

    .line 606
    .restart local v16    # "vy":F
    sub-float v17, v30, v32

    .line 608
    .restart local v17    # "vz":F
    sub-float v18, v23, v24

    .line 609
    .restart local v18    # "wx":F
    sub-float v19, v27, v28

    .line 610
    .restart local v19    # "wy":F
    sub-float v20, v31, v32

    .line 612
    .restart local v20    # "wz":F
    mul-float v33, v16, v20

    mul-float v34, v17, v19

    sub-float v33, v33, v34

    add-float v8, v8, v33

    .line 613
    mul-float v33, v17, v18

    mul-float v34, v15, v20

    sub-float v33, v33, v34

    add-float v9, v9, v33

    .line 614
    mul-float v33, v15, v19

    mul-float v34, v16, v18

    sub-float v33, v33, v34

    add-float v10, v10, v33

    .line 580
    .end local v15    # "vx":F
    .end local v16    # "vy":F
    .end local v17    # "vz":F
    .end local v18    # "wx":F
    .end local v19    # "wy":F
    .end local v20    # "wz":F
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .end local v2    # "adjacent":I
    .end local v3    # "end":I
    .end local v5    # "i2":I
    .end local v6    # "i3":I
    .end local v8    # "nx":F
    .end local v9    # "ny":F
    .end local v10    # "nz":F
    .end local v11    # "p0":I
    .end local v12    # "p1":I
    .end local v13    # "p2":I
    .end local v21    # "x1":F
    .end local v22    # "xn0":F
    .end local v23    # "xn1":F
    .end local v24    # "xn2":F
    .end local v25    # "y1":F
    .end local v26    # "yn0":F
    .end local v27    # "yn1":F
    .end local v28    # "yn2":F
    .end local v29    # "z1":F
    .end local v30    # "zn0":F
    .end local v31    # "zn1":F
    .end local v32    # "zn2":F
    :cond_10
    move-object/from16 v14, p1

    .line 636
    goto/16 :goto_1
.end method

.method calculateTangentVectors(Lcom/threed/jpct/Vectors;)V
    .locals 54
    .param p1, "vecs"    # Lcom/threed/jpct/Vectors;

    .prologue
    .line 761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 763
    .local v17, "s":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    move-object/from16 v50, v0

    if-eqz v50, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_1

    .line 764
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v50, v0

    move/from16 v0, v50

    new-array v0, v0, [[F

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    .line 767
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v50, v0

    move/from16 v0, v50

    new-array v0, v0, [Lcom/threed/jpct/SimpleVector;

    move-object/from16 v25, v0

    .line 768
    .local v25, "tan1":[Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v50, v0

    move/from16 v0, v50

    new-array v0, v0, [Lcom/threed/jpct/SimpleVector;

    move-object/from16 v26, v0

    .line 770
    .local v26, "tan2":[Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, v25

    array-length v8, v0

    .line 772
    .local v8, "end":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-lt v9, v8, :cond_3

    .line 777
    move-object/from16 v0, p0

    iget v8, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 779
    const/4 v9, 0x0

    :goto_1
    if-lt v9, v8, :cond_4

    .line 853
    new-instance v10, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v10}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 854
    .local v10, "n":Lcom/threed/jpct/SimpleVector;
    new-instance v11, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v11}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 855
    .local v11, "n2":Lcom/threed/jpct/SimpleVector;
    new-instance v22, Lcom/threed/jpct/SimpleVector;

    invoke-direct/range {v22 .. v22}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 857
    .local v22, "t":Lcom/threed/jpct/SimpleVector;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 859
    const/4 v4, 0x0

    .local v4, "coord":I
    :goto_2
    if-lt v4, v8, :cond_a

    .line 886
    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/threed/jpct/Mesh;->tangentsCalculated:Z

    .line 887
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v50

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_2

    .line 888
    new-instance v50, Ljava/lang/StringBuilder;

    const-string v51, "Tangent vectors calculated in "

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v51

    sub-long v51, v51, v17

    invoke-virtual/range {v50 .. v52}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "ms!"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 890
    :cond_2
    return-void

    .line 773
    .end local v4    # "coord":I
    .end local v10    # "n":Lcom/threed/jpct/SimpleVector;
    .end local v11    # "n2":Lcom/threed/jpct/SimpleVector;
    .end local v22    # "t":Lcom/threed/jpct/SimpleVector;
    :cond_3
    new-instance v50, Lcom/threed/jpct/SimpleVector;

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-direct/range {v50 .. v53}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v50, v25, v9

    .line 774
    new-instance v50, Lcom/threed/jpct/SimpleVector;

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-direct/range {v50 .. v53}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v50, v26, v9

    .line 772
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 781
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v50, v0

    aget-object v15, v50, v9

    .line 783
    .local v15, "pp":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aget v51, v15, v51

    aget v12, v50, v51

    .line 784
    .local v12, "p0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v50, v0

    const/16 v51, 0x1

    aget v51, v15, v51

    aget v13, v50, v51

    .line 785
    .local v13, "p1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v50, v0

    const/16 v51, 0x2

    aget v51, v15, v51

    aget v14, v50, v51

    .line 787
    .local v14, "p2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v50, v0

    aget v35, v50, v12

    .line 788
    .local v35, "vx0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v50, v0

    aget v38, v50, v12

    .line 789
    .local v38, "vy0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v50, v0

    aget v41, v50, v12

    .line 791
    .local v41, "vz0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v50, v0

    aget v36, v50, v13

    .line 792
    .local v36, "vx1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v50, v0

    aget v39, v50, v13

    .line 793
    .local v39, "vy1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v50, v0

    aget v42, v50, v13

    .line 795
    .local v42, "vz1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v50, v0

    aget v37, v50, v14

    .line 796
    .local v37, "vx2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v50, v0

    aget v40, v50, v14

    .line 797
    .local v40, "vy2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v50, v0

    aget v43, v50, v14

    .line 799
    .local v43, "vz2":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aget v51, v15, v51

    aget v29, v50, v51

    .line 800
    .local v29, "u0":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aget v51, v15, v51

    aget v32, v50, v51

    .line 801
    .local v32, "v0":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v50, v0

    const/16 v51, 0x1

    aget v51, v15, v51

    aget v30, v50, v51

    .line 802
    .local v30, "u1":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v50, v0

    const/16 v51, 0x1

    aget v51, v15, v51

    aget v33, v50, v51

    .line 803
    .local v33, "v1":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    move-object/from16 v50, v0

    const/16 v51, 0x2

    aget v51, v15, v51

    aget v31, v50, v51

    .line 804
    .local v31, "u2":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    move-object/from16 v50, v0

    const/16 v51, 0x2

    aget v51, v15, v51

    aget v34, v50, v51

    .line 806
    .local v34, "v2":F
    sub-float v44, v36, v35

    .line 807
    .local v44, "x0":F
    sub-float v45, v37, v35

    .line 808
    .local v45, "x1":F
    sub-float v46, v39, v38

    .line 809
    .local v46, "y0":F
    sub-float v47, v40, v38

    .line 810
    .local v47, "y1":F
    sub-float v48, v42, v41

    .line 811
    .local v48, "z0":F
    sub-float v49, v43, v41

    .line 813
    .local v49, "z1":F
    sub-float v19, v30, v29

    .line 814
    .local v19, "s0":F
    sub-float v20, v31, v29

    .line 815
    .local v20, "s1":F
    sub-float v23, v33, v32

    .line 816
    .local v23, "t0":F
    sub-float v24, v34, v32

    .line 819
    .local v24, "t1":F
    const/16 v50, 0x0

    cmpl-float v50, v19, v50

    if-nez v50, :cond_5

    .line 820
    const v19, 0x3727c5ac    # 1.0E-5f

    .line 823
    :cond_5
    const/16 v50, 0x0

    cmpl-float v50, v20, v50

    if-nez v50, :cond_6

    .line 824
    const v20, 0x3727c5ac    # 1.0E-5f

    .line 827
    :cond_6
    const/16 v50, 0x0

    cmpl-float v50, v23, v50

    if-nez v50, :cond_7

    .line 828
    const v23, 0x3727c5ac    # 1.0E-5f

    .line 831
    :cond_7
    const/16 v50, 0x0

    cmpl-float v50, v24, v50

    if-nez v50, :cond_8

    .line 832
    const v24, 0x3727c5ac    # 1.0E-5f

    .line 835
    :cond_8
    mul-float v50, v19, v24

    mul-float v51, v20, v23

    sub-float v6, v50, v51

    .line 836
    .local v6, "d":F
    const/16 v50, 0x0

    cmpl-float v50, v6, v50

    if-nez v50, :cond_9

    .line 837
    const v6, 0x3727c5ac    # 1.0E-5f

    .line 839
    :cond_9
    const/high16 v50, 0x3f800000    # 1.0f

    div-float v16, v50, v6

    .line 841
    .local v16, "r":F
    new-instance v21, Lcom/threed/jpct/SimpleVector;

    mul-float v50, v24, v44

    mul-float v51, v23, v45

    sub-float v50, v50, v51

    mul-float v50, v50, v16

    mul-float v51, v24, v46

    mul-float v52, v23, v47

    sub-float v51, v51, v52

    mul-float v51, v51, v16

    mul-float v52, v24, v48

    mul-float v53, v23, v49

    sub-float v52, v52, v53

    mul-float v52, v52, v16

    move-object/from16 v0, v21

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    .line 842
    .local v21, "sdir":Lcom/threed/jpct/SimpleVector;
    new-instance v27, Lcom/threed/jpct/SimpleVector;

    mul-float v50, v19, v45

    mul-float v51, v20, v44

    sub-float v50, v50, v51

    mul-float v50, v50, v16

    mul-float v51, v19, v47

    mul-float v52, v20, v46

    sub-float v51, v51, v52

    mul-float v51, v51, v16

    mul-float v52, v19, v49

    mul-float v53, v20, v48

    sub-float v52, v52, v53

    mul-float v52, v52, v16

    move-object/from16 v0, v27

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    .line 844
    .local v27, "tdir":Lcom/threed/jpct/SimpleVector;
    aget-object v50, v25, v12

    move-object/from16 v0, v50

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 845
    aget-object v50, v25, v13

    move-object/from16 v0, v50

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 846
    aget-object v50, v25, v14

    move-object/from16 v0, v50

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 848
    aget-object v50, v26, v12

    move-object/from16 v0, v50

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 849
    aget-object v50, v26, v13

    move-object/from16 v0, v50

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 850
    aget-object v50, v26, v14

    move-object/from16 v0, v50

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    .line 779
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 860
    .end local v6    # "d":F
    .end local v12    # "p0":I
    .end local v13    # "p1":I
    .end local v14    # "p2":I
    .end local v15    # "pp":[I
    .end local v16    # "r":F
    .end local v19    # "s0":F
    .end local v20    # "s1":F
    .end local v21    # "sdir":Lcom/threed/jpct/SimpleVector;
    .end local v23    # "t0":F
    .end local v24    # "t1":F
    .end local v27    # "tdir":Lcom/threed/jpct/SimpleVector;
    .end local v29    # "u0":F
    .end local v30    # "u1":F
    .end local v31    # "u2":F
    .end local v32    # "v0":F
    .end local v33    # "v1":F
    .end local v34    # "v2":F
    .end local v35    # "vx0":F
    .end local v36    # "vx1":F
    .end local v37    # "vx2":F
    .end local v38    # "vy0":F
    .end local v39    # "vy1":F
    .end local v40    # "vy2":F
    .end local v41    # "vz0":F
    .end local v42    # "vz1":F
    .end local v43    # "vz2":F
    .end local v44    # "x0":F
    .end local v45    # "x1":F
    .end local v46    # "y0":F
    .end local v47    # "y1":F
    .end local v48    # "z0":F
    .end local v49    # "z1":F
    .restart local v4    # "coord":I
    .restart local v10    # "n":Lcom/threed/jpct/SimpleVector;
    .restart local v11    # "n2":Lcom/threed/jpct/SimpleVector;
    .restart local v22    # "t":Lcom/threed/jpct/SimpleVector;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v50, v0

    aget v50, v50, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v51, v0

    aget v51, v51, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v52, v0

    aget v52, v52, v4

    move/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v10, v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 861
    aget-object v50, v25, v4

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 862
    invoke-virtual {v11, v10}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 865
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/threed/jpct/SimpleVector;->calcDot(Lcom/threed/jpct/SimpleVector;)F

    move-result v7

    .line 866
    .local v7, "dot":F
    invoke-virtual {v11, v7}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 867
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    .line 868
    invoke-virtual/range {v22 .. v22}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object v22

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    move-object/from16 v50, v0

    aget-object v28, v50, v4

    .line 871
    .local v28, "tv":[F
    if-nez v28, :cond_b

    .line 872
    const/16 v50, 0x4

    move/from16 v0, v50

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    move-object/from16 v50, v0

    aput-object v28, v50, v4

    .line 875
    :cond_b
    const/16 v50, 0x0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v51, v0

    aput v51, v28, v50

    .line 876
    const/16 v50, 0x1

    move-object/from16 v0, v22

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v51, v0

    aput v51, v28, v50

    .line 877
    const/16 v50, 0x2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v51, v0

    aput v51, v28, v50

    .line 879
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/threed/jpct/SimpleVector;->calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    .line 880
    .local v5, "cr":Lcom/threed/jpct/SimpleVector;
    aget-object v50, v26, v4

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lcom/threed/jpct/SimpleVector;->calcDot(Lcom/threed/jpct/SimpleVector;)F

    move-result v7

    .line 883
    const/16 v51, 0x3

    const/16 v50, 0x0

    cmpg-float v50, v7, v50

    if-gez v50, :cond_c

    const/high16 v50, -0x40800000    # -1.0f

    :goto_3
    aput v50, v28, v51

    .line 859
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 883
    :cond_c
    const/high16 v50, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method public cloneMesh(Z)Lcom/threed/jpct/Mesh;
    .locals 6
    .param p1, "compressed"    # Z

    .prologue
    .line 341
    new-instance v3, Lcom/threed/jpct/Mesh;

    iget v4, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    invoke-direct {v3, v4}, Lcom/threed/jpct/Mesh;-><init>(I)V

    .line 342
    .local v3, "tmpMesh":Lcom/threed/jpct/Mesh;
    iget v4, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iput v4, v3, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 343
    iget v4, p0, Lcom/threed/jpct/Mesh;->anzVectors:I

    iput v4, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 344
    iget v4, p0, Lcom/threed/jpct/Mesh;->anzTri:I

    iput v4, v3, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 345
    iget v4, p0, Lcom/threed/jpct/Mesh;->obbStart:I

    iput v4, v3, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 346
    iget v4, p0, Lcom/threed/jpct/Mesh;->obbEnd:I

    iput v4, v3, Lcom/threed/jpct/Mesh;->obbEnd:I

    .line 347
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    if-lt v1, v4, :cond_1

    .line 359
    iget v4, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v4, 0x1

    .line 361
    .local v0, "end":I
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_3

    .line 366
    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {v3}, Lcom/threed/jpct/Mesh;->compress()V

    .line 369
    :cond_0
    return-object v3

    .line 348
    .end local v0    # "end":I
    :cond_1
    iget-object v4, v3, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v5, p0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v5, v5, v1

    aput v5, v4, v1

    .line 349
    iget v4, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-ge v1, v4, :cond_2

    .line 350
    iget-object v4, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v5, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v5, v5, v1

    aput v5, v4, v1

    .line 351
    iget-object v4, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v5, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v5, v5, v1

    aput v5, v4, v1

    .line 352
    iget-object v4, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v5, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v5, v5, v1

    aput v5, v4, v1

    .line 353
    iget-object v4, v3, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v5, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v5, v5, v1

    aput v5, v4, v1

    .line 354
    iget-object v4, v3, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v5, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v5, v5, v1

    aput v5, v4, v1

    .line 355
    iget-object v4, v3, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object v5, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v5, v5, v1

    aput v5, v4, v1

    .line 347
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .restart local v0    # "end":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_2
    const/4 v4, 0x3

    if-lt v2, v4, :cond_4

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    :cond_4
    iget-object v4, v3, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v4, v2

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public compress()V
    .locals 14

    .prologue
    .line 268
    iget v5, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 269
    .local v5, "size":I
    iget v12, p0, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 v6, v12, 0x8

    .line 271
    .local v6, "sizev":I
    iget v12, p0, Lcom/threed/jpct/Mesh;->obbEnd:I

    if-nez v12, :cond_0

    .line 272
    add-int/lit8 v5, v5, 0x8

    .line 275
    :cond_0
    new-array v9, v5, [F

    .line 276
    .local v9, "xT":[F
    new-array v10, v5, [F

    .line 277
    .local v10, "yT":[F
    new-array v11, v5, [F

    .line 279
    .local v11, "zT":[F
    new-array v1, v5, [F

    .line 280
    .local v1, "nxT":[F
    new-array v2, v5, [F

    .line 281
    .local v2, "nyT":[F
    new-array v3, v5, [F

    .line 283
    .local v3, "nzT":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v12, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-lt v0, v12, :cond_2

    .line 293
    iput-object v9, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 294
    iput-object v10, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 295
    iput-object v11, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 297
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 298
    iput-object v2, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 299
    iput-object v3, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 301
    iget v12, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    if-ge v6, v12, :cond_1

    .line 302
    div-int/lit8 v12, v6, 0x3

    add-int/lit8 v4, v12, 0x1

    .line 304
    .local v4, "pcnt":I
    const/4 v12, 0x3

    filled-new-array {v4, v12}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    .line 305
    .local v8, "tpoints":[[I
    new-array v7, v6, [I

    .line 307
    .local v7, "tcoords":[I
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v6, :cond_3

    .line 311
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v4, :cond_4

    .line 315
    iput-object v7, p0, Lcom/threed/jpct/Mesh;->coords:[I

    .line 316
    iput-object v8, p0, Lcom/threed/jpct/Mesh;->points:[[I

    .line 318
    iput v6, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    .line 320
    .end local v4    # "pcnt":I
    .end local v7    # "tcoords":[I
    .end local v8    # "tpoints":[[I
    :cond_1
    return-void

    .line 284
    :cond_2
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v12, v12, v0

    aput v12, v9, v0

    .line 285
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v12, v12, v0

    aput v12, v10, v0

    .line 286
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v12, v12, v0

    aput v12, v11, v0

    .line 288
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v12, v12, v0

    aput v12, v1, v0

    .line 289
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v12, v12, v0

    aput v12, v2, v0

    .line 290
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v12, v12, v0

    aput v12, v3, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .restart local v4    # "pcnt":I
    .restart local v7    # "tcoords":[I
    .restart local v8    # "tpoints":[[I
    :cond_3
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v12, v12, v0

    aput v12, v7, v0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_4
    iget-object v12, p0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v12, v12, v0

    aput-object v12, v8, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getBoundingBox()[F
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/threed/jpct/Mesh;->calcBoundingBox()[F

    move-result-object v0

    return-object v0
.end method

.method final getLargestCoveredDistance()F
    .locals 27

    .prologue
    .line 445
    const/high16 v11, -0x40800000    # -1.0f

    .line 446
    .local v11, "largest":F
    const/4 v10, 0x0

    .local v10, "i2":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v10, v0, :cond_0

    .line 505
    return v11

    .line 447
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    const/16 v26, 0x0

    aget v25, v25, v26

    aget v12, v24, v25

    .line 448
    .local v12, "p0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    const/16 v26, 0x1

    aget v25, v25, v26

    aget v13, v24, v25

    .line 449
    .local v13, "p1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    const/16 v26, 0x2

    aget v25, v25, v26

    aget v14, v24, v25

    .line 451
    .local v14, "p2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v24, v0

    aget v15, v24, v12

    .line 452
    .local v15, "x0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v24, v0

    aget v18, v24, v12

    .line 453
    .local v18, "y0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v24, v0

    aget v21, v24, v12

    .line 455
    .local v21, "z0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v24, v0

    aget v16, v24, v13

    .line 456
    .local v16, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v24, v0

    aget v19, v24, v13

    .line 457
    .local v19, "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v24, v0

    aget v22, v24, v13

    .line 459
    .local v22, "z1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v24, v0

    aget v17, v24, v14

    .line 460
    .local v17, "x2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v24, v0

    aget v20, v24, v14

    .line 461
    .local v20, "y2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v24, v0

    aget v23, v24, v14

    .line 463
    .local v23, "z2":F
    sub-float v24, v15, v16

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 464
    .local v1, "dx0x1":F
    sub-float v24, v16, v17

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 465
    .local v3, "dx1x2":F
    sub-float v24, v15, v17

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 467
    .local v2, "dx0x2":F
    sub-float v24, v18, v19

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 468
    .local v4, "dy0y1":F
    sub-float v24, v19, v20

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 469
    .local v6, "dy1y2":F
    sub-float v24, v18, v20

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 471
    .local v5, "dy0y2":F
    sub-float v24, v21, v22

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 472
    .local v7, "dz0z1":F
    sub-float v24, v22, v23

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 473
    .local v9, "dz1z2":F
    sub-float v24, v21, v23

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 475
    .local v8, "dz0z2":F
    cmpl-float v24, v1, v11

    if-lez v24, :cond_1

    .line 476
    move v11, v1

    .line 478
    :cond_1
    cmpl-float v24, v3, v11

    if-lez v24, :cond_2

    .line 479
    move v11, v3

    .line 481
    :cond_2
    cmpl-float v24, v2, v11

    if-lez v24, :cond_3

    .line 482
    move v11, v2

    .line 485
    :cond_3
    cmpl-float v24, v4, v11

    if-lez v24, :cond_4

    .line 486
    move v11, v4

    .line 488
    :cond_4
    cmpl-float v24, v6, v11

    if-lez v24, :cond_5

    .line 489
    move v11, v6

    .line 491
    :cond_5
    cmpl-float v24, v5, v11

    if-lez v24, :cond_6

    .line 492
    move v11, v5

    .line 495
    :cond_6
    cmpl-float v24, v7, v11

    if-lez v24, :cond_7

    .line 496
    move v11, v7

    .line 498
    :cond_7
    cmpl-float v24, v9, v11

    if-lez v24, :cond_8

    .line 499
    move v11, v9

    .line 501
    :cond_8
    cmpl-float v24, v8, v11

    if-lez v24, :cond_9

    .line 502
    move v11, v8

    .line 446
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method public getTriangleCount()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/threed/jpct/Mesh;->anzTri:I

    return v0
.end method

.method public getUniqueVertexCount()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    return v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/threed/jpct/Mesh;->anzVectors:I

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/threed/jpct/Mesh;->locked:Z

    return v0
.end method

.method public removeVertexController()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    invoke-interface {v0}, Lcom/threed/jpct/IVertexController;->destroy()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    .line 191
    :cond_0
    return-void
.end method

.method rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V
    .locals 22
    .param p1, "rot"    # Lcom/threed/jpct/Matrix;
    .param p2, "xRot"    # F
    .param p3, "yRot"    # F
    .param p4, "zRot"    # F
    .param p5, "scale"    # F

    .prologue
    .line 666
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v5, v20, v21

    .line 667
    .local v5, "s00":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v8, v20, v21

    .line 668
    .local v8, "s10":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v11, v20, v21

    .line 670
    .local v11, "s20":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v6, v20, v21

    .line 671
    .local v6, "s01":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v9, v20, v21

    .line 672
    .local v9, "s11":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v12, v20, v21

    .line 674
    .local v12, "s21":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v7, v20, v21

    .line 675
    .local v7, "s02":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v10, v20, v21

    .line 676
    .local v10, "s12":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v13, v20, v21

    .line 678
    .local v13, "s22":F
    move/from16 v1, p2

    .line 679
    .local v1, "bx":F
    move/from16 v2, p3

    .line 680
    .local v2, "by":F
    move/from16 v3, p4

    .line 682
    .local v3, "bz":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v4, v0, :cond_0

    .line 707
    return-void

    .line 683
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v20, v0

    aget v20, v20, v4

    sub-float v18, v20, v3

    .line 684
    .local v18, "z1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v20, v0

    aget v20, v20, v4

    sub-float v14, v20, v1

    .line 685
    .local v14, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v20, v0

    aget v20, v20, v4

    sub-float v16, v20, v2

    .line 687
    .local v16, "y1":F
    mul-float v20, v14, v5

    mul-float v21, v16, v8

    add-float v20, v20, v21

    mul-float v21, v18, v11

    add-float v20, v20, v21

    add-float v15, v20, v1

    .line 688
    .local v15, "x2":F
    mul-float v20, v14, v6

    mul-float v21, v16, v9

    add-float v20, v20, v21

    mul-float v21, v18, v12

    add-float v20, v20, v21

    add-float v17, v20, v2

    .line 689
    .local v17, "y2":F
    mul-float v20, v14, v7

    mul-float v21, v16, v10

    add-float v20, v20, v21

    mul-float v21, v18, v13

    add-float v20, v20, v21

    add-float v19, v20, v3

    .line 691
    .local v19, "z2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v20, v0

    aput v15, v20, v4

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v20, v0

    aput v17, v20, v4

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v20, v0

    aput v19, v20, v4

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v20, v0

    aget v14, v20, v4

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v20, v0

    aget v16, v20, v4

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v20, v0

    aget v18, v20, v4

    .line 699
    mul-float v20, v14, v5

    mul-float v21, v16, v8

    add-float v20, v20, v21

    mul-float v21, v18, v11

    add-float v15, v20, v21

    .line 700
    mul-float v20, v14, v6

    mul-float v21, v16, v9

    add-float v20, v20, v21

    mul-float v21, v18, v12

    add-float v17, v20, v21

    .line 701
    mul-float v20, v14, v7

    mul-float v21, v16, v10

    add-float v20, v20, v21

    mul-float v21, v18, v13

    add-float v19, v20, v21

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v20, v0

    div-float v21, v15, p5

    aput v21, v20, v4

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v20, v0

    div-float v21, v17, p5

    aput v21, v20, v4

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v20, v0

    div-float v21, v19, p5

    aput v21, v20, v4

    .line 682
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/threed/jpct/Mesh;->locked:Z

    .line 217
    return-void
.end method

.method public setSerializeMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 1014
    iput p1, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    .line 1015
    return-void
.end method

.method public setVertexController(Lcom/threed/jpct/IVertexController;Z)Z
    .locals 1
    .param p1, "controller"    # Lcom/threed/jpct/IVertexController;
    .param p2, "modify"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    invoke-interface {v0}, Lcom/threed/jpct/IVertexController;->destroy()V

    .line 162
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/threed/jpct/IVertexController;->init(Lcom/threed/jpct/Mesh;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iput-object p1, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strip()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-boolean v0, p0, Lcom/threed/jpct/Mesh;->locked:Z

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->points:[[I

    .line 204
    iput-object v1, p0, Lcom/threed/jpct/Mesh;->coords:[I

    goto :goto_0
.end method

.method strongStrip(Lcom/threed/jpct/World;Lcom/threed/jpct/Object3D;)V
    .locals 5
    .param p1, "world"    # Lcom/threed/jpct/World;
    .param p2, "self"    # Lcom/threed/jpct/Object3D;

    .prologue
    const/4 v4, 0x0

    .line 230
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/threed/jpct/Mesh;->locked:Z

    if-eqz v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v3, p1, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    .line 235
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 246
    iput-object v4, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 247
    iput-object v4, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 248
    iput-object v4, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    goto :goto_0

    .line 236
    :cond_2
    iget-object v3, p1, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v2

    .line 237
    .local v2, "obj":Lcom/threed/jpct/Object3D;
    if-eq v2, p2, :cond_3

    .line 238
    iget-object v3, v2, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    if-ne v3, p0, :cond_3

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-nez v3, :cond_0

    .line 235
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V
    .locals 9
    .param p1, "translationMatrix"    # Lcom/threed/jpct/Matrix;
    .param p2, "originMatrix"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-lt v0, v1, :cond_0

    .line 441
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v5

    aget v3, v3, v8

    iget-object v4, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v5

    aget v4, v4, v8

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 438
    iget-object v1, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v5

    aget v3, v3, v6

    iget-object v4, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v5

    aget v4, v4, v6

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 439
    iget-object v1, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v5

    aget v3, v3, v7

    iget-object v4, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v5

    aget v4, v4, v7

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
