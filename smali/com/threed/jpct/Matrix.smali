.class public Lcom/threed/jpct/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final cpi:F

.field private static final cpih:F

.field private static globalTmpMat:Lcom/threed/jpct/Matrix; = null

.field private static final mcpi:F

.field private static final mcpih:F

.field private static final mpi:F = -3.1415927f

.field private static final mpih:F = -1.5707964f

.field private static final mspi:F

.field private static final mspih:F

.field private static final pi:F = 3.1415927f

.field private static final pih:F = 1.5707964f

.field private static final serialVersionUID:J = 0x2L

.field private static final spi:F

.field private static final spih:F


# instance fields
.field private lastCos:F

.field private lastRot:F

.field private lastSin:F

.field mat:[[F

.field private mat0:[F

.field private mat1:[F

.field private mat2:[F

.field private mat3:[F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide v8, 0x400921fb60000000L    # 3.1415927410125732

    const-wide v6, 0x3ff921fb60000000L    # 1.5707963705062866

    const-wide v4, -0x3ff6de04a0000000L    # -3.1415927410125732

    const-wide v2, -0x4006de04a0000000L    # -1.5707963705062866

    .line 10
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v0, Lcom/threed/jpct/Matrix;->globalTmpMat:Lcom/threed/jpct/Matrix;

    .line 22
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/threed/jpct/Matrix;->spi:F

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/threed/jpct/Matrix;->mspi:F

    .line 26
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/threed/jpct/Matrix;->cpi:F

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/threed/jpct/Matrix;->mcpi:F

    .line 30
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/threed/jpct/Matrix;->spih:F

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/threed/jpct/Matrix;->mspih:F

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/threed/jpct/Matrix;->cpih:F

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/threed/jpct/Matrix;->mcpih:F

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    .line 44
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    .line 45
    iput v2, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 51
    const/4 v0, 0x4

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 53
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    .line 54
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    .line 55
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    .line 56
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    .line 58
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aput v2, v0, v3

    .line 59
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aput v2, v0, v4

    .line 60
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aput v2, v0, v5

    .line 61
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Matrix;)V
    .locals 2
    .param p1, "m"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    .line 44
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 72
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 73
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    .line 74
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    .line 75
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    .line 76
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    .line 77
    invoke-virtual {p0, p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final cloneMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    .prologue
    .line 707
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 708
    .local v0, "tmpMat":Lcom/threed/jpct/Matrix;
    invoke-virtual {v0, p0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 709
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1088
    instance-of v4, p1, Lcom/threed/jpct/Matrix;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 1089
    check-cast v1, Lcom/threed/jpct/Matrix;

    .line 1090
    .local v1, "m2":Lcom/threed/jpct/Matrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x4

    if-lt v0, v4, :cond_1

    move v2, v3

    .line 1106
    .end local v0    # "i":I
    .end local v1    # "m2":Lcom/threed/jpct/Matrix;
    :cond_0
    return v2

    .line 1091
    .restart local v0    # "i":I
    .restart local v1    # "m2":Lcom/threed/jpct/Matrix;
    :cond_1
    iget-object v4, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v0

    aget v4, v4, v2

    iget-object v5, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v5, v5, v0

    aget v5, v5, v2

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 1094
    iget-object v4, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v0

    aget v4, v4, v3

    iget-object v5, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v5, v5, v0

    aget v5, v5, v3

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 1097
    iget-object v4, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v0

    aget v4, v4, v6

    iget-object v5, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v5, v5, v0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 1100
    iget-object v4, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v0

    aget v4, v4, v7

    iget-object v5, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v5, v5, v0

    aget v5, v5, v7

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final fillDump([F)[F
    .locals 8
    .param p1, "dump"    # [F

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 917
    if-nez p1, :cond_1

    .line 918
    new-array p1, v7, [F

    .line 925
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 926
    .local v0, "cnt":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v3

    aput v2, p1, v0

    .line 927
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v4

    aput v2, p1, v1

    .line 928
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v5

    aput v2, p1, v0

    .line 929
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v6

    aput v2, p1, v1

    .line 930
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v3

    aput v2, p1, v0

    .line 931
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v4

    aput v2, p1, v1

    .line 932
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v5

    aput v2, p1, v0

    .line 933
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v6

    aput v2, p1, v1

    .line 934
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v3

    aput v2, p1, v0

    .line 935
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v4

    aput v2, p1, v1

    .line 936
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v5

    aput v2, p1, v0

    .line 937
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v6

    aput v2, p1, v1

    .line 938
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v3

    aput v2, p1, v0

    .line 939
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v4

    aput v2, p1, v1

    .line 940
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v5

    aput v2, p1, v0

    .line 941
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v6

    aput v2, p1, v1

    .line 943
    return-object p1

    .line 920
    .end local v1    # "cnt":I
    :cond_1
    array-length v2, p1

    if-eq v2, v7, :cond_0

    .line 921
    const-string v2, "Dump array has to have a length of 16!"

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public final get(II)F
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    const/4 v0, 0x4

    .line 665
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, p1

    aget v0, v0, p2

    .line 668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDump()[F
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object v0

    return-object v0
.end method

.method public final getTranslation()Lcom/threed/jpct/SimpleVector;
    .locals 4

    .prologue
    .line 578
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getXAxis()Lcom/threed/jpct/SimpleVector;
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getXAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4
    .param p1, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 623
    return-object p1
.end method

.method public final getYAxis()Lcom/threed/jpct/SimpleVector;
    .locals 4

    .prologue
    .line 598
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getYAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4
    .param p1, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 637
    return-object p1
.end method

.method public final getZAxis()Lcom/threed/jpct/SimpleVector;
    .locals 4

    .prologue
    .line 608
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getZAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4
    .param p1, "toFill"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 652
    return-object p1
.end method

.method public final interpolate(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;F)V
    .locals 9
    .param p1, "source"    # Lcom/threed/jpct/Matrix;
    .param p2, "dest"    # Lcom/threed/jpct/Matrix;
    .param p3, "weight"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 554
    cmpl-float v2, p3, v3

    if-lez v2, :cond_1

    .line 555
    const/high16 p3, 0x3f800000    # 1.0f

    .line 561
    :cond_0
    :goto_0
    sub-float v0, v3, p3

    .line 562
    .local v0, "antiWeight":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 568
    invoke-virtual {p0}, Lcom/threed/jpct/Matrix;->orthonormalize()V

    .line 569
    return-void

    .line 557
    .end local v0    # "antiWeight":F
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 558
    const/4 p3, 0x0

    goto :goto_0

    .line 563
    .restart local v0    # "antiWeight":F
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v1

    aget v3, v3, v5

    mul-float/2addr v3, v0

    iget-object v4, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v1

    aget v4, v4, v5

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 564
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v1

    aget v3, v3, v6

    mul-float/2addr v3, v0

    iget-object v4, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v1

    aget v4, v4, v6

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 565
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v1

    aget v3, v3, v7

    mul-float/2addr v3, v0

    iget-object v4, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v1

    aget v4, v4, v7

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    aput v3, v2, v7

    .line 566
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v1

    aget v3, v3, v8

    mul-float/2addr v3, v0

    iget-object v4, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v1

    aget v4, v4, v8

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    aput v3, v2, v8

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final invert()Lcom/threed/jpct/Matrix;
    .locals 1

    .prologue
    .line 718
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 49
    .param p1, "dst"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget v18, v46, v47

    .line 732
    .local v18, "srcmat00":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget v22, v46, v47

    .line 733
    .local v22, "srcmat10":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget v26, v46, v47

    .line 734
    .local v26, "srcmat20":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v46, v0

    const/16 v47, 0x3

    aget v30, v46, v47

    .line 735
    .local v30, "srcmat30":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget v19, v46, v47

    .line 736
    .local v19, "srcmat01":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget v23, v46, v47

    .line 737
    .local v23, "srcmat11":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget v27, v46, v47

    .line 738
    .local v27, "srcmat21":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v46, v0

    const/16 v47, 0x3

    aget v31, v46, v47

    .line 739
    .local v31, "srcmat31":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget v20, v46, v47

    .line 740
    .local v20, "srcmat02":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget v24, v46, v47

    .line 741
    .local v24, "srcmat12":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget v28, v46, v47

    .line 742
    .local v28, "srcmat22":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v46, v0

    const/16 v47, 0x3

    aget v32, v46, v47

    .line 743
    .local v32, "srcmat32":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget v21, v46, v47

    .line 744
    .local v21, "srcmat03":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget v25, v46, v47

    .line 745
    .local v25, "srcmat13":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget v29, v46, v47

    .line 746
    .local v29, "srcmat23":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v46, v0

    const/16 v47, 0x3

    aget v33, v46, v47

    .line 748
    .local v33, "srcmat33":F
    mul-float v34, v28, v33

    .line 749
    .local v34, "tmpmat00":F
    mul-float v35, v29, v32

    .line 750
    .local v35, "tmpmat01":F
    mul-float v36, v27, v33

    .line 751
    .local v36, "tmpmat02":F
    mul-float v37, v29, v31

    .line 752
    .local v37, "tmpmat03":F
    mul-float v38, v27, v32

    .line 753
    .local v38, "tmpmat10":F
    mul-float v39, v28, v31

    .line 754
    .local v39, "tmpmat11":F
    mul-float v40, v26, v33

    .line 755
    .local v40, "tmpmat12":F
    mul-float v41, v29, v30

    .line 756
    .local v41, "tmpmat13":F
    mul-float v42, v26, v32

    .line 757
    .local v42, "tmpmat20":F
    mul-float v43, v28, v30

    .line 758
    .local v43, "tmpmat21":F
    mul-float v44, v26, v31

    .line 759
    .local v44, "tmpmat22":F
    mul-float v45, v27, v30

    .line 761
    .local v45, "tmpmat23":F
    mul-float v46, v34, v23

    mul-float v47, v37, v24

    add-float v46, v46, v47

    mul-float v47, v38, v25

    add-float v46, v46, v47

    mul-float v47, v35, v23

    mul-float v48, v36, v24

    add-float v47, v47, v48

    mul-float v48, v39, v25

    add-float v47, v47, v48

    sub-float v2, v46, v47

    .line 762
    .local v2, "dstmat00":F
    mul-float v46, v35, v22

    mul-float v47, v40, v24

    add-float v46, v46, v47

    mul-float v47, v43, v25

    add-float v46, v46, v47

    mul-float v47, v34, v22

    mul-float v48, v41, v24

    add-float v47, v47, v48

    mul-float v48, v42, v25

    add-float v47, v47, v48

    sub-float v3, v46, v47

    .line 763
    .local v3, "dstmat01":F
    mul-float v46, v36, v22

    mul-float v47, v41, v23

    add-float v46, v46, v47

    mul-float v47, v44, v25

    add-float v46, v46, v47

    mul-float v47, v37, v22

    mul-float v48, v40, v23

    add-float v47, v47, v48

    mul-float v48, v45, v25

    add-float v47, v47, v48

    sub-float v4, v46, v47

    .line 764
    .local v4, "dstmat02":F
    mul-float v46, v39, v22

    mul-float v47, v42, v23

    add-float v46, v46, v47

    mul-float v47, v45, v24

    add-float v46, v46, v47

    mul-float v47, v38, v22

    mul-float v48, v43, v23

    add-float v47, v47, v48

    mul-float v48, v44, v24

    add-float v47, v47, v48

    sub-float v5, v46, v47

    .line 765
    .local v5, "dstmat03":F
    mul-float v46, v35, v19

    mul-float v47, v36, v20

    add-float v46, v46, v47

    mul-float v47, v39, v21

    add-float v46, v46, v47

    mul-float v47, v34, v19

    mul-float v48, v37, v20

    add-float v47, v47, v48

    mul-float v48, v38, v21

    add-float v47, v47, v48

    sub-float v6, v46, v47

    .line 766
    .local v6, "dstmat10":F
    mul-float v46, v34, v18

    mul-float v47, v41, v20

    add-float v46, v46, v47

    mul-float v47, v42, v21

    add-float v46, v46, v47

    mul-float v47, v35, v18

    mul-float v48, v40, v20

    add-float v47, v47, v48

    mul-float v48, v43, v21

    add-float v47, v47, v48

    sub-float v7, v46, v47

    .line 767
    .local v7, "dstmat11":F
    mul-float v46, v37, v18

    mul-float v47, v40, v19

    add-float v46, v46, v47

    mul-float v47, v45, v21

    add-float v46, v46, v47

    mul-float v47, v36, v18

    mul-float v48, v41, v19

    add-float v47, v47, v48

    mul-float v48, v44, v21

    add-float v47, v47, v48

    sub-float v8, v46, v47

    .line 768
    .local v8, "dstmat12":F
    mul-float v46, v38, v18

    mul-float v47, v43, v19

    add-float v46, v46, v47

    mul-float v47, v44, v20

    add-float v46, v46, v47

    mul-float v47, v39, v18

    mul-float v48, v42, v19

    add-float v47, v47, v48

    mul-float v48, v45, v20

    add-float v47, v47, v48

    sub-float v9, v46, v47

    .line 770
    .local v9, "dstmat13":F
    mul-float v34, v20, v25

    .line 771
    mul-float v35, v21, v24

    .line 772
    mul-float v36, v19, v25

    .line 773
    mul-float v37, v21, v23

    .line 774
    mul-float v38, v19, v24

    .line 775
    mul-float v39, v20, v23

    .line 776
    mul-float v40, v18, v25

    .line 777
    mul-float v41, v21, v22

    .line 778
    mul-float v42, v18, v24

    .line 779
    mul-float v43, v20, v22

    .line 780
    mul-float v44, v18, v23

    .line 781
    mul-float v45, v19, v22

    .line 783
    mul-float v46, v34, v31

    mul-float v47, v37, v32

    add-float v46, v46, v47

    mul-float v47, v38, v33

    add-float v46, v46, v47

    mul-float v47, v35, v31

    mul-float v48, v36, v32

    add-float v47, v47, v48

    mul-float v48, v39, v33

    add-float v47, v47, v48

    sub-float v10, v46, v47

    .line 784
    .local v10, "dstmat20":F
    mul-float v46, v35, v30

    mul-float v47, v40, v32

    add-float v46, v46, v47

    mul-float v47, v43, v33

    add-float v46, v46, v47

    mul-float v47, v34, v30

    mul-float v48, v41, v32

    add-float v47, v47, v48

    mul-float v48, v42, v33

    add-float v47, v47, v48

    sub-float v11, v46, v47

    .line 785
    .local v11, "dstmat21":F
    mul-float v46, v36, v30

    mul-float v47, v41, v31

    add-float v46, v46, v47

    mul-float v47, v44, v33

    add-float v46, v46, v47

    mul-float v47, v37, v30

    mul-float v48, v40, v31

    add-float v47, v47, v48

    mul-float v48, v45, v33

    add-float v47, v47, v48

    sub-float v12, v46, v47

    .line 786
    .local v12, "dstmat22":F
    mul-float v46, v39, v30

    mul-float v47, v42, v31

    add-float v46, v46, v47

    mul-float v47, v45, v32

    add-float v46, v46, v47

    mul-float v47, v38, v30

    mul-float v48, v43, v31

    add-float v47, v47, v48

    mul-float v48, v44, v32

    add-float v47, v47, v48

    sub-float v13, v46, v47

    .line 787
    .local v13, "dstmat23":F
    mul-float v46, v36, v28

    mul-float v47, v39, v29

    add-float v46, v46, v47

    mul-float v47, v35, v27

    add-float v46, v46, v47

    mul-float v47, v38, v29

    mul-float v48, v34, v27

    add-float v47, v47, v48

    mul-float v48, v37, v28

    add-float v47, v47, v48

    sub-float v14, v46, v47

    .line 788
    .local v14, "dstmat30":F
    mul-float v46, v42, v29

    mul-float v47, v34, v26

    add-float v46, v46, v47

    mul-float v47, v41, v28

    add-float v46, v46, v47

    mul-float v47, v40, v28

    mul-float v48, v43, v29

    add-float v47, v47, v48

    mul-float v48, v35, v26

    add-float v47, v47, v48

    sub-float v15, v46, v47

    .line 789
    .local v15, "dstmat31":F
    mul-float v46, v40, v27

    mul-float v47, v45, v29

    add-float v46, v46, v47

    mul-float v47, v37, v26

    add-float v46, v46, v47

    mul-float v47, v44, v29

    mul-float v48, v36, v26

    add-float v47, v47, v48

    mul-float v48, v41, v27

    add-float v47, v47, v48

    sub-float v16, v46, v47

    .line 790
    .local v16, "dstmat32":F
    mul-float v46, v44, v28

    mul-float v47, v38, v26

    add-float v46, v46, v47

    mul-float v47, v43, v27

    add-float v46, v46, v47

    mul-float v47, v42, v27

    mul-float v48, v45, v28

    add-float v47, v47, v48

    mul-float v48, v39, v26

    add-float v47, v47, v48

    sub-float v17, v46, v47

    .line 792
    .local v17, "dstmat33":F
    const/high16 v46, 0x3f800000    # 1.0f

    mul-float v47, v18, v2

    mul-float v48, v19, v3

    add-float v47, v47, v48

    mul-float v48, v20, v4

    add-float v47, v47, v48

    mul-float v48, v21, v5

    add-float v47, v47, v48

    div-float v1, v46, v47

    .line 794
    .local v1, "det":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    mul-float v48, v2, v1

    aput v48, v46, v47

    .line 795
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v46, v0

    const/16 v47, 0x1

    mul-float v48, v3, v1

    aput v48, v46, v47

    .line 796
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v46, v0

    const/16 v47, 0x2

    mul-float v48, v4, v1

    aput v48, v46, v47

    .line 797
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v46, v0

    const/16 v47, 0x3

    mul-float v48, v5, v1

    aput v48, v46, v47

    .line 798
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    mul-float v48, v6, v1

    aput v48, v46, v47

    .line 799
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v46, v0

    const/16 v47, 0x1

    mul-float v48, v7, v1

    aput v48, v46, v47

    .line 800
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v46, v0

    const/16 v47, 0x2

    mul-float v48, v8, v1

    aput v48, v46, v47

    .line 801
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v46, v0

    const/16 v47, 0x3

    mul-float v48, v9, v1

    aput v48, v46, v47

    .line 802
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    mul-float v48, v10, v1

    aput v48, v46, v47

    .line 803
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v46, v0

    const/16 v47, 0x1

    mul-float v48, v11, v1

    aput v48, v46, v47

    .line 804
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v46, v0

    const/16 v47, 0x2

    mul-float v48, v12, v1

    aput v48, v46, v47

    .line 805
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v46, v0

    const/16 v47, 0x3

    mul-float v48, v13, v1

    aput v48, v46, v47

    .line 806
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    mul-float v48, v14, v1

    aput v48, v46, v47

    .line 807
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v46, v0

    const/16 v47, 0x1

    mul-float v48, v15, v1

    aput v48, v46, v47

    .line 808
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v46, v0

    const/16 v47, 0x2

    mul-float v48, v16, v1

    aput v48, v46, v47

    .line 809
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v46, v0

    const/16 v47, 0x3

    mul-float v48, v17, v1

    aput v48, v46, v47

    .line 811
    return-object p1
.end method

.method public final invert3x3()Lcom/threed/jpct/Matrix;
    .locals 1

    .prologue
    .line 826
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 5
    .param p1, "toFill"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 844
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v1, v1, v2

    aput v1, v0, v3

    .line 845
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v1, v1, v2

    aput v1, v0, v4

    .line 846
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v1, v1, v3

    aput v1, v0, v2

    .line 847
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v1, v1, v3

    aput v1, v0, v4

    .line 848
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat2:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v1, v1, v4

    aput v1, v0, v2

    .line 849
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat2:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v1, v1, v4

    aput v1, v0, v3

    .line 850
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 851
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 852
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat2:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 853
    return-object p1
.end method

.method public final isIdentity()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 86
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v6

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v6

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v6

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v6

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public final matMul(Lcom/threed/jpct/Matrix;)V
    .locals 44
    .param p1, "maty"    # Lcom/threed/jpct/Matrix;

    .prologue
    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/Matrix;->isIdentity()Z

    move-result v41

    if-eqz v41, :cond_1

    .line 210
    invoke-virtual/range {p0 .. p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Matrix;->isIdentity()Z

    move-result v41

    if-nez v41, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v21, v41, v42

    .line 219
    .local v21, "matTemp00":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget v22, v41, v42

    .line 220
    .local v22, "matTemp01":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v41, v0

    const/16 v42, 0x2

    aget v23, v41, v42

    .line 221
    .local v23, "matTemp02":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v41, v0

    const/16 v42, 0x3

    aget v24, v41, v42

    .line 222
    .local v24, "matTemp03":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v25, v41, v42

    .line 223
    .local v25, "matTemp10":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget v26, v41, v42

    .line 224
    .local v26, "matTemp11":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v41, v0

    const/16 v42, 0x2

    aget v27, v41, v42

    .line 225
    .local v27, "matTemp12":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v41, v0

    const/16 v42, 0x3

    aget v28, v41, v42

    .line 226
    .local v28, "matTemp13":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v29, v41, v42

    .line 227
    .local v29, "matTemp20":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget v30, v41, v42

    .line 228
    .local v30, "matTemp21":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v41, v0

    const/16 v42, 0x2

    aget v31, v41, v42

    .line 229
    .local v31, "matTemp22":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v41, v0

    const/16 v42, 0x3

    aget v32, v41, v42

    .line 230
    .local v32, "matTemp23":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v33, v41, v42

    .line 231
    .local v33, "matTemp30":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget v34, v41, v42

    .line 232
    .local v34, "matTemp31":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v41, v0

    const/16 v42, 0x2

    aget v35, v41, v42

    .line 233
    .local v35, "matTemp32":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v41, v0

    const/16 v42, 0x3

    aget v36, v41, v42

    .line 235
    .local v36, "matTemp33":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    move-object/from16 v37, v0

    .line 236
    .local v37, "matymat0":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    move-object/from16 v38, v0

    .line 237
    .local v38, "matymat1":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    move-object/from16 v39, v0

    .line 238
    .local v39, "matymat2":[F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v40, v0

    .line 240
    .local v40, "matymat3":[F
    const/16 v41, 0x0

    aget v4, v37, v41

    .line 241
    .local v4, "mat200":F
    const/16 v41, 0x1

    aget v5, v37, v41

    .line 242
    .local v5, "mat201":F
    const/16 v41, 0x2

    aget v6, v37, v41

    .line 243
    .local v6, "mat202":F
    const/16 v41, 0x3

    aget v7, v37, v41

    .line 244
    .local v7, "mat203":F
    const/16 v41, 0x0

    aget v8, v38, v41

    .line 245
    .local v8, "mat210":F
    const/16 v41, 0x1

    aget v9, v38, v41

    .line 246
    .local v9, "mat211":F
    const/16 v41, 0x2

    aget v10, v38, v41

    .line 247
    .local v10, "mat212":F
    const/16 v41, 0x3

    aget v11, v38, v41

    .line 248
    .local v11, "mat213":F
    const/16 v41, 0x0

    aget v12, v39, v41

    .line 249
    .local v12, "mat220":F
    const/16 v41, 0x1

    aget v13, v39, v41

    .line 250
    .local v13, "mat221":F
    const/16 v41, 0x2

    aget v14, v39, v41

    .line 251
    .local v14, "mat222":F
    const/16 v41, 0x3

    aget v15, v39, v41

    .line 252
    .local v15, "mat223":F
    const/16 v41, 0x0

    aget v16, v40, v41

    .line 253
    .local v16, "mat230":F
    const/16 v41, 0x1

    aget v17, v40, v41

    .line 254
    .local v17, "mat231":F
    const/16 v41, 0x2

    aget v18, v40, v41

    .line 255
    .local v18, "mat232":F
    const/16 v41, 0x3

    aget v19, v40, v41

    .line 257
    .local v19, "mat233":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    .line 258
    .local v1, "mat0":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    .line 259
    .local v2, "mat1":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    .line 260
    .local v3, "mat2":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    move-object/from16 v20, v0

    .line 262
    .local v20, "mat3":[F
    const/16 v41, 0x0

    mul-float v42, v21, v4

    mul-float v43, v22, v8

    add-float v42, v42, v43

    mul-float v43, v23, v12

    add-float v42, v42, v43

    mul-float v43, v24, v16

    add-float v42, v42, v43

    aput v42, v1, v41

    .line 263
    const/16 v41, 0x1

    mul-float v42, v21, v5

    mul-float v43, v22, v9

    add-float v42, v42, v43

    mul-float v43, v23, v13

    add-float v42, v42, v43

    mul-float v43, v24, v17

    add-float v42, v42, v43

    aput v42, v1, v41

    .line 264
    const/16 v41, 0x2

    mul-float v42, v21, v6

    mul-float v43, v22, v10

    add-float v42, v42, v43

    mul-float v43, v23, v14

    add-float v42, v42, v43

    mul-float v43, v24, v18

    add-float v42, v42, v43

    aput v42, v1, v41

    .line 265
    const/16 v41, 0x3

    mul-float v42, v21, v7

    mul-float v43, v22, v11

    add-float v42, v42, v43

    mul-float v43, v23, v15

    add-float v42, v42, v43

    mul-float v43, v24, v19

    add-float v42, v42, v43

    aput v42, v1, v41

    .line 266
    const/16 v41, 0x0

    mul-float v42, v25, v4

    mul-float v43, v26, v8

    add-float v42, v42, v43

    mul-float v43, v27, v12

    add-float v42, v42, v43

    mul-float v43, v28, v16

    add-float v42, v42, v43

    aput v42, v2, v41

    .line 267
    const/16 v41, 0x1

    mul-float v42, v25, v5

    mul-float v43, v26, v9

    add-float v42, v42, v43

    mul-float v43, v27, v13

    add-float v42, v42, v43

    mul-float v43, v28, v17

    add-float v42, v42, v43

    aput v42, v2, v41

    .line 268
    const/16 v41, 0x2

    mul-float v42, v25, v6

    mul-float v43, v26, v10

    add-float v42, v42, v43

    mul-float v43, v27, v14

    add-float v42, v42, v43

    mul-float v43, v28, v18

    add-float v42, v42, v43

    aput v42, v2, v41

    .line 269
    const/16 v41, 0x3

    mul-float v42, v25, v7

    mul-float v43, v26, v11

    add-float v42, v42, v43

    mul-float v43, v27, v15

    add-float v42, v42, v43

    mul-float v43, v28, v19

    add-float v42, v42, v43

    aput v42, v2, v41

    .line 270
    const/16 v41, 0x0

    mul-float v42, v29, v4

    mul-float v43, v30, v8

    add-float v42, v42, v43

    mul-float v43, v31, v12

    add-float v42, v42, v43

    mul-float v43, v32, v16

    add-float v42, v42, v43

    aput v42, v3, v41

    .line 271
    const/16 v41, 0x1

    mul-float v42, v29, v5

    mul-float v43, v30, v9

    add-float v42, v42, v43

    mul-float v43, v31, v13

    add-float v42, v42, v43

    mul-float v43, v32, v17

    add-float v42, v42, v43

    aput v42, v3, v41

    .line 272
    const/16 v41, 0x2

    mul-float v42, v29, v6

    mul-float v43, v30, v10

    add-float v42, v42, v43

    mul-float v43, v31, v14

    add-float v42, v42, v43

    mul-float v43, v32, v18

    add-float v42, v42, v43

    aput v42, v3, v41

    .line 273
    const/16 v41, 0x3

    mul-float v42, v29, v7

    mul-float v43, v30, v11

    add-float v42, v42, v43

    mul-float v43, v31, v15

    add-float v42, v42, v43

    mul-float v43, v32, v19

    add-float v42, v42, v43

    aput v42, v3, v41

    .line 274
    const/16 v41, 0x0

    mul-float v42, v33, v4

    mul-float v43, v34, v8

    add-float v42, v42, v43

    mul-float v43, v35, v12

    add-float v42, v42, v43

    mul-float v43, v36, v16

    add-float v42, v42, v43

    aput v42, v20, v41

    .line 275
    const/16 v41, 0x1

    mul-float v42, v33, v5

    mul-float v43, v34, v9

    add-float v42, v42, v43

    mul-float v43, v35, v13

    add-float v42, v42, v43

    mul-float v43, v36, v17

    add-float v42, v42, v43

    aput v42, v20, v41

    .line 276
    const/16 v41, 0x2

    mul-float v42, v33, v6

    mul-float v43, v34, v10

    add-float v42, v42, v43

    mul-float v43, v35, v14

    add-float v42, v42, v43

    mul-float v43, v36, v18

    add-float v42, v42, v43

    aput v42, v20, v41

    .line 277
    const/16 v41, 0x3

    mul-float v42, v33, v7

    mul-float v43, v34, v11

    add-float v42, v42, v43

    mul-float v43, v35, v15

    add-float v42, v42, v43

    mul-float v43, v36, v19

    add-float v42, v42, v43

    aput v42, v20, v41

    goto/16 :goto_0
.end method

.method public final orthonormalize()V
    .locals 13

    .prologue
    .line 865
    const/4 v3, 0x0

    .line 866
    .local v3, "ux":F
    const/4 v4, 0x0

    .line 867
    .local v4, "uy":F
    const/4 v5, 0x0

    .line 869
    .local v5, "uz":F
    const/4 v7, 0x0

    .line 870
    .local v7, "vx":F
    const/4 v8, 0x0

    .line 871
    .local v8, "vy":F
    const/4 v9, 0x0

    .line 873
    .local v9, "vz":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v10, 0x3

    if-lt v0, v10, :cond_0

    .line 900
    return-void

    .line 874
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 891
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v3, v10, v0

    .line 892
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v4, v10, v0

    .line 893
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v5, v10, v0

    .line 895
    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v11, v3, v3

    mul-float v12, v4, v4

    add-float/2addr v11, v12

    mul-float v12, v5, v5

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float v6, v10, v11

    .line 896
    .local v6, "vt":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v11, v10, v0

    mul-float/2addr v11, v6

    aput v11, v10, v0

    .line 897
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v11, v10, v0

    mul-float/2addr v11, v6

    aput v11, v10, v0

    .line 898
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v11, v10, v0

    mul-float/2addr v11, v6

    aput v11, v10, v0

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    .end local v6    # "vt":F
    :cond_1
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v3, v10, v0

    .line 877
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v4, v10, v0

    .line 878
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v5, v10, v0

    .line 880
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v7, v10, v1

    .line 881
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v8, v10, v1

    .line 882
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v9, v10, v1

    .line 884
    mul-float v10, v3, v7

    mul-float v11, v4, v8

    add-float/2addr v10, v11

    mul-float v11, v5, v9

    add-float v2, v10, v11

    .line 885
    .local v2, "ut":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v11, v10, v1

    mul-float v12, v3, v2

    sub-float/2addr v11, v12

    aput v11, v10, v1

    .line 886
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v11, v10, v1

    mul-float v12, v4, v2

    sub-float/2addr v11, v12

    aput v11, v10, v1

    .line 887
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v11, v10, v1

    mul-float v12, v5, v2

    sub-float/2addr v11, v12

    aput v11, v10, v1

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 19
    .param p1, "axis"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "angle"    # F

    .prologue
    .line 493
    move-object/from16 v0, p0

    iget v15, v0, Lcom/threed/jpct/Matrix;->lastRot:F

    cmpl-float v15, p2, v15

    if-eqz v15, :cond_0

    .line 494
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threed/jpct/Matrix;->lastRot:F

    .line 495
    move/from16 v0, p2

    float-to-double v15, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    double-to-float v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/threed/jpct/Matrix;->lastSin:F

    .line 496
    move/from16 v0, p2

    float-to-double v15, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    double-to-float v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 499
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 500
    .local v2, "c":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threed/jpct/Matrix;->lastSin:F

    .line 501
    .local v4, "s":F
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v8, v15, v2

    .line 503
    .local v8, "t":F
    move-object/from16 v0, p1

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    .line 505
    move-object/from16 v0, p1

    iget v12, v0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 506
    .local v12, "x":F
    move-object/from16 v0, p1

    iget v13, v0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 507
    .local v13, "y":F
    move-object/from16 v0, p1

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 509
    .local v14, "z":F
    sget-object v16, Lcom/threed/jpct/Matrix;->globalTmpMat:Lcom/threed/jpct/Matrix;

    monitor-enter v16

    .line 510
    :try_start_0
    sget-object v3, Lcom/threed/jpct/Matrix;->globalTmpMat:Lcom/threed/jpct/Matrix;

    .line 511
    .local v3, "mat":Lcom/threed/jpct/Matrix;
    invoke-virtual {v3}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 513
    mul-float v6, v4, v13

    .line 514
    .local v6, "sy":F
    mul-float v5, v4, v12

    .line 515
    .local v5, "sx":F
    mul-float v7, v4, v14

    .line 517
    .local v7, "sz":F
    mul-float v15, v8, v12

    mul-float v9, v15, v13

    .line 518
    .local v9, "txy":F
    mul-float v15, v8, v12

    mul-float v10, v15, v14

    .line 519
    .local v10, "txz":F
    mul-float v15, v8, v13

    mul-float v11, v15, v14

    .line 521
    .local v11, "tyz":F
    iget-object v15, v3, Lcom/threed/jpct/Matrix;->mat0:[F

    const/16 v17, 0x0

    mul-float v18, v8, v12

    mul-float v18, v18, v12

    add-float v18, v18, v2

    aput v18, v15, v17

    .line 522
    iget-object v15, v3, Lcom/threed/jpct/Matrix;->mat1:[F

    const/16 v17, 0x0

    add-float v18, v9, v7

    aput v18, v15, v17

    .line 523
    iget-object v15, v3, Lcom/threed/jpct/Matrix;->mat2:[F

    const/16 v17, 0x0

    sub-float v18, v10, v6

    aput v18, v15, v17

    .line 525
    iget-object v15, v3, Lcom/threed/jpct/Matrix;->mat0:[F

    const/16 v17, 0x1

    sub-float v18, v9, v7

    aput v18, v15, v17

    .line 526
    iget-object v15, v3, Lcom/threed/jpct/Matrix;->mat1:[F

    const/16 v17, 0x1

    mul-float v18, v8, v13

    mul-float v18, v18, v13

    add-float v18, v18, v2

    aput v18, v15, v17

    .line 527
    iget-object v15, v3, Lcom/threed/jpct/Matrix;->mat2:[F

    const/16 v17, 0x1

    add-float v18, v11, v5

    aput v18, v15, v17

    .line 529
    iget-object v15, v3, Lcom/threed/jpct/Matrix;->mat0:[F

    const/16 v17, 0x2

    add-float v18, v10, v6

    aput v18, v15, v17

    .line 530
    iget-object v15, v3, Lcom/threed/jpct/Matrix;->mat1:[F

    const/16 v17, 0x2

    sub-float v18, v11, v5

    aput v18, v15, v17

    .line 531
    iget-object v15, v3, Lcom/threed/jpct/Matrix;->mat2:[F

    const/16 v17, 0x2

    mul-float v18, v8, v14

    mul-float v18, v18, v14

    add-float v18, v18, v2

    aput v18, v15, v17

    .line 533
    invoke-virtual {v3}, Lcom/threed/jpct/Matrix;->orthonormalize()V

    .line 534
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 509
    monitor-exit v16

    .line 536
    return-void

    .line 509
    .end local v3    # "mat":Lcom/threed/jpct/Matrix;
    .end local v5    # "sx":F
    .end local v6    # "sy":F
    .end local v7    # "sz":F
    .end local v9    # "txy":F
    .end local v10    # "txz":F
    .end local v11    # "tyz":F
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method

.method public final rotateX(F)V
    .locals 14
    .param p1, "w"    # F

    .prologue
    .line 316
    const v10, 0x40490fdb    # (float)Math.PI

    cmpl-float v10, p1, v10

    if-nez v10, :cond_0

    .line 317
    sget v0, Lcom/threed/jpct/Matrix;->cpi:F

    .line 318
    .local v0, "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->spi:F

    .line 345
    .local v9, "sw":F
    :goto_0
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x1

    aget v1, v10, v11

    .line 346
    .local v1, "s01":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x2

    aget v2, v10, v11

    .line 347
    .local v2, "s02":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x1

    aget v3, v10, v11

    .line 348
    .local v3, "s11":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x2

    aget v4, v10, v11

    .line 349
    .local v4, "s12":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x1

    aget v5, v10, v11

    .line 350
    .local v5, "s21":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x2

    aget v6, v10, v11

    .line 351
    .local v6, "s22":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x1

    aget v7, v10, v11

    .line 352
    .local v7, "s31":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x2

    aget v8, v10, v11

    .line 354
    .local v8, "s32":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x1

    mul-float v12, v1, v0

    mul-float v13, v2, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 355
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x2

    neg-float v12, v9

    mul-float/2addr v12, v1

    mul-float v13, v2, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 356
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x1

    mul-float v12, v3, v0

    mul-float v13, v4, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 357
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x2

    neg-float v12, v9

    mul-float/2addr v12, v3

    mul-float v13, v4, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 358
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x1

    mul-float v12, v5, v0

    mul-float v13, v6, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 359
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x2

    neg-float v12, v9

    mul-float/2addr v12, v5

    mul-float v13, v6, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 360
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x1

    mul-float v12, v7, v0

    mul-float v13, v8, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 361
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x2

    neg-float v12, v9

    mul-float/2addr v12, v7

    mul-float v13, v8, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 363
    return-void

    .line 320
    .end local v0    # "cw":F
    .end local v1    # "s01":F
    .end local v2    # "s02":F
    .end local v3    # "s11":F
    .end local v4    # "s12":F
    .end local v5    # "s21":F
    .end local v6    # "s22":F
    .end local v7    # "s31":F
    .end local v8    # "s32":F
    .end local v9    # "sw":F
    :cond_0
    const v10, -0x3fb6f025

    cmpl-float v10, p1, v10

    if-nez v10, :cond_1

    .line 321
    sget v0, Lcom/threed/jpct/Matrix;->mcpi:F

    .line 322
    .restart local v0    # "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->mspi:F

    .restart local v9    # "sw":F
    goto/16 :goto_0

    .line 324
    .end local v0    # "cw":F
    .end local v9    # "sw":F
    :cond_1
    const v10, 0x3fc90fdb

    cmpl-float v10, p1, v10

    if-nez v10, :cond_2

    .line 325
    sget v0, Lcom/threed/jpct/Matrix;->cpih:F

    .line 326
    .restart local v0    # "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->spih:F

    .restart local v9    # "sw":F
    goto/16 :goto_0

    .line 328
    .end local v0    # "cw":F
    .end local v9    # "sw":F
    :cond_2
    const v10, -0x4036f025

    cmpl-float v10, p1, v10

    if-nez v10, :cond_3

    .line 329
    sget v0, Lcom/threed/jpct/Matrix;->mcpih:F

    .line 330
    .restart local v0    # "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->mspih:F

    .restart local v9    # "sw":F
    goto/16 :goto_0

    .line 332
    .end local v0    # "cw":F
    .end local v9    # "sw":F
    :cond_3
    iget v10, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    cmpl-float v10, p1, v10

    if-eqz v10, :cond_4

    .line 333
    iput p1, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    .line 334
    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    .line 335
    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 338
    :cond_4
    iget v0, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 339
    .restart local v0    # "cw":F
    iget v9, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    .restart local v9    # "sw":F
    goto/16 :goto_0
.end method

.method public final rotateY(F)V
    .locals 14
    .param p1, "w"    # F

    .prologue
    .line 374
    const v10, 0x40490fdb    # (float)Math.PI

    cmpl-float v10, p1, v10

    if-nez v10, :cond_0

    .line 375
    sget v0, Lcom/threed/jpct/Matrix;->cpi:F

    .line 376
    .local v0, "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->spi:F

    .line 403
    .local v9, "sw":F
    :goto_0
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x0

    aget v1, v10, v11

    .line 404
    .local v1, "s00":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x2

    aget v2, v10, v11

    .line 405
    .local v2, "s02":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x0

    aget v3, v10, v11

    .line 406
    .local v3, "s10":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x2

    aget v4, v10, v11

    .line 407
    .local v4, "s12":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x0

    aget v5, v10, v11

    .line 408
    .local v5, "s20":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x2

    aget v6, v10, v11

    .line 409
    .local v6, "s22":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x0

    aget v7, v10, v11

    .line 410
    .local v7, "s30":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x2

    aget v8, v10, v11

    .line 412
    .local v8, "s32":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x0

    mul-float v12, v1, v0

    mul-float v13, v2, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 413
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x2

    neg-float v12, v9

    mul-float/2addr v12, v1

    mul-float v13, v2, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 414
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x0

    mul-float v12, v3, v0

    mul-float v13, v4, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 415
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x2

    neg-float v12, v9

    mul-float/2addr v12, v3

    mul-float v13, v4, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 416
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x0

    mul-float v12, v5, v0

    mul-float v13, v6, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 417
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x2

    neg-float v12, v9

    mul-float/2addr v12, v5

    mul-float v13, v6, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 418
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x0

    mul-float v12, v7, v0

    mul-float v13, v8, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 419
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x2

    neg-float v12, v9

    mul-float/2addr v12, v7

    mul-float v13, v8, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 421
    return-void

    .line 378
    .end local v0    # "cw":F
    .end local v1    # "s00":F
    .end local v2    # "s02":F
    .end local v3    # "s10":F
    .end local v4    # "s12":F
    .end local v5    # "s20":F
    .end local v6    # "s22":F
    .end local v7    # "s30":F
    .end local v8    # "s32":F
    .end local v9    # "sw":F
    :cond_0
    const v10, -0x3fb6f025

    cmpl-float v10, p1, v10

    if-nez v10, :cond_1

    .line 379
    sget v0, Lcom/threed/jpct/Matrix;->mcpi:F

    .line 380
    .restart local v0    # "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->mspi:F

    .restart local v9    # "sw":F
    goto/16 :goto_0

    .line 382
    .end local v0    # "cw":F
    .end local v9    # "sw":F
    :cond_1
    const v10, 0x3fc90fdb

    cmpl-float v10, p1, v10

    if-nez v10, :cond_2

    .line 383
    sget v0, Lcom/threed/jpct/Matrix;->cpih:F

    .line 384
    .restart local v0    # "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->spih:F

    .restart local v9    # "sw":F
    goto/16 :goto_0

    .line 386
    .end local v0    # "cw":F
    .end local v9    # "sw":F
    :cond_2
    const v10, -0x4036f025

    cmpl-float v10, p1, v10

    if-nez v10, :cond_3

    .line 387
    sget v0, Lcom/threed/jpct/Matrix;->mcpih:F

    .line 388
    .restart local v0    # "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->mspih:F

    .restart local v9    # "sw":F
    goto/16 :goto_0

    .line 390
    .end local v0    # "cw":F
    .end local v9    # "sw":F
    :cond_3
    iget v10, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    cmpl-float v10, p1, v10

    if-eqz v10, :cond_4

    .line 391
    iput p1, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    .line 392
    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    .line 393
    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 396
    :cond_4
    iget v0, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 397
    .restart local v0    # "cw":F
    iget v9, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    .restart local v9    # "sw":F
    goto/16 :goto_0
.end method

.method public final rotateZ(F)V
    .locals 14
    .param p1, "w"    # F

    .prologue
    .line 432
    const v10, 0x40490fdb    # (float)Math.PI

    cmpl-float v10, p1, v10

    if-nez v10, :cond_0

    .line 433
    sget v0, Lcom/threed/jpct/Matrix;->cpi:F

    .line 434
    .local v0, "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->spi:F

    .line 461
    .local v9, "sw":F
    :goto_0
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x0

    aget v1, v10, v11

    .line 462
    .local v1, "s00":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x1

    aget v2, v10, v11

    .line 463
    .local v2, "s01":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x0

    aget v3, v10, v11

    .line 464
    .local v3, "s10":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x1

    aget v4, v10, v11

    .line 465
    .local v4, "s11":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x0

    aget v5, v10, v11

    .line 466
    .local v5, "s20":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x1

    aget v6, v10, v11

    .line 467
    .local v6, "s21":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x0

    aget v7, v10, v11

    .line 468
    .local v7, "s30":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x1

    aget v8, v10, v11

    .line 470
    .local v8, "s31":F
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x0

    mul-float v12, v1, v0

    mul-float v13, v2, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 471
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v11, 0x1

    neg-float v12, v9

    mul-float/2addr v12, v1

    mul-float v13, v2, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 472
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x0

    mul-float v12, v3, v0

    mul-float v13, v4, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 473
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v11, 0x1

    neg-float v12, v9

    mul-float/2addr v12, v3

    mul-float v13, v4, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 474
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x0

    mul-float v12, v5, v0

    mul-float v13, v6, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 475
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v11, 0x1

    neg-float v12, v9

    mul-float/2addr v12, v5

    mul-float v13, v6, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 476
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x0

    mul-float v12, v7, v0

    mul-float v13, v8, v9

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 477
    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v11, 0x1

    neg-float v12, v9

    mul-float/2addr v12, v7

    mul-float v13, v8, v0

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 479
    return-void

    .line 436
    .end local v0    # "cw":F
    .end local v1    # "s00":F
    .end local v2    # "s01":F
    .end local v3    # "s10":F
    .end local v4    # "s11":F
    .end local v5    # "s20":F
    .end local v6    # "s21":F
    .end local v7    # "s30":F
    .end local v8    # "s31":F
    .end local v9    # "sw":F
    :cond_0
    const v10, -0x3fb6f025

    cmpl-float v10, p1, v10

    if-nez v10, :cond_1

    .line 437
    sget v0, Lcom/threed/jpct/Matrix;->mcpi:F

    .line 438
    .restart local v0    # "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->mspi:F

    .restart local v9    # "sw":F
    goto/16 :goto_0

    .line 440
    .end local v0    # "cw":F
    .end local v9    # "sw":F
    :cond_1
    const v10, 0x3fc90fdb

    cmpl-float v10, p1, v10

    if-nez v10, :cond_2

    .line 441
    sget v0, Lcom/threed/jpct/Matrix;->cpih:F

    .line 442
    .restart local v0    # "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->spih:F

    .restart local v9    # "sw":F
    goto/16 :goto_0

    .line 444
    .end local v0    # "cw":F
    .end local v9    # "sw":F
    :cond_2
    const v10, -0x4036f025

    cmpl-float v10, p1, v10

    if-nez v10, :cond_3

    .line 445
    sget v0, Lcom/threed/jpct/Matrix;->mcpih:F

    .line 446
    .restart local v0    # "cw":F
    sget v9, Lcom/threed/jpct/Matrix;->mspih:F

    .restart local v9    # "sw":F
    goto/16 :goto_0

    .line 448
    .end local v0    # "cw":F
    .end local v9    # "sw":F
    :cond_3
    iget v10, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    cmpl-float v10, p1, v10

    if-eqz v10, :cond_4

    .line 449
    iput p1, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    .line 450
    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    .line 451
    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 454
    :cond_4
    iget v0, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    .line 455
    .restart local v0    # "cw":F
    iget v9, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    .restart local v9    # "sw":F
    goto/16 :goto_0
.end method

.method public final scalarMul(F)V
    .locals 5
    .param p1, "scalar"    # F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v2

    aget v1, v0, v2

    mul-float/2addr v1, p1

    aput v1, v0, v2

    .line 187
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v2

    aget v1, v0, v3

    mul-float/2addr v1, p1

    aput v1, v0, v3

    .line 188
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v2

    aget v1, v0, v4

    mul-float/2addr v1, p1

    aput v1, v0, v4

    .line 190
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v3

    aget v1, v0, v2

    mul-float/2addr v1, p1

    aput v1, v0, v2

    .line 191
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v3

    aget v1, v0, v3

    mul-float/2addr v1, p1

    aput v1, v0, v3

    .line 192
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v3

    aget v1, v0, v4

    mul-float/2addr v1, p1

    aput v1, v0, v4

    .line 194
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v4

    aget v1, v0, v2

    mul-float/2addr v1, p1

    aput v1, v0, v2

    .line 195
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v4

    aget v1, v0, v3

    mul-float/2addr v1, p1

    aput v1, v0, v3

    .line 196
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v4

    aget v1, v0, v4

    mul-float/2addr v1, p1

    aput v1, v0, v4

    .line 197
    return-void
.end method

.method public final set(IIF)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # F

    .prologue
    const/4 v0, 0x4

    .line 1024
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, p1

    aput p3, v0, p2

    .line 1027
    :cond_0
    return-void
.end method

.method public final setColumn(IFFFF)V
    .locals 1
    .param p1, "col"    # I
    .param p2, "v1"    # F
    .param p3, "v2"    # F
    .param p4, "v3"    # F
    .param p5, "v4"    # F

    .prologue
    .line 1067
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aput p2, v0, p1

    .line 1069
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aput p3, v0, p1

    .line 1070
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aput p4, v0, p1

    .line 1071
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aput p5, v0, p1

    .line 1073
    :cond_0
    return-void
.end method

.method public final setDump([F)V
    .locals 8
    .param p1, "dump"    # [F

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 954
    array-length v2, p1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 955
    const/4 v0, 0x0

    .line 956
    .local v0, "cnt":I
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    aget v3, p1, v0

    aput v3, v2, v4

    .line 957
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    aget v3, p1, v1

    aput v3, v2, v5

    .line 958
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    aget v3, p1, v0

    aput v3, v2, v6

    .line 959
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    aget v3, p1, v1

    aput v3, v2, v7

    .line 960
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    aget v3, p1, v0

    aput v3, v2, v4

    .line 961
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    aget v3, p1, v1

    aput v3, v2, v5

    .line 962
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    aget v3, p1, v0

    aput v3, v2, v6

    .line 963
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    aget v3, p1, v1

    aput v3, v2, v7

    .line 964
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    aget v3, p1, v0

    aput v3, v2, v4

    .line 965
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    aget v3, p1, v1

    aput v3, v2, v5

    .line 966
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    aget v3, p1, v0

    aput v3, v2, v6

    .line 967
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    aget v3, p1, v1

    aput v3, v2, v7

    .line 968
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    aget v3, p1, v0

    aput v3, v2, v4

    .line 969
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    aget v3, p1, v1

    aput v3, v2, v5

    .line 970
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    aget v3, p1, v0

    aput v3, v2, v6

    .line 971
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v3, p1, v1

    aput v3, v2, v7

    .line 975
    .end local v1    # "cnt":I
    :goto_0
    return-void

    .line 973
    :cond_0
    const-string v2, "Not a valid matrix dump!"

    invoke-static {v2, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final setIdentity()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aput v3, v0, v4

    .line 95
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aput v3, v0, v5

    .line 96
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aput v3, v0, v6

    .line 97
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 99
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aput v2, v0, v5

    .line 100
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aput v2, v0, v6

    .line 101
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aput v2, v0, v4

    .line 104
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aput v2, v0, v6

    .line 105
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aput v2, v0, v5

    .line 108
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aput v2, v0, v4

    .line 109
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aput v2, v0, v5

    .line 112
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aput v2, v0, v6

    .line 113
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aput v2, v0, v4

    .line 114
    return-void
.end method

.method public final setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1
    .param p1, "dir"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "up"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/threed/jpct/Matrix;->setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)V

    .line 127
    return-void
.end method

.method final setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)V
    .locals 8
    .param p1, "dir"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "up"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "invert"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    invoke-virtual {p2}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object p2

    .line 132
    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    .line 134
    invoke-virtual {p2, p1}, Lcom/threed/jpct/SimpleVector;->calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 136
    .local v0, "right":Lcom/threed/jpct/SimpleVector;
    if-nez p3, :cond_0

    .line 137
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v3

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    aput v2, v1, v3

    .line 138
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v4

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    aput v2, v1, v3

    .line 139
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v5

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->z:F

    aput v2, v1, v3

    .line 140
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v6

    aput v7, v1, v3

    .line 142
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v3

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->x:F

    aput v2, v1, v4

    .line 143
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v4

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->y:F

    aput v2, v1, v4

    .line 144
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v5

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    aput v2, v1, v4

    .line 145
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v6

    aput v7, v1, v4

    .line 147
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v3

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    aput v2, v1, v5

    .line 148
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v4

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    aput v2, v1, v5

    .line 149
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v5

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    aput v2, v1, v5

    .line 150
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v6

    aput v7, v1, v5

    .line 152
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v3

    aput v7, v1, v6

    .line 153
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v4

    aput v7, v1, v6

    .line 154
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v5

    aput v7, v1, v6

    .line 155
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v6

    .line 177
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v3

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    aput v2, v1, v3

    .line 158
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v3

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    aput v2, v1, v4

    .line 159
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v3

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->z:F

    aput v2, v1, v5

    .line 160
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v3

    aput v7, v1, v6

    .line 162
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v4

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->x:F

    aput v2, v1, v3

    .line 163
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v4

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->y:F

    aput v2, v1, v4

    .line 164
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v4

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    aput v2, v1, v5

    .line 165
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v4

    aput v7, v1, v6

    .line 167
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v5

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    aput v2, v1, v3

    .line 168
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v5

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    aput v2, v1, v4

    .line 169
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v5

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    aput v2, v1, v5

    .line 170
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v5

    aput v7, v1, v6

    .line 172
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v6

    aput v7, v1, v3

    .line 173
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v6

    aput v7, v1, v4

    .line 174
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v6

    aput v7, v1, v5

    .line 175
    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v6

    goto :goto_0
.end method

.method public final setRow(IFFFF)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "v1"    # F
    .param p3, "v2"    # F
    .param p4, "v3"    # F
    .param p5, "v4"    # F

    .prologue
    .line 1044
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1046
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 1047
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, p1

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 1048
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, p1

    const/4 v1, 0x3

    aput p5, v0, v1

    .line 1050
    :cond_0
    return-void
.end method

.method public final setTo(Lcom/threed/jpct/Matrix;)V
    .locals 7
    .param p1, "source"    # Lcom/threed/jpct/Matrix;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 984
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v2, v3

    .line 985
    .local v1, "thismat":[F
    iget-object v2, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v2, v3

    .line 986
    .local v0, "sourcemat":[F
    aget v2, v0, v3

    aput v2, v1, v3

    .line 987
    aget v2, v0, v4

    aput v2, v1, v4

    .line 988
    aget v2, v0, v5

    aput v2, v1, v5

    .line 989
    aget v2, v0, v6

    aput v2, v1, v6

    .line 991
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v2, v4

    .line 992
    iget-object v2, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v2, v4

    .line 993
    aget v2, v0, v3

    aput v2, v1, v3

    .line 994
    aget v2, v0, v4

    aput v2, v1, v4

    .line 995
    aget v2, v0, v5

    aput v2, v1, v5

    .line 996
    aget v2, v0, v6

    aput v2, v1, v6

    .line 998
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v2, v5

    .line 999
    iget-object v2, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v2, v5

    .line 1000
    aget v2, v0, v3

    aput v2, v1, v3

    .line 1001
    aget v2, v0, v4

    aput v2, v1, v4

    .line 1002
    aget v2, v0, v5

    aput v2, v1, v5

    .line 1003
    aget v2, v0, v6

    aput v2, v1, v6

    .line 1005
    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v2, v6

    .line 1006
    iget-object v2, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v2, v6

    .line 1007
    aget v2, v0, v3

    aput v2, v1, v3

    .line 1008
    aget v2, v0, v4

    aput v2, v1, v4

    .line 1009
    aget v2, v0, v5

    aput v2, v1, v5

    .line 1010
    aget v2, v0, v6

    aput v2, v1, v6

    .line 1011
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1076
    const-string v1, "(\n"

    .line 1077
    .local v1, "m":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    return-object v1

    .line 1078
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1077
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public transformToGL()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 1141
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v1, v0, v3

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 1142
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v1, v0, v4

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 1144
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v1, v0, v3

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 1145
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v1, v0, v4

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 1147
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v1, v0, v3

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 1148
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v1, v0, v4

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 1150
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v1, v0, v3

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 1151
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v1, v0, v4

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 1152
    return-void
.end method

.method public final translate(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 696
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 697
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 698
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    add-float/2addr v2, p3

    aput v2, v0, v1

    .line 699
    return-void
.end method

.method public final translate(Lcom/threed/jpct/SimpleVector;)V
    .locals 4
    .param p1, "trans"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 679
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 680
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 681
    return-void
.end method

.method public final transpose()Lcom/threed/jpct/Matrix;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1116
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 1117
    .local v0, "dst":Lcom/threed/jpct/Matrix;
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v3

    aput v2, v1, v4

    .line 1118
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v3

    aput v2, v1, v5

    .line 1119
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v3

    aput v2, v1, v6

    .line 1120
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v4

    aput v2, v1, v3

    .line 1121
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v4

    aput v2, v1, v5

    .line 1122
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v4

    aput v2, v1, v6

    .line 1123
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v5

    aput v2, v1, v3

    .line 1124
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v5

    aput v2, v1, v4

    .line 1125
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v5

    aput v2, v1, v6

    .line 1126
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v6

    aput v2, v1, v3

    .line 1127
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v6

    aput v2, v1, v4

    .line 1128
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v6

    aput v2, v1, v5

    .line 1129
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 1130
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 1131
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 1132
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 1133
    return-object v0
.end method
