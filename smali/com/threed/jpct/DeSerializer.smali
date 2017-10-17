.class Lcom/threed/jpct/DeSerializer;
.super Ljava/lang/Object;
.source "DeSerializer.java"


# static fields
.field private static final FLOATS:I = 0x1

.field private static final FLOAT_FLOATS:I = 0x3

.field private static final INTS:I = 0x0

.field private static final INT_INTS:I = 0x2

.field private static final VERSION:I = 0x6


# instance fields
.field private buffer:[B

.field private index:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    .line 23
    iput v1, p0, Lcom/threed/jpct/DeSerializer;->index:I

    .line 25
    iput v1, p0, Lcom/threed/jpct/DeSerializer;->length:I

    .line 28
    return-void
.end method

.method private createTexture(Ljava/lang/String;)I
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x8

    const/4 v8, -0x1

    .line 285
    const-string v9, "__obj-Color:"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 286
    .local v3, "pos":I
    const-string v9, "__3ds-Color:"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 287
    .local v4, "pos2":I
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v8

    .line 290
    :cond_1
    const/16 v9, 0xc

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "parts":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 295
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v7

    .line 297
    .local v7, "tm":Lcom/threed/jpct/TextureManager;
    invoke-virtual {v7, p1}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 298
    invoke-virtual {v7, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 301
    :cond_2
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 302
    .local v5, "r":I
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 303
    .local v1, "g":I
    const/4 v8, 0x2

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, "b":I
    new-instance v6, Lcom/threed/jpct/Texture;

    new-instance v8, Lcom/threed/jpct/RGBColor;

    invoke-direct {v8, v5, v1, v0}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    invoke-direct {v6, v11, v11, v8}, Lcom/threed/jpct/Texture;-><init>(IILcom/threed/jpct/RGBColor;)V

    .line 305
    .local v6, "t":Lcom/threed/jpct/Texture;
    invoke-virtual {v7, p1, v6}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    .line 306
    invoke-virtual {v7, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v8

    goto :goto_0
.end method

.method private read(Ljava/io/InputStream;)I
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 590
    iget v2, p0, Lcom/threed/jpct/DeSerializer;->index:I

    iget v3, p0, Lcom/threed/jpct/DeSerializer;->length:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/threed/jpct/DeSerializer;->length:I

    if-nez v2, :cond_1

    .line 591
    :cond_0
    const/4 v1, 0x0

    .line 592
    .local v1, "start":I
    iput v5, p0, Lcom/threed/jpct/DeSerializer;->length:I

    .line 593
    :goto_0
    iget v2, p0, Lcom/threed/jpct/DeSerializer;->length:I

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 603
    .end local v1    # "start":I
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    iget v3, p0, Lcom/threed/jpct/DeSerializer;->index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    iget v4, p0, Lcom/threed/jpct/DeSerializer;->index:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    iget v4, p0, Lcom/threed/jpct/DeSerializer;->index:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    iget v4, p0, Lcom/threed/jpct/DeSerializer;->index:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    .line 604
    .local v0, "ret":I
    iget v2, p0, Lcom/threed/jpct/DeSerializer;->index:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/threed/jpct/DeSerializer;->index:I

    .line 605
    return v0

    .line 594
    .end local v0    # "ret":I
    .restart local v1    # "start":I
    :cond_2
    iput v5, p0, Lcom/threed/jpct/DeSerializer;->index:I

    .line 595
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_3

    .line 596
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Premature end of file!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 598
    :cond_3
    iget v2, p0, Lcom/threed/jpct/DeSerializer;->length:I

    iget-object v3, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    iget-object v4, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/threed/jpct/DeSerializer;->length:I

    .line 600
    iget v1, p0, Lcom/threed/jpct/DeSerializer;->length:I

    goto :goto_0
.end method

.method private readAnimation(Lcom/threed/jpct/Object3D;Ljava/io/InputStream;)Lcom/threed/jpct/Animation;
    .locals 5
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, "anim":Lcom/threed/jpct/Animation;
    const/4 v2, 0x0

    .line 394
    .local v2, "max":I
    :try_start_0
    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 399
    :goto_0
    if-nez v2, :cond_0

    .line 400
    const/4 v3, 0x0

    .line 424
    :goto_1
    return-object v3

    .line 403
    :cond_0
    new-instance v0, Lcom/threed/jpct/Animation;

    .end local v0    # "anim":Lcom/threed/jpct/Animation;
    invoke-direct {v0, v2}, Lcom/threed/jpct/Animation;-><init>(I)V

    .line 405
    .restart local v0    # "anim":Lcom/threed/jpct/Animation;
    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v0, Lcom/threed/jpct/Animation;->aktFrames:I

    .line 407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v3, v0, Lcom/threed/jpct/Animation;->aktFrames:I

    if-lt v1, v3, :cond_1

    .line 414
    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v0, Lcom/threed/jpct/Animation;->endFrame:I

    .line 415
    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v0, Lcom/threed/jpct/Animation;->mode:I

    .line 416
    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v0, Lcom/threed/jpct/Animation;->anzAnim:I

    .line 417
    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v0, Lcom/threed/jpct/Animation;->wrapMode:I

    .line 418
    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/Animation;->startFrames:[I

    .line 419
    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/Animation;->endFrames:[I

    .line 421
    const/4 v1, 0x0

    :goto_3
    iget-object v3, v0, Lcom/threed/jpct/Animation;->startFrames:[I

    array-length v3, v3

    if-lt v1, v3, :cond_3

    move-object v3, v0

    .line 424
    goto :goto_1

    .line 408
    :cond_1
    iget-object v3, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readMesh(Ljava/io/InputStream;)Lcom/threed/jpct/Mesh;

    move-result-object v4

    aput-object v4, v3, v1

    .line 409
    iget-object v3, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 410
    iget-object v3, v0, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/threed/jpct/Mesh;->strip()V

    .line 407
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 422
    :cond_3
    iget-object v3, v0, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 395
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private readBoolean(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->read(Ljava/io/InputStream;)I

    move-result v0

    .line 574
    .local v0, "v":I
    if-eqz v0, :cond_0

    .line 575
    const/4 v1, 0x1

    .line 577
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readFloat(Ljava/io/InputStream;)F
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->read(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method private readFloatArray(Ljava/io/InputStream;)[F
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 462
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 463
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "float[] array expected ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 466
    :cond_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 467
    .local v1, "len":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 468
    const/4 v2, 0x0

    .line 482
    :cond_1
    :goto_0
    return-object v2

    .line 471
    :cond_2
    if-gez v1, :cond_3

    .line 472
    neg-int v4, v1

    new-array v2, v4, [F

    .line 473
    .local v2, "res":[F
    goto :goto_0

    .line 476
    .end local v2    # "res":[F
    :cond_3
    new-array v2, v1, [F

    .line 478
    .restart local v2    # "res":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 479
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v4

    aput v4, v2, v0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private readFloatFloatArray(Ljava/io/InputStream;)[[F
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 542
    const v0, 0xf423f

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/DeSerializer;->readFloatFloatArray(Ljava/io/InputStream;I)[[F

    move-result-object v0

    return-object v0
.end method

.method private readFloatFloatArray(Ljava/io/InputStream;I)[[F
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v6

    .line 547
    .local v6, "type":I
    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 548
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "float[][] array expected ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 551
    :cond_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 552
    .local v2, "len":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 553
    const/4 v4, 0x0

    .line 569
    :cond_1
    return-object v4

    .line 556
    :cond_2
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 558
    new-array v4, v2, [[F

    .line 560
    .local v4, "res":[[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 561
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 562
    .local v1, "l2":I
    new-array v5, v1, [F

    .line 563
    .local v5, "res2":[F
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    if-lt v3, v1, :cond_3

    .line 566
    aput-object v5, v4, v0

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_3
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v7

    aput v7, v5, v3

    .line 563
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->read(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private readIntArray(Ljava/io/InputStream;)[I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 487
    .local v3, "type":I
    if-eqz v3, :cond_0

    .line 488
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "int[] array expected ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 491
    :cond_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 492
    .local v1, "len":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 493
    const/4 v2, 0x0

    .line 507
    :cond_1
    :goto_0
    return-object v2

    .line 496
    :cond_2
    if-gez v1, :cond_3

    .line 497
    neg-int v4, v1

    new-array v2, v4, [I

    .line 498
    .local v2, "res":[I
    goto :goto_0

    .line 501
    .end local v2    # "res":[I
    :cond_3
    new-array v2, v1, [I

    .line 503
    .restart local v2    # "res":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 504
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v4

    aput v4, v2, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private readIntIntArray(Ljava/io/InputStream;)[[I
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 511
    const v0, 0xf423f

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/DeSerializer;->readIntIntArray(Ljava/io/InputStream;I)[[I

    move-result-object v0

    return-object v0
.end method

.method private readIntIntArray(Ljava/io/InputStream;I)[[I
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v6

    .line 516
    .local v6, "type":I
    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 517
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "int[][] array expected ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 520
    :cond_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 521
    .local v2, "len":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 522
    const/4 v4, 0x0

    .line 538
    :cond_1
    return-object v4

    .line 525
    :cond_2
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 527
    new-array v4, v2, [[I

    .line 529
    .local v4, "res":[[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 530
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 531
    .local v1, "l2":I
    new-array v5, v1, [I

    .line 532
    .local v5, "res2":[I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    if-lt v3, v1, :cond_3

    .line 535
    aput-object v5, v4, v0

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_3
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v7

    aput v7, v5, v3

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private readMesh(Ljava/io/InputStream;)Lcom/threed/jpct/Mesh;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 430
    .local v0, "anzCoords":I
    if-nez v0, :cond_0

    .line 431
    const/4 v4, 0x0

    .line 457
    :goto_0
    return-object v4

    .line 434
    :cond_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 435
    .local v1, "anzTri":I
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 436
    .local v2, "anzVectors":I
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 438
    .local v3, "maxVectors":I
    new-instance v4, Lcom/threed/jpct/Mesh;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/threed/jpct/Mesh;-><init>(I)V

    .line 440
    .local v4, "mesh":Lcom/threed/jpct/Mesh;
    iput v0, v4, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 441
    iput v1, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 442
    iput v2, v4, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 443
    iput v3, v4, Lcom/threed/jpct/Mesh;->maxVectors:I

    .line 445
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 446
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v5

    iput-object v5, v4, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 447
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v5

    iput-object v5, v4, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 448
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v5

    iput-object v5, v4, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 449
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v5

    iput-object v5, v4, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 450
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v5

    iput-object v5, v4, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 451
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v5

    iput-object v5, v4, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 452
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v5

    iput-object v5, v4, Lcom/threed/jpct/Mesh;->coords:[I

    .line 453
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 454
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lcom/threed/jpct/Mesh;->obbEnd:I

    .line 455
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntIntArray(Ljava/io/InputStream;)[[I

    move-result-object v5

    iput-object v5, v4, Lcom/threed/jpct/Mesh;->points:[[I

    goto :goto_0
.end method

.method private readOcTree(Ljava/io/InputStream;)Lcom/threed/jpct/OcTree;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v0

    .line 328
    .local v0, "hasOc":Z
    if-nez v0, :cond_0

    .line 329
    const-string v3, "No octree found in serialized data!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 330
    const/4 v2, 0x0

    .line 347
    :goto_0
    return-object v2

    .line 332
    :cond_0
    const-string v3, "Octree found in serialized data!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 334
    new-instance v2, Lcom/threed/jpct/OcTree;

    invoke-direct {v2}, Lcom/threed/jpct/OcTree;-><init>()V

    .line 335
    .local v2, "oc":Lcom/threed/jpct/OcTree;
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lcom/threed/jpct/OcTree;->leafs:I

    .line 336
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lcom/threed/jpct/OcTree;->nodes:I

    .line 337
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lcom/threed/jpct/OcTree;->maxPoly:I

    .line 338
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 339
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 340
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 341
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 342
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lcom/threed/jpct/OcTree;->mode:I

    .line 343
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v3

    iput-object v3, v2, Lcom/threed/jpct/OcTree;->tris:[I

    .line 345
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v1, "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/threed/jpct/OcTreeNode;>;"
    invoke-direct {p0, p1, v2, v1}, Lcom/threed/jpct/DeSerializer;->readOcTreeNodes(Ljava/io/InputStream;Lcom/threed/jpct/OcTree;Ljava/util/Map;)Lcom/threed/jpct/OcTreeNode;

    goto :goto_0
.end method

.method private readOcTreeNodes(Ljava/io/InputStream;Lcom/threed/jpct/OcTree;Ljava/util/Map;)Lcom/threed/jpct/OcTreeNode;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "oc"    # Lcom/threed/jpct/OcTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/threed/jpct/OcTree;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/threed/jpct/OcTreeNode;",
            ">;)",
            "Lcom/threed/jpct/OcTreeNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    .local p3, "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/threed/jpct/OcTreeNode;>;"
    new-instance v1, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v1}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    .line 352
    .local v1, "node":Lcom/threed/jpct/OcTreeNode;
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 353
    iput-object v1, p2, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->id:I

    .line 357
    iget v4, v1, Lcom/threed/jpct/OcTreeNode;->id:I

    invoke-static {v4}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 360
    .local v3, "parentId":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/threed/jpct/OcTreeNode;

    iput-object v4, v1, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    .line 362
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->xLow:F

    .line 363
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->yLow:F

    .line 364
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->zLow:F

    .line 365
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    .line 366
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    .line 367
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    .line 368
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    .line 369
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    .line 370
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v1, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    .line 371
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v4

    iput-object v4, v1, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    .line 372
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v4

    iput-object v4, v1, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x8

    if-lt v0, v4, :cond_1

    .line 378
    iget v4, v1, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    new-array v4, v4, [Lcom/threed/jpct/OcTreeNode;

    iput-object v4, v1, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    .line 380
    const/4 v0, 0x0

    :goto_1
    iget v4, v1, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    if-lt v0, v4, :cond_2

    .line 385
    return-object v1

    .line 375
    :cond_1
    iget-object v4, v1, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readVector(Ljava/io/InputStream;)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    aput-object v5, v4, v0

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/threed/jpct/DeSerializer;->readOcTreeNodes(Ljava/io/InputStream;Lcom/threed/jpct/OcTree;Ljava/util/Map;)Lcom/threed/jpct/OcTreeNode;

    move-result-object v2

    .line 382
    .local v2, "on":Lcom/threed/jpct/OcTreeNode;
    iget-object v4, v1, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    aput-object v2, v4, v0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v1

    .line 315
    .local v1, "cs":[I
    array-length v4, v1

    new-array v0, v4, [B

    .line 316
    .local v0, "ca":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 319
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 320
    .local v3, "txt":Ljava/lang/String;
    const-string v4, "*null*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    const/4 v3, 0x0

    .line 323
    .end local v3    # "txt":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 317
    :cond_1
    aget v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private readVector(Ljava/io/InputStream;)Lcom/threed/jpct/SimpleVector;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v1

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v2

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    return-object v0
.end method

.method private readVertexAttributes(Ljava/io/InputStream;)[Lcom/threed/jpct/VertexAttributes;
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 266
    .local v0, "cnt":I
    if-nez v0, :cond_1

    .line 267
    const/4 v5, 0x0

    .line 281
    :cond_0
    return-object v5

    .line 270
    :cond_1
    new-array v5, v0, [Lcom/threed/jpct/VertexAttributes;

    .line 272
    .local v5, "ret":[Lcom/threed/jpct/VertexAttributes;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v1

    .line 274
    .local v1, "data":[F
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v6

    .line 275
    .local v6, "type":I
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v2

    .line 277
    .local v2, "dynamic":Z
    new-instance v7, Lcom/threed/jpct/VertexAttributes;

    invoke-direct {v7, v4, v1, v6}, Lcom/threed/jpct/VertexAttributes;-><init>(Ljava/lang/String;[FI)V

    .line 278
    .local v7, "vas":Lcom/threed/jpct/VertexAttributes;
    invoke-virtual {v7, v2}, Lcom/threed/jpct/VertexAttributes;->setDynamic(Z)V

    .line 279
    aput-object v7, v5, v3

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;
    .locals 41
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 32
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v38

    .line 33
    .local v38, "version":I
    const/16 v39, 0x6

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_0

    .line 34
    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "Unsupported version: "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-static/range {v39 .. v40}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 35
    :goto_0
    const/16 v31, 0x0

    .line 261
    .end local v38    # "version":I
    :goto_1
    return-object v31

    .line 38
    .restart local v38    # "version":I
    :cond_0
    const/16 v16, 0x1

    .line 39
    .local v16, "length":I
    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_1

    .line 41
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v16

    .line 44
    :cond_1
    move/from16 v0, v16

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    move-object/from16 v31, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .local v31, "result":[Lcom/threed/jpct/Object3D;
    const/4 v6, 0x0

    .local v6, "cnt":I
    :goto_2
    move/from16 v0, v16

    if-lt v6, v0, :cond_2

    .line 256
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 257
    :catch_0
    move-exception v39

    goto :goto_1

    .line 48
    :cond_2
    :try_start_4
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v30

    .line 50
    .local v30, "reduced":Z
    const/16 v26, 0x0

    .line 51
    .local v26, "oname":Ljava/lang/String;
    const/16 v39, 0x4

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_3

    .line 52
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v26

    .line 55
    :cond_3
    const/16 v32, 0x0

    .line 56
    .local v32, "rotPiv":Lcom/threed/jpct/SimpleVector;
    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_4

    .line 57
    new-instance v32, Lcom/threed/jpct/SimpleVector;

    .end local v32    # "rotPiv":Lcom/threed/jpct/SimpleVector;
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/threed/jpct/SimpleVector;-><init>([F)V

    .line 60
    .restart local v32    # "rotPiv":Lcom/threed/jpct/SimpleVector;
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readMesh(Ljava/io/InputStream;)Lcom/threed/jpct/Mesh;

    move-result-object v17

    .line 61
    .local v17, "m":Lcom/threed/jpct/Mesh;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 63
    .local v4, "anzTri":I
    new-instance v22, Lcom/threed/jpct/Object3D;

    const/16 v39, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 65
    .local v22, "obj":Lcom/threed/jpct/Object3D;
    if-eqz v26, :cond_5

    .line 66
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->setName(Ljava/lang/String;)V

    .line 69
    :cond_5
    if-eqz v32, :cond_6

    .line 70
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->setRotationPivot(Lcom/threed/jpct/SimpleVector;)V

    .line 71
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 74
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v18

    .line 75
    .local v18, "mesh":Lcom/threed/jpct/Mesh;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    move-object/from16 v37, v0

    .line 77
    .local v37, "vecs":Lcom/threed/jpct/Vectors;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v18

    iput v0, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    .line 78
    move-object/from16 v0, v18

    iput v4, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 79
    move-object/from16 v0, v17

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v18

    iput v0, v1, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 80
    move-object/from16 v0, v17

    iget v0, v0, Lcom/threed/jpct/Mesh;->maxVectors:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v18

    iput v0, v1, Lcom/threed/jpct/Mesh;->maxVectors:I

    .line 82
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    .line 83
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 84
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 85
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 86
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/threed/jpct/Mesh;->nxOrg:[F

    .line 87
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/threed/jpct/Mesh;->nyOrg:[F

    .line 88
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/threed/jpct/Mesh;->nzOrg:[F

    .line 89
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->coords:[I

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/threed/jpct/Mesh;->coords:[I

    .line 90
    move-object/from16 v0, v17

    iget v0, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v18

    iput v0, v1, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 91
    move-object/from16 v0, v17

    iget v0, v0, Lcom/threed/jpct/Mesh;->obbEnd:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v18

    iput v0, v1, Lcom/threed/jpct/Mesh;->obbEnd:I

    .line 92
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/threed/jpct/Mesh;->points:[[I

    .line 94
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/threed/jpct/Vectors;->nuOrg:[F

    .line 95
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/threed/jpct/Vectors;->nvOrg:[F

    .line 96
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatFloatArray(Ljava/io/InputStream;)[[F

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/threed/jpct/Vectors;->uMul:[[F

    .line 97
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatFloatArray(Ljava/io/InputStream;)[[F

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/threed/jpct/Vectors;->vMul:[[F

    .line 98
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/threed/jpct/Vectors;->alpha:[F

    .line 99
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v37

    iput v0, v1, Lcom/threed/jpct/Vectors;->maxVectors:I

    .line 100
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    .line 102
    if-nez v30, :cond_7

    .line 103
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    .line 104
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    .line 105
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    .line 106
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    .line 107
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    .line 108
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    .line 109
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    .line 110
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    .line 113
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readVector(Ljava/io/InputStream;)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    .line 114
    .local v5, "center":Lcom/threed/jpct/SimpleVector;
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readVector(Ljava/io/InputStream;)Lcom/threed/jpct/SimpleVector;

    move-result-object v29

    .line 116
    .local v29, "pivot":Lcom/threed/jpct/SimpleVector;
    iget v0, v5, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Lcom/threed/jpct/Object3D;->centerX:F

    .line 117
    iget v0, v5, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Lcom/threed/jpct/Object3D;->centerY:F

    .line 118
    iget v0, v5, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Lcom/threed/jpct/Object3D;->centerZ:F

    .line 120
    move-object/from16 v0, v29

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    .line 121
    move-object/from16 v0, v29

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    .line 122
    move-object/from16 v0, v29

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    .line 124
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    .line 125
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->texture:[I

    .line 126
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readIntIntArray(Ljava/io/InputStream;)[[I

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 127
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readIntIntArray(Ljava/io/InputStream;)[[I

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 129
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v33

    .line 131
    .local v33, "tLen":I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v11, "ids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v21, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v35

    .line 136
    .local v35, "tm":Lcom/threed/jpct/TextureManager;
    invoke-virtual/range {v35 .. v35}, Lcom/threed/jpct/TextureManager;->getNames()Ljava/util/HashSet;

    move-result-object v19

    .line 137
    .local v19, "nam":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_3
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-nez v40, :cond_c

    .line 142
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    move/from16 v0, v33

    if-lt v9, v0, :cond_d

    .line 149
    const v13, -0xbc61bd

    .line 150
    .local v13, "lastOrg":I
    const v14, -0xbc61bd

    .line 152
    .local v14, "lastTid":I
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v8, v0

    .line 154
    .local v8, "end":I
    const/4 v9, 0x0

    :goto_5
    if-lt v9, v8, :cond_e

    .line 182
    const v13, -0xbc61bd

    .line 183
    const v14, -0xbc61bd

    .line 185
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v39, v0

    if-eqz v39, :cond_8

    .line 187
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v8, v0

    .line 189
    const/16 v28, 0x0

    .local v28, "p":I
    :goto_6
    move/from16 v0, v28

    if-lt v0, v8, :cond_13

    .line 222
    .end local v28    # "p":I
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 223
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v39

    sget v40, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/DeSerializer;->readAnimation(Lcom/threed/jpct/Object3D;Ljava/io/InputStream;)Lcom/threed/jpct/Animation;

    move-result-object v3

    .line 226
    .local v3, "anim":Lcom/threed/jpct/Animation;
    if-eqz v3, :cond_9

    .line 227
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/threed/jpct/Object3D;->setAnimationSequence(Lcom/threed/jpct/Animation;)V

    .line 230
    :cond_9
    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_a

    .line 231
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readOcTree(Ljava/io/InputStream;)Lcom/threed/jpct/OcTree;

    move-result-object v25

    .line 232
    .local v25, "oc":Lcom/threed/jpct/OcTree;
    if-eqz v25, :cond_a

    .line 233
    invoke-virtual/range {v25 .. v25}, Lcom/threed/jpct/OcTree;->postConstruct()V

    .line 234
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->setOcTree(Lcom/threed/jpct/OcTree;)V

    .line 238
    .end local v25    # "oc":Lcom/threed/jpct/OcTree;
    :cond_a
    const/16 v39, 0x6

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_b

    .line 239
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readVertexAttributes(Ljava/io/InputStream;)[Lcom/threed/jpct/VertexAttributes;

    move-result-object v36

    .line 240
    .local v36, "vass":[Lcom/threed/jpct/VertexAttributes;
    if-eqz v36, :cond_b

    .line 241
    const/4 v9, 0x0

    :goto_7
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    if-lt v9, v0, :cond_19

    .line 247
    .end local v36    # "vass":[Lcom/threed/jpct/VertexAttributes;
    :cond_b
    aput-object v22, v31, v6

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 137
    .end local v3    # "anim":Lcom/threed/jpct/Animation;
    .end local v8    # "end":I
    .end local v9    # "i":I
    .end local v13    # "lastOrg":I
    .end local v14    # "lastTid":I
    :cond_c
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 138
    .local v20, "name":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v10

    .line 139
    .local v10, "id":I
    invoke-static {v10}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 251
    .end local v4    # "anzTri":I
    .end local v5    # "center":Lcom/threed/jpct/SimpleVector;
    .end local v6    # "cnt":I
    .end local v10    # "id":I
    .end local v11    # "ids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v16    # "length":I
    .end local v17    # "m":Lcom/threed/jpct/Mesh;
    .end local v18    # "mesh":Lcom/threed/jpct/Mesh;
    .end local v19    # "nam":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "obj":Lcom/threed/jpct/Object3D;
    .end local v26    # "oname":Ljava/lang/String;
    .end local v29    # "pivot":Lcom/threed/jpct/SimpleVector;
    .end local v30    # "reduced":Z
    .end local v31    # "result":[Lcom/threed/jpct/Object3D;
    .end local v32    # "rotPiv":Lcom/threed/jpct/SimpleVector;
    .end local v33    # "tLen":I
    .end local v35    # "tm":Lcom/threed/jpct/TextureManager;
    .end local v37    # "vecs":Lcom/threed/jpct/Vectors;
    .end local v38    # "version":I
    :catch_1
    move-exception v7

    .line 252
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "Can\'t deserialize object: "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    invoke-static/range {v39 .. v40}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 261
    :goto_8
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 143
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "anzTri":I
    .restart local v5    # "center":Lcom/threed/jpct/SimpleVector;
    .restart local v6    # "cnt":I
    .restart local v9    # "i":I
    .restart local v11    # "ids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v16    # "length":I
    .restart local v17    # "m":Lcom/threed/jpct/Mesh;
    .restart local v18    # "mesh":Lcom/threed/jpct/Mesh;
    .restart local v19    # "nam":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v22    # "obj":Lcom/threed/jpct/Object3D;
    .restart local v26    # "oname":Ljava/lang/String;
    .restart local v29    # "pivot":Lcom/threed/jpct/SimpleVector;
    .restart local v30    # "reduced":Z
    .restart local v31    # "result":[Lcom/threed/jpct/Object3D;
    .restart local v32    # "rotPiv":Lcom/threed/jpct/SimpleVector;
    .restart local v33    # "tLen":I
    .restart local v35    # "tm":Lcom/threed/jpct/TextureManager;
    .restart local v37    # "vecs":Lcom/threed/jpct/Vectors;
    .restart local v38    # "version":I
    :cond_d
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v10

    .line 144
    .restart local v10    # "id":I
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    .line 145
    .restart local v20    # "name":Ljava/lang/String;
    invoke-static {v10}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 156
    .end local v10    # "id":I
    .end local v20    # "name":Ljava/lang/String;
    .restart local v8    # "end":I
    .restart local v13    # "lastOrg":I
    .restart local v14    # "lastTid":I
    :cond_e
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    move-object/from16 v24, v0

    .line 158
    .local v24, "objtexture":[I
    aget v27, v24, v9

    .line 160
    .local v27, "org":I
    move/from16 v0, v27

    if-ne v13, v0, :cond_10

    .line 161
    aput v14, v24, v9

    .line 154
    :cond_f
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 163
    :cond_10
    invoke-static/range {v27 .. v27}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 164
    .local v12, "key":Ljava/lang/String;
    if-eqz v12, :cond_f

    .line 165
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 166
    .local v34, "tid":Ljava/lang/Integer;
    if-eqz v34, :cond_11

    .line 167
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v39

    aput v39, v24, v9

    .line 176
    :goto_a
    move/from16 v13, v27

    .line 177
    aget v14, v24, v9

    goto :goto_9

    .line 169
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/threed/jpct/DeSerializer;->createTexture(Ljava/lang/String;)I

    move-result v10

    .line 170
    .restart local v10    # "id":I
    const/16 v39, -0x1

    move/from16 v0, v39

    if-eq v10, v0, :cond_12

    .line 171
    aput v10, v24, v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    .line 254
    .end local v4    # "anzTri":I
    .end local v5    # "center":Lcom/threed/jpct/SimpleVector;
    .end local v6    # "cnt":I
    .end local v8    # "end":I
    .end local v9    # "i":I
    .end local v10    # "id":I
    .end local v11    # "ids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "lastOrg":I
    .end local v14    # "lastTid":I
    .end local v16    # "length":I
    .end local v17    # "m":Lcom/threed/jpct/Mesh;
    .end local v18    # "mesh":Lcom/threed/jpct/Mesh;
    .end local v19    # "nam":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "obj":Lcom/threed/jpct/Object3D;
    .end local v24    # "objtexture":[I
    .end local v26    # "oname":Ljava/lang/String;
    .end local v27    # "org":I
    .end local v29    # "pivot":Lcom/threed/jpct/SimpleVector;
    .end local v30    # "reduced":Z
    .end local v31    # "result":[Lcom/threed/jpct/Object3D;
    .end local v32    # "rotPiv":Lcom/threed/jpct/SimpleVector;
    .end local v33    # "tLen":I
    .end local v34    # "tid":Ljava/lang/Integer;
    .end local v35    # "tm":Lcom/threed/jpct/TextureManager;
    .end local v37    # "vecs":Lcom/threed/jpct/Vectors;
    .end local v38    # "version":I
    :catchall_0
    move-exception v39

    .line 256
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 260
    :goto_b
    throw v39

    .line 173
    .restart local v4    # "anzTri":I
    .restart local v5    # "center":Lcom/threed/jpct/SimpleVector;
    .restart local v6    # "cnt":I
    .restart local v8    # "end":I
    .restart local v9    # "i":I
    .restart local v10    # "id":I
    .restart local v11    # "ids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "lastOrg":I
    .restart local v14    # "lastTid":I
    .restart local v16    # "length":I
    .restart local v17    # "m":Lcom/threed/jpct/Mesh;
    .restart local v18    # "mesh":Lcom/threed/jpct/Mesh;
    .restart local v19    # "nam":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v22    # "obj":Lcom/threed/jpct/Object3D;
    .restart local v24    # "objtexture":[I
    .restart local v26    # "oname":Ljava/lang/String;
    .restart local v27    # "org":I
    .restart local v29    # "pivot":Lcom/threed/jpct/SimpleVector;
    .restart local v30    # "reduced":Z
    .restart local v31    # "result":[Lcom/threed/jpct/Object3D;
    .restart local v32    # "rotPiv":Lcom/threed/jpct/SimpleVector;
    .restart local v33    # "tLen":I
    .restart local v34    # "tid":Ljava/lang/Integer;
    .restart local v35    # "tm":Lcom/threed/jpct/TextureManager;
    .restart local v37    # "vecs":Lcom/threed/jpct/Vectors;
    .restart local v38    # "version":I
    :cond_12
    :try_start_9
    const-string v39, "--dummy--"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v39

    aput v39, v24, v9

    goto :goto_a

    .line 191
    .end local v10    # "id":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v24    # "objtexture":[I
    .end local v27    # "org":I
    .end local v34    # "tid":Ljava/lang/Integer;
    .restart local v28    # "p":I
    :cond_13
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move-object/from16 v39, v0

    aget-object v23, v39, v28

    .line 192
    .local v23, "objmultiTexp":[I
    move-object/from16 v0, v23

    array-length v15, v0

    .line 194
    .local v15, "len":I
    const/4 v9, 0x0

    :goto_c
    if-lt v9, v15, :cond_14

    .line 189
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 196
    :cond_14
    aget v27, v23, v9

    .line 198
    .restart local v27    # "org":I
    move/from16 v0, v27

    if-ne v13, v0, :cond_15

    .line 199
    aput v14, v23, v9

    .line 194
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 201
    :cond_15
    invoke-static/range {v27 .. v27}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 202
    .restart local v12    # "key":Ljava/lang/String;
    if-eqz v12, :cond_16

    .line 203
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 204
    .restart local v34    # "tid":Ljava/lang/Integer;
    if-eqz v34, :cond_17

    .line 205
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v39

    aput v39, v23, v9

    .line 215
    .end local v34    # "tid":Ljava/lang/Integer;
    :cond_16
    :goto_e
    move/from16 v13, v27

    .line 216
    aget v14, v23, v9

    goto :goto_d

    .line 207
    .restart local v34    # "tid":Ljava/lang/Integer;
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/threed/jpct/DeSerializer;->createTexture(Ljava/lang/String;)I

    move-result v10

    .line 208
    .restart local v10    # "id":I
    const/16 v39, -0x1

    move/from16 v0, v39

    if-le v10, v0, :cond_18

    .line 209
    aput v10, v23, v9

    goto :goto_e

    .line 211
    :cond_18
    const/16 v39, -0x1

    aput v39, v23, v9

    goto :goto_e

    .line 242
    .end local v10    # "id":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "len":I
    .end local v23    # "objmultiTexp":[I
    .end local v27    # "org":I
    .end local v28    # "p":I
    .end local v34    # "tid":Ljava/lang/Integer;
    .restart local v3    # "anim":Lcom/threed/jpct/Animation;
    .restart local v36    # "vass":[Lcom/threed/jpct/VertexAttributes;
    :cond_19
    invoke-virtual/range {v22 .. v22}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v39

    aget-object v40, v36, v9

    invoke-virtual/range {v39 .. v40}, Lcom/threed/jpct/Mesh;->addVertexAttributes(Lcom/threed/jpct/VertexAttributes;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 241
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 257
    .end local v3    # "anim":Lcom/threed/jpct/Animation;
    .end local v4    # "anzTri":I
    .end local v5    # "center":Lcom/threed/jpct/SimpleVector;
    .end local v6    # "cnt":I
    .end local v8    # "end":I
    .end local v9    # "i":I
    .end local v11    # "ids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v13    # "lastOrg":I
    .end local v14    # "lastTid":I
    .end local v16    # "length":I
    .end local v17    # "m":Lcom/threed/jpct/Mesh;
    .end local v18    # "mesh":Lcom/threed/jpct/Mesh;
    .end local v19    # "nam":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "obj":Lcom/threed/jpct/Object3D;
    .end local v26    # "oname":Ljava/lang/String;
    .end local v29    # "pivot":Lcom/threed/jpct/SimpleVector;
    .end local v30    # "reduced":Z
    .end local v31    # "result":[Lcom/threed/jpct/Object3D;
    .end local v32    # "rotPiv":Lcom/threed/jpct/SimpleVector;
    .end local v33    # "tLen":I
    .end local v35    # "tm":Lcom/threed/jpct/TextureManager;
    .end local v36    # "vass":[Lcom/threed/jpct/VertexAttributes;
    .end local v37    # "vecs":Lcom/threed/jpct/Vectors;
    :catch_2
    move-exception v39

    goto/16 :goto_0

    .end local v38    # "version":I
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v39

    goto/16 :goto_8

    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v40

    goto :goto_b
.end method
