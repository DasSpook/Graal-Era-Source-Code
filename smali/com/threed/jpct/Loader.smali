.class public final Lcom/threed/jpct/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER:I = 0x2000

.field private static final MAX_CACHE_SIZE:I = 0x4e20

.field private static backBuf:[B

.field private static lastFileData:Ljava/lang/String;

.field private static lastFilename:Ljava/lang/String;

.field private static optimize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    sput-object v0, Lcom/threed/jpct/Loader;->lastFilename:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/threed/jpct/Loader;->lastFileData:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/threed/jpct/Loader;->optimize:Z

    .line 37
    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Lcom/threed/jpct/Loader;->backBuf:[B

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1075
    sput-object v0, Lcom/threed/jpct/Loader;->lastFileData:Ljava/lang/String;

    .line 1076
    sput-object v0, Lcom/threed/jpct/Loader;->lastFilename:Ljava/lang/String;

    .line 1077
    return-void
.end method

.method private static countOcc(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "oc"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "cnt":I
    const/4 v2, 0x0

    .line 777
    .local v2, "pos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 779
    .local v1, "len":I
    :cond_0
    add-int v3, v2, v1

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 780
    if-eq v2, v4, :cond_1

    .line 781
    add-int/lit8 v0, v0, 0x1

    .line 783
    :cond_1
    if-ne v2, v4, :cond_0

    .line 784
    return v0
.end method

.method private static create3DSObject(Ljava/lang/String;[[FI[[II[Ljava/lang/String;[Ljava/lang/String;[[F[Ljava/lang/String;[Lcom/threed/jpct/RGBColor;[II)Lcom/threed/jpct/Object3D;
    .locals 44
    .param p0, "n"    # Ljava/lang/String;
    .param p1, "vertices"    # [[F
    .param p2, "vsize"    # I
    .param p3, "coords"    # [[I
    .param p4, "psize"    # I
    .param p5, "matName"    # [Ljava/lang/String;
    .param p6, "textureName"    # [Ljava/lang/String;
    .param p7, "matTextureData"    # [[F
    .param p8, "coordMat"    # [Ljava/lang/String;
    .param p9, "cols"    # [Lcom/threed/jpct/RGBColor;
    .param p10, "trans"    # [I
    .param p11, "matCnt"    # I

    .prologue
    .line 2007
    move/from16 v33, p4

    .line 2012
    .local v33, "size":I
    const/16 v32, 0x0

    check-cast v32, [I

    .line 2013
    .local v32, "posCache":[I
    const/16 v22, 0x0

    check-cast v22, [I

    .line 2015
    .local v22, "lastPoints":[I
    sget-boolean v8, Lcom/threed/jpct/Loader;->optimize:Z

    if-nez v8, :cond_0

    .line 2016
    move-object/from16 v0, p1

    array-length v8, v0

    new-array v0, v8, [I

    move-object/from16 v32, v0

    .line 2017
    const/4 v8, 0x3

    new-array v0, v8, [I

    move-object/from16 v22, v0

    .line 2018
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_0
    move-object/from16 v0, v32

    array-length v8, v0

    move/from16 v0, v28

    if-lt v0, v8, :cond_3

    .line 2023
    .end local v28    # "i":I
    :cond_0
    new-instance v3, Lcom/threed/jpct/Object3D;

    move/from16 v0, v33

    invoke-direct {v3, v0}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 2024
    .local v3, "obj":Lcom/threed/jpct/Object3D;
    sget-boolean v8, Lcom/threed/jpct/Loader;->optimize:Z

    if-nez v8, :cond_1

    .line 2025
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->disableVertexSharing()V

    .line 2028
    :cond_1
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v35

    .line 2030
    .local v35, "texMan":Lcom/threed/jpct/TextureManager;
    const-string v8, "--dummy--"

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v27

    .line 2032
    .local v27, "defTexId":I
    const/16 v36, 0x64

    .line 2033
    .local v36, "trs":I
    const/16 v29, -0x1

    .line 2034
    .local v29, "lastM":I
    const-string v30, "**hurzigurzi**"

    .line 2036
    .local v30, "lastName":Ljava/lang/String;
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_4

    .line 2137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "_jPCT"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/threed/jpct/Object3D;->setName(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/threed/jpct/Mesh;->compress()V

    .line 2140
    const/16 v8, 0x3e8

    move/from16 v0, v36

    if-eq v0, v8, :cond_2

    const/4 v8, -0x1

    move/from16 v0, v36

    if-eq v0, v8, :cond_2

    .line 2141
    move/from16 v0, v36

    invoke-virtual {v3, v0}, Lcom/threed/jpct/Object3D;->setTransparency(I)V

    .line 2144
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "Object \'"

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v3, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "\' created using "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v13

    iget v13, v13, Lcom/threed/jpct/Mesh;->anzTri:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, " polygons and "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v13

    iget v13, v13, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, " vertices."

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    invoke-static {v8, v13}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 2145
    return-object v3

    .line 2019
    .end local v3    # "obj":Lcom/threed/jpct/Object3D;
    .end local v27    # "defTexId":I
    .end local v29    # "lastM":I
    .end local v30    # "lastName":Ljava/lang/String;
    .end local v35    # "texMan":Lcom/threed/jpct/TextureManager;
    .end local v36    # "trs":I
    :cond_3
    const/4 v8, -0x1

    aput v8, v32, v28

    .line 2018
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 2038
    .restart local v3    # "obj":Lcom/threed/jpct/Object3D;
    .restart local v27    # "defTexId":I
    .restart local v29    # "lastM":I
    .restart local v30    # "lastName":Ljava/lang/String;
    .restart local v35    # "texMan":Lcom/threed/jpct/TextureManager;
    .restart local v36    # "trs":I
    :cond_4
    aget-object v8, p3, v28

    const/4 v13, 0x0

    aget v23, v8, v13

    .line 2039
    .local v23, "c0":I
    aget-object v8, p3, v28

    const/4 v13, 0x1

    aget v24, v8, v13

    .line 2040
    .local v24, "c1":I
    aget-object v8, p3, v28

    const/4 v13, 0x2

    aget v25, v8, v13

    .line 2042
    .local v25, "c2":I
    aget-object v8, p1, v23

    const/4 v13, 0x0

    aget v4, v8, v13

    .line 2043
    .local v4, "x1":F
    aget-object v8, p1, v23

    const/4 v13, 0x1

    aget v5, v8, v13

    .line 2044
    .local v5, "y1":F
    aget-object v8, p1, v23

    const/4 v13, 0x2

    aget v6, v8, v13

    .line 2046
    .local v6, "z1":F
    aget-object v8, p1, v24

    const/4 v13, 0x0

    aget v9, v8, v13

    .line 2047
    .local v9, "x2":F
    aget-object v8, p1, v24

    const/4 v13, 0x1

    aget v10, v8, v13

    .line 2048
    .local v10, "y2":F
    aget-object v8, p1, v24

    const/4 v13, 0x2

    aget v11, v8, v13

    .line 2050
    .local v11, "z2":F
    aget-object v8, p1, v25

    const/4 v13, 0x0

    aget v14, v8, v13

    .line 2051
    .local v14, "x3":F
    aget-object v8, p1, v25

    const/4 v13, 0x1

    aget v15, v8, v13

    .line 2052
    .local v15, "y3":F
    aget-object v8, p1, v25

    const/4 v13, 0x2

    aget v16, v8, v13

    .line 2054
    .local v16, "z3":F
    move/from16 v19, v27

    .line 2055
    .local v19, "texId":I
    const/high16 v37, 0x3f800000    # 1.0f

    .line 2056
    .local v37, "uMul":F
    const/high16 v42, 0x3f800000    # 1.0f

    .line 2057
    .local v42, "vMul":F
    const/16 v38, 0x0

    .line 2058
    .local v38, "uOffset":F
    const/16 v43, 0x0

    .line 2060
    .local v43, "vOffset":F
    aget-object v8, p8, v28

    if-eqz v8, :cond_5

    .line 2061
    aget-object v8, p8, v28

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2062
    aget-object v8, p6, v29

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v19

    .line 2063
    aget-object v8, p7, v29

    const/4 v13, 0x0

    aget v37, v8, v13

    .line 2064
    aget-object v8, p7, v29

    const/4 v13, 0x1

    aget v42, v8, v13

    .line 2065
    aget-object v8, p7, v29

    const/4 v13, 0x2

    aget v38, v8, v13

    .line 2066
    aget-object v8, p7, v29

    const/4 v13, 0x3

    aget v43, v8, v13

    .line 2111
    :cond_5
    :goto_2
    aget-object v8, p1, v23

    const/4 v13, 0x3

    aget v8, v8, v13

    mul-float v8, v8, v37

    add-float v7, v8, v38

    .line 2112
    .local v7, "u1":F
    aget-object v8, p1, v23

    const/4 v13, 0x4

    aget v8, v8, v13

    mul-float v8, v8, v42

    add-float v39, v8, v43

    .line 2113
    .local v39, "v1":F
    aget-object v8, p1, v24

    const/4 v13, 0x3

    aget v8, v8, v13

    mul-float v8, v8, v37

    add-float v12, v8, v38

    .line 2114
    .local v12, "u2":F
    aget-object v8, p1, v24

    const/4 v13, 0x4

    aget v8, v8, v13

    mul-float v8, v8, v42

    add-float v40, v8, v43

    .line 2115
    .local v40, "v2":F
    aget-object v8, p1, v25

    const/4 v13, 0x3

    aget v8, v8, v13

    mul-float v8, v8, v37

    add-float v17, v8, v38

    .line 2116
    .local v17, "u3":F
    aget-object v8, p1, v25

    const/4 v13, 0x4

    aget v8, v8, v13

    mul-float v8, v8, v42

    add-float v41, v8, v43

    .line 2118
    .local v41, "v3":F
    sget-boolean v8, Lcom/threed/jpct/Loader;->optimize:Z

    if-eqz v8, :cond_c

    .line 2119
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v8, v39

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v13, v13, v40

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v41

    invoke-virtual/range {v3 .. v19}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFI)I

    .line 2036
    :cond_6
    :goto_3
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 2068
    .end local v7    # "u1":F
    .end local v12    # "u2":F
    .end local v17    # "u3":F
    .end local v39    # "v1":F
    .end local v40    # "v2":F
    .end local v41    # "v3":F
    :cond_7
    const/16 v31, 0x0

    .local v31, "m":I
    :goto_4
    move/from16 v0, v31

    move/from16 v1, p11

    if-ge v0, v1, :cond_5

    .line 2069
    aget-object v8, p5, v31

    if-eqz v8, :cond_b

    aget-object v8, p5, v31

    aget-object v13, p8, v28

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2071
    aget v8, p10, v31

    const/16 v13, 0x3e8

    if-eq v8, v13, :cond_8

    const/4 v8, -0x1

    move/from16 v0, v36

    if-eq v0, v8, :cond_8

    .line 2072
    aget v36, p10, v31

    .line 2079
    :goto_5
    aget-object v8, p6, v31

    if-eqz v8, :cond_9

    .line 2080
    aget-object v30, p5, v31

    .line 2081
    move/from16 v29, v31

    .line 2082
    aget-object v8, p6, v31

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v19

    .line 2083
    aget-object v8, p7, v31

    const/4 v13, 0x0

    aget v37, v8, v13

    .line 2084
    aget-object v8, p7, v31

    const/4 v13, 0x1

    aget v42, v8, v13

    .line 2085
    aget-object v8, p7, v31

    const/4 v13, 0x2

    aget v38, v8, v13

    .line 2086
    aget-object v8, p7, v31

    const/4 v13, 0x3

    aget v43, v8, v13

    goto/16 :goto_2

    .line 2076
    :cond_8
    const/16 v36, -0x1

    goto :goto_5

    .line 2088
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "__3ds-Color:"

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v13, p9, v31

    invoke-virtual {v13}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "/"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v13, p9, v31

    invoke-virtual {v13}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "/"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v13, p9, v31

    invoke-virtual {v13}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2089
    .local v26, "colName":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2090
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_2

    .line 2092
    :cond_a
    aget-object v8, p9, v31

    invoke-static {v8}, Lcom/threed/jpct/Texture;->createSingleColoredTexture(Lcom/threed/jpct/RGBColor;)Lcom/threed/jpct/Texture;

    move-result-object v34

    .line 2093
    .local v34, "tex":Lcom/threed/jpct/Texture;
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    .line 2094
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v19

    .line 2100
    aput-object v26, p6, v31

    .line 2101
    move/from16 v29, v31

    .line 2102
    aget-object v30, p5, v31

    .line 2105
    goto/16 :goto_2

    .line 2068
    .end local v26    # "colName":Ljava/lang/String;
    .end local v34    # "tex":Lcom/threed/jpct/Texture;
    :cond_b
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_4

    .line 2121
    .end local v31    # "m":I
    .restart local v7    # "u1":F
    .restart local v12    # "u2":F
    .restart local v17    # "u3":F
    .restart local v39    # "v1":F
    .restart local v40    # "v2":F
    .restart local v41    # "v3":F
    :cond_c
    const/4 v8, 0x0

    aget v13, v32, v23

    aput v13, v22, v8

    .line 2122
    const/4 v8, 0x1

    aget v13, v32, v24

    aput v13, v22, v8

    .line 2123
    const/4 v8, 0x2

    aget v13, v32, v25

    aput v13, v22, v8

    .line 2124
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v8, v39

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v13, v13, v40

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v41

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v3 .. v22}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[I)I

    .line 2125
    aget v8, v32, v23

    const/4 v13, -0x1

    if-ne v8, v13, :cond_d

    .line 2126
    const/4 v8, 0x0

    aget v8, v22, v8

    aput v8, v32, v23

    .line 2128
    :cond_d
    aget v8, v32, v24

    const/4 v13, -0x1

    if-ne v8, v13, :cond_e

    .line 2129
    const/4 v8, 0x1

    aget v8, v22, v8

    aput v8, v32, v24

    .line 2131
    :cond_e
    aget v8, v32, v25

    const/4 v13, -0x1

    if-ne v8, v13, :cond_6

    .line 2132
    const/4 v8, 0x2

    aget v8, v22, v8

    aput v8, v32, v25

    goto/16 :goto_3
.end method

.method private static createOBJObject(Ljava/util/HashMap;[[[I[[F[[FLjava/lang/String;[Ljava/lang/String;IIII[I[I[[F)Lcom/threed/jpct/Object3D;
    .locals 47
    .param p1, "polys"    # [[[I
    .param p2, "vertices"    # [[F
    .param p3, "uvs"    # [[F
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "mtlNames"    # [Ljava/lang/String;
    .param p6, "polyCnt"    # I
    .param p7, "polyStore"    # I
    .param p8, "uvCnt"    # I
    .param p9, "add"    # I
    .param p10, "posCache"    # [I
    .param p11, "lastPoints"    # [I
    .param p12, "normals"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;[[[I[[F[[F",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IIII[I[I[[F)",
            "Lcom/threed/jpct/Object3D;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "mats":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Object;>;"
    new-instance v3, Lcom/threed/jpct/Object3D;

    sub-int v4, p6, p7

    add-int v4, v4, p9

    invoke-direct {v3, v4}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 575
    .local v3, "obj":Lcom/threed/jpct/Object3D;
    if-nez p4, :cond_0

    .line 576
    const-string p4, "noname"

    .line 578
    :cond_0
    const/16 v39, 0x0

    .line 579
    .local v39, "noUV":Z
    if-nez p8, :cond_1

    .line 580
    const/16 v39, 0x1

    .line 581
    const/4 v4, 0x1

    const/4 v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "uvs":[[F
    check-cast p3, [[F

    .line 584
    .restart local p3    # "uvs":[[F
    :cond_1
    const/16 v30, 0x0

    .line 586
    .local v30, "isTrans":Z
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v42

    .line 587
    .local v42, "tm":Lcom/threed/jpct/TextureManager;
    const/16 v19, -0x1

    .line 589
    .local v19, "tid":I
    sget-boolean v4, Lcom/threed/jpct/Loader;->optimize:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/threed/jpct/Config;->useNormalsFromOBJ:Z

    if-nez v4, :cond_3

    if-nez p12, :cond_3

    const/16 v40, 0x1

    .line 591
    .local v40, "optimize":Z
    :goto_0
    if-nez v40, :cond_2

    .line 592
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->disableVertexSharing()V

    .line 594
    :cond_2
    const-string v35, "jkkjkljdldld----"

    .line 595
    .local v35, "lastMtl":Ljava/lang/String;
    move/from16 v25, p7

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_4

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_jPCT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/threed/jpct/Object3D;->setName(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/threed/jpct/Mesh;->compress()V

    .line 770
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Object \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' created using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v5

    iget v5, v5, Lcom/threed/jpct/Mesh;->anzTri:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " polygons and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v5

    iget v5, v5, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vertices."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 771
    return-object v3

    .line 589
    .end local v25    # "i":I
    .end local v35    # "lastMtl":Ljava/lang/String;
    .end local v40    # "optimize":Z
    :cond_3
    const/16 v40, 0x0

    goto :goto_0

    .line 597
    .restart local v25    # "i":I
    .restart local v35    # "lastMtl":Ljava/lang/String;
    .restart local v40    # "optimize":Z
    :cond_4
    aget-object v38, p5, v25

    .line 598
    .local v38, "mtlName":Ljava/lang/String;
    if-eqz v38, :cond_5

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 599
    const/16 v19, -0x1

    .line 600
    move-object/from16 v35, v38

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Ljava/lang/Object;

    .line 602
    .local v37, "mtlData":[Ljava/lang/Object;
    const/16 v23, 0x0

    .line 604
    .local v23, "col":Lcom/threed/jpct/RGBColor;
    if-nez v37, :cond_8

    .line 605
    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v19

    .line 635
    .end local v23    # "col":Lcom/threed/jpct/RGBColor;
    .end local v37    # "mtlData":[Ljava/lang/Object;
    :cond_5
    :goto_2
    aget-object v4, p1, v25

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/lit8 v31, v4, -0x1

    .line 636
    .local v31, "iv1":I
    aget-object v4, p1, v25

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/lit8 v32, v4, -0x1

    .line 637
    .local v32, "iv2":I
    aget-object v4, p1, v25

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/lit8 v33, v4, -0x1

    .line 638
    .local v33, "iv3":I
    aget-object v4, p1, v25

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/lit8 v34, v4, -0x1

    .line 640
    .local v34, "iv4":I
    aget-object v4, p1, v25

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/lit8 v26, v4, -0x1

    .line 641
    .local v26, "in1":I
    aget-object v4, p1, v25

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/lit8 v27, v4, -0x1

    .line 642
    .local v27, "in2":I
    aget-object v4, p1, v25

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/lit8 v28, v4, -0x1

    .line 643
    .local v28, "in3":I
    aget-object v4, p1, v25

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/lit8 v29, v4, -0x1

    .line 645
    .local v29, "in4":I
    const/16 v43, 0x0

    .line 646
    .local v43, "uv1":I
    const/16 v44, 0x0

    .line 647
    .local v44, "uv2":I
    const/16 v45, 0x0

    .line 648
    .local v45, "uv3":I
    const/16 v46, 0x0

    .line 649
    .local v46, "uv4":I
    if-nez v39, :cond_6

    .line 650
    const/4 v4, 0x0

    aget-object v5, p1, v25

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 651
    const/4 v4, 0x0

    aget-object v5, p1, v25

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v44

    .line 652
    const/4 v4, 0x0

    aget-object v5, p1, v25

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v45

    .line 653
    const/4 v4, 0x0

    aget-object v5, p1, v25

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v46

    .line 656
    :cond_6
    if-ltz v33, :cond_7

    if-gez v32, :cond_d

    .line 595
    :cond_7
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 607
    .end local v26    # "in1":I
    .end local v27    # "in2":I
    .end local v28    # "in3":I
    .end local v29    # "in4":I
    .end local v31    # "iv1":I
    .end local v32    # "iv2":I
    .end local v33    # "iv3":I
    .end local v34    # "iv4":I
    .end local v43    # "uv1":I
    .end local v44    # "uv2":I
    .end local v45    # "uv3":I
    .end local v46    # "uv4":I
    .restart local v23    # "col":Lcom/threed/jpct/RGBColor;
    .restart local v37    # "mtlData":[Ljava/lang/Object;
    :cond_8
    const/4 v4, 0x1

    aget-object v4, v37, v4

    if-eqz v4, :cond_9

    .line 608
    const/4 v4, 0x1

    aget-object v4, v37, v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v19

    .line 610
    :cond_9
    const/4 v4, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_a

    .line 611
    const/4 v4, 0x0

    aget-object v23, v37, v4

    .end local v23    # "col":Lcom/threed/jpct/RGBColor;
    check-cast v23, Lcom/threed/jpct/RGBColor;

    .line 612
    .restart local v23    # "col":Lcom/threed/jpct/RGBColor;
    if-eqz v23, :cond_a

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "__obj-Color:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 614
    .local v24, "colName":Ljava/lang/String;
    move-object/from16 v0, v42

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 615
    move-object/from16 v0, v42

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v19

    .line 623
    .end local v24    # "colName":Ljava/lang/String;
    :cond_a
    :goto_4
    const/4 v4, 0x2

    aget-object v4, v37, v4

    if-eqz v4, :cond_c

    .line 624
    const/16 v30, 0x1

    .line 625
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x2

    aget-object v4, v37, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/threed/jpct/Object3D;->setTransparency(I)V

    goto/16 :goto_2

    .line 617
    .restart local v24    # "colName":Ljava/lang/String;
    :cond_b
    invoke-static/range {v23 .. v23}, Lcom/threed/jpct/Texture;->createSingleColoredTexture(Lcom/threed/jpct/RGBColor;)Lcom/threed/jpct/Texture;

    move-result-object v41

    .line 618
    .local v41, "tex":Lcom/threed/jpct/Texture;
    move-object/from16 v0, v42

    move-object/from16 v1, v24

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    .line 619
    move-object/from16 v0, v42

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v19

    goto :goto_4

    .line 627
    .end local v24    # "colName":Ljava/lang/String;
    .end local v41    # "tex":Lcom/threed/jpct/Texture;
    :cond_c
    if-eqz v30, :cond_5

    .line 629
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/threed/jpct/Object3D;->setTransparency(I)V

    goto/16 :goto_2

    .line 660
    .end local v23    # "col":Lcom/threed/jpct/RGBColor;
    .end local v37    # "mtlData":[Ljava/lang/Object;
    .restart local v26    # "in1":I
    .restart local v27    # "in2":I
    .restart local v28    # "in3":I
    .restart local v29    # "in4":I
    .restart local v31    # "iv1":I
    .restart local v32    # "iv2":I
    .restart local v33    # "iv3":I
    .restart local v34    # "iv4":I
    .restart local v43    # "uv1":I
    .restart local v44    # "uv2":I
    .restart local v45    # "uv3":I
    .restart local v46    # "uv4":I
    :cond_d
    if-eqz v40, :cond_e

    .line 661
    aget-object v4, p2, v31

    const/4 v5, 0x0

    aget v4, v4, v5

    aget-object v5, p2, v31

    const/4 v6, 0x1

    aget v5, v5, v6

    aget-object v6, p2, v31

    const/4 v7, 0x2

    aget v6, v6, v7

    aget-object v7, p3, v43

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    aget-object v9, p3, v43

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    aget-object v9, p2, v32

    const/4 v10, 0x0

    aget v9, v9, v10

    aget-object v10, p2, v32

    const/4 v11, 0x1

    aget v10, v10, v11

    aget-object v11, p2, v32

    const/4 v12, 0x2

    aget v11, v11, v12

    .line 662
    aget-object v12, p3, v44

    const/4 v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    aget-object v14, p3, v44

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-float/2addr v13, v14

    aget-object v14, p2, v33

    const/4 v15, 0x0

    aget v14, v14, v15

    aget-object v15, p2, v33

    const/16 v16, 0x1

    aget v15, v15, v16

    aget-object v16, p2, v33

    const/16 v17, 0x2

    aget v16, v16, v17

    aget-object v17, p3, v45

    const/16 v18, 0x0

    aget v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    aget-object v20, p3, v45

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-float v18, v18, v20

    .line 661
    invoke-virtual/range {v3 .. v19}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFI)I

    .line 663
    if-ltz v34, :cond_7

    .line 664
    aget-object v4, p2, v31

    const/4 v5, 0x0

    aget v4, v4, v5

    aget-object v5, p2, v31

    const/4 v6, 0x1

    aget v5, v5, v6

    aget-object v6, p2, v31

    const/4 v7, 0x2

    aget v6, v6, v7

    aget-object v7, p3, v43

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    aget-object v9, p3, v43

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    aget-object v9, p2, v33

    const/4 v10, 0x0

    aget v9, v9, v10

    aget-object v10, p2, v33

    const/4 v11, 0x1

    aget v10, v10, v11

    aget-object v11, p2, v33

    const/4 v12, 0x2

    aget v11, v11, v12

    .line 665
    aget-object v12, p3, v45

    const/4 v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    aget-object v14, p3, v45

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-float/2addr v13, v14

    aget-object v14, p2, v34

    const/4 v15, 0x0

    aget v14, v14, v15

    aget-object v15, p2, v34

    const/16 v16, 0x1

    aget v15, v15, v16

    aget-object v16, p2, v34

    const/16 v17, 0x2

    aget v16, v16, v17

    aget-object v17, p3, v46

    const/16 v18, 0x0

    aget v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    aget-object v20, p3, v46

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-float v18, v18, v20

    .line 664
    invoke-virtual/range {v3 .. v19}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFI)I

    goto/16 :goto_3

    .line 668
    :cond_e
    const/4 v4, 0x0

    aget v5, p10, v31

    aput v5, p11, v4

    .line 669
    const/4 v4, 0x1

    aget v5, p10, v32

    aput v5, p11, v4

    .line 670
    const/4 v4, 0x2

    aget v5, p10, v33

    aput v5, p11, v4

    .line 672
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v36

    .line 674
    .local v36, "m":Lcom/threed/jpct/Mesh;
    if-eqz p12, :cond_14

    move-object/from16 v0, p12

    array-length v4, v0

    if-lez v4, :cond_14

    .line 675
    const/4 v4, 0x0

    aget v4, p11, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_10

    .line 676
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v26

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v26

    const/4 v6, 0x1

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v26

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_10

    .line 677
    :cond_f
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, p11, v4

    .line 680
    :cond_10
    const/4 v4, 0x1

    aget v4, p11, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_12

    .line 681
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v27

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_11

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v27

    const/4 v6, 0x1

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_11

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v27

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_12

    .line 682
    :cond_11
    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, p11, v4

    .line 685
    :cond_12
    const/4 v4, 0x2

    aget v4, p11, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_14

    .line 686
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v28

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_13

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v28

    const/4 v6, 0x1

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_13

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v28

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_14

    .line 687
    :cond_13
    const/4 v4, 0x2

    const/4 v5, -0x1

    aput v5, p11, v4

    .line 691
    :cond_14
    aget-object v4, p2, v31

    const/4 v5, 0x0

    aget v4, v4, v5

    aget-object v5, p2, v31

    const/4 v6, 0x1

    aget v5, v5, v6

    aget-object v6, p2, v31

    const/4 v7, 0x2

    aget v6, v6, v7

    aget-object v7, p3, v43

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    aget-object v9, p3, v43

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    aget-object v9, p2, v32

    const/4 v10, 0x0

    aget v9, v9, v10

    aget-object v10, p2, v32

    const/4 v11, 0x1

    aget v10, v10, v11

    aget-object v11, p2, v32

    const/4 v12, 0x2

    aget v11, v11, v12

    .line 692
    aget-object v12, p3, v44

    const/4 v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    aget-object v14, p3, v44

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-float/2addr v13, v14

    aget-object v14, p2, v33

    const/4 v15, 0x0

    aget v14, v14, v15

    aget-object v15, p2, v33

    const/16 v16, 0x1

    aget v15, v15, v16

    aget-object v16, p2, v33

    const/16 v17, 0x2

    aget v16, v16, v17

    aget-object v17, p3, v45

    const/16 v18, 0x0

    aget v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    aget-object v20, p3, v45

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-float v18, v18, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, p11

    .line 691
    invoke-virtual/range {v3 .. v22}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[I)I

    .line 694
    if-eqz p12, :cond_15

    move-object/from16 v0, p12

    array-length v4, v0

    if-lez v4, :cond_15

    .line 695
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 696
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget-object v6, p12, v26

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 697
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget-object v6, p12, v26

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 698
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget-object v6, p12, v26

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 699
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget-object v6, p12, v27

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 700
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget-object v6, p12, v27

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 701
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget-object v6, p12, v27

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 702
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget-object v6, p12, v28

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 703
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget-object v6, p12, v28

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 704
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget-object v6, p12, v28

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 707
    :cond_15
    aget v4, p10, v31

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 708
    const/4 v4, 0x0

    aget v4, p11, v4

    aput v4, p10, v31

    .line 710
    :cond_16
    aget v4, p10, v32

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 711
    const/4 v4, 0x1

    aget v4, p11, v4

    aput v4, p10, v32

    .line 713
    :cond_17
    aget v4, p10, v33

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    .line 714
    const/4 v4, 0x2

    aget v4, p11, v4

    aput v4, p10, v33

    .line 716
    :cond_18
    if-ltz v34, :cond_7

    .line 717
    const/4 v4, 0x0

    aget v5, p10, v31

    aput v5, p11, v4

    .line 718
    const/4 v4, 0x1

    aget v5, p10, v33

    aput v5, p11, v4

    .line 719
    const/4 v4, 0x2

    aget v5, p10, v34

    aput v5, p11, v4

    .line 721
    if-eqz p12, :cond_1e

    move-object/from16 v0, p12

    array-length v4, v0

    if-lez v4, :cond_1e

    .line 722
    const/4 v4, 0x0

    aget v4, p11, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    .line 723
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v26

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_19

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v26

    const/4 v6, 0x1

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_19

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v26

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1a

    .line 724
    :cond_19
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, p11, v4

    .line 727
    :cond_1a
    const/4 v4, 0x1

    aget v4, p11, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1c

    .line 728
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v28

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1b

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v28

    const/4 v6, 0x1

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1b

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v28

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1c

    .line 729
    :cond_1b
    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, p11, v4

    .line 732
    :cond_1c
    const/4 v4, 0x2

    aget v4, p11, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1e

    .line 733
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v29

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1d

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v29

    const/4 v6, 0x1

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1d

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget v4, v4, v5

    aget-object v5, p12, v29

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1e

    .line 734
    :cond_1d
    const/4 v4, 0x2

    const/4 v5, -0x1

    aput v5, p11, v4

    .line 738
    :cond_1e
    aget-object v4, p2, v31

    const/4 v5, 0x0

    aget v4, v4, v5

    aget-object v5, p2, v31

    const/4 v6, 0x1

    aget v5, v5, v6

    aget-object v6, p2, v31

    const/4 v7, 0x2

    aget v6, v6, v7

    aget-object v7, p3, v43

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    aget-object v9, p3, v43

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    aget-object v9, p2, v33

    const/4 v10, 0x0

    aget v9, v9, v10

    aget-object v10, p2, v33

    const/4 v11, 0x1

    aget v10, v10, v11

    aget-object v11, p2, v33

    const/4 v12, 0x2

    aget v11, v11, v12

    .line 739
    aget-object v12, p3, v45

    const/4 v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    aget-object v14, p3, v45

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-float/2addr v13, v14

    aget-object v14, p2, v34

    const/4 v15, 0x0

    aget v14, v14, v15

    aget-object v15, p2, v34

    const/16 v16, 0x1

    aget v15, v15, v16

    aget-object v16, p2, v34

    const/16 v17, 0x2

    aget v16, v16, v17

    aget-object v17, p3, v46

    const/16 v18, 0x0

    aget v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    aget-object v20, p3, v46

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-float v18, v18, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, p11

    .line 738
    invoke-virtual/range {v3 .. v22}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[I)I

    .line 741
    if-eqz p12, :cond_1f

    move-object/from16 v0, p12

    array-length v4, v0

    if-lez v4, :cond_1f

    .line 742
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 743
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget-object v6, p12, v26

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 744
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget-object v6, p12, v26

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 745
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x0

    aget v5, p11, v5

    aget-object v6, p12, v26

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 746
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget-object v6, p12, v28

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 747
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget-object v6, p12, v28

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 748
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x1

    aget v5, p11, v5

    aget-object v6, p12, v28

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 749
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget-object v6, p12, v29

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 750
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget-object v6, p12, v29

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 751
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v5, 0x2

    aget v5, p11, v5

    aget-object v6, p12, v29

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 754
    :cond_1f
    aget v4, p10, v31

    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    .line 755
    const/4 v4, 0x0

    aget v4, p11, v4

    aput v4, p10, v31

    .line 757
    :cond_20
    aget v4, p10, v33

    const/4 v5, -0x1

    if-ne v4, v5, :cond_21

    .line 758
    const/4 v4, 0x1

    aget v4, p11, v4

    aput v4, p10, v33

    .line 760
    :cond_21
    aget v4, p10, v34

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 761
    const/4 v4, 0x2

    aget v4, p11, v4

    aput v4, p10, v34

    goto/16 :goto_3
.end method

.method private static getChunkHeader([BI[I)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # [I

    .prologue
    .line 2149
    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 2150
    const/4 v0, 0x1

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 2151
    return-void
.end method

.method private static getInt([BI)I
    .locals 6
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 1080
    add-int/lit8 v4, p1, 0x3

    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 1081
    aget-byte v4, p0, p1

    invoke-static {v4}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result v0

    .line 1082
    .local v0, "a":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result v1

    .line 1083
    .local v1, "d":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result v2

    .line 1084
    .local v2, "e":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result v3

    .line 1085
    .local v3, "f":I
    shl-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v0

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x18

    add-int/2addr v4, v5

    .line 1087
    .end local v0    # "a":I
    .end local v1    # "d":I
    .end local v2    # "e":I
    .end local v3    # "f":I
    :goto_0
    return v4

    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private static getSequenceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 1111
    const/16 v0, 0x20

    .line 1112
    .local v0, "c":C
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1113
    .local v2, "res":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 1120
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1115
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1116
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 1117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1114
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getShortInt([BI)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 1091
    add-int/lit8 v2, p1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 1092
    aget-byte v2, p0, p1

    invoke-static {v2}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result v0

    .line 1093
    .local v0, "a":I
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result v1

    .line 1094
    .local v1, "d":I
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    .line 1096
    .end local v0    # "a":I
    .end local v1    # "d":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static getUnsignedByte([BI)I
    .locals 1
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 1100
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 1101
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result v0

    .line 1103
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static load3DS(Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "scale"    # F

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-static {v0, v0, p0, p1}, Lcom/threed/jpct/Loader;->load3DS(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method private static load3DS(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 80
    .param p0, "docBase"    # Ljava/net/URL;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/io/InputStream;
    .param p3, "scale"    # F

    .prologue
    .line 1542
    invoke-static/range {p0 .. p2}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v30

    .line 1543
    .local v30, "buf":[B
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v33, v0

    .line 1544
    .local v33, "data":[I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v66, v0

    .line 1545
    .local v66, "tmpData":[I
    const/16 v50, 0x0

    .line 1546
    .local v50, "offset":I
    const/16 v37, -0x1

    .line 1547
    .local v37, "id":I
    const/16 v61, -0x1

    .line 1548
    .local v61, "size":I
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    .local v49, "objs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/Object3D;>;"
    const/16 v45, 0x0

    .line 1551
    .local v45, "nBuf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    check-cast v5, [[F

    .line 1552
    .local v5, "vertices":[[F
    const/4 v7, 0x0

    check-cast v7, [[I

    .line 1553
    .local v7, "coords":[[I
    const/4 v12, 0x0

    check-cast v12, [Ljava/lang/String;

    .line 1554
    .local v12, "coordMat":[Ljava/lang/String;
    const/16 v17, 0xa

    const/16 v18, 0x4

    filled-new-array/range {v17 .. v18}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[F

    .line 1555
    .local v11, "matTextureData":[[F
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 1556
    .local v9, "matName":[Ljava/lang/String;
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/String;

    .line 1557
    .local v10, "textureName":[Ljava/lang/String;
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v13, v0, [Lcom/threed/jpct/RGBColor;

    .line 1558
    .local v13, "matColor":[Lcom/threed/jpct/RGBColor;
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v14, v0, [I

    .line 1560
    .local v14, "matTrans":[I
    const/16 v39, 0x0

    .local v39, "m":I
    :goto_0
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v39

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 1568
    const/4 v6, 0x0

    .line 1569
    .local v6, "vertexCnt":I
    const/16 v63, 0x0

    .line 1570
    .local v63, "texCnt":I
    const/4 v8, 0x0

    .line 1571
    .local v8, "crdCnt":I
    const/4 v15, 0x0

    .line 1572
    .local v15, "matCnt":I
    const-string v16, ""

    .line 1573
    .local v16, "name":Ljava/lang/String;
    const-string v4, ""

    .line 1574
    .local v4, "oldName":Ljava/lang/String;
    const-string v38, ""

    .line 1575
    .local v38, "lastKeyframeName":Ljava/lang/String;
    new-instance v46, Ljava/util/HashMap;

    invoke-direct/range {v46 .. v46}, Ljava/util/HashMap;-><init>()V

    .line 1577
    .local v46, "name2pivot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/threed/jpct/SimpleVector;>;"
    if-eqz v30, :cond_0

    .line 1578
    move-object/from16 v0, v30

    move/from16 v1, v50

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 1579
    add-int/lit8 v50, v50, 0x6

    .line 1580
    const/16 v17, 0x0

    aget v37, v33, v17

    .line 1581
    const/16 v17, 0x1

    aget v61, v33, v17

    .line 1582
    const/16 v17, 0x4d4d

    move/from16 v0, v37

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 1583
    const-string v17, "Not a valid 3DS file!"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1970
    :cond_0
    if-eqz v6, :cond_2

    .line 1971
    if-eqz v8, :cond_1

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    move/from16 v27, v15

    .line 1972
    invoke-static/range {v16 .. v27}, Lcom/threed/jpct/Loader;->create3DSObject(Ljava/lang/String;[[FI[[II[Ljava/lang/String;[Ljava/lang/String;[[F[Ljava/lang/String;[Lcom/threed/jpct/RGBColor;[II)Lcom/threed/jpct/Object3D;

    move-result-object v17

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    :cond_1
    const/4 v6, 0x0

    .line 1975
    const/16 v63, 0x0

    .line 1976
    const/4 v8, 0x0

    .line 1979
    :cond_2
    sget-boolean v17, Lcom/threed/jpct/Config;->useRotationPivotFrom3DS:Z

    if-eqz v17, :cond_3

    .line 1980
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_1
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v36

    move/from16 v1, v17

    if-lt v0, v1, :cond_49

    .line 1997
    .end local v36    # "i":I
    :cond_3
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    move-object/from16 v59, v0

    .line 1998
    .local v59, "res":[Lcom/threed/jpct/Object3D;
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_2
    move-object/from16 v0, v59

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v36

    move/from16 v1, v17

    if-lt v0, v1, :cond_4b

    .line 2001
    return-object v59

    .line 1561
    .end local v4    # "oldName":Ljava/lang/String;
    .end local v6    # "vertexCnt":I
    .end local v8    # "crdCnt":I
    .end local v15    # "matCnt":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v36    # "i":I
    .end local v38    # "lastKeyframeName":Ljava/lang/String;
    .end local v46    # "name2pivot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/threed/jpct/SimpleVector;>;"
    .end local v59    # "res":[Lcom/threed/jpct/Object3D;
    .end local v63    # "texCnt":I
    :cond_4
    aget-object v17, v11, v39

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    .line 1562
    aget-object v17, v11, v39

    const/16 v18, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    .line 1563
    aget-object v17, v11, v39

    const/16 v18, 0x2

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1564
    aget-object v17, v11, v39

    const/16 v18, 0x3

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1565
    const/16 v17, 0x3e8

    aput v17, v14, v39

    .line 1560
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 1586
    .restart local v4    # "oldName":Ljava/lang/String;
    .restart local v6    # "vertexCnt":I
    .restart local v8    # "crdCnt":I
    .restart local v15    # "matCnt":I
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v38    # "lastKeyframeName":Ljava/lang/String;
    .restart local v46    # "name2pivot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/threed/jpct/SimpleVector;>;"
    .restart local v63    # "texCnt":I
    :cond_5
    const/16 v72, 0x1

    .line 1588
    .local v72, "unknownChunk":Z
    :cond_6
    :goto_3
    if-ltz v37, :cond_0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v50

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    if-ltz v50, :cond_0

    .line 1589
    const/16 v72, 0x1

    .line 1590
    move-object/from16 v0, v30

    move/from16 v1, v50

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 1591
    add-int/lit8 v50, v50, 0x6

    .line 1593
    const/16 v17, 0x0

    aget v37, v33, v17

    .line 1594
    const/16 v17, 0x1

    aget v61, v33, v17

    .line 1596
    if-ltz v37, :cond_6

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v50

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 1598
    const/16 v17, 0x4100

    move/from16 v0, v37

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1599
    if-eqz v8, :cond_7

    .line 1600
    invoke-static/range {v4 .. v15}, Lcom/threed/jpct/Loader;->create3DSObject(Ljava/lang/String;[[FI[[II[Ljava/lang/String;[Ljava/lang/String;[[F[Ljava/lang/String;[Lcom/threed/jpct/RGBColor;[II)Lcom/threed/jpct/Object3D;

    move-result-object v17

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Processing object from 3DS-file: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1603
    const/4 v6, 0x0

    .line 1604
    const/16 v63, 0x0

    .line 1605
    const/4 v8, 0x0

    .line 1606
    const/16 v72, 0x0

    .line 1609
    :cond_8
    const v17, 0xb010

    move/from16 v0, v37

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 1610
    const/16 v32, 0x0

    .line 1611
    .local v32, "c":I
    new-instance v60, Ljava/lang/StringBuilder;

    const/16 v17, 0x28

    move-object/from16 v0, v60

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1613
    .local v60, "sBuf":Ljava/lang/StringBuilder;
    :cond_9
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v32

    .line 1614
    add-int/lit8 v50, v50, 0x1

    .line 1615
    if-lez v32, :cond_a

    .line 1616
    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v60

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1618
    :cond_a
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v50

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    .line 1619
    const/16 v32, -0x1

    .line 1621
    :cond_b
    if-gtz v32, :cond_9

    .line 1622
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 1623
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Name in hierarchy found: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1624
    add-int/lit8 v50, v50, 0x6

    .line 1625
    const/16 v72, 0x0

    .line 1628
    .end local v32    # "c":I
    .end local v60    # "sBuf":Ljava/lang/StringBuilder;
    :cond_c
    const v17, 0xb020

    move/from16 v0, v37

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 1629
    add-int/lit8 v50, v50, 0x14

    .line 1631
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v77

    .line 1632
    .local v77, "x":F
    add-int/lit8 v50, v50, 0x4

    .line 1634
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v78

    .line 1635
    .local v78, "y":F
    add-int/lit8 v50, v50, 0x4

    .line 1637
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v79

    .line 1638
    .local v79, "z":F
    add-int/lit8 v50, v50, 0x4

    .line 1640
    invoke-static/range {v77 .. v79}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v17

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    const/16 v72, 0x0

    .line 1644
    .end local v77    # "x":F
    .end local v78    # "y":F
    .end local v79    # "z":F
    :cond_d
    const/16 v17, 0x4000

    move/from16 v0, v37

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 1645
    const/16 v32, 0x0

    .line 1646
    .restart local v32    # "c":I
    new-instance v45, Ljava/lang/StringBuilder;

    .end local v45    # "nBuf":Ljava/lang/StringBuilder;
    const/16 v17, 0x28

    move-object/from16 v0, v45

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1648
    .restart local v45    # "nBuf":Ljava/lang/StringBuilder;
    :cond_e
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v32

    .line 1649
    add-int/lit8 v50, v50, 0x1

    .line 1650
    if-lez v32, :cond_f

    .line 1651
    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v45

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1653
    :cond_f
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v50

    move/from16 v1, v17

    if-lt v0, v1, :cond_10

    .line 1654
    const/16 v32, -0x1

    .line 1656
    :cond_10
    if-gtz v32, :cond_e

    .line 1657
    move-object/from16 v4, v16

    .line 1658
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1659
    const/16 v72, 0x0

    .line 1662
    .end local v32    # "c":I
    :cond_11
    const/16 v17, 0x4110

    move/from16 v0, v37

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 1664
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v28

    .line 1666
    .local v28, "anz":I
    if-eqz v5, :cond_12

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_13

    .line 1667
    :cond_12
    const/16 v17, 0x5

    move/from16 v0, v28

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "vertices":[[F
    check-cast v5, [[F

    .line 1670
    .restart local v5    # "vertices":[[F
    :cond_13
    add-int/lit8 v50, v50, 0x2

    .line 1671
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_4
    move/from16 v0, v36

    move/from16 v1, v28

    if-lt v0, v1, :cond_1f

    .line 1683
    const/16 v72, 0x0

    .line 1686
    .end local v28    # "anz":I
    .end local v36    # "i":I
    :cond_14
    const/16 v17, 0x4120

    move/from16 v0, v37

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 1687
    move/from16 v51, v50

    .line 1689
    .local v51, "offy":I
    move-object/from16 v0, v30

    move/from16 v1, v51

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v28

    .line 1691
    .restart local v28    # "anz":I
    if-eqz v7, :cond_15

    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_16

    .line 1692
    :cond_15
    const/16 v17, 0x3

    move/from16 v0, v28

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "coords":[[I
    check-cast v7, [[I

    .line 1693
    .restart local v7    # "coords":[[I
    move/from16 v0, v28

    new-array v12, v0, [Ljava/lang/String;

    .line 1696
    :cond_16
    add-int/lit8 v51, v51, 0x2

    .line 1698
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_5
    move/from16 v0, v36

    move/from16 v1, v28

    if-lt v0, v1, :cond_20

    .line 1712
    :goto_6
    add-int v17, v50, v61

    add-int/lit8 v17, v17, -0x6

    move/from16 v0, v51

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v51

    move/from16 v1, v17

    if-lt v0, v1, :cond_21

    .line 1745
    :cond_17
    const/16 v72, 0x1

    .line 1748
    .end local v28    # "anz":I
    .end local v36    # "i":I
    .end local v51    # "offy":I
    :cond_18
    const/16 v17, 0x4140

    move/from16 v0, v37

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    .line 1750
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v28

    .line 1751
    .restart local v28    # "anz":I
    add-int/lit8 v50, v50, 0x2

    .line 1753
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_7
    move/from16 v0, v36

    move/from16 v1, v28

    if-lt v0, v1, :cond_27

    .line 1762
    const/16 v72, 0x0

    .line 1765
    .end local v28    # "anz":I
    .end local v36    # "i":I
    :cond_19
    const v17, 0xafff

    move/from16 v0, v37

    move/from16 v1, v17

    if-ne v0, v1, :cond_1c

    .line 1766
    move/from16 v51, v50

    .line 1768
    .restart local v51    # "offy":I
    :goto_8
    add-int v17, v50, v61

    add-int/lit8 v17, v17, -0x6

    move/from16 v0, v51

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v51

    move/from16 v1, v17

    if-lt v0, v1, :cond_28

    .line 1915
    :cond_1a
    add-int/lit8 v15, v15, 0x1

    .line 1917
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v15, v0, :cond_1b

    .line 1918
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v47, v17, 0xa

    .line 1919
    .local v47, "nl":I
    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 1920
    .local v41, "matNameT":[Ljava/lang/String;
    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v64, v0

    .line 1921
    .local v64, "textureNameT":[Ljava/lang/String;
    move/from16 v0, v47

    new-array v0, v0, [Lcom/threed/jpct/RGBColor;

    move-object/from16 v40, v0

    .line 1922
    .local v40, "matColorT":[Lcom/threed/jpct/RGBColor;
    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v43, v0

    .line 1923
    .local v43, "matTransT":[I
    const/16 v17, 0x4

    move/from16 v0, v47

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [[F

    .line 1925
    .local v42, "matTextureDataT":[[F
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v41

    move/from16 v2, v18

    invoke-static {v9, v0, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1926
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v64

    move/from16 v2, v18

    invoke-static {v10, v0, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1927
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v40

    move/from16 v2, v18

    invoke-static {v13, v0, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1928
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v18

    invoke-static {v14, v0, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1930
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_9
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v36

    move/from16 v1, v17

    if-lt v0, v1, :cond_46

    .line 1934
    move-object/from16 v9, v41

    .line 1935
    move-object/from16 v10, v64

    .line 1936
    move-object/from16 v13, v40

    .line 1937
    move-object/from16 v14, v43

    .line 1938
    move-object/from16 v11, v42

    .line 1940
    move/from16 v39, v15

    :goto_a
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v39

    move/from16 v1, v17

    if-lt v0, v1, :cond_47

    .line 1950
    .end local v36    # "i":I
    .end local v40    # "matColorT":[Lcom/threed/jpct/RGBColor;
    .end local v41    # "matNameT":[Ljava/lang/String;
    .end local v42    # "matTextureDataT":[[F
    .end local v43    # "matTransT":[I
    .end local v47    # "nl":I
    .end local v64    # "textureNameT":[Ljava/lang/String;
    :cond_1b
    const/16 v72, 0x1

    .line 1954
    .end local v51    # "offy":I
    :cond_1c
    const/16 v17, 0x3d3d

    move/from16 v0, v37

    move/from16 v1, v17

    if-eq v0, v1, :cond_1d

    const v17, 0xb000

    move/from16 v0, v37

    move/from16 v1, v17

    if-eq v0, v1, :cond_1d

    const v17, 0xb002

    move/from16 v0, v37

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e

    .line 1955
    :cond_1d
    const/16 v72, 0x0

    .line 1958
    :cond_1e
    if-eqz v72, :cond_6

    .line 1959
    add-int v17, v50, v61

    add-int/lit8 v17, v17, -0x6

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_48

    .line 1960
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v50, v0

    goto/16 :goto_3

    .line 1672
    .restart local v28    # "anz":I
    .restart local v36    # "i":I
    :cond_1f
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v17

    mul-float v77, v17, p3

    .line 1673
    .restart local v77    # "x":F
    add-int/lit8 v50, v50, 0x4

    .line 1674
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v17

    mul-float v78, v17, p3

    .line 1675
    .restart local v78    # "y":F
    add-int/lit8 v50, v50, 0x4

    .line 1676
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v17

    mul-float v79, v17, p3

    .line 1677
    .restart local v79    # "z":F
    add-int/lit8 v50, v50, 0x4

    .line 1678
    aget-object v17, v5, v6

    const/16 v18, 0x0

    aput v77, v17, v18

    .line 1679
    aget-object v17, v5, v6

    const/16 v18, 0x1

    aput v78, v17, v18

    .line 1680
    aget-object v17, v5, v6

    const/16 v18, 0x2

    aput v79, v17, v18

    .line 1681
    add-int/lit8 v6, v6, 0x1

    .line 1671
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_4

    .line 1699
    .end local v77    # "x":F
    .end local v78    # "y":F
    .end local v79    # "z":F
    .restart local v51    # "offy":I
    :cond_20
    move-object/from16 v0, v30

    move/from16 v1, v51

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v74

    .line 1700
    .local v74, "v1":I
    add-int/lit8 v51, v51, 0x2

    .line 1701
    move-object/from16 v0, v30

    move/from16 v1, v51

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v75

    .line 1702
    .local v75, "v2":I
    add-int/lit8 v51, v51, 0x2

    .line 1703
    move-object/from16 v0, v30

    move/from16 v1, v51

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v76

    .line 1704
    .local v76, "v3":I
    add-int/lit8 v51, v51, 0x2

    .line 1705
    add-int/lit8 v51, v51, 0x2

    .line 1706
    aget-object v17, v7, v8

    const/16 v18, 0x0

    aput v74, v17, v18

    .line 1707
    aget-object v17, v7, v8

    const/16 v18, 0x1

    aput v75, v17, v18

    .line 1708
    aget-object v17, v7, v8

    const/16 v18, 0x2

    aput v76, v17, v18

    .line 1709
    add-int/lit8 v8, v8, 0x1

    .line 1698
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_5

    .line 1713
    .end local v74    # "v1":I
    .end local v75    # "v2":I
    .end local v76    # "v3":I
    :cond_21
    move-object/from16 v0, v30

    move/from16 v1, v51

    move-object/from16 v2, v66

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 1714
    add-int/lit8 v51, v51, 0x6

    .line 1715
    const/16 v17, 0x0

    aget v67, v66, v17

    .line 1716
    .local v67, "tmpId":I
    const/16 v17, 0x1

    aget v69, v66, v17

    .line 1718
    .local v69, "tmpSize":I
    const/16 v17, 0x4130

    move/from16 v0, v67

    move/from16 v1, v17

    if-ne v0, v1, :cond_25

    .line 1719
    const/16 v32, 0x0

    .line 1720
    .restart local v32    # "c":I
    move/from16 v53, v51

    .line 1721
    .local v53, "offy3":I
    new-instance v45, Ljava/lang/StringBuilder;

    .end local v45    # "nBuf":Ljava/lang/StringBuilder;
    const/16 v17, 0x28

    move-object/from16 v0, v45

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1723
    .restart local v45    # "nBuf":Ljava/lang/StringBuilder;
    :cond_22
    move-object/from16 v0, v30

    move/from16 v1, v53

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v32

    .line 1724
    add-int/lit8 v53, v53, 0x1

    .line 1725
    if-lez v32, :cond_23

    .line 1726
    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v45

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1728
    :cond_23
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v53

    move/from16 v1, v17

    if-lt v0, v1, :cond_24

    .line 1729
    const/16 v32, -0x1

    .line 1731
    :cond_24
    if-gtz v32, :cond_22

    .line 1733
    move-object/from16 v0, v30

    move/from16 v1, v53

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v65

    .line 1734
    .local v65, "tmpCnt":I
    add-int/lit8 v53, v53, 0x2

    .line 1735
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 1736
    .local v44, "n":Ljava/lang/String;
    const/16 v32, 0x0

    :goto_b
    move/from16 v0, v32

    move/from16 v1, v65

    if-lt v0, v1, :cond_26

    .line 1743
    .end local v32    # "c":I
    .end local v44    # "n":Ljava/lang/String;
    .end local v53    # "offy3":I
    .end local v65    # "tmpCnt":I
    :cond_25
    add-int/lit8 v17, v69, -0x6

    add-int v51, v51, v17

    goto/16 :goto_6

    .line 1737
    .restart local v32    # "c":I
    .restart local v44    # "n":Ljava/lang/String;
    .restart local v53    # "offy3":I
    .restart local v65    # "tmpCnt":I
    :cond_26
    move-object/from16 v0, v30

    move/from16 v1, v53

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v34

    .line 1738
    .local v34, "fc":I
    add-int/lit8 v53, v53, 0x2

    .line 1739
    aput-object v44, v12, v34

    .line 1736
    add-int/lit8 v32, v32, 0x1

    goto :goto_b

    .line 1754
    .end local v32    # "c":I
    .end local v34    # "fc":I
    .end local v44    # "n":Ljava/lang/String;
    .end local v51    # "offy":I
    .end local v53    # "offy3":I
    .end local v65    # "tmpCnt":I
    .end local v67    # "tmpId":I
    .end local v69    # "tmpSize":I
    :cond_27
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v71

    .line 1755
    .local v71, "u":F
    add-int/lit8 v50, v50, 0x4

    .line 1756
    move-object/from16 v0, v30

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v73

    .line 1757
    .local v73, "v":F
    add-int/lit8 v50, v50, 0x4

    .line 1758
    aget-object v17, v5, v63

    const/16 v18, 0x3

    aput v71, v17, v18

    .line 1759
    aget-object v17, v5, v63

    const/16 v18, 0x4

    aput v73, v17, v18

    .line 1760
    add-int/lit8 v63, v63, 0x1

    .line 1753
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_7

    .line 1769
    .end local v28    # "anz":I
    .end local v36    # "i":I
    .end local v71    # "u":F
    .end local v73    # "v":F
    .restart local v51    # "offy":I
    :cond_28
    move-object/from16 v0, v30

    move/from16 v1, v51

    move-object/from16 v2, v66

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 1770
    add-int/lit8 v51, v51, 0x6

    .line 1771
    const/16 v17, 0x0

    aget v67, v66, v17

    .line 1772
    .restart local v67    # "tmpId":I
    const/16 v17, 0x1

    aget v69, v66, v17

    .line 1774
    .restart local v69    # "tmpSize":I
    const v17, 0xa000

    move/from16 v0, v67

    move/from16 v1, v17

    if-ne v0, v1, :cond_2c

    .line 1775
    new-instance v45, Ljava/lang/StringBuilder;

    .end local v45    # "nBuf":Ljava/lang/StringBuilder;
    const/16 v17, 0x28

    move-object/from16 v0, v45

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1776
    .restart local v45    # "nBuf":Ljava/lang/StringBuilder;
    const/16 v32, 0x0

    .line 1777
    .restart local v32    # "c":I
    move/from16 v53, v51

    .line 1779
    .restart local v53    # "offy3":I
    :cond_29
    move-object/from16 v0, v30

    move/from16 v1, v53

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v32

    .line 1780
    add-int/lit8 v53, v53, 0x1

    .line 1781
    if-lez v32, :cond_2a

    .line 1782
    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v45

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1784
    :cond_2a
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v53

    move/from16 v1, v17

    if-lt v0, v1, :cond_2b

    .line 1785
    const/16 v32, -0x1

    .line 1787
    :cond_2b
    if-gtz v32, :cond_29

    .line 1788
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v9, v15

    .line 1789
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Processing new material "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v18, v9, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1792
    .end local v32    # "c":I
    .end local v53    # "offy3":I
    :cond_2c
    const v17, 0xa020

    move/from16 v0, v67

    move/from16 v1, v17

    if-ne v0, v1, :cond_2e

    .line 1794
    add-int/lit8 v52, v51, 0x6

    .line 1795
    .local v52, "offy2":I
    const/16 v17, 0x18

    move/from16 v0, v69

    move/from16 v1, v17

    if-ne v0, v1, :cond_2d

    sget-boolean v17, Lcom/threed/jpct/Config;->oldStyle3DSLoader:Z

    if-eqz v17, :cond_33

    .line 1796
    :cond_2d
    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v58

    .line 1797
    .local v58, "r":I
    add-int/lit8 v52, v52, 0x1

    .line 1798
    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v35

    .line 1799
    .local v35, "g":I
    add-int/lit8 v52, v52, 0x1

    .line 1800
    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v29

    .line 1801
    .local v29, "b":I
    add-int/lit8 v52, v52, 0x1

    .line 1802
    new-instance v17, Lcom/threed/jpct/RGBColor;

    move-object/from16 v0, v17

    move/from16 v1, v58

    move/from16 v2, v35

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    aput-object v17, v13, v15

    .line 1844
    .end local v29    # "b":I
    .end local v35    # "g":I
    .end local v52    # "offy2":I
    .end local v58    # "r":I
    :cond_2e
    :goto_c
    const v17, 0xa050

    move/from16 v0, v67

    move/from16 v1, v17

    if-ne v0, v1, :cond_31

    .line 1845
    add-int/lit8 v52, v51, 0x6

    .line 1846
    .restart local v52    # "offy2":I
    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v17

    rsub-int/lit8 v62, v17, 0x64

    .line 1847
    .local v62, "t":I
    if-gez v62, :cond_2f

    .line 1848
    const/16 v62, 0x0

    .line 1850
    :cond_2f
    const/16 v17, 0x64

    move/from16 v0, v62

    move/from16 v1, v17

    if-le v0, v1, :cond_30

    .line 1851
    const/16 v62, 0x64

    .line 1855
    :cond_30
    const/16 v17, 0x64

    move/from16 v0, v62

    move/from16 v1, v17

    if-ne v0, v1, :cond_3b

    .line 1856
    const/16 v62, -0x1

    .line 1860
    :goto_d
    aput v62, v14, v15

    .line 1863
    .end local v52    # "offy2":I
    .end local v62    # "t":I
    :cond_31
    const v17, 0xa200

    move/from16 v0, v67

    move/from16 v1, v17

    if-ne v0, v1, :cond_32

    .line 1864
    move/from16 v52, v51

    .line 1865
    .restart local v52    # "offy2":I
    :goto_e
    add-int v17, v51, v61

    add-int/lit8 v17, v17, -0x6

    move/from16 v0, v52

    move/from16 v1, v17

    if-ge v0, v1, :cond_32

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v52

    move/from16 v1, v17

    if-lt v0, v1, :cond_3c

    .line 1912
    .end local v52    # "offy2":I
    :cond_32
    add-int/lit8 v17, v69, -0x6

    add-int v51, v51, v17

    goto/16 :goto_8

    .line 1804
    .restart local v52    # "offy2":I
    :cond_33
    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v17

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v58, v0

    .line 1805
    .restart local v58    # "r":I
    add-int/lit8 v52, v52, 0x4

    .line 1806
    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v17

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v35, v0

    .line 1807
    .restart local v35    # "g":I
    add-int/lit8 v52, v52, 0x4

    .line 1808
    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v17

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1809
    .restart local v29    # "b":I
    add-int/lit8 v52, v52, 0x4

    .line 1810
    const/16 v31, 0x0

    .line 1811
    .local v31, "bug":Z
    if-gez v58, :cond_34

    .line 1812
    const/16 v58, 0x0

    .line 1813
    const/16 v31, 0x1

    .line 1815
    :cond_34
    if-gez v35, :cond_35

    .line 1816
    const/16 v35, 0x0

    .line 1817
    const/16 v31, 0x1

    .line 1819
    :cond_35
    if-gez v29, :cond_36

    .line 1820
    const/16 v29, 0x0

    .line 1821
    const/16 v31, 0x1

    .line 1823
    :cond_36
    const/16 v17, 0xff

    move/from16 v0, v58

    move/from16 v1, v17

    if-le v0, v1, :cond_37

    .line 1824
    const/16 v58, 0xff

    .line 1825
    const/16 v31, 0x1

    .line 1827
    :cond_37
    const/16 v17, 0xff

    move/from16 v0, v35

    move/from16 v1, v17

    if-le v0, v1, :cond_38

    .line 1828
    const/16 v35, 0xff

    .line 1829
    const/16 v31, 0x1

    .line 1831
    :cond_38
    const/16 v17, 0xff

    move/from16 v0, v29

    move/from16 v1, v17

    if-le v0, v1, :cond_39

    .line 1832
    const/16 v29, 0xff

    .line 1833
    const/16 v31, 0x1

    .line 1836
    :cond_39
    if-eqz v31, :cond_3a

    .line 1837
    const-string v17, "Error reading material\'s diffuse color...try Config.oldStyle3DSLoader=true!"

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1840
    :cond_3a
    new-instance v17, Lcom/threed/jpct/RGBColor;

    move-object/from16 v0, v17

    move/from16 v1, v58

    move/from16 v2, v35

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    aput-object v17, v13, v15

    goto/16 :goto_c

    .line 1858
    .end local v29    # "b":I
    .end local v31    # "bug":Z
    .end local v35    # "g":I
    .end local v58    # "r":I
    .restart local v62    # "t":I
    :cond_3b
    div-int/lit8 v62, v62, 0xa

    goto/16 :goto_d

    .line 1866
    .end local v62    # "t":I
    :cond_3c
    move-object/from16 v0, v30

    move/from16 v1, v52

    move-object/from16 v2, v66

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 1867
    add-int/lit8 v52, v52, 0x6

    .line 1868
    const/16 v17, 0x0

    aget v68, v66, v17

    .line 1869
    .local v68, "tmpId2":I
    const/16 v17, 0x1

    aget v70, v66, v17

    .line 1871
    .local v70, "tmpSize2":I
    const v17, 0xa300

    move/from16 v0, v68

    move/from16 v1, v17

    if-ne v0, v1, :cond_41

    .line 1872
    new-instance v45, Ljava/lang/StringBuilder;

    .end local v45    # "nBuf":Ljava/lang/StringBuilder;
    const/16 v17, 0x28

    move-object/from16 v0, v45

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1873
    .restart local v45    # "nBuf":Ljava/lang/StringBuilder;
    const/16 v32, 0x0

    .line 1874
    .restart local v32    # "c":I
    move/from16 v53, v52

    .line 1876
    .restart local v53    # "offy3":I
    :cond_3d
    move-object/from16 v0, v30

    move/from16 v1, v53

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v32

    .line 1877
    add-int/lit8 v53, v53, 0x1

    .line 1878
    if-lez v32, :cond_3e

    .line 1879
    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v45

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1881
    :cond_3e
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v53

    move/from16 v1, v17

    if-lt v0, v1, :cond_3f

    .line 1882
    const/16 v32, -0x1

    .line 1884
    :cond_3f
    if-gtz v32, :cond_3d

    .line 1885
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 1886
    .restart local v44    # "n":Ljava/lang/String;
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_40

    .line 1887
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;)V

    .line 1888
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Texture named "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " added to TextureManager!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1890
    :cond_40
    aput-object v44, v10, v15

    .line 1893
    .end local v32    # "c":I
    .end local v44    # "n":Ljava/lang/String;
    .end local v53    # "offy3":I
    :cond_41
    const v17, 0xa354

    move/from16 v0, v68

    move/from16 v1, v17

    if-ne v0, v1, :cond_42

    .line 1895
    aget-object v17, v11, v15

    const/16 v18, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v19

    aput v19, v17, v18

    .line 1897
    :cond_42
    const v17, 0xa356

    move/from16 v0, v68

    move/from16 v1, v17

    if-ne v0, v1, :cond_43

    .line 1899
    aget-object v17, v11, v15

    const/16 v18, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v19

    aput v19, v17, v18

    .line 1901
    :cond_43
    const v17, 0xa358

    move/from16 v0, v68

    move/from16 v1, v17

    if-ne v0, v1, :cond_44

    .line 1903
    aget-object v17, v11, v15

    const/16 v18, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v19

    aput v19, v17, v18

    .line 1905
    :cond_44
    const v17, 0xa35a

    move/from16 v0, v68

    move/from16 v1, v17

    if-ne v0, v1, :cond_45

    .line 1907
    aget-object v17, v11, v15

    const/16 v18, 0x3

    move-object/from16 v0, v30

    move/from16 v1, v52

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v19

    aput v19, v17, v18

    .line 1909
    :cond_45
    add-int/lit8 v17, v70, -0x6

    add-int v52, v52, v17

    goto/16 :goto_e

    .line 1931
    .end local v52    # "offy2":I
    .end local v67    # "tmpId":I
    .end local v68    # "tmpId2":I
    .end local v69    # "tmpSize":I
    .end local v70    # "tmpSize2":I
    .restart local v36    # "i":I
    .restart local v40    # "matColorT":[Lcom/threed/jpct/RGBColor;
    .restart local v41    # "matNameT":[Ljava/lang/String;
    .restart local v42    # "matTextureDataT":[[F
    .restart local v43    # "matTransT":[I
    .restart local v47    # "nl":I
    .restart local v64    # "textureNameT":[Ljava/lang/String;
    :cond_46
    aget-object v17, v11, v36

    const/16 v18, 0x0

    aget-object v19, v42, v36

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-static/range {v17 .. v21}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1930
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_9

    .line 1941
    :cond_47
    aget-object v17, v11, v39

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    .line 1942
    aget-object v17, v11, v39

    const/16 v18, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    .line 1943
    aget-object v17, v11, v39

    const/16 v18, 0x2

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1944
    aget-object v17, v11, v39

    const/16 v18, 0x3

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1945
    const/16 v17, 0x3e8

    aput v17, v14, v39

    .line 1940
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_a

    .line 1962
    .end local v36    # "i":I
    .end local v40    # "matColorT":[Lcom/threed/jpct/RGBColor;
    .end local v41    # "matNameT":[Ljava/lang/String;
    .end local v42    # "matTextureDataT":[[F
    .end local v43    # "matTransT":[I
    .end local v47    # "nl":I
    .end local v51    # "offy":I
    .end local v64    # "textureNameT":[Ljava/lang/String;
    :cond_48
    add-int/lit8 v17, v61, -0x6

    add-int v50, v50, v17

    goto/16 :goto_3

    .line 1981
    .end local v72    # "unknownChunk":Z
    .restart local v36    # "i":I
    :cond_49
    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/threed/jpct/Object3D;

    .line 1982
    .local v48, "obj":Lcom/threed/jpct/Object3D;
    invoke-virtual/range {v48 .. v48}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v54

    .line 1983
    .local v54, "on":Ljava/lang/String;
    move-object/from16 v55, v54

    .line 1984
    .local v55, "ons":Ljava/lang/String;
    const-string v17, "_jPCT"

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v56

    .line 1985
    .local v56, "p":I
    const/16 v17, -0x1

    move/from16 v0, v56

    move/from16 v1, v17

    if-eq v0, v1, :cond_4a

    .line 1986
    const/16 v17, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v17

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v54

    .line 1987
    move-object/from16 v0, v46

    move-object/from16 v1, v54

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/threed/jpct/SimpleVector;

    .line 1988
    .local v57, "pivot":Lcom/threed/jpct/SimpleVector;
    if-eqz v57, :cond_4a

    .line 1989
    move-object/from16 v0, v48

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->setRotationPivot(Lcom/threed/jpct/SimpleVector;)V

    .line 1990
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v48

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 1991
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Setting rotation pivot of object "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1980
    .end local v57    # "pivot":Lcom/threed/jpct/SimpleVector;
    :cond_4a
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_1

    .line 1999
    .end local v48    # "obj":Lcom/threed/jpct/Object3D;
    .end local v54    # "on":Ljava/lang/String;
    .end local v55    # "ons":Ljava/lang/String;
    .end local v56    # "p":I
    .restart local v59    # "res":[Lcom/threed/jpct/Object3D;
    :cond_4b
    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/threed/jpct/Object3D;

    aput-object v17, v59, v36

    .line 1998
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_2
.end method

.method public static loadASC(Ljava/io/InputStream;FZ)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "scale"    # F
    .param p2, "swap"    # Z

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-static {v0, v0, p0, p1, p2}, Lcom/threed/jpct/Loader;->loadASC(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method private static loadASC(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/threed/jpct/Object3D;
    .locals 63
    .param p0, "docBase"    # Ljava/net/URL;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/io/InputStream;
    .param p3, "scale"    # F
    .param p4, "swap"    # Z

    .prologue
    .line 788
    const/4 v7, 0x0

    .line 789
    .local v7, "tcu1":F
    const/4 v8, 0x0

    .line 790
    .local v8, "tcv1":F
    const/4 v12, 0x0

    .line 791
    .local v12, "tcu2":F
    const/4 v13, 0x0

    .line 792
    .local v13, "tcv2":F
    const/16 v17, 0x0

    .line 793
    .local v17, "tcu3":F
    const/16 v18, 0x0

    .line 795
    .local v18, "tcv3":F
    new-instance v3, Lcom/threed/jpct/Object3D;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 796
    .local v3, "obj":Lcom/threed/jpct/Object3D;
    const/16 v19, 0x0

    .line 798
    .local v19, "texnum":I
    const/16 v34, 0x0

    .line 800
    .local v34, "finalAnz":I
    const/16 v37, 0x0

    .line 802
    .local v37, "mapped":Z
    sget v4, Lcom/threed/jpct/Config;->loadMaxVerticesASC:I

    new-array v0, v4, [F

    move-object/from16 v57, v0

    .line 803
    .local v57, "x":[F
    sget v4, Lcom/threed/jpct/Config;->loadMaxVerticesASC:I

    new-array v0, v4, [F

    move-object/from16 v59, v0

    .line 804
    .local v59, "y":[F
    sget v4, Lcom/threed/jpct/Config;->loadMaxVerticesASC:I

    new-array v0, v4, [F

    move-object/from16 v61, v0

    .line 806
    .local v61, "z":[F
    sget v4, Lcom/threed/jpct/Config;->loadMaxTrianglesASC:I

    new-array v0, v4, [I

    move-object/from16 v39, v0

    .line 807
    .local v39, "p1":[I
    sget v4, Lcom/threed/jpct/Config;->loadMaxTrianglesASC:I

    new-array v0, v4, [I

    move-object/from16 v41, v0

    .line 808
    .local v41, "p2":[I
    sget v4, Lcom/threed/jpct/Config;->loadMaxTrianglesASC:I

    new-array v0, v4, [I

    move-object/from16 v43, v0

    .line 810
    .local v43, "p3":[I
    const/4 v4, 0x1

    new-array v0, v4, [F

    move-object/from16 v55, v0

    .line 811
    .local v55, "tu":[F
    const/4 v4, 0x1

    new-array v0, v4, [F

    move-object/from16 v56, v0

    .line 813
    .local v56, "tv":[F
    const/16 v32, 0x0

    .line 814
    .local v32, "anzVector":I
    const/16 v36, 0x0

    .line 815
    .local v36, "lastVector":I
    const/16 v31, 0x0

    .line 816
    .local v31, "anzTri":I
    const/16 v27, 0x0

    .line 817
    .local v27, "aktPos4":I
    const/16 v28, 0x0

    .line 818
    .local v28, "aktPos5":I
    const/16 v45, 0x1

    .line 820
    .local v45, "part":I
    const-string v50, ""

    .line 821
    .local v50, "sub5":Ljava/lang/String;
    const-string v49, ""

    .line 822
    .local v49, "sub4":Ljava/lang/String;
    const-string v48, ""

    .line 824
    .local v48, "sub3":Ljava/lang/String;
    invoke-static/range {p0 .. p2}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v33

    .line 825
    .local v33, "file":Ljava/lang/String;
    const-string v4, "\n"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 829
    :cond_0
    const-string v4, "error"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 830
    const-string v4, "Parsing Objectfile!"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 832
    const-string v4, "U:"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 833
    const/16 v37, 0x1

    .line 834
    sget v4, Lcom/threed/jpct/Config;->loadMaxTrianglesASC:I

    new-array v0, v4, [F

    move-object/from16 v55, v0

    .line 835
    sget v4, Lcom/threed/jpct/Config;->loadMaxTrianglesASC:I

    new-array v0, v4, [F

    move-object/from16 v56, v0

    .line 836
    const-string v4, "Objectfile contains additional Texture coordinates!"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 839
    :cond_1
    const-string v38, ""

    .line 841
    .local v38, "oneLine":Ljava/lang/String;
    const/16 v29, 0x0

    .line 842
    .local v29, "aktStore":I
    const/16 v22, 0x0

    .line 844
    .local v22, "aktLast":I
    const-string v4, "Vertex list"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    .line 846
    .local v24, "aktPos":I
    const-string v4, "\n"

    add-int/lit8 v5, v24, 0xa

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v24

    .line 848
    :goto_0
    const/4 v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_3

    .line 981
    new-instance v4, Lcom/threed/jpct/Mesh;

    mul-int/lit8 v5, v31, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v4, v5}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iput-object v4, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 982
    new-instance v4, Lcom/threed/jpct/Vectors;

    add-int/lit8 v5, v31, 0x1

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x8

    iget-object v6, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-direct {v4, v5, v6}, Lcom/threed/jpct/Vectors;-><init>(ILcom/threed/jpct/Mesh;)V

    iput-object v4, v3, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 983
    add-int/lit8 v4, v31, 0x1

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/threed/jpct/Object3D;->texture:[I

    .line 984
    sget-boolean v4, Lcom/threed/jpct/Loader;->optimize:Z

    if-nez v4, :cond_2

    .line 985
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->disableVertexSharing()V

    .line 988
    :cond_2
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, v31

    if-lt v0, v1, :cond_e

    .line 1060
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loaded Object3D: Faces: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / Vertices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1061
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Optimized Object3D: Faces: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v34, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / Vertices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v5, v5, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1065
    .end local v3    # "obj":Lcom/threed/jpct/Object3D;
    .end local v22    # "aktLast":I
    .end local v24    # "aktPos":I
    .end local v29    # "aktStore":I
    .end local v35    # "i":I
    .end local v38    # "oneLine":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 849
    .restart local v3    # "obj":Lcom/threed/jpct/Object3D;
    .restart local v22    # "aktLast":I
    .restart local v24    # "aktPos":I
    .restart local v29    # "aktStore":I
    .restart local v38    # "oneLine":Ljava/lang/String;
    :cond_3
    move/from16 v36, v32

    .line 851
    :cond_4
    :goto_3
    const/4 v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_6

    .line 926
    add-int/lit8 v24, v29, -0x1

    .line 928
    :cond_5
    :goto_4
    const/4 v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_b

    .line 975
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Part: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / Faces: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / Vertices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 977
    add-int/lit8 v45, v45, 0x1

    .line 978
    const-string v4, "Vertex list"

    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v24

    goto/16 :goto_0

    .line 853
    :cond_6
    add-int/lit8 v24, v24, 0x1

    .line 855
    const-string v4, "\n"

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v23

    .line 856
    .local v23, "aktN":I
    add-int/lit8 v29, v23, 0x1

    .line 857
    move/from16 v22, v24

    .line 859
    move-object/from16 v0, v33

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    .line 861
    const-string v4, "X:"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    .line 863
    const-string v4, "X:"

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    .line 865
    .local v30, "aktTemp":I
    add-int/lit8 v30, v30, 0x2

    .line 866
    const-string v4, "Y:"

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v24

    .line 867
    move-object/from16 v0, v38

    move/from16 v1, v30

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v46

    .line 868
    .local v46, "sub1":Ljava/lang/String;
    const-string v4, "Z:"

    add-int/lit8 v5, v24, 0x2

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v25

    .line 869
    .local v25, "aktPos2":I
    add-int/lit8 v4, v24, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v47

    .line 870
    .local v47, "sub2":Ljava/lang/String;
    const-string v4, "U:"

    add-int/lit8 v5, v25, 0x2

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v26

    .line 872
    .local v26, "aktPos3":I
    const/16 v37, 0x0

    .line 874
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_8

    .line 875
    add-int/lit8 v4, v25, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v48

    .line 876
    const-string v4, "V:"

    add-int/lit8 v5, v26, 0x2

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v27

    .line 877
    add-int/lit8 v4, v26, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v49

    .line 878
    const-string v4, "\n"

    add-int/lit8 v5, v27, 0x2

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v28

    .line 879
    add-int/lit8 v4, v27, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v50

    .line 880
    move/from16 v26, v28

    .line 881
    const/16 v37, 0x1

    .line 887
    :goto_5
    if-eqz p4, :cond_9

    .line 889
    invoke-static/range {v46 .. v46}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v58

    .line 890
    .local v58, "xF":Ljava/lang/Float;
    invoke-static/range {v47 .. v47}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v62

    .line 891
    .local v62, "zF":Ljava/lang/Float;
    invoke-static/range {v48 .. v48}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v60

    .line 893
    .local v60, "yF":Ljava/lang/Float;
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p3

    aput v4, v57, v32

    .line 894
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v4

    neg-float v4, v4

    mul-float v4, v4, p3

    aput v4, v59, v32

    .line 895
    invoke-virtual/range {v62 .. v62}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p3

    aput v4, v61, v32

    .line 909
    :goto_6
    if-eqz v37, :cond_7

    .line 910
    invoke-static/range {v49 .. v49}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v55, v32

    .line 911
    invoke-static/range {v50 .. v50}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v56, v32

    .line 914
    :cond_7
    add-int/lit8 v32, v32, 0x1

    .line 916
    move/from16 v24, v23

    goto/16 :goto_3

    .line 883
    .end local v58    # "xF":Ljava/lang/Float;
    .end local v60    # "yF":Ljava/lang/Float;
    .end local v62    # "zF":Ljava/lang/Float;
    :cond_8
    const-string v4, "\n"

    add-int/lit8 v5, v25, 0x2

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v26

    .line 884
    add-int/lit8 v4, v25, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v48

    goto :goto_5

    .line 899
    :cond_9
    invoke-static/range {v46 .. v46}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v58

    .line 900
    .restart local v58    # "xF":Ljava/lang/Float;
    invoke-static/range {v47 .. v47}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v60

    .line 901
    .restart local v60    # "yF":Ljava/lang/Float;
    invoke-static/range {v48 .. v48}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v62

    .line 903
    .restart local v62    # "zF":Ljava/lang/Float;
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p3

    aput v4, v57, v32

    .line 904
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v4

    neg-float v4, v4

    mul-float v4, v4, p3

    aput v4, v59, v32

    .line 905
    invoke-virtual/range {v62 .. v62}, Ljava/lang/Float;->floatValue()F

    move-result v4

    neg-float v4, v4

    mul-float v4, v4, p3

    aput v4, v61, v32

    goto :goto_6

    .line 919
    .end local v25    # "aktPos2":I
    .end local v26    # "aktPos3":I
    .end local v30    # "aktTemp":I
    .end local v46    # "sub1":Ljava/lang/String;
    .end local v47    # "sub2":Ljava/lang/String;
    .end local v58    # "xF":Ljava/lang/Float;
    .end local v60    # "yF":Ljava/lang/Float;
    .end local v62    # "zF":Ljava/lang/Float;
    :cond_a
    move/from16 v24, v23

    .line 920
    const-string v4, "Face list"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 921
    const/16 v24, -0x1

    goto/16 :goto_3

    .line 930
    .end local v23    # "aktN":I
    :cond_b
    add-int/lit8 v24, v24, 0x1

    .line 932
    const-string v4, "\n"

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v23

    .line 933
    .restart local v23    # "aktN":I
    add-int/lit8 v29, v23, 0x1

    .line 934
    move/from16 v22, v24

    .line 936
    move-object/from16 v0, v33

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    .line 938
    const-string v4, "A:"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 940
    const-string v4, "A:"

    const/4 v5, 0x5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    .line 941
    .restart local v30    # "aktTemp":I
    add-int/lit8 v30, v30, 0x2

    .line 942
    const-string v4, "B:"

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v24

    .line 943
    move-object/from16 v0, v38

    move/from16 v1, v30

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v46

    .line 944
    .restart local v46    # "sub1":Ljava/lang/String;
    const-string v4, "C:"

    add-int/lit8 v5, v24, 0x2

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v25

    .line 945
    .restart local v25    # "aktPos2":I
    add-int/lit8 v4, v24, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v47

    .line 947
    .restart local v47    # "sub2":Ljava/lang/String;
    const/16 v26, 0x0

    .line 949
    .restart local v26    # "aktPos3":I
    const-string v4, "AB:"

    add-int/lit8 v5, v25, 0x2

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v26

    .line 950
    add-int/lit8 v4, v25, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v48

    .line 952
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v40

    .line 953
    .local v40, "p1F":Ljava/lang/Integer;
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    .line 954
    .local v42, "p2F":Ljava/lang/Integer;
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v44

    .line 956
    .local v44, "p3F":Ljava/lang/Integer;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v4, v36

    aput v4, v39, v31

    .line 957
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v4, v36

    aput v4, v41, v31

    .line 958
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v4, v36

    aput v4, v43, v31

    .line 960
    add-int/lit8 v31, v31, 0x1

    .line 961
    move/from16 v24, v23

    goto/16 :goto_4

    .line 964
    .end local v25    # "aktPos2":I
    .end local v26    # "aktPos3":I
    .end local v30    # "aktTemp":I
    .end local v40    # "p1F":Ljava/lang/Integer;
    .end local v42    # "p2F":Ljava/lang/Integer;
    .end local v44    # "p3F":Ljava/lang/Integer;
    .end local v46    # "sub1":Ljava/lang/String;
    .end local v47    # "sub2":Ljava/lang/String;
    :cond_c
    move/from16 v24, v23

    .line 965
    const-string v4, "Vertex list"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    .line 966
    const/16 v24, -0x1

    .line 968
    :cond_d
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v29

    if-lt v0, v4, :cond_5

    .line 969
    const/16 v24, -0x1

    goto/16 :goto_4

    .line 989
    .end local v23    # "aktN":I
    .restart local v35    # "i":I
    :cond_e
    const/high16 v51, 0x3f800000    # 1.0f

    .line 990
    .local v51, "texX":F
    const/high16 v53, 0x3f800000    # 1.0f

    .line 991
    .local v53, "texY":F
    move/from16 v52, v51

    .line 992
    .local v52, "texXh":F
    move/from16 v54, v53

    .line 994
    .local v54, "texYh":F
    if-nez v37, :cond_11

    .line 995
    and-int/lit8 v4, v35, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    .line 996
    const/4 v7, 0x0

    .line 997
    const/4 v8, 0x0

    .line 998
    move/from16 v12, v51

    .line 999
    const/4 v13, 0x0

    .line 1000
    const/16 v17, 0x0

    .line 1001
    move/from16 v18, v53

    .line 1056
    :cond_f
    :goto_7
    aget v4, v39, v35

    aget v4, v57, v4

    aget v5, v39, v35

    aget v5, v59, v5

    aget v6, v39, v35

    aget v6, v61, v6

    aget v9, v41, v35

    aget v9, v57, v9

    aget v10, v41, v35

    aget v10, v59, v10

    aget v11, v41, v35

    aget v11, v61, v11

    aget v14, v43, v35

    aget v14, v57, v14

    aget v15, v43, v35

    aget v15, v59, v15

    aget v16, v43, v35

    aget v16, v61, v16

    const/16 v20, 0x0

    .line 1057
    const/16 v21, 0x0

    .line 1056
    invoke-virtual/range {v3 .. v21}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v34

    .line 988
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_1

    .line 1003
    :cond_10
    move/from16 v7, v51

    .line 1004
    const/4 v8, 0x0

    .line 1005
    move/from16 v12, v51

    .line 1006
    move/from16 v13, v53

    .line 1007
    const/16 v17, 0x0

    .line 1008
    move/from16 v18, v53

    goto :goto_7

    .line 1011
    :cond_11
    aget v4, v39, v35

    aget v4, v55, v4

    mul-float v7, v52, v4

    .line 1012
    aget v4, v39, v35

    aget v4, v56, v4

    mul-float v4, v4, v54

    sub-float v8, v54, v4

    .line 1013
    aget v4, v41, v35

    aget v4, v55, v4

    mul-float v12, v52, v4

    .line 1014
    aget v4, v41, v35

    aget v4, v56, v4

    mul-float v4, v4, v54

    sub-float v13, v54, v4

    .line 1015
    aget v4, v43, v35

    aget v4, v55, v4

    mul-float v17, v52, v4

    .line 1016
    aget v4, v43, v35

    aget v4, v56, v4

    mul-float v4, v4, v54

    sub-float v18, v54, v4

    .line 1018
    const/4 v4, 0x0

    cmpg-float v4, v7, v4

    if-gez v4, :cond_12

    .line 1019
    const/4 v7, 0x0

    .line 1021
    :cond_12
    cmpl-float v4, v7, v51

    if-lez v4, :cond_13

    .line 1022
    move/from16 v7, v51

    .line 1024
    :cond_13
    const/4 v4, 0x0

    cmpg-float v4, v8, v4

    if-gez v4, :cond_14

    .line 1025
    const/4 v8, 0x0

    .line 1027
    :cond_14
    cmpl-float v4, v8, v53

    if-lez v4, :cond_15

    .line 1028
    move/from16 v8, v53

    .line 1030
    :cond_15
    const/4 v4, 0x0

    cmpg-float v4, v12, v4

    if-gez v4, :cond_16

    .line 1031
    const/4 v12, 0x0

    .line 1033
    :cond_16
    cmpl-float v4, v12, v51

    if-lez v4, :cond_17

    .line 1034
    move/from16 v12, v51

    .line 1036
    :cond_17
    const/4 v4, 0x0

    cmpg-float v4, v13, v4

    if-gez v4, :cond_18

    .line 1037
    const/4 v13, 0x0

    .line 1039
    :cond_18
    cmpl-float v4, v13, v53

    if-lez v4, :cond_19

    .line 1040
    move/from16 v13, v53

    .line 1042
    :cond_19
    const/4 v4, 0x0

    cmpg-float v4, v17, v4

    if-gez v4, :cond_1a

    .line 1043
    const/16 v17, 0x0

    .line 1045
    :cond_1a
    cmpl-float v4, v17, v51

    if-lez v4, :cond_1b

    .line 1046
    move/from16 v17, v51

    .line 1048
    :cond_1b
    const/4 v4, 0x0

    cmpg-float v4, v18, v4

    if-gez v4, :cond_1c

    .line 1049
    const/16 v18, 0x0

    .line 1051
    :cond_1c
    cmpl-float v4, v18, v53

    if-lez v4, :cond_f

    .line 1052
    move/from16 v18, v53

    goto/16 :goto_7

    .line 1065
    .end local v22    # "aktLast":I
    .end local v24    # "aktPos":I
    .end local v29    # "aktStore":I
    .end local v35    # "i":I
    .end local v38    # "oneLine":Ljava/lang/String;
    .end local v51    # "texX":F
    .end local v52    # "texXh":F
    .end local v53    # "texY":F
    .end local v54    # "texYh":F
    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method private static loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "docBase"    # Ljava/net/URL;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    .line 1124
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;[Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;[Ljava/lang/String;)[B
    .locals 18
    .param p0, "docBase"    # Ljava/net/URL;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "ret"    # [Ljava/lang/String;

    .prologue
    .line 1128
    const-class v15, Lcom/threed/jpct/Loader;

    monitor-enter v15

    const/4 v6, 0x0

    :try_start_0
    check-cast v6, [B

    .line 1129
    .local v6, "buf":[B
    const/16 v7, 0x2000

    .line 1130
    .local v7, "bufSize":I
    sget-object v14, Lcom/threed/jpct/Loader;->backBuf:[B

    if-nez v14, :cond_9

    .line 1131
    new-array v6, v7, [B

    .line 1132
    sput-object v6, Lcom/threed/jpct/Loader;->backBuf:[B

    .line 1136
    :goto_0
    const/4 v4, 0x0

    .line 1137
    .local v4, "anzAkt":I
    const/4 v3, 0x0

    .line 1138
    .local v3, "anz":I
    array-length v2, v6

    .line 1139
    .local v2, "aktsize":I
    const/4 v9, 0x0

    .line 1141
    .local v9, "incs":I
    if-nez p1, :cond_0

    .line 1142
    const-string p1, "from InputStream"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1146
    :cond_0
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v16, "Loading file "

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1147
    if-nez p2, :cond_1

    .line 1148
    if-nez p0, :cond_a

    .line 1149
    new-instance v10, Ljava/io/FileInputStream;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local p2    # "is":Ljava/io/InputStream;
    .local v10, "is":Ljava/io/InputStream;
    move-object/from16 p2, v10

    .line 1156
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local p2    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    if-nez p3, :cond_b

    .line 1158
    :cond_2
    sub-int v14, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v3, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1159
    if-lez v4, :cond_3

    .line 1160
    add-int/2addr v3, v4

    .line 1163
    :cond_3
    const/4 v14, -0x1

    if-eq v4, v14, :cond_5

    if-lt v3, v2, :cond_5

    .line 1164
    add-int/lit8 v9, v9, 0x1

    .line 1165
    const/16 v14, 0xa

    if-ne v9, v14, :cond_4

    .line 1166
    mul-int/lit8 v7, v7, 0xa

    .line 1168
    :cond_4
    add-int/2addr v2, v7

    .line 1169
    new-array v11, v2, [B

    .line 1170
    .local v11, "npuffer":[B
    const/4 v14, 0x0

    const/16 v16, 0x0

    sub-int v17, v2, v7

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v6, v14, v11, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1171
    move-object v6, v11

    .line 1172
    sput-object v6, Lcom/threed/jpct/Loader;->backBuf:[B

    .line 1173
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v16, "Expanding buffers..."

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " bytes"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1176
    .end local v11    # "npuffer":[B
    :cond_5
    if-gtz v4, :cond_2

    .line 1177
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v16, "File "

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " loaded..."

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " bytes"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1193
    :goto_2
    if-eqz p2, :cond_6

    .line 1195
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1201
    :cond_6
    :goto_3
    :try_start_3
    sget-object v14, Lcom/threed/jpct/Loader;->backBuf:[B

    if-eqz v14, :cond_7

    sget-object v14, Lcom/threed/jpct/Loader;->backBuf:[B

    array-length v14, v14

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-le v14, v0, :cond_7

    .line 1202
    const/4 v14, 0x0

    sput-object v14, Lcom/threed/jpct/Loader;->backBuf:[B

    .line 1205
    :cond_7
    if-nez p3, :cond_f

    .line 1206
    new-array v5, v3, [B

    .line 1207
    .local v5, "backBuf":[B
    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v14, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1210
    .end local v5    # "backBuf":[B
    :cond_8
    :goto_4
    monitor-exit v15

    return-object v5

    .line 1134
    .end local v2    # "aktsize":I
    .end local v3    # "anz":I
    .end local v4    # "anzAkt":I
    .end local v9    # "incs":I
    :cond_9
    :try_start_4
    sget-object v6, Lcom/threed/jpct/Loader;->backBuf:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 1151
    .restart local v2    # "aktsize":I
    .restart local v3    # "anz":I
    .restart local v4    # "anzAkt":I
    .restart local v9    # "incs":I
    :cond_a
    :try_start_5
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1152
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p2

    goto/16 :goto_1

    .line 1179
    .end local v13    # "url":Ljava/net/URL;
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1181
    .local v12, "sb":Ljava/lang/StringBuilder;
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v14, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1182
    if-lez v4, :cond_d

    .line 1183
    new-instance v14, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v14, v6, v0, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :cond_d
    if-gtz v4, :cond_c

    .line 1186
    const/4 v14, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, p3, v14

    .line 1187
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v16, "Text file "

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " loaded..."

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " bytes"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1189
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 1190
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v16, "Couldn\'t read file "

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1191
    const/4 v14, 0x0

    new-array v5, v14, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1193
    if-eqz p2, :cond_8

    .line 1195
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 1196
    :catch_1
    move-exception v14

    goto/16 :goto_4

    .line 1192
    .end local v8    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    .line 1193
    if-eqz p2, :cond_e

    .line 1195
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1199
    :cond_e
    :goto_5
    :try_start_9
    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1128
    .end local v2    # "aktsize":I
    .end local v3    # "anz":I
    .end local v4    # "anzAkt":I
    .end local v6    # "buf":[B
    .end local v7    # "bufSize":I
    .end local v9    # "incs":I
    :catchall_1
    move-exception v14

    monitor-exit v15

    throw v14

    .line 1210
    .restart local v2    # "aktsize":I
    .restart local v3    # "anz":I
    .restart local v4    # "anzAkt":I
    .restart local v6    # "buf":[B
    .restart local v7    # "bufSize":I
    .restart local v9    # "incs":I
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1196
    :catch_2
    move-exception v16

    goto :goto_5

    :catch_3
    move-exception v14

    goto/16 :goto_3
.end method

.method public static loadMD2(Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "newScale"    # F

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-static {v0, v0, p0, p1}, Lcom/threed/jpct/Loader;->loadMD2(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method private static loadMD2(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;
    .locals 79
    .param p0, "docBase"    # Ljava/net/URL;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "newScale"    # F

    .prologue
    .line 1216
    const/16 v22, 0x0

    check-cast v22, [Ljava/util/Vector;

    .line 1217
    .local v22, "adjList":[Ljava/util/Vector;
    const/16 v26, 0x0

    .line 1219
    .local v26, "error":Z
    invoke-static/range {p0 .. p2}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v24

    .line 1220
    .local v24, "buf":[B
    if-nez v24, :cond_0

    .line 1221
    const/16 v26, 0x1

    .line 1224
    :cond_0
    if-nez v26, :cond_c

    .line 1225
    const/4 v13, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v32

    .line 1226
    .local v32, "magicNum":I
    const v13, 0x32504449

    move/from16 v0, v32

    if-eq v0, v13, :cond_1

    .line 1227
    const-string v13, "Not a valid MD2-file!"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1230
    :cond_1
    const/4 v13, 0x4

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v77

    .line 1231
    .local v77, "version":I
    const/16 v13, 0x8

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v54

    .line 1232
    .local v54, "skinWidth":I
    const/16 v13, 0xc

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v53

    .line 1233
    .local v53, "skinHeight":I
    const/16 v13, 0x10

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v28

    .line 1234
    .local v28, "frameSize":I
    const/16 v13, 0x14

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v37

    .line 1235
    .local v37, "numSkins":I
    const/16 v13, 0x18

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v40

    .line 1236
    .local v40, "numVertices":I
    const/16 v13, 0x1c

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v38

    .line 1237
    .local v38, "numTexCoords":I
    const/16 v13, 0x20

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v39

    .line 1238
    .local v39, "numTriangles":I
    const/16 v13, 0x24

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v36

    .line 1239
    .local v36, "numGlCommands":I
    const/16 v13, 0x28

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v35

    .line 1240
    .local v35, "numFrames":I
    const/16 v13, 0x30

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v43

    .line 1241
    .local v43, "offsetTexCoords":I
    const/16 v13, 0x34

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v44

    .line 1242
    .local v44, "offsetTriangles":I
    const/16 v13, 0x38

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v42

    .line 1244
    .local v42, "offsetFrames":I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Magic number: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1245
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Version: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v77

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1246
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Skin width: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v54

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1247
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Skin height: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1248
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Frame size: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1249
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Number of skins: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1250
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Number of Vertices: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1251
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Number of Texture coordinates: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v38

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1252
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Number of triangles: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v39

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1253
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Number of GL-commands: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v36

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1254
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Number of Frames: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1256
    const/4 v13, 0x2

    move/from16 v0, v38

    filled-new-array {v0, v13}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, [[I

    .line 1257
    .local v61, "texCoords":[[I
    const/4 v13, 0x3

    move/from16 v0, v39

    filled-new-array {v0, v13}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, [[I

    .line 1258
    .local v68, "triVertex":[[I
    const/4 v13, 0x3

    move/from16 v0, v39

    filled-new-array {v0, v13}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, [[I

    .line 1260
    .local v67, "triTexture":[[I
    const-string v13, "Reading Texture coordinates..."

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1261
    move/from16 v41, v43

    .line 1262
    .local v41, "oF":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v38

    if-lt v0, v1, :cond_2

    .line 1268
    const-string v13, "Done!"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1270
    const-string v13, "Reading polygonal data..."

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1271
    move/from16 v41, v44

    .line 1272
    const/16 v29, 0x0

    :goto_1
    move/from16 v0, v29

    move/from16 v1, v39

    if-lt v0, v1, :cond_3

    .line 1287
    const-string v13, "Done!"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1289
    const/4 v13, 0x3

    move/from16 v0, v35

    filled-new-array {v0, v13}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, [[F

    .line 1290
    .local v52, "scales":[[F
    const/4 v13, 0x3

    move/from16 v0, v35

    filled-new-array {v0, v13}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, [[F

    .line 1291
    .local v63, "trans":[[F
    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1292
    .local v34, "names":[Ljava/lang/String;
    const/4 v13, 0x3

    move/from16 v0, v35

    move/from16 v1, v40

    filled-new-array {v0, v1, v13}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, [[[I

    .line 1294
    .local v78, "vertices":[[[I
    const-string v13, "Reading keyframes..."

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1295
    const/16 v29, 0x0

    :goto_2
    move/from16 v0, v29

    move/from16 v1, v35

    if-lt v0, v1, :cond_4

    .line 1324
    const-string v13, "Done!"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1325
    const-string v13, "Coverting MD2-format into jPCT-format..."

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1327
    new-instance v2, Lcom/threed/jpct/Object3D;

    add-int/lit8 v13, v39, 0x1

    invoke-direct {v2, v13}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 1328
    .local v2, "obj":Lcom/threed/jpct/Object3D;
    new-instance v12, Lcom/threed/jpct/Object3D;

    add-int/lit8 v13, v39, 0x1

    invoke-direct {v12, v13}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 1329
    .local v12, "tmp":Lcom/threed/jpct/Object3D;
    new-instance v23, Lcom/threed/jpct/Animation;

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/threed/jpct/Animation;-><init>(I)V

    .line 1330
    .local v23, "anim":Lcom/threed/jpct/Animation;
    const-string v31, "dummy"

    .line 1332
    .local v31, "lastSeq":Ljava/lang/String;
    const/16 v45, 0x0

    .local v45, "p":I
    :goto_3
    move/from16 v0, v45

    move/from16 v1, v35

    if-lt v0, v1, :cond_6

    .line 1389
    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    .line 1390
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/threed/jpct/Object3D;->setAnimationSequence(Lcom/threed/jpct/Animation;)V

    .line 1392
    const-string v13, "Done!"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1397
    .end local v2    # "obj":Lcom/threed/jpct/Object3D;
    .end local v12    # "tmp":Lcom/threed/jpct/Object3D;
    .end local v23    # "anim":Lcom/threed/jpct/Animation;
    .end local v28    # "frameSize":I
    .end local v29    # "i":I
    .end local v31    # "lastSeq":Ljava/lang/String;
    .end local v32    # "magicNum":I
    .end local v34    # "names":[Ljava/lang/String;
    .end local v35    # "numFrames":I
    .end local v36    # "numGlCommands":I
    .end local v37    # "numSkins":I
    .end local v38    # "numTexCoords":I
    .end local v39    # "numTriangles":I
    .end local v40    # "numVertices":I
    .end local v41    # "oF":I
    .end local v42    # "offsetFrames":I
    .end local v43    # "offsetTexCoords":I
    .end local v44    # "offsetTriangles":I
    .end local v45    # "p":I
    .end local v52    # "scales":[[F
    .end local v53    # "skinHeight":I
    .end local v54    # "skinWidth":I
    .end local v61    # "texCoords":[[I
    .end local v63    # "trans":[[F
    .end local v67    # "triTexture":[[I
    .end local v68    # "triVertex":[[I
    .end local v77    # "version":I
    .end local v78    # "vertices":[[[I
    :goto_4
    return-object v2

    .line 1263
    .restart local v28    # "frameSize":I
    .restart local v29    # "i":I
    .restart local v32    # "magicNum":I
    .restart local v35    # "numFrames":I
    .restart local v36    # "numGlCommands":I
    .restart local v37    # "numSkins":I
    .restart local v38    # "numTexCoords":I
    .restart local v39    # "numTriangles":I
    .restart local v40    # "numVertices":I
    .restart local v41    # "oF":I
    .restart local v42    # "offsetFrames":I
    .restart local v43    # "offsetTexCoords":I
    .restart local v44    # "offsetTriangles":I
    .restart local v53    # "skinHeight":I
    .restart local v54    # "skinWidth":I
    .restart local v61    # "texCoords":[[I
    .restart local v67    # "triTexture":[[I
    .restart local v68    # "triVertex":[[I
    .restart local v77    # "version":I
    :cond_2
    mul-int/lit8 v13, v29, 0x4

    add-int v13, v13, v41

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v69

    .line 1264
    .local v69, "u":I
    mul-int/lit8 v13, v29, 0x4

    add-int v13, v13, v41

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v70

    .line 1265
    .local v70, "v":I
    aget-object v13, v61, v29

    const/4 v14, 0x0

    aput v69, v13, v14

    .line 1266
    aget-object v13, v61, v29

    const/4 v14, 0x1

    aput v70, v13, v14

    .line 1262
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 1273
    .end local v69    # "u":I
    .end local v70    # "v":I
    :cond_3
    mul-int/lit8 v13, v29, 0xc

    add-int v30, v41, v13

    .line 1274
    .local v30, "iMul":I
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v46

    .line 1275
    .local v46, "p1":I
    add-int/lit8 v13, v30, 0x2

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v47

    .line 1276
    .local v47, "p2":I
    add-int/lit8 v13, v30, 0x4

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v48

    .line 1277
    .local v48, "p3":I
    add-int/lit8 v13, v30, 0x6

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v55

    .line 1278
    .local v55, "t1":I
    add-int/lit8 v13, v30, 0x8

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v57

    .line 1279
    .local v57, "t2":I
    add-int/lit8 v13, v30, 0xa

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v59

    .line 1280
    .local v59, "t3":I
    aget-object v13, v68, v29

    const/4 v14, 0x0

    aput v46, v13, v14

    .line 1281
    aget-object v13, v68, v29

    const/4 v14, 0x1

    aput v47, v13, v14

    .line 1282
    aget-object v13, v68, v29

    const/4 v14, 0x2

    aput v48, v13, v14

    .line 1283
    aget-object v13, v67, v29

    const/4 v14, 0x0

    aput v55, v13, v14

    .line 1284
    aget-object v13, v67, v29

    const/4 v14, 0x1

    aput v57, v13, v14

    .line 1285
    aget-object v13, v67, v29

    const/4 v14, 0x2

    aput v59, v13, v14

    .line 1272
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    .line 1296
    .end local v30    # "iMul":I
    .end local v46    # "p1":I
    .end local v47    # "p2":I
    .end local v48    # "p3":I
    .end local v55    # "t1":I
    .end local v57    # "t2":I
    .end local v59    # "t3":I
    .restart local v34    # "names":[Ljava/lang/String;
    .restart local v52    # "scales":[[F
    .restart local v63    # "trans":[[F
    .restart local v78    # "vertices":[[[I
    :cond_4
    mul-int v13, v29, v28

    add-int v41, v13, v42

    .line 1297
    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v49

    .line 1298
    .local v49, "scaleX":F
    add-int/lit8 v13, v41, 0x4

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v50

    .line 1299
    .local v50, "scaleY":F
    add-int/lit8 v13, v41, 0x8

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v51

    .line 1300
    .local v51, "scaleZ":F
    add-int/lit8 v13, v41, 0xc

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v64

    .line 1301
    .local v64, "transX":F
    add-int/lit8 v13, v41, 0x10

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v65

    .line 1302
    .local v65, "transY":F
    add-int/lit8 v13, v41, 0x14

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v66

    .line 1304
    .local v66, "transZ":F
    new-instance v33, Ljava/lang/String;

    add-int/lit8 v13, v41, 0x18

    const/16 v14, 0x10

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13, v14}, Ljava/lang/String;-><init>([BII)V

    .line 1305
    .local v33, "name":Ljava/lang/String;
    aget-object v13, v52, v29

    const/4 v14, 0x0

    aput v49, v13, v14

    .line 1306
    aget-object v13, v52, v29

    const/4 v14, 0x1

    aput v50, v13, v14

    .line 1307
    aget-object v13, v52, v29

    const/4 v14, 0x2

    aput v51, v13, v14

    .line 1308
    aget-object v13, v63, v29

    const/4 v14, 0x0

    aput v64, v13, v14

    .line 1309
    aget-object v13, v63, v29

    const/4 v14, 0x1

    aput v65, v13, v14

    .line 1310
    aget-object v13, v63, v29

    const/4 v14, 0x2

    aput v66, v13, v14

    .line 1311
    aput-object v33, v34, v29

    .line 1313
    add-int/lit8 v41, v41, 0x28

    .line 1314
    const/16 v45, 0x0

    .restart local v45    # "p":I
    :goto_5
    move/from16 v0, v45

    move/from16 v1, v40

    if-lt v0, v1, :cond_5

    .line 1295
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 1315
    :cond_5
    mul-int/lit8 v13, v45, 0x4

    add-int v30, v41, v13

    .line 1316
    .restart local v30    # "iMul":I
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v71

    .line 1317
    .local v71, "v1":I
    add-int/lit8 v13, v30, 0x1

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v75

    .line 1318
    .local v75, "v2":I
    add-int/lit8 v13, v30, 0x2

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v76

    .line 1319
    .local v76, "v3":I
    aget-object v13, v78, v29

    aget-object v13, v13, v45

    const/4 v14, 0x0

    aput v71, v13, v14

    .line 1320
    aget-object v13, v78, v29

    aget-object v13, v13, v45

    const/4 v14, 0x1

    aput v75, v13, v14

    .line 1321
    aget-object v13, v78, v29

    aget-object v13, v13, v45

    const/4 v14, 0x2

    aput v76, v13, v14

    .line 1314
    add-int/lit8 v45, v45, 0x1

    goto :goto_5

    .line 1334
    .end local v30    # "iMul":I
    .end local v33    # "name":Ljava/lang/String;
    .end local v49    # "scaleX":F
    .end local v50    # "scaleY":F
    .end local v51    # "scaleZ":F
    .end local v64    # "transX":F
    .end local v65    # "transY":F
    .end local v66    # "transZ":F
    .end local v71    # "v1":I
    .end local v75    # "v2":I
    .end local v76    # "v3":I
    .restart local v2    # "obj":Lcom/threed/jpct/Object3D;
    .restart local v12    # "tmp":Lcom/threed/jpct/Object3D;
    .restart local v23    # "anim":Lcom/threed/jpct/Animation;
    .restart local v31    # "lastSeq":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->clearObject()V

    .line 1335
    move/from16 v27, v45

    .line 1337
    .local v27, "frame":I
    const/16 v25, 0x0

    .local v25, "e":I
    :goto_6
    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_8

    .line 1352
    const/16 v29, 0x0

    :goto_7
    move/from16 v0, v29

    move/from16 v1, v39

    if-lt v0, v1, :cond_a

    .line 1376
    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    .line 1377
    iget-object v13, v12, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/threed/jpct/Mesh;->calcNormalsMD2([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v22

    .line 1379
    aget-object v13, v34, v45

    invoke-static {v13}, Lcom/threed/jpct/Loader;->getSequenceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 1380
    .local v62, "tmpS":Ljava/lang/String;
    move-object/from16 v0, v62

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 1381
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Processing: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v62

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1382
    move-object/from16 v31, v62

    .line 1383
    move-object/from16 v0, v23

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Animation;->createSubSequence(Ljava/lang/String;)I

    .line 1386
    :cond_7
    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/threed/jpct/Mesh;->cloneMesh(Z)Lcom/threed/jpct/Mesh;

    move-result-object v13

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/threed/jpct/Animation;->addKeyFrame(Lcom/threed/jpct/Mesh;)V

    .line 1332
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_3

    .line 1338
    .end local v62    # "tmpS":Ljava/lang/String;
    :cond_8
    aget-object v13, v78, v27

    aget-object v13, v13, v25

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    aget-object v14, v52, v27

    const/4 v15, 0x0

    aget v14, v14, v15

    mul-float/2addr v13, v14

    aget-object v14, v63, v27

    const/4 v15, 0x0

    aget v14, v14, v15

    add-float v72, v13, v14

    .line 1339
    .local v72, "v1x":F
    aget-object v13, v78, v27

    aget-object v13, v13, v25

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v13, v13

    aget-object v14, v52, v27

    const/4 v15, 0x1

    aget v14, v14, v15

    mul-float/2addr v13, v14

    aget-object v14, v63, v27

    const/4 v15, 0x1

    aget v14, v14, v15

    add-float v73, v13, v14

    .line 1340
    .local v73, "v1y":F
    aget-object v13, v78, v27

    aget-object v13, v13, v25

    const/4 v14, 0x2

    aget v13, v13, v14

    int-to-float v13, v13

    aget-object v14, v52, v27

    const/4 v15, 0x2

    aget v14, v14, v15

    mul-float/2addr v13, v14

    aget-object v14, v63, v27

    const/4 v15, 0x2

    aget v14, v14, v15

    add-float v74, v13, v14

    .line 1342
    .local v74, "v1z":F
    mul-float v72, v72, p3

    .line 1343
    mul-float v73, v73, p3

    .line 1344
    mul-float v74, v74, p3

    .line 1346
    iget-object v13, v12, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move/from16 v0, v74

    neg-float v14, v0

    move/from16 v0, v72

    move/from16 v1, v73

    invoke-virtual {v13, v0, v14, v1}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    .line 1347
    if-nez v45, :cond_9

    .line 1348
    iget-object v13, v2, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move/from16 v0, v74

    neg-float v14, v0

    move/from16 v0, v72

    move/from16 v1, v73

    invoke-virtual {v13, v0, v14, v1}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    .line 1337
    :cond_9
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_6

    .line 1353
    .end local v72    # "v1x":F
    .end local v73    # "v1y":F
    .end local v74    # "v1z":F
    :cond_a
    aget-object v13, v68, v29

    const/4 v14, 0x0

    aget v3, v13, v14

    .line 1354
    .local v3, "v1p":I
    aget-object v13, v68, v29

    const/4 v14, 0x2

    aget v6, v13, v14

    .line 1355
    .local v6, "v2p":I
    aget-object v13, v68, v29

    const/4 v14, 0x1

    aget v9, v13, v14

    .line 1357
    .local v9, "v3p":I
    aget-object v13, v67, v29

    const/4 v14, 0x0

    aget v56, v13, v14

    .line 1358
    .local v56, "t1p":I
    aget-object v13, v67, v29

    const/4 v14, 0x2

    aget v58, v13, v14

    .line 1359
    .local v58, "t2p":I
    aget-object v13, v67, v29

    const/4 v14, 0x1

    aget v60, v13, v14

    .line 1361
    .local v60, "t3p":I
    aget-object v13, v61, v56

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    move/from16 v0, v54

    int-to-float v14, v0

    div-float v4, v13, v14

    .line 1362
    .local v4, "t1u":F
    aget-object v13, v61, v56

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v13, v13

    move/from16 v0, v53

    int-to-float v14, v0

    div-float v5, v13, v14

    .line 1364
    .local v5, "t1v":F
    aget-object v13, v61, v58

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    move/from16 v0, v54

    int-to-float v14, v0

    div-float v7, v13, v14

    .line 1365
    .local v7, "t2u":F
    aget-object v13, v61, v58

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v13, v13

    move/from16 v0, v53

    int-to-float v14, v0

    div-float v8, v13, v14

    .line 1367
    .local v8, "t2v":F
    aget-object v13, v61, v60

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    move/from16 v0, v54

    int-to-float v14, v0

    div-float v10, v13, v14

    .line 1368
    .local v10, "t3u":F
    aget-object v13, v61, v60

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v13, v13

    move/from16 v0, v53

    int-to-float v14, v0

    div-float v11, v13, v14

    .line 1370
    .local v11, "t3v":F
    if-nez v45, :cond_b

    .line 1371
    invoke-virtual/range {v2 .. v11}, Lcom/threed/jpct/Object3D;->addMD2Triangle(IFFIFFIFF)I

    :cond_b
    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    .line 1373
    invoke-virtual/range {v12 .. v21}, Lcom/threed/jpct/Object3D;->addMD2Triangle(IFFIFFIFF)I

    .line 1352
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_7

    .line 1397
    .end local v2    # "obj":Lcom/threed/jpct/Object3D;
    .end local v3    # "v1p":I
    .end local v4    # "t1u":F
    .end local v5    # "t1v":F
    .end local v6    # "v2p":I
    .end local v7    # "t2u":F
    .end local v8    # "t2v":F
    .end local v9    # "v3p":I
    .end local v10    # "t3u":F
    .end local v11    # "t3v":F
    .end local v12    # "tmp":Lcom/threed/jpct/Object3D;
    .end local v23    # "anim":Lcom/threed/jpct/Animation;
    .end local v25    # "e":I
    .end local v27    # "frame":I
    .end local v28    # "frameSize":I
    .end local v29    # "i":I
    .end local v31    # "lastSeq":Ljava/lang/String;
    .end local v32    # "magicNum":I
    .end local v34    # "names":[Ljava/lang/String;
    .end local v35    # "numFrames":I
    .end local v36    # "numGlCommands":I
    .end local v37    # "numSkins":I
    .end local v38    # "numTexCoords":I
    .end local v39    # "numTriangles":I
    .end local v40    # "numVertices":I
    .end local v41    # "oF":I
    .end local v42    # "offsetFrames":I
    .end local v43    # "offsetTexCoords":I
    .end local v44    # "offsetTriangles":I
    .end local v45    # "p":I
    .end local v52    # "scales":[[F
    .end local v53    # "skinHeight":I
    .end local v54    # "skinWidth":I
    .end local v56    # "t1p":I
    .end local v58    # "t2p":I
    .end local v60    # "t3p":I
    .end local v61    # "texCoords":[[I
    .end local v63    # "trans":[[F
    .end local v67    # "triTexture":[[I
    .end local v68    # "triVertex":[[I
    .end local v77    # "version":I
    .end local v78    # "vertices":[[[I
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method public static loadOBJ(Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 6
    .param p0, "objStream"    # Ljava/io/InputStream;
    .param p1, "mtlStream"    # Ljava/io/InputStream;
    .param p2, "scale"    # F

    .prologue
    const/4 v0, 0x0

    .line 229
    move-object v1, v0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/threed/jpct/Loader;->loadOBJ(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method private static loadOBJ(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 57
    .param p0, "docBase"    # Ljava/net/URL;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "mtlName"    # Ljava/lang/String;
    .param p3, "objStream"    # Ljava/io/InputStream;
    .param p4, "mtlStream"    # Ljava/io/InputStream;
    .param p5, "scale"    # F

    .prologue
    .line 233
    const/16 v28, 0x0

    .line 234
    .local v28, "mtl":Ljava/lang/String;
    if-nez p2, :cond_0

    if-eqz p4, :cond_9

    .line 235
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v28

    .line 236
    const/16 v53, 0x9

    const/16 v54, 0x20

    move-object/from16 v0, v28

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v28

    .line 241
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v4, "mats":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Object;>;"
    new-instance v39, Ljava/util/StringTokenizer;

    const-string v53, "\n"

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v39, "st":Ljava/util/StringTokenizer;
    const/16 v26, 0x0

    .line 244
    .local v26, "matName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 245
    .local v18, "col":Lcom/threed/jpct/RGBColor;
    const/16 v43, 0x0

    .line 246
    .local v43, "texture":Ljava/lang/String;
    const/16 v44, 0x0

    .line 247
    .local v44, "texture2":Ljava/lang/String;
    const/16 v53, 0x3

    move/from16 v0, v53

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 248
    .local v19, "cols":[F
    const/16 v30, 0x1

    .line 249
    .local v30, "next":Z
    const/16 v25, 0x0

    .line 250
    .local v25, "line":Ljava/lang/String;
    const/16 v46, 0x0

    .line 252
    .local v46, "trans":Ljava/lang/Float;
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v42

    .line 254
    .local v42, "texMan":Lcom/threed/jpct/TextureManager;
    const/16 v27, 0x0

    .line 255
    .local v27, "mode":I
    :cond_1
    :goto_1
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-nez v53, :cond_a

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v32

    .line 332
    .local v32, "obj":Ljava/lang/String;
    const/16 v53, 0x9

    const/16 v54, 0x20

    move-object/from16 v0, v32

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v32

    .line 334
    const-string v53, "o "

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2

    const-string v53, "g "

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2

    const-string v53, "g\n"

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2

    const-string v53, "o\n"

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2

    .line 335
    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "o jPCT_generated\n"

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 338
    :cond_2
    const-string v53, "v "

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->countOcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v50

    .line 339
    .local v50, "vertCnt":I
    const-string v53, "vt "

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->countOcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 340
    .local v12, "uvCnt":I
    const-string v53, "f "

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->countOcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 341
    .local v10, "polyCnt":I
    const/16 v31, 0x0

    .line 343
    .local v31, "normalCnt":I
    const/16 v53, 0x3

    move/from16 v0, v50

    move/from16 v1, v53

    filled-new-array {v0, v1}, [I

    move-result-object v53

    sget-object v54, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    .line 344
    .local v6, "vertices":[[F
    sget-boolean v53, Lcom/threed/jpct/Config;->useNormalsFromOBJ:Z

    if-eqz v53, :cond_15

    const-string v53, "vn "

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->countOcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x3

    filled-new-array/range {v53 .. v54}, [I

    move-result-object v53

    sget-object v54, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, [[F

    move-object/from16 v16, v53

    .line 345
    .local v16, "normals":[[F
    :goto_2
    const/16 v53, 0x2

    move/from16 v0, v53

    filled-new-array {v12, v0}, [I

    move-result-object v53

    sget-object v54, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    .line 346
    .local v7, "uvs":[[F
    const/16 v53, 0x4

    const/16 v54, 0x3

    move/from16 v0, v53

    move/from16 v1, v54

    filled-new-array {v10, v0, v1}, [I

    move-result-object v53

    sget-object v54, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[I

    .line 347
    .local v5, "polys":[[[I
    new-array v9, v10, [Ljava/lang/String;

    .line 348
    .local v9, "matNames":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 349
    const/16 v50, 0x0

    .line 350
    const/4 v12, 0x0

    .line 352
    const/4 v14, 0x0

    check-cast v14, [I

    .line 353
    .local v14, "posCache":[I
    const/4 v15, 0x0

    check-cast v15, [I

    .line 355
    .local v15, "lastPoints":[I
    sget-boolean v53, Lcom/threed/jpct/Loader;->optimize:Z

    if-eqz v53, :cond_3

    if-eqz v16, :cond_4

    .line 356
    :cond_3
    array-length v0, v6

    move/from16 v53, v0

    move/from16 v0, v53

    new-array v14, v0, [I

    .line 357
    const/16 v53, 0x3

    move/from16 v0, v53

    new-array v15, v0, [I

    .line 358
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_3
    array-length v0, v14

    move/from16 v53, v0

    move/from16 v0, v21

    move/from16 v1, v53

    if-lt v0, v1, :cond_16

    .line 363
    .end local v21    # "i":I
    :cond_4
    new-instance v39, Ljava/util/StringTokenizer;

    .end local v39    # "st":Ljava/util/StringTokenizer;
    const-string v53, "\n"

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .restart local v39    # "st":Ljava/util/StringTokenizer;
    const/4 v8, 0x0

    .line 365
    .local v8, "name":Ljava/lang/String;
    const/16 p2, 0x0

    .line 366
    const/4 v13, 0x0

    .line 367
    .local v13, "fourSided":I
    const/16 v24, 0x0

    .line 368
    .local v24, "largePolygons":Z
    const/16 v48, 0x0

    .line 369
    .local v48, "unsupported":Z
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v34, "objs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/Object3D;>;"
    const/4 v11, 0x0

    .line 373
    .local v11, "polyStore":I
    :cond_5
    :goto_4
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-nez v53, :cond_17

    .line 531
    if-eqz v48, :cond_6

    .line 532
    const-string v53, "This OBJ-file contains unsupported geometry data. This data has been skipped!"

    const/16 v54, 0x1

    invoke-static/range {v53 .. v54}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 534
    :cond_6
    if-eqz v24, :cond_7

    .line 535
    const-string v53, "This OBJ-file contains n-polygons with n>4! These polygons wont be displayed correctly!"

    const/16 v54, 0x1

    invoke-static/range {v53 .. v54}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 538
    :cond_7
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v53

    move/from16 v0, v53

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    move-object/from16 v33, v0

    .line 539
    .local v33, "objA":[Lcom/threed/jpct/Object3D;
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_5
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v53

    move/from16 v0, v21

    move/from16 v1, v53

    if-lt v0, v1, :cond_38

    .line 542
    if-eqz v28, :cond_8

    .line 543
    invoke-static {}, Lcom/threed/jpct/Loader;->clearCache()V

    .line 545
    :cond_8
    return-object v33

    .line 238
    .end local v4    # "mats":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v5    # "polys":[[[I
    .end local v6    # "vertices":[[F
    .end local v7    # "uvs":[[F
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "matNames":[Ljava/lang/String;
    .end local v10    # "polyCnt":I
    .end local v11    # "polyStore":I
    .end local v12    # "uvCnt":I
    .end local v13    # "fourSided":I
    .end local v14    # "posCache":[I
    .end local v15    # "lastPoints":[I
    .end local v16    # "normals":[[F
    .end local v18    # "col":Lcom/threed/jpct/RGBColor;
    .end local v19    # "cols":[F
    .end local v21    # "i":I
    .end local v24    # "largePolygons":Z
    .end local v25    # "line":Ljava/lang/String;
    .end local v26    # "matName":Ljava/lang/String;
    .end local v27    # "mode":I
    .end local v30    # "next":Z
    .end local v31    # "normalCnt":I
    .end local v32    # "obj":Ljava/lang/String;
    .end local v33    # "objA":[Lcom/threed/jpct/Object3D;
    .end local v34    # "objs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/Object3D;>;"
    .end local v39    # "st":Ljava/util/StringTokenizer;
    .end local v42    # "texMan":Lcom/threed/jpct/TextureManager;
    .end local v43    # "texture":Ljava/lang/String;
    .end local v44    # "texture2":Ljava/lang/String;
    .end local v46    # "trans":Ljava/lang/Float;
    .end local v48    # "unsupported":Z
    .end local v50    # "vertCnt":I
    :cond_9
    const-string v28, ""

    goto/16 :goto_0

    .line 256
    .restart local v4    # "mats":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Object;>;"
    .restart local v18    # "col":Lcom/threed/jpct/RGBColor;
    .restart local v19    # "cols":[F
    .restart local v25    # "line":Ljava/lang/String;
    .restart local v26    # "matName":Ljava/lang/String;
    .restart local v27    # "mode":I
    .restart local v30    # "next":Z
    .restart local v39    # "st":Ljava/util/StringTokenizer;
    .restart local v42    # "texMan":Lcom/threed/jpct/TextureManager;
    .restart local v43    # "texture":Ljava/lang/String;
    .restart local v44    # "texture2":Ljava/lang/String;
    .restart local v46    # "trans":Ljava/lang/Float;
    :cond_a
    if-eqz v30, :cond_b

    .line 257
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 259
    :cond_b
    packed-switch v27, :pswitch_data_0

    .line 326
    :cond_c
    :goto_6
    if-eqz v30, :cond_d

    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-nez v53, :cond_1

    .line 327
    :cond_d
    const/16 v53, 0x3

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aput-object v18, v53, v54

    const/16 v54, 0x1

    aput-object v43, v53, v54

    const/16 v54, 0x2

    aput-object v46, v53, v54

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 261
    :pswitch_0
    const-string v53, "newmtl "

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_c

    .line 262
    const/16 v53, 0x7

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 263
    const/16 v27, 0x1

    .line 264
    const/16 v30, 0x1

    .line 265
    const/16 v18, 0x0

    .line 266
    const/16 v43, 0x0

    .line 267
    const/16 v46, 0x0

    .line 268
    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "Processing new material "

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "!"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x2

    invoke-static/range {v53 .. v54}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_6

    .line 273
    :pswitch_1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 274
    .local v23, "lLine":Ljava/lang/String;
    const-string v53, "kd "

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_10

    .line 275
    const/16 v53, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    .line 276
    .local v41, "sub":Ljava/lang/String;
    new-instance v40, Ljava/util/StringTokenizer;

    const-string v53, " "

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .local v40, "st2":Ljava/util/StringTokenizer;
    const/16 v22, 0x0

    .line 278
    .local v22, "ind":I
    :goto_7
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-eqz v53, :cond_e

    const/16 v53, 0x3

    move/from16 v0, v22

    move/from16 v1, v53

    if-lt v0, v1, :cond_f

    .line 288
    :cond_e
    new-instance v18, Lcom/threed/jpct/RGBColor;

    .end local v18    # "col":Lcom/threed/jpct/RGBColor;
    const/16 v53, 0x0

    aget v53, v19, v53

    const/high16 v54, 0x437f0000    # 255.0f

    mul-float v53, v53, v54

    move/from16 v0, v53

    float-to-int v0, v0

    move/from16 v53, v0

    const/16 v54, 0x1

    aget v54, v19, v54

    const/high16 v55, 0x437f0000    # 255.0f

    mul-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    const/16 v55, 0x2

    aget v55, v19, v55

    const/high16 v56, 0x437f0000    # 255.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    move-object/from16 v0, v18

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    .restart local v18    # "col":Lcom/threed/jpct/RGBColor;
    goto/16 :goto_6

    .line 279
    :cond_f
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 281
    .local v17, "c":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Float;->floatValue()F

    move-result v53

    aput v53, v19, v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 282
    :catch_0
    move-exception v20

    .line 283
    .local v20, "e":Ljava/lang/Exception;
    const/high16 v53, 0x3f800000    # 1.0f

    aput v53, v19, v22

    .line 284
    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "Error in MTL-file near: "

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_8

    .line 290
    .end local v17    # "c":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "ind":I
    .end local v40    # "st2":Ljava/util/StringTokenizer;
    .end local v41    # "sub":Ljava/lang/String;
    :cond_10
    const-string v53, "map_kd"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_11

    const-string v53, "map_ka"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    :cond_11
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v53

    const/16 v54, 0x7

    move/from16 v0, v53

    move/from16 v1, v54

    if-le v0, v1, :cond_13

    .line 292
    const-string v53, "map_kd"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_12

    .line 293
    const/16 v53, 0x7

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/threed/jpct/Loader;->removeBogusData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 294
    invoke-virtual/range {v42 .. v43}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_c

    .line 295
    invoke-virtual/range {v42 .. v43}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;)V

    .line 296
    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "Texture named "

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " added to TextureManager!"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x2

    invoke-static/range {v53 .. v54}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 299
    :cond_12
    const/16 v53, 0x7

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/threed/jpct/Loader;->removeBogusData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 300
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_c

    .line 301
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;)V

    .line 302
    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "Texture named "

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " added to TextureManager!"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x2

    invoke-static/range {v53 .. v54}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 306
    :cond_13
    const-string v53, "d "

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_14

    .line 307
    const/high16 v47, -0x40800000    # -1.0f

    .line 309
    .local v47, "tt":F
    const/16 v53, 0x2

    :try_start_1
    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v47

    .line 312
    :goto_9
    const/high16 v53, -0x40800000    # -1.0f

    cmpl-float v53, v47, v53

    if-eqz v53, :cond_c

    const/high16 v53, 0x3f800000    # 1.0f

    cmpl-float v53, v47, v53

    if-eqz v53, :cond_c

    .line 313
    invoke-static/range {v47 .. v47}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v46

    goto/16 :goto_6

    .line 316
    .end local v47    # "tt":F
    :cond_14
    const-string v53, "newmtl"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_c

    .line 317
    const/16 v27, 0x0

    .line 318
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 344
    .end local v23    # "lLine":Ljava/lang/String;
    .restart local v6    # "vertices":[[F
    .restart local v10    # "polyCnt":I
    .restart local v12    # "uvCnt":I
    .restart local v31    # "normalCnt":I
    .restart local v32    # "obj":Ljava/lang/String;
    .restart local v50    # "vertCnt":I
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 359
    .restart local v5    # "polys":[[[I
    .restart local v7    # "uvs":[[F
    .restart local v9    # "matNames":[Ljava/lang/String;
    .restart local v14    # "posCache":[I
    .restart local v15    # "lastPoints":[I
    .restart local v16    # "normals":[[F
    .restart local v21    # "i":I
    :cond_16
    const/16 v53, -0x1

    aput v53, v14, v21

    .line 358
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 374
    .end local v21    # "i":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v11    # "polyStore":I
    .restart local v13    # "fourSided":I
    .restart local v24    # "largePolygons":Z
    .restart local v34    # "objs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/Object3D;>;"
    .restart local v48    # "unsupported":Z
    :cond_17
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 375
    const/16 v30, 0x0

    .line 376
    const-string v53, "v "

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1b

    .line 378
    const/16 v53, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    .line 379
    .restart local v41    # "sub":Ljava/lang/String;
    new-instance v40, Ljava/util/StringTokenizer;

    const-string v53, " "

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .restart local v40    # "st2":Ljava/util/StringTokenizer;
    const/16 v22, 0x0

    .line 381
    .restart local v22    # "ind":I
    :goto_a
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-eqz v53, :cond_18

    const/16 v53, 0x3

    move/from16 v0, v22

    move/from16 v1, v53

    if-lt v0, v1, :cond_1a

    .line 390
    :cond_18
    add-int/lit8 v50, v50, 0x1

    .line 523
    .end local v22    # "ind":I
    .end local v40    # "st2":Ljava/util/StringTokenizer;
    .end local v41    # "sub":Ljava/lang/String;
    :cond_19
    :goto_b
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-nez v53, :cond_5

    .line 525
    sub-int v53, v10, v11

    if-lez v53, :cond_5

    .line 526
    invoke-static/range {v4 .. v16}, Lcom/threed/jpct/Loader;->createOBJObject(Ljava/util/HashMap;[[[I[[F[[FLjava/lang/String;[Ljava/lang/String;IIII[I[I[[F)Lcom/threed/jpct/Object3D;

    move-result-object v53

    move-object/from16 v0, v34

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 382
    .restart local v22    # "ind":I
    .restart local v40    # "st2":Ljava/util/StringTokenizer;
    .restart local v41    # "sub":Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 384
    .restart local v17    # "c":Ljava/lang/String;
    :try_start_2
    aget-object v53, v6, v50

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Float;->floatValue()F

    move-result v54

    mul-float v54, v54, p5

    aput v54, v53, v22
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    :goto_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 385
    :catch_1
    move-exception v20

    .line 386
    .restart local v20    # "e":Ljava/lang/Exception;
    aget-object v53, v6, v50

    const/16 v54, 0x0

    aput v54, v53, v22

    goto :goto_c

    .line 392
    .end local v17    # "c":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "ind":I
    .end local v40    # "st2":Ljava/util/StringTokenizer;
    .end local v41    # "sub":Ljava/lang/String;
    :cond_1b
    const-string v53, "vn "

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1e

    sget-boolean v53, Lcom/threed/jpct/Config;->useNormalsFromOBJ:Z

    if-eqz v53, :cond_1e

    .line 394
    const/16 v53, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    .line 395
    .restart local v41    # "sub":Ljava/lang/String;
    new-instance v40, Ljava/util/StringTokenizer;

    const-string v53, " "

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .restart local v40    # "st2":Ljava/util/StringTokenizer;
    const/16 v22, 0x0

    .line 397
    .restart local v22    # "ind":I
    :goto_d
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-eqz v53, :cond_1c

    const/16 v53, 0x3

    move/from16 v0, v22

    move/from16 v1, v53

    if-lt v0, v1, :cond_1d

    .line 406
    :cond_1c
    add-int/lit8 v31, v31, 0x1

    goto :goto_b

    .line 398
    :cond_1d
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 400
    .restart local v17    # "c":Ljava/lang/String;
    :try_start_3
    aget-object v53, v16, v31

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Float;->floatValue()F

    move-result v54

    aput v54, v53, v22
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 404
    :goto_e
    add-int/lit8 v22, v22, 0x1

    goto :goto_d

    .line 401
    :catch_2
    move-exception v20

    .line 402
    .restart local v20    # "e":Ljava/lang/Exception;
    aget-object v53, v16, v31

    const/16 v54, 0x0

    aput v54, v53, v22

    goto :goto_e

    .line 408
    .end local v17    # "c":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "ind":I
    .end local v40    # "st2":Ljava/util/StringTokenizer;
    .end local v41    # "sub":Ljava/lang/String;
    :cond_1e
    const-string v53, "vt "

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_21

    .line 409
    const/16 v53, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    .line 410
    .restart local v41    # "sub":Ljava/lang/String;
    new-instance v40, Ljava/util/StringTokenizer;

    const-string v53, " "

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .restart local v40    # "st2":Ljava/util/StringTokenizer;
    const/16 v22, 0x0

    .line 412
    .restart local v22    # "ind":I
    aget-object v53, v7, v12

    const/16 v54, 0x1

    const/16 v55, 0x0

    aput v55, v53, v54

    .line 413
    :goto_f
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-eqz v53, :cond_1f

    const/16 v53, 0x2

    move/from16 v0, v22

    move/from16 v1, v53

    if-lt v0, v1, :cond_20

    .line 423
    :cond_1f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_b

    .line 414
    :cond_20
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 416
    .restart local v17    # "c":Ljava/lang/String;
    :try_start_4
    aget-object v53, v7, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Float;->floatValue()F

    move-result v54

    aput v54, v53, v22
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 421
    :goto_10
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 417
    :catch_3
    move-exception v20

    .line 418
    .restart local v20    # "e":Ljava/lang/Exception;
    aget-object v53, v7, v12

    const/16 v54, 0x0

    aput v54, v53, v22

    .line 419
    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "Error in OBJ-file near: "

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_10

    .line 425
    .end local v17    # "c":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "ind":I
    .end local v40    # "st2":Ljava/util/StringTokenizer;
    .end local v41    # "sub":Ljava/lang/String;
    :cond_21
    const-string v53, "usemtl"

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_22

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v53

    const/16 v54, 0x6

    move/from16 v0, v53

    move/from16 v1, v54

    if-le v0, v1, :cond_22

    .line 426
    const/16 v53, 0x7

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_b

    .line 428
    :cond_22
    const-string v53, "f "

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_2e

    .line 429
    const/16 v53, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    .line 430
    .restart local v41    # "sub":Ljava/lang/String;
    new-instance v40, Ljava/util/StringTokenizer;

    const-string v53, " "

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .restart local v40    # "st2":Ljava/util/StringTokenizer;
    const/16 v22, 0x0

    .line 432
    .restart local v22    # "ind":I
    :cond_23
    :goto_11
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-eqz v53, :cond_24

    const/16 v53, 0x4

    move/from16 v0, v22

    move/from16 v1, v53

    if-lt v0, v1, :cond_25

    .line 478
    :cond_24
    move/from16 v21, v22

    .restart local v21    # "i":I
    :goto_12
    const/16 v53, 0x4

    move/from16 v0, v21

    move/from16 v1, v53

    if-lt v0, v1, :cond_2d

    .line 483
    aput-object p2, v9, v10

    .line 484
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    .line 433
    .end local v21    # "i":I
    :cond_25
    const/16 v53, 0x3

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_26

    .line 434
    add-int/lit8 v13, v13, 0x1

    .line 436
    :cond_26
    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 437
    .restart local v17    # "c":Ljava/lang/String;
    const-string v53, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v37

    .line 438
    .local v37, "pos":I
    const/16 v38, -0x1

    .line 439
    .local v38, "pos2":I
    const/16 v53, -0x1

    move/from16 v0, v37

    move/from16 v1, v53

    if-ne v0, v1, :cond_2c

    .line 440
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v37

    .line 444
    :goto_13
    const/16 v53, -0x1

    move/from16 v0, v38

    move/from16 v1, v53

    if-ne v0, v1, :cond_27

    .line 445
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v38

    .line 447
    :cond_27
    const/16 v53, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v53

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v49

    .line 448
    .local v49, "v":Ljava/lang/String;
    const/16 v52, 0x0

    .line 449
    .local v52, "vt":Ljava/lang/String;
    const/16 v51, 0x0

    .line 450
    .local v51, "vn":Ljava/lang/String;
    add-int/lit8 v53, v37, 0x1

    move/from16 v0, v53

    move/from16 v1, v38

    if-ge v0, v1, :cond_28

    .line 451
    add-int/lit8 v53, v37, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v53

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v52

    .line 453
    :cond_28
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v53

    move/from16 v0, v38

    move/from16 v1, v53

    if-eq v0, v1, :cond_29

    const/16 v53, -0x1

    move/from16 v0, v38

    move/from16 v1, v53

    if-eq v0, v1, :cond_29

    .line 454
    add-int/lit8 v53, v38, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    .line 458
    :cond_29
    :try_start_5
    aget-object v53, v5, v10

    aget-object v53, v53, v22

    const/16 v54, 0x0

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v55

    aput v55, v53, v54

    .line 459
    if-nez v52, :cond_2a

    .line 460
    const-string v52, "1"

    .line 462
    :cond_2a
    aget-object v53, v5, v10

    aget-object v53, v53, v22

    const/16 v54, 0x1

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v55

    aput v55, v53, v54

    .line 463
    if-eqz v51, :cond_2b

    .line 464
    aget-object v53, v5, v10

    aget-object v53, v53, v22

    const/16 v54, 0x2

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v55

    aput v55, v53, v54
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 473
    :cond_2b
    :goto_14
    add-int/lit8 v22, v22, 0x1

    .line 474
    const/16 v53, 0x4

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_23

    invoke-virtual/range {v40 .. v40}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v53

    if-eqz v53, :cond_23

    .line 475
    const/16 v24, 0x1

    goto/16 :goto_11

    .line 442
    .end local v49    # "v":Ljava/lang/String;
    .end local v51    # "vn":Ljava/lang/String;
    .end local v52    # "vt":Ljava/lang/String;
    :cond_2c
    const-string v53, "/"

    add-int/lit8 v54, v37, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v38

    goto/16 :goto_13

    .line 466
    .restart local v49    # "v":Ljava/lang/String;
    .restart local v51    # "vn":Ljava/lang/String;
    .restart local v52    # "vt":Ljava/lang/String;
    :catch_4
    move-exception v20

    .line 467
    .restart local v20    # "e":Ljava/lang/Exception;
    aget-object v53, v5, v10

    aget-object v53, v53, v22

    const/16 v54, 0x0

    const/16 v55, 0x1

    aput v55, v53, v54

    .line 468
    aget-object v53, v5, v10

    aget-object v53, v53, v22

    const/16 v54, 0x1

    const/16 v55, 0x1

    aput v55, v53, v54

    .line 469
    aget-object v53, v5, v10

    aget-object v53, v53, v22

    const/16 v54, 0x2

    const/16 v55, 0x1

    aput v55, v53, v54

    .line 470
    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "Error in OBJ-file near: "

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_14

    .line 479
    .end local v17    # "c":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v37    # "pos":I
    .end local v38    # "pos2":I
    .end local v49    # "v":Ljava/lang/String;
    .end local v51    # "vn":Ljava/lang/String;
    .end local v52    # "vt":Ljava/lang/String;
    .restart local v21    # "i":I
    :cond_2d
    aget-object v53, v5, v10

    aget-object v53, v53, v22

    const/16 v54, 0x0

    const/16 v55, -0x270f

    aput v55, v53, v54

    .line 480
    aget-object v53, v5, v10

    aget-object v53, v53, v22

    const/16 v54, 0x1

    const/16 v55, -0x270f

    aput v55, v53, v54

    .line 481
    aget-object v53, v5, v10

    aget-object v53, v53, v22

    const/16 v54, 0x2

    const/16 v55, -0x270f

    aput v55, v53, v54

    .line 478
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_12

    .line 486
    .end local v21    # "i":I
    .end local v22    # "ind":I
    .end local v40    # "st2":Ljava/util/StringTokenizer;
    .end local v41    # "sub":Ljava/lang/String;
    :cond_2e
    const-string v53, "o"

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    .line 487
    .local v36, "oo":Z
    if-nez v36, :cond_2f

    const-string v53, "g"

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_36

    .line 488
    :cond_2f
    move-object/from16 v35, v8

    .line 489
    .local v35, "oldName":Ljava/lang/String;
    const/16 v53, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v45

    .line 490
    .local v45, "tname":Ljava/lang/String;
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v53

    if-nez v53, :cond_33

    if-eqz v8, :cond_30

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v53

    if-nez v53, :cond_33

    .line 491
    :cond_30
    const-string v8, "noname"

    move-object/from16 v29, v8

    .line 498
    .end local v8    # "name":Ljava/lang/String;
    .local v29, "name":Ljava/lang/String;
    :goto_15
    sub-int v53, v10, v11

    if-lez v53, :cond_31

    .line 499
    if-eqz v35, :cond_34

    move-object/from16 v8, v35

    :goto_16
    invoke-static/range {v4 .. v16}, Lcom/threed/jpct/Loader;->createOBJObject(Ljava/util/HashMap;[[[I[[F[[FLjava/lang/String;[Ljava/lang/String;IIII[I[I[[F)Lcom/threed/jpct/Object3D;

    move-result-object v53

    move-object/from16 v0, v34

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_31
    if-eqz v36, :cond_32

    .line 504
    move/from16 v21, v11

    .restart local v21    # "i":I
    :goto_17
    move/from16 v0, v21

    if-lt v0, v10, :cond_35

    .line 509
    .end local v21    # "i":I
    :cond_32
    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "Processing object from OBJ-file: "

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x2

    invoke-static/range {v53 .. v54}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 511
    move v11, v10

    .line 512
    const/4 v13, 0x0

    move-object/from16 v8, v29

    .end local v29    # "name":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    goto/16 :goto_b

    .line 493
    :cond_33
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v53

    if-lez v53, :cond_39

    .line 494
    move-object/from16 v8, v45

    move-object/from16 v29, v8

    .end local v8    # "name":Ljava/lang/String;
    .restart local v29    # "name":Ljava/lang/String;
    goto :goto_15

    :cond_34
    move-object/from16 v8, v29

    .line 499
    goto :goto_16

    .line 505
    .restart local v21    # "i":I
    :cond_35
    const/16 v53, 0x0

    aput-object v53, v9, v21

    .line 504
    add-int/lit8 v21, v21, 0x1

    goto :goto_17

    .line 514
    .end local v21    # "i":I
    .end local v29    # "name":Ljava/lang/String;
    .end local v35    # "oldName":Ljava/lang/String;
    .end local v45    # "tname":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_36
    if-nez v48, :cond_19

    const-string v53, "p "

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_37

    const-string v53, "l "

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_37

    const-string v53, "curv"

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_37

    const-string v53, "surf"

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_19

    .line 515
    :cond_37
    const/16 v48, 0x1

    goto/16 :goto_b

    .line 540
    .end local v36    # "oo":Z
    .restart local v21    # "i":I
    .restart local v33    # "objA":[Lcom/threed/jpct/Object3D;
    :cond_38
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/threed/jpct/Object3D;

    aput-object v53, v33, v21

    .line 539
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 310
    .end local v5    # "polys":[[[I
    .end local v6    # "vertices":[[F
    .end local v7    # "uvs":[[F
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "matNames":[Ljava/lang/String;
    .end local v10    # "polyCnt":I
    .end local v11    # "polyStore":I
    .end local v12    # "uvCnt":I
    .end local v13    # "fourSided":I
    .end local v14    # "posCache":[I
    .end local v15    # "lastPoints":[I
    .end local v16    # "normals":[[F
    .end local v21    # "i":I
    .end local v24    # "largePolygons":Z
    .end local v31    # "normalCnt":I
    .end local v32    # "obj":Ljava/lang/String;
    .end local v33    # "objA":[Lcom/threed/jpct/Object3D;
    .end local v34    # "objs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/Object3D;>;"
    .end local v48    # "unsupported":Z
    .end local v50    # "vertCnt":I
    .restart local v23    # "lLine":Ljava/lang/String;
    .restart local v47    # "tt":F
    :catch_5
    move-exception v53

    goto/16 :goto_9

    .end local v23    # "lLine":Ljava/lang/String;
    .end local v47    # "tt":F
    .restart local v5    # "polys":[[[I
    .restart local v6    # "vertices":[[F
    .restart local v7    # "uvs":[[F
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "matNames":[Ljava/lang/String;
    .restart local v10    # "polyCnt":I
    .restart local v11    # "polyStore":I
    .restart local v12    # "uvCnt":I
    .restart local v13    # "fourSided":I
    .restart local v14    # "posCache":[I
    .restart local v15    # "lastPoints":[I
    .restart local v16    # "normals":[[F
    .restart local v24    # "largePolygons":Z
    .restart local v31    # "normalCnt":I
    .restart local v32    # "obj":Ljava/lang/String;
    .restart local v34    # "objs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/Object3D;>;"
    .restart local v35    # "oldName":Ljava/lang/String;
    .restart local v36    # "oo":Z
    .restart local v45    # "tname":Ljava/lang/String;
    .restart local v48    # "unsupported":Z
    .restart local v50    # "vertCnt":I
    :cond_39
    move-object/from16 v29, v8

    .end local v8    # "name":Ljava/lang/String;
    .restart local v29    # "name":Ljava/lang/String;
    goto/16 :goto_15

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static loadSerializedObject(Ljava/io/InputStream;)Lcom/threed/jpct/Object3D;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 104
    new-instance v0, Lcom/threed/jpct/DeSerializer;

    invoke-direct {v0}, Lcom/threed/jpct/DeSerializer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/threed/jpct/DeSerializer;->deserialize(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static loadSerializedObjectArray(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 119
    new-instance v0, Lcom/threed/jpct/DeSerializer;

    invoke-direct {v0}, Lcom/threed/jpct/DeSerializer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/threed/jpct/DeSerializer;->deserialize(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public static loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-static {v0, v0, p0}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "docBase"    # Ljava/net/URL;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 72
    if-eqz p1, :cond_0

    sget-object v1, Lcom/threed/jpct/Loader;->lastFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/threed/jpct/Loader;->lastFilename:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 74
    sget-object v1, Lcom/threed/jpct/Loader;->lastFileData:Ljava/lang/String;

    .line 88
    :goto_0
    return-object v1

    .line 76
    :cond_0
    invoke-static {}, Lcom/threed/jpct/Loader;->clearCache()V

    .line 77
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 78
    .local v0, "ret":[Ljava/lang/String;
    invoke-static {p0, p1, p2, v0}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;[Ljava/lang/String;)[B

    .line 79
    if-eqz v0, :cond_2

    aget-object v1, v0, v3

    if-eqz v1, :cond_2

    .line 80
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4e20

    if-gt v1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 81
    sput-object p1, Lcom/threed/jpct/Loader;->lastFilename:Ljava/lang/String;

    .line 82
    aget-object v1, v0, v3

    sput-object v1, Lcom/threed/jpct/Loader;->lastFileData:Ljava/lang/String;

    .line 84
    :cond_1
    aget-object v1, v0, v3

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "Couldn\'t load text-file!"

    invoke-static {v1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 88
    const-string v1, ""

    goto :goto_0
.end method

.method public static readTextureNames3DS(Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-static {v0, v0, p0}, Lcom/threed/jpct/Loader;->readTextureNames3DS(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readTextureNames3DS(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 25
    .param p0, "docBase"    # Ljava/net/URL;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/io/InputStream;

    .prologue
    .line 1403
    invoke-static/range {p0 .. p2}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v3

    .line 1404
    .local v3, "buf":[B
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v5, v0, [I

    .line 1405
    .local v5, "data":[I
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 1406
    .local v17, "tmpData":[I
    const/4 v11, 0x0

    .line 1407
    .local v11, "offset":I
    const/4 v7, -0x1

    .line 1408
    .local v7, "id":I
    const/16 v16, -0x1

    .line 1409
    .local v16, "size":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1410
    .local v10, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1412
    .local v9, "nBuf":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    .line 1413
    invoke-static {v3, v11, v5}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 1414
    add-int/lit8 v11, v11, 0x6

    .line 1415
    const/16 v23, 0x0

    aget v7, v5, v23

    .line 1416
    const/16 v23, 0x1

    aget v16, v5, v23

    .line 1417
    const/16 v23, 0x4d4d

    move/from16 v0, v23

    if-eq v7, v0, :cond_1

    .line 1418
    const-string v23, "Not a valid 3DS file!"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 1533
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    .line 1534
    .local v15, "res":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v15

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v6, v0, :cond_17

    .line 1537
    return-object v15

    .line 1420
    .end local v6    # "i":I
    .end local v15    # "res":[Ljava/lang/String;
    :cond_1
    const/16 v22, 0x1

    .line 1421
    .local v22, "unknownChunk":Z
    :cond_2
    :goto_1
    if-ltz v7, :cond_0

    array-length v0, v3

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_0

    .line 1422
    const/16 v22, 0x1

    .line 1423
    invoke-static {v3, v11, v5}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 1424
    add-int/lit8 v11, v11, 0x6

    .line 1425
    const/16 v23, 0x0

    aget v7, v5, v23

    .line 1426
    const/16 v23, 0x1

    aget v16, v5, v23

    .line 1427
    if-ltz v7, :cond_2

    array-length v0, v3

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_2

    .line 1429
    const v23, 0xb010

    move/from16 v0, v23

    if-ne v7, v0, :cond_4

    .line 1430
    const/4 v4, 0x0

    .line 1432
    .local v4, "c":I
    :cond_3
    invoke-static {v3, v11}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v4

    .line 1433
    add-int/lit8 v11, v11, 0x1

    .line 1434
    if-gtz v4, :cond_3

    .line 1435
    add-int/lit8 v11, v11, 0x6

    .line 1436
    const/16 v22, 0x0

    .line 1439
    .end local v4    # "c":I
    :cond_4
    const v23, 0xb020

    move/from16 v0, v23

    if-ne v7, v0, :cond_5

    .line 1440
    add-int/lit8 v11, v11, 0x14

    .line 1441
    add-int/lit8 v11, v11, 0x4

    .line 1442
    add-int/lit8 v11, v11, 0x4

    .line 1443
    add-int/lit8 v11, v11, 0x4

    .line 1444
    const/16 v22, 0x0

    .line 1447
    :cond_5
    const/16 v23, 0x4000

    move/from16 v0, v23

    if-ne v7, v0, :cond_7

    .line 1448
    const/4 v4, 0x0

    .line 1450
    .restart local v4    # "c":I
    :cond_6
    invoke-static {v3, v11}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v4

    .line 1451
    add-int/lit8 v11, v11, 0x1

    .line 1452
    if-gtz v4, :cond_6

    .line 1453
    const/16 v22, 0x0

    .line 1456
    .end local v4    # "c":I
    :cond_7
    const/16 v23, 0x4110

    move/from16 v0, v23

    if-ne v7, v0, :cond_8

    .line 1457
    invoke-static {v3, v11}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v2

    .line 1459
    .local v2, "anz":I
    add-int/lit8 v11, v11, 0x2

    .line 1460
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-lt v6, v2, :cond_e

    .line 1465
    const/16 v22, 0x0

    .line 1468
    .end local v2    # "anz":I
    .end local v6    # "i":I
    :cond_8
    const/16 v23, 0x4120

    move/from16 v0, v23

    if-ne v7, v0, :cond_9

    .line 1469
    const/16 v22, 0x1

    .line 1472
    :cond_9
    const v23, 0xafff

    move/from16 v0, v23

    if-ne v7, v0, :cond_b

    .line 1473
    move v12, v11

    .line 1474
    .local v12, "offy":I
    :goto_3
    add-int v23, v11, v16

    add-int/lit8 v23, v23, -0x6

    move/from16 v0, v23

    if-ge v12, v0, :cond_a

    array-length v0, v3

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v12, v0, :cond_f

    .line 1514
    :cond_a
    const/16 v22, 0x1

    .line 1517
    .end local v12    # "offy":I
    :cond_b
    const/16 v23, 0x3d3d

    move/from16 v0, v23

    if-eq v7, v0, :cond_c

    const v23, 0xb000

    move/from16 v0, v23

    if-eq v7, v0, :cond_c

    const v23, 0xb002

    move/from16 v0, v23

    if-ne v7, v0, :cond_d

    .line 1518
    :cond_c
    const/16 v22, 0x0

    .line 1521
    :cond_d
    if-eqz v22, :cond_2

    .line 1522
    add-int v23, v11, v16

    add-int/lit8 v23, v23, -0x6

    array-length v0, v3

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_16

    .line 1523
    array-length v11, v3

    goto/16 :goto_1

    .line 1461
    .restart local v2    # "anz":I
    .restart local v6    # "i":I
    :cond_e
    add-int/lit8 v11, v11, 0x4

    .line 1462
    add-int/lit8 v11, v11, 0x4

    .line 1463
    add-int/lit8 v11, v11, 0x4

    .line 1460
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1475
    .end local v2    # "anz":I
    .end local v6    # "i":I
    .restart local v12    # "offy":I
    :cond_f
    move-object/from16 v0, v17

    invoke-static {v3, v12, v0}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 1476
    add-int/lit8 v12, v12, 0x6

    .line 1477
    const/16 v23, 0x0

    aget v18, v17, v23

    .line 1478
    .local v18, "tmpId":I
    const/16 v23, 0x1

    aget v20, v17, v23

    .line 1480
    .local v20, "tmpSize":I
    const v23, 0xa200

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 1481
    move v13, v12

    .line 1482
    .local v13, "offy2":I
    :goto_4
    add-int v23, v12, v16

    add-int/lit8 v23, v23, -0x6

    move/from16 v0, v23

    if-ge v13, v0, :cond_10

    array-length v0, v3

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_11

    .line 1511
    .end local v13    # "offy2":I
    :cond_10
    add-int/lit8 v23, v20, -0x6

    add-int v12, v12, v23

    goto :goto_3

    .line 1483
    .restart local v13    # "offy2":I
    :cond_11
    move-object/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 1484
    add-int/lit8 v13, v13, 0x6

    .line 1485
    const/16 v23, 0x0

    aget v19, v17, v23

    .line 1486
    .local v19, "tmpId2":I
    const/16 v23, 0x1

    aget v21, v17, v23

    .line 1488
    .local v21, "tmpSize2":I
    const v23, 0xa300

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 1489
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9    # "nBuf":Ljava/lang/StringBuilder;
    const/16 v23, 0x28

    move/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1490
    .restart local v9    # "nBuf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1491
    .restart local v4    # "c":I
    move v14, v13

    .line 1493
    .local v14, "offy3":I
    :cond_12
    invoke-static {v3, v14}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v4

    .line 1494
    add-int/lit8 v14, v14, 0x1

    .line 1495
    if-lez v4, :cond_13

    .line 1496
    int-to-byte v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1498
    :cond_13
    array-length v0, v3

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v14, v0, :cond_14

    .line 1499
    const/4 v4, -0x1

    .line 1501
    :cond_14
    if-gtz v4, :cond_12

    .line 1502
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1503
    .local v8, "n":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_15

    .line 1504
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    .end local v4    # "c":I
    .end local v8    # "n":Ljava/lang/String;
    .end local v14    # "offy3":I
    :cond_15
    add-int/lit8 v23, v21, -0x6

    add-int v13, v13, v23

    goto :goto_4

    .line 1525
    .end local v12    # "offy":I
    .end local v13    # "offy2":I
    .end local v18    # "tmpId":I
    .end local v19    # "tmpId2":I
    .end local v20    # "tmpSize":I
    .end local v21    # "tmpSize2":I
    :cond_16
    add-int/lit8 v23, v16, -0x6

    add-int v11, v11, v23

    goto/16 :goto_1

    .line 1535
    .end local v22    # "unknownChunk":Z
    .restart local v6    # "i":I
    .restart local v15    # "res":[Ljava/lang/String;
    :cond_17
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    aput-object v23, v15, v6

    .line 1534
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private static removeBogusData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "texName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 549
    const-string v3, "-s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 550
    .local v1, "pos":I
    const-string v3, "-o"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 551
    .local v2, "pos2":I
    if-ne v1, v5, :cond_1

    if-ne v2, v5, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-object p0

    .line 554
    :cond_1
    const-string v3, "This .mtl-file contains bogus(?) data in the map_K? line...skipping this data!"

    invoke-static {v3, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 555
    if-le v2, v1, :cond_2

    .line 556
    move v1, v2

    .line 558
    :cond_2
    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "c":I
    const/4 v1, -0x1

    .line 562
    :cond_3
    const/16 v3, 0x20

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 563
    add-int/lit8 v0, v0, 0x1

    .line 564
    if-ge v0, v6, :cond_4

    if-ne v1, v5, :cond_3

    .line 565
    :cond_4
    if-eq v1, v5, :cond_0

    .line 566
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static setVertexOptimization(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lcom/threed/jpct/Loader;->optimize:Z

    .line 56
    return-void
.end method

.method private static unsignedByteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 1107
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
