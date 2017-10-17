.class public final Lcom/threed/jpct/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field static final DUMMY_NAME:Ljava/lang/String; = "--dummy--"

.field public static final TEXTURE_NOTFOUND:I = -0x1

.field private static myInstance:Lcom/threed/jpct/TextureManager;


# instance fields
.field private dummy:Lcom/threed/jpct/Texture;

.field private lastID:I

.field private lastName:Ljava/lang/String;

.field private textureCount:I

.field private textureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textureVirtualizer:Lcom/threed/jpct/Virtualizer;

.field textures:[Lcom/threed/jpct/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/TextureManager;->myInstance:Lcom/threed/jpct/TextureManager;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/TextureManager;->lastID:I

    .line 39
    iput-object v1, p0, Lcom/threed/jpct/TextureManager;->lastName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/threed/jpct/TextureManager;->textureVirtualizer:Lcom/threed/jpct/Virtualizer;

    .line 44
    invoke-virtual {p0}, Lcom/threed/jpct/TextureManager;->flush()V

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/threed/jpct/TextureManager;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/threed/jpct/TextureManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/threed/jpct/TextureManager;->myInstance:Lcom/threed/jpct/TextureManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/threed/jpct/TextureManager;

    invoke-direct {v0}, Lcom/threed/jpct/TextureManager;-><init>()V

    sput-object v0, Lcom/threed/jpct/TextureManager;->myInstance:Lcom/threed/jpct/TextureManager;

    .line 58
    :cond_0
    sget-object v0, Lcom/threed/jpct/TextureManager;->myInstance:Lcom/threed/jpct/TextureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addTexture(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    invoke-virtual {p0, p1, v0}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    .line 119
    return-void
.end method

.method public declared-synchronized addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lcom/threed/jpct/Texture;

    .line 133
    .local v0, "newy":[Lcom/threed/jpct/Texture;
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    .line 136
    .end local v0    # "newy":[Lcom/threed/jpct/Texture;
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    iget v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    invoke-static {v2}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    iget v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    aput-object p2, v1, v2

    .line 139
    iget v1, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/threed/jpct/TextureManager;->textureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A texture with the name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has been declared twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public compress()V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 281
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/threed/jpct/Texture;->compress()V

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized containsTexture(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    .line 264
    sget v0, Lcom/threed/jpct/Config;->maxTextures:I

    new-array v0, v0, [Lcom/threed/jpct/Texture;

    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    .line 265
    new-instance v0, Lcom/threed/jpct/Texture;

    invoke-direct {v0}, Lcom/threed/jpct/Texture;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    .line 267
    const-string v0, "--dummy--"

    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    invoke-virtual {p0, v0, v1}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    .line 268
    return-void
.end method

.method declared-synchronized flushOpenGLIDs(I)V
    .locals 4
    .param p1, "renderer"    # I

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 427
    monitor-exit p0

    return-void

    .line 423
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 424
    .local v0, "st":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v1

    .line 425
    .local v1, "t":Lcom/threed/jpct/Texture;
    invoke-virtual {v1, p1}, Lcom/threed/jpct/Texture;->clearIDs(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 423
    .end local v0    # "st":Ljava/lang/String;
    .end local v1    # "t":Lcom/threed/jpct/Texture;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDummyTexture()Lcom/threed/jpct/Texture;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    return-object v0
.end method

.method public getMemoryUsage()J
    .locals 6

    .prologue
    .line 176
    const-wide/16 v1, 0x0

    .line 177
    .local v1, "mem":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    if-lt v0, v4, :cond_0

    .line 186
    return-wide v1

    .line 178
    :cond_0
    iget-object v4, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v3, v4, v0

    .line 179
    .local v3, "tex":Lcom/threed/jpct/Texture;
    iget-object v4, v3, Lcom/threed/jpct/Texture;->texels:[I

    if-eqz v4, :cond_1

    .line 180
    iget-object v4, v3, Lcom/threed/jpct/Texture;->texels:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 182
    :cond_1
    iget-object v4, v3, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-eqz v4, :cond_2

    .line 183
    iget-object v4, v3, Lcom/threed/jpct/Texture;->zippedTexels:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 177
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getNameByID(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 443
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 438
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    .local v0, "tname":Ljava/lang/String;
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 438
    .end local v0    # "tname":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNames()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    if-lt v0, v5, :cond_0

    .line 79
    return-object v2

    .line 72
    :cond_0
    iget-object v5, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v3, v5, v0

    .line 73
    .local v3, "tex":Lcom/threed/jpct/Texture;
    invoke-virtual {p0, v0}, Lcom/threed/jpct/TextureManager;->getNameByID(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "name":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/Object;

    .line 75
    .local v4, "tmp":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 76
    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 77
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v1, v1, v0

    .line 410
    .end local v0    # "i":I
    :goto_0
    return-object v1

    .line 409
    :cond_0
    const-string v1, "Requested texture not found!"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 410
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextureByID(I)Lcom/threed/jpct/Texture;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getNameByID(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v0

    return-object v0
.end method

.method public getTextureCount()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getTextureID(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget v1, p0, Lcom/threed/jpct/TextureManager;->lastID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :goto_0
    monitor-exit p0

    return v1

    .line 374
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, "ti":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 376
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "ti":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/TextureManager;->lastID:I

    .line 377
    iput-object p1, p0, Lcom/threed/jpct/TextureManager;->lastName:Ljava/lang/String;

    .line 378
    iget v1, p0, Lcom/threed/jpct/TextureManager;->lastID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    .restart local v0    # "ti":Ljava/lang/Object;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 371
    .end local v0    # "ti":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getTextures()[Lcom/threed/jpct/Texture;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    return-object v0
.end method

.method public getVirtualizer()Lcom/threed/jpct/Virtualizer;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureVirtualizer:Lcom/threed/jpct/Virtualizer;

    return-object v0
.end method

.method public preWarm(Lcom/threed/jpct/FrameBuffer;)V
    .locals 5
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, "doneSomething":Z
    iget-object v4, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz v4, :cond_0

    .line 299
    iget-object v2, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    .line 300
    .local v2, "renderer":Lcom/threed/jpct/GLRenderer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    if-lt v1, v4, :cond_2

    .line 309
    .end local v1    # "i":I
    .end local v2    # "renderer":Lcom/threed/jpct/GLRenderer;
    :cond_0
    if-eqz v0, :cond_1

    .line 310
    const-string v4, "Pre-warming done!"

    invoke-static {v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 312
    :cond_1
    return-void

    .line 301
    .restart local v1    # "i":I
    .restart local v2    # "renderer":Lcom/threed/jpct/GLRenderer;
    :cond_2
    iget-object v4, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v3, v4, v1

    .line 302
    .local v3, "t":Lcom/threed/jpct/Texture;
    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/threed/jpct/Virtualizer;->isVirtual(Lcom/threed/jpct/Texture;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 303
    :cond_3
    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLRenderer;->upload(Lcom/threed/jpct/Texture;)V

    .line 304
    const/4 v0, 0x1

    .line 300
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeAndUnload(Ljava/lang/String;Lcom/threed/jpct/FrameBuffer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "from"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/threed/jpct/TextureManager;->unloadTexture(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->removeTexture(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public declared-synchronized removeTexture(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v1

    .line 229
    .local v1, "texture":Lcom/threed/jpct/Texture;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 238
    monitor-exit p0

    return-void

    .line 230
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    iget-object v3, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    aput-object v3, v2, v0

    .line 233
    iget v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 234
    iget v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    .end local v1    # "texture":Lcom/threed/jpct/Texture;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public replaceTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aput-object p2, v1, v0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Texture \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setDummyTexture(Lcom/threed/jpct/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 322
    if-eqz p1, :cond_0

    .line 323
    iput-object p1, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    .line 324
    const-string v0, "--dummy--"

    invoke-virtual {p0, v0, p1}, Lcom/threed/jpct/TextureManager;->replaceTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    const-string v0, "Texture can\'t be null!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setState(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "dump":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v6, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/threed/jpct/TextureManager;->flush()V

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 104
    :goto_1
    return-void

    .line 94
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 95
    .local v4, "tmp":[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v2, v4, v5

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, "name":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v3, v4, v5

    check-cast v3, Lcom/threed/jpct/Texture;

    .line 97
    .local v3, "tex":Lcom/threed/jpct/Texture;
    const-string v5, "--dummy--"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    invoke-virtual {p0, v2, v3}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tex":Lcom/threed/jpct/Texture;
    .end local v4    # "tmp":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Not a valid dump!"

    invoke-static {v5, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setVirtualizer(Lcom/threed/jpct/Virtualizer;)V
    .locals 0
    .param p1, "textureVirtualizer"    # Lcom/threed/jpct/Virtualizer;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/threed/jpct/TextureManager;->textureVirtualizer:Lcom/threed/jpct/Virtualizer;

    .line 454
    return-void
.end method

.method public unloadTexture(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;)V
    .locals 1
    .param p1, "from"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "texture"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 204
    iget-object v0, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p2}, Lcom/threed/jpct/GLRenderer;->addForUnload(Lcom/threed/jpct/Texture;)V

    .line 207
    :cond_0
    return-void
.end method

.method public virtualize(Lcom/threed/jpct/Texture;)V
    .locals 2
    .param p1, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureVirtualizer:Lcom/threed/jpct/Virtualizer;

    if-nez v0, :cond_1

    .line 478
    const-string v0, "No Virtualizer set!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v0, p1, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureVirtualizer:Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/Texture;)Z

    goto :goto_0
.end method
