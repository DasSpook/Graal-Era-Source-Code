.class public Lcom/threed/jpct/TextureInfo;
.super Ljava/lang/Object;
.source "TextureInfo.java"


# static fields
.field public static final MAX_PHYSICAL_TEXTURE_STAGES:I = 0x4

.field public static final MODE_ADD:I = 0x2

.field private static final MODE_BASE:I = 0x0

.field public static final MODE_BLEND:I = 0x4

.field public static final MODE_MODULATE:I = 0x1

.field public static final MODE_REPLACE:I = 0x3


# instance fields
.field mode:[I

.field stageCnt:I

.field textures:[I

.field u0:[F

.field u1:[F

.field u2:[F

.field v0:[F

.field v1:[F

.field v2:[F


# direct methods
.method public constructor <init>(I)V
    .locals 9
    .param p1, "texID"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->textures:[I

    .line 47
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->mode:[I

    .line 48
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->u0:[F

    .line 49
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->v0:[F

    .line 50
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->u1:[F

    .line 51
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->v1:[F

    .line 52
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->u2:[F

    .line 53
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->v2:[F

    .line 54
    iput v8, p0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    .line 86
    invoke-virtual/range {v0 .. v8}, Lcom/threed/jpct/TextureInfo;->add(IFFFFFFI)V

    .line 87
    return-void
.end method

.method public constructor <init>(IFFFFFF)V
    .locals 9
    .param p1, "texID"    # I
    .param p2, "u0"    # F
    .param p3, "v0"    # F
    .param p4, "u1"    # F
    .param p5, "v1"    # F
    .param p6, "u2"    # F
    .param p7, "v2"    # F

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->textures:[I

    .line 47
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->mode:[I

    .line 48
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->u0:[F

    .line 49
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->v0:[F

    .line 50
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->u1:[F

    .line 51
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->v1:[F

    .line 52
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->u2:[F

    .line 53
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/TextureInfo;->v2:[F

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    .line 75
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/threed/jpct/TextureInfo;->add(IFFFFFFI)V

    .line 76
    return-void
.end method


# virtual methods
.method public add(IFFFFFFI)V
    .locals 10
    .param p1, "texID"    # I
    .param p2, "u0"    # F
    .param p3, "v0"    # F
    .param p4, "u1"    # F
    .param p5, "v1"    # F
    .param p6, "u2"    # F
    .param p7, "v2"    # F
    .param p8, "mode"    # I

    .prologue
    .line 138
    iget v2, p0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/threed/jpct/TextureInfo;->set(IIFFFFFFI)V

    .line 139
    iget v0, p0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    .line 140
    return-void
.end method

.method public add(II)V
    .locals 9
    .param p1, "texID"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 99
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/threed/jpct/TextureInfo;->add(IFFFFFFI)V

    .line 100
    return-void
.end method

.method public set(IIFFFFFFI)V
    .locals 2
    .param p1, "texID"    # I
    .param p2, "stageCnt"    # I
    .param p3, "u0"    # F
    .param p4, "v0"    # F
    .param p5, "u1"    # F
    .param p6, "v1"    # F
    .param p7, "u2"    # F
    .param p8, "v2"    # F
    .param p9, "mode"    # I

    .prologue
    .line 165
    if-nez p9, :cond_0

    if-eqz p2, :cond_0

    .line 166
    const-string v0, "Wrong mode for texture blending!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 181
    :goto_0
    return-void

    .line 169
    :cond_0
    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    if-lt p2, v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum number of texture layer configured by Config.maxTextureLayers is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/TextureInfo;->textures:[I

    aput p1, v0, p2

    .line 174
    iget-object v0, p0, Lcom/threed/jpct/TextureInfo;->u0:[F

    aput p3, v0, p2

    .line 175
    iget-object v0, p0, Lcom/threed/jpct/TextureInfo;->v0:[F

    aput p4, v0, p2

    .line 176
    iget-object v0, p0, Lcom/threed/jpct/TextureInfo;->u1:[F

    aput p5, v0, p2

    .line 177
    iget-object v0, p0, Lcom/threed/jpct/TextureInfo;->v1:[F

    aput p6, v0, p2

    .line 178
    iget-object v0, p0, Lcom/threed/jpct/TextureInfo;->u2:[F

    aput p7, v0, p2

    .line 179
    iget-object v0, p0, Lcom/threed/jpct/TextureInfo;->v2:[F

    aput p8, v0, p2

    .line 180
    iget-object v0, p0, Lcom/threed/jpct/TextureInfo;->mode:[I

    aput p9, v0, p2

    goto :goto_0
.end method

.method public set(III)V
    .locals 10
    .param p1, "texID"    # I
    .param p2, "stageCnt"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 114
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/threed/jpct/TextureInfo;->set(IIFFFFFFI)V

    .line 115
    return-void
.end method
