.class public Lcom/threed/jpct/Virtualizer;
.super Ljava/lang/Object;
.source "Virtualizer.java"


# static fields
.field private static cnt:I


# instance fields
.field private buffer:[B

.field private buffy:[B

.field private cleaned:Z

.field private ctx:Landroid/content/Context;

.field private currentSize:J

.field private maxSize:J

.field private myCnt:I

.field private virtualized:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/Virtualizer;->cnt:I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    .line 52
    iput-boolean v1, p0, Lcom/threed/jpct/Virtualizer;->cleaned:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    .line 57
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffer:[B

    .line 76
    sget v0, Lcom/threed/jpct/Virtualizer;->cnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/threed/jpct/Virtualizer;->cnt:I

    iput v0, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "sizeInMb"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/threed/jpct/Virtualizer;-><init>()V

    .line 68
    mul-int/lit16 v0, p1, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    .line 69
    return-void
.end method

.method private cleanUp(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 571
    iget-boolean v3, p0, Lcom/threed/jpct/Virtualizer;->cleaned:Z

    if-eqz v3, :cond_0

    .line 583
    :goto_0
    return-void

    .line 574
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/threed/jpct/Virtualizer;->cleaned:Z

    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 577
    .local v2, "ok":Z
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_1

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cleaned up cache ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " files): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_1
    aget-object v0, v1, v3

    .line 578
    .local v0, "file":Ljava/lang/String;
    const-string v5, "_vir_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ".dat"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 579
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 577
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private cleanUpInstanceOnly(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 586
    const-string v3, "Finalizing Virtualizer...cleaning up instance cache!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 589
    .local v2, "ok":Z
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cleaned up instance cache ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " files): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 595
    return-void

    .line 589
    :cond_0
    aget-object v0, v1, v3

    .line 590
    .local v0, "file":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_vir_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ".dat"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 591
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 589
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private readIntoBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int v2, v4, v5

    .line 303
    .local v2, "len":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 304
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-array v1, v2, [B

    .line 305
    .local v1, "content":[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 306
    .local v3, "read":I
    if-eq v3, v2, :cond_0

    .line 307
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Read file length doesn\'t match buffer length: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 310
    const/4 v1, 0x0

    check-cast v1, [B

    .line 311
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 312
    return-object v0
.end method

.method private writeInt(ILjava/io/OutputStream;Z)V
    .locals 6
    .param p1, "ii"    # I
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "alwaysBig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 534
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_1

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 536
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 537
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 538
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 546
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 541
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 542
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 543
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0
.end method

.method private writeShort(SLjava/io/OutputStream;)V
    .locals 4
    .param p1, "ii"    # S
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 549
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 551
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 557
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 554
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/threed/jpct/Virtualizer;->cleanUpInstanceOnly(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to clean up virtualizer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/threed/jpct/Virtualizer;->cleanUpInstanceOnly(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method freeHandles(Lcom/threed/jpct/Texture;)V
    .locals 3
    .param p1, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iput-object v2, p1, Lcom/threed/jpct/Texture;->texels:[I

    .line 113
    iput-object v2, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 115
    :cond_0
    return-void
.end method

.method getInputCacheStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 608
    iget-object v2, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 610
    .local v0, "dir":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-object v2

    .line 611
    :catch_0
    move-exception v1

    .line 612
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not in cache!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 613
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getOutputCacheStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 598
    iget-object v2, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 600
    .local v0, "dir":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-object v2

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Cache not available!"

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 603
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isCached(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 624
    iget-object v1, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 625
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    return v1
.end method

.method isFull()Z
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    iget-wide v2, p0, Lcom/threed/jpct/Virtualizer;->currentSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVirtual(Lcom/threed/jpct/Texture;)Z
    .locals 3
    .param p1, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 618
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 619
    .local v0, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 620
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method readFromCache(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 316
    iget-object v7, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    if-nez v7, :cond_1

    .line 317
    const-string v7, "No context set!"

    invoke-static {v7, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    move-object v0, v6

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 321
    :cond_1
    const/4 v4, 0x0

    .line 323
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 324
    .local v1, "cacheDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 326
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x800

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-direct {p0, v5}, Lcom/threed/jpct/Virtualizer;->readIntoBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 328
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Loaded "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from cache!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    if-eqz v5, :cond_0

    .line 337
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v6

    goto :goto_0

    .line 331
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to load "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    if-eqz v4, :cond_2

    .line 337
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move-object v0, v6

    .line 333
    goto :goto_0

    .line 334
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 335
    :goto_3
    if-eqz v4, :cond_3

    .line 337
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 342
    :cond_3
    :goto_4
    throw v6

    .line 335
    .restart local v1    # "cacheDir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :cond_4
    if-eqz v4, :cond_5

    .line 337
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 342
    :cond_5
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 343
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " not found in cache!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    move-object v0, v6

    .line 344
    goto/16 :goto_0

    .line 338
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_4

    .restart local v1    # "cacheDir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_4
    move-exception v7

    goto :goto_5

    .line 334
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 331
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;
    .locals 12
    .param p1, "ci"    # Lcom/threed/jpct/CompiledInstance;
    .param p3, "subName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(",
            "Lcom/threed/jpct/CompiledInstance;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v10, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    if-nez v10, :cond_0

    .line 234
    const-string v10, "No context set!"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 235
    const/4 v10, 0x0

    .line 297
    :goto_0
    return-object v10

    .line 238
    :cond_0
    const-string v0, "_bb_"

    .line 239
    .local v0, "add":Ljava/lang/String;
    const/4 v3, 0x0

    .line 240
    .local v3, "bufferType":I
    const-class v10, Ljava/nio/IntBuffer;

    invoke-virtual {v10, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 241
    const-string v0, "_ib_"

    .line 242
    const/4 v3, 0x1

    .line 244
    :cond_1
    const-class v10, Ljava/nio/FloatBuffer;

    invoke-virtual {v10, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 245
    const-string v0, "_fb_"

    .line 246
    const/4 v3, 0x2

    .line 248
    :cond_2
    const-class v10, Ljava/nio/ShortBuffer;

    invoke-virtual {v10, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 249
    const-string v0, "_sb_"

    .line 250
    const/4 v3, 0x3

    .line 253
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "_vir_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".dat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 257
    .local v9, "nv":Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    .line 259
    const/4 v5, 0x0

    .line 260
    .local v5, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 263
    .local v2, "buffer":Ljava/nio/Buffer;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Trying to restore buffer from file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 264
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/util/zip/GZIPInputStream;

    iget-object v11, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v11, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x800

    invoke-direct {v6, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-direct {p0, v6}, Lcom/threed/jpct/Virtualizer;->readIntoBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 267
    .local v1, "bb":Ljava/nio/ByteBuffer;
    packed-switch v3, :pswitch_data_0

    .line 281
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Buffer of type "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " restored from disk!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    if-eqz v6, :cond_7

    .line 287
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .line 293
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_4
    :goto_2
    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 269
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    .restart local v6    # "is":Ljava/io/InputStream;
    :pswitch_0
    move-object v2, v1

    .line 270
    goto :goto_1

    .line 272
    :pswitch_1
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 273
    goto :goto_1

    .line 275
    :pswitch_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 276
    goto :goto_1

    .line 278
    :pswitch_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    goto :goto_1

    .line 282
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 283
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to restore buffer of type "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    if-eqz v5, :cond_4

    .line 287
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 288
    :catch_1
    move-exception v10

    goto :goto_2

    .line 284
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 285
    :goto_4
    if-eqz v5, :cond_5

    .line 287
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 292
    :cond_5
    :goto_5
    throw v10

    .line 288
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v10

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 296
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "buffer":Ljava/nio/Buffer;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Buffer data with name "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 297
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 288
    .restart local v2    # "buffer":Ljava/nio/Buffer;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v11

    goto :goto_5

    .line 284
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 282
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_7
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method restore(Lcom/threed/jpct/Texture;)Z
    .locals 12
    .param p1, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    .line 123
    iget-object v10, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    if-nez v10, :cond_0

    .line 124
    const-string v10, "No context set!"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 125
    const/4 v10, 0x0

    .line 177
    :goto_0
    return v10

    .line 128
    :cond_0
    const/4 v3, 0x0

    .line 132
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 133
    .local v5, "key":Ljava/lang/Integer;
    iget-object v10, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .local v6, "name":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 169
    if-eqz v3, :cond_1

    .line 171
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :cond_1
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 138
    :cond_2
    :try_start_2
    const-string v10, "_z_.dat"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 140
    .local v9, "zipped":Z
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    const/16 v11, 0x800

    invoke-direct {v4, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 143
    .local v1, "cnt":I
    :try_start_3
    iget v10, p1, Lcom/threed/jpct/Texture;->height:I

    iget v11, p1, Lcom/threed/jpct/Texture;->width:I

    mul-int v7, v10, v11

    .line 144
    .local v7, "size":I
    if-nez v9, :cond_3

    .line 145
    mul-int/lit8 v7, v7, 0x4

    .line 148
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 150
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :cond_4
    iget-object v10, p0, Lcom/threed/jpct/Virtualizer;->buffer:[B

    invoke-virtual {v4, v10}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 151
    const/4 v10, -0x1

    if-eq v1, v10, :cond_5

    .line 152
    iget-object v10, p0, Lcom/threed/jpct/Virtualizer;->buffer:[B

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 154
    :cond_5
    const/4 v10, -0x1

    if-gt v1, v10, :cond_4

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 158
    .local v8, "texels":[B
    if-eqz v9, :cond_7

    .line 159
    iput-object v8, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 164
    :goto_2
    const-string v10, "Retrieved texture data from disk!"

    invoke-static {v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    if-eqz v4, :cond_6

    .line 171
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 177
    :cond_6
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 161
    :cond_7
    :try_start_5
    invoke-static {v8}, Lcom/threed/jpct/ZipHelper;->byteArrayToInt([B)[I

    move-result-object v10

    iput-object v10, p1, Lcom/threed/jpct/Texture;->texels:[I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 165
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "size":I
    .end local v8    # "texels":[B
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 166
    .end local v1    # "cnt":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "key":Ljava/lang/Integer;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "zipped":Z
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to restore texture: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    if-eqz v3, :cond_8

    .line 171
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 167
    :cond_8
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 168
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 169
    :goto_6
    if-eqz v3, :cond_9

    .line 171
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 176
    :cond_9
    :goto_7
    throw v10

    .line 172
    .restart local v5    # "key":Ljava/lang/Integer;
    .restart local v6    # "name":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v5    # "key":Ljava/lang/Integer;
    .end local v6    # "name":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_5

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto :goto_7

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "cnt":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "key":Ljava/lang/Integer;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "size":I
    .restart local v8    # "texels":[B
    .restart local v9    # "zipped":Z
    :catch_4
    move-exception v10

    goto :goto_3

    .line 168
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "size":I
    .end local v8    # "texels":[B
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 165
    .end local v1    # "cnt":I
    .end local v5    # "key":Ljava/lang/Integer;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "zipped":Z
    :catch_5
    move-exception v2

    goto :goto_4
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    .line 89
    :try_start_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/Virtualizer;->cleanUp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z
    .locals 27
    .param p1, "ci"    # Lcom/threed/jpct/CompiledInstance;
    .param p2, "buffer"    # Ljava/nio/Buffer;
    .param p3, "subName"    # Ljava/lang/String;

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 424
    const-string v23, "No context set!"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 425
    const/16 v23, 0x0

    .line 530
    :goto_0
    return v23

    .line 428
    :cond_0
    if-nez p2, :cond_1

    .line 429
    const/16 v23, 0x0

    goto :goto_0

    .line 432
    :cond_1
    const/16 v20, 0x0

    .line 434
    .local v20, "os":Ljava/io/OutputStream;
    const-string v4, "_bb_"

    .line 435
    .local v4, "add":Ljava/lang/String;
    const/4 v6, 0x0

    .line 436
    .local v6, "bufferType":I
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/IntBuffer;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 437
    const-string v4, "_ib_"

    .line 438
    const/4 v6, 0x1

    .line 440
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/FloatBuffer;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 441
    const-string v4, "_fb_"

    .line 442
    const/4 v6, 0x2

    .line 444
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/ShortBuffer;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 445
    const-string v4, "_sb_"

    .line 446
    const/4 v6, 0x3

    .line 449
    :cond_4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 450
    .local v16, "key":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "_vir_"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".dat"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 452
    .local v18, "name":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/threed/jpct/Virtualizer;->cleanUp(Landroid/content/Context;)V

    .line 453
    new-instance v21, Ljava/io/BufferedOutputStream;

    new-instance v23, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v24, 0x800

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .end local v20    # "os":Ljava/io/OutputStream;
    .local v21, "os":Ljava/io/OutputStream;
    const/16 v17, 0x0

    .line 456
    .local v17, "len":I
    packed-switch v6, :pswitch_data_0

    .line 505
    :goto_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    .line 507
    .local v13, "hkey":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 508
    .local v19, "nv":Ljava/lang/String;
    if-nez v19, :cond_5

    .line 509
    const-string v19, ""

    .line 512
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Stored buffer of type "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " on disk ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " bytes / "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    if-eqz v21, :cond_6

    .line 524
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 530
    :cond_6
    :goto_2
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 458
    .end local v13    # "hkey":I
    .end local v19    # "nv":Ljava/lang/String;
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v5, v0

    .line 459
    .local v5, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v23

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 460
    .local v7, "data":[B
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 461
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 462
    array-length v0, v7

    move/from16 v17, v0

    .line 463
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    .line 464
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 465
    const/4 v7, 0x0

    check-cast v7, [B

    .line 466
    goto/16 :goto_1

    .line 468
    .end local v5    # "bb":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[B
    :pswitch_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/nio/IntBuffer;

    move-object v15, v0

    .line 469
    .local v15, "ib":Ljava/nio/IntBuffer;
    invoke-virtual {v15}, Ljava/nio/IntBuffer;->limit()I

    move-result v23

    move/from16 v0, v23

    new-array v9, v0, [I

    .line 470
    .local v9, "datai":[I
    invoke-virtual {v15}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 471
    invoke-virtual {v15, v9}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 472
    array-length v0, v9

    move/from16 v23, v0

    shl-int/lit8 v17, v23, 0x2

    .line 473
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    .line 474
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v14, v0, :cond_7

    .line 477
    const/4 v9, 0x0

    check-cast v9, [I

    .line 478
    goto/16 :goto_1

    .line 475
    :cond_7
    aget v23, v9, v14

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    .line 474
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 480
    .end local v9    # "datai":[I
    .end local v14    # "i":I
    .end local v15    # "ib":Ljava/nio/IntBuffer;
    :pswitch_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/nio/FloatBuffer;

    move-object v12, v0

    .line 481
    .local v12, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->limit()I

    move-result v23

    move/from16 v0, v23

    new-array v8, v0, [F

    .line 482
    .local v8, "dataf":[F
    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 483
    invoke-virtual {v12, v8}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 484
    array-length v0, v8

    move/from16 v23, v0

    shl-int/lit8 v17, v23, 0x2

    .line 485
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    .line 486
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    array-length v0, v8

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v14, v0, :cond_8

    .line 489
    const/4 v8, 0x0

    check-cast v8, [F

    .line 490
    goto/16 :goto_1

    .line 487
    :cond_8
    aget v23, v8, v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    .line 486
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 492
    .end local v8    # "dataf":[F
    .end local v12    # "fb":Ljava/nio/FloatBuffer;
    .end local v14    # "i":I
    :pswitch_3
    move-object/from16 v0, p2

    check-cast v0, Ljava/nio/ShortBuffer;

    move-object/from16 v22, v0

    .line 493
    .local v22, "sb":Ljava/nio/ShortBuffer;
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ShortBuffer;->limit()I

    move-result v23

    move/from16 v0, v23

    new-array v10, v0, [S

    .line 494
    .local v10, "datas":[S
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 495
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 496
    array-length v0, v10

    move/from16 v23, v0

    shl-int/lit8 v17, v23, 0x1

    .line 497
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    .line 498
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v14, v0, :cond_9

    .line 501
    const/16 v23, 0x0

    check-cast v23, [S

    goto/16 :goto_1

    .line 499
    :cond_9
    aget-short v23, v10, v14

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/Virtualizer;->writeShort(SLjava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 498
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 515
    .end local v10    # "datas":[S
    .end local v14    # "i":I
    .end local v17    # "len":I
    .end local v21    # "os":Ljava/io/OutputStream;
    .end local v22    # "sb":Ljava/nio/ShortBuffer;
    .restart local v20    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v11

    .line 516
    .local v11, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_4
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Unable to virtualize buffer of type "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 517
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 518
    invoke-static {v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 522
    :cond_a
    if-eqz v20, :cond_b

    .line 524
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 520
    :cond_b
    :goto_7
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 521
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    .line 522
    :goto_8
    if-eqz v20, :cond_c

    .line 524
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 529
    :cond_c
    :goto_9
    throw v23

    .line 525
    .restart local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v23

    goto :goto_7

    .end local v11    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v24

    goto :goto_9

    .end local v20    # "os":Ljava/io/OutputStream;
    .restart local v13    # "hkey":I
    .restart local v17    # "len":I
    .restart local v19    # "nv":Ljava/lang/String;
    .restart local v21    # "os":Ljava/io/OutputStream;
    :catch_3
    move-exception v23

    goto/16 :goto_2

    .line 521
    .end local v13    # "hkey":I
    .end local v19    # "nv":Ljava/lang/String;
    :catchall_1
    move-exception v23

    move-object/from16 v20, v21

    .end local v21    # "os":Ljava/io/OutputStream;
    .restart local v20    # "os":Ljava/io/OutputStream;
    goto :goto_8

    .line 515
    .end local v20    # "os":Ljava/io/OutputStream;
    .restart local v21    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v11

    move-object/from16 v20, v21

    .end local v21    # "os":Ljava/io/OutputStream;
    .restart local v20    # "os":Ljava/io/OutputStream;
    goto :goto_6

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method store(Lcom/threed/jpct/Texture;)Z
    .locals 13
    .param p1, "tex"    # Lcom/threed/jpct/Texture;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 182
    iget-object v9, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    if-nez v9, :cond_1

    .line 183
    const-string v8, "No context set!"

    invoke-static {v8, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 229
    :cond_0
    :goto_0
    return v7

    .line 187
    :cond_1
    iget-object v9, p1, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v9, :cond_2

    iget-object v9, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-eqz v9, :cond_0

    .line 191
    :cond_2
    const/4 v3, 0x0

    .line 193
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/threed/jpct/Virtualizer;->cleanUp(Landroid/content/Context;)V

    .line 195
    const/4 v6, 0x1

    .line 196
    .local v6, "zipped":Z
    iget-object v5, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 198
    .local v5, "texels":[B
    if-nez v5, :cond_3

    .line 199
    iget-object v9, p1, Lcom/threed/jpct/Texture;->texels:[I

    invoke-static {v9}, Lcom/threed/jpct/ZipHelper;->intToByteArray([I)[B

    move-result-object v5

    .line 200
    const/4 v6, 0x0

    .line 203
    :cond_3
    iget-wide v9, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    iget-wide v9, p0, Lcom/threed/jpct/Virtualizer;->currentSize:J

    array-length v11, v5

    int-to-long v11, v11

    add-long/2addr v9, v11

    iget-wide v11, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    .line 204
    const-string v8, "Maximum disk space f\u00fcr virtual textures exceeded!"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    if-eqz v3, :cond_0

    .line 223
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v8

    goto :goto_0

    .line 207
    :cond_4
    :try_start_2
    iget-wide v9, p0, Lcom/threed/jpct/Virtualizer;->currentSize:J

    array-length v11, v5

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/threed/jpct/Virtualizer;->currentSize:J

    .line 209
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 210
    .local v1, "key":Ljava/lang/Integer;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_vir_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v6, :cond_6

    const-string v9, "_z_"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".dat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v9, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    const/16 v10, 0x800

    invoke-direct {v4, v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    .end local v3    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 213
    iget-object v9, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/threed/jpct/Texture;->texels:[I

    .line 215
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 216
    const-string v9, "Stored texture data on disk!"

    invoke-static {v9}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    if-eqz v4, :cond_5

    .line 223
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_2
    move v7, v8

    .line 229
    goto/16 :goto_0

    .line 210
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :cond_6
    :try_start_5
    const-string v9, "_n_"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 217
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v5    # "texels":[B
    .end local v6    # "zipped":Z
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to virtualize texture: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 221
    if-eqz v3, :cond_0

    .line 223
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 224
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 221
    :goto_4
    if-eqz v3, :cond_7

    .line 223
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 228
    :cond_7
    :goto_5
    throw v7

    .line 224
    :catch_3
    move-exception v8

    goto :goto_5

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v1    # "key":Ljava/lang/Integer;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "texels":[B
    .restart local v6    # "zipped":Z
    :catch_4
    move-exception v7

    goto :goto_2

    .line 220
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_4

    .line 217
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method storeInCache(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z
    .locals 19
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 349
    const-string v16, "No context set!"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 350
    const/16 v16, 0x0

    .line 419
    :goto_0
    return v16

    .line 353
    :cond_0
    if-nez p1, :cond_1

    .line 354
    const/16 v16, 0x0

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 358
    const/4 v14, 0x0

    .line 361
    .local v14, "os":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 362
    .local v3, "cacheDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 364
    .local v8, "files":[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v7, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v16, Lcom/threed/jpct/Virtualizer$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/threed/jpct/Virtualizer$1;-><init>(Lcom/threed/jpct/Virtualizer;)V

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 372
    const-wide/16 v10, 0x0

    .line 373
    .local v10, "length":J
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_6

    .line 379
    const-wide/32 v12, 0x500000

    .line 381
    .local v12, "maxSize":J
    cmp-long v16, v10, v12

    if-lez v16, :cond_4

    .line 382
    const-string v16, "Purging cache directory!"

    invoke-static/range {v16 .. v16}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 383
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_7

    .line 394
    :cond_4
    new-instance v15, Ljava/io/BufferedOutputStream;

    new-instance v16, Ljava/io/FileOutputStream;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v17, 0x800

    invoke-direct/range {v15 .. v17}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v14    # "os":Ljava/io/OutputStream;
    .local v15, "os":Ljava/io/OutputStream;
    move-object/from16 v2, p1

    .line 396
    .local v2, "bb":Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v16

    move/from16 v0, v16

    new-array v4, v0, [B

    .line 397
    .local v4, "data":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 398
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 399
    array-length v9, v4

    .line 400
    .local v9, "len":I
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v9, v15, v1}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    .line 401
    invoke-virtual {v15, v4}, Ljava/io/OutputStream;->write([B)V

    .line 402
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    if-eqz v15, :cond_5

    .line 412
    :try_start_2
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 418
    :cond_5
    :goto_3
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Stored "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " in cache!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 419
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 373
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v4    # "data":[B
    .end local v9    # "len":I
    .end local v12    # "maxSize":J
    .end local v15    # "os":Ljava/io/OutputStream;
    .restart local v14    # "os":Ljava/io/OutputStream;
    :cond_6
    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 374
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_2

    .line 375
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v17

    add-long v10, v10, v17

    goto/16 :goto_1

    .line 383
    .end local v6    # "file":Ljava/io/File;
    .restart local v12    # "maxSize":J
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 384
    .restart local v6    # "file":Ljava/io/File;
    cmp-long v17, v10, v12

    if-ltz v17, :cond_4

    .line 387
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_3

    .line 388
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v17

    sub-long v10, v10, v17

    .line 389
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 403
    .end local v3    # "cacheDir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v8    # "files":[Ljava/io/File;
    .end local v10    # "length":J
    .end local v12    # "maxSize":J
    :catch_0
    move-exception v5

    .line 404
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Unable to cache buffer: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 405
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 406
    invoke-static {v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 410
    :cond_8
    if-eqz v14, :cond_9

    .line 412
    :try_start_5
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 408
    :cond_9
    :goto_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 409
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 410
    :goto_6
    if-eqz v14, :cond_a

    .line 412
    :try_start_6
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 417
    :cond_a
    :goto_7
    throw v16

    .line 413
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v16

    goto :goto_5

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v17

    goto :goto_7

    .end local v14    # "os":Ljava/io/OutputStream;
    .restart local v2    # "bb":Ljava/nio/ByteBuffer;
    .restart local v3    # "cacheDir":Ljava/io/File;
    .restart local v4    # "data":[B
    .restart local v7    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v8    # "files":[Ljava/io/File;
    .restart local v9    # "len":I
    .restart local v10    # "length":J
    .restart local v12    # "maxSize":J
    .restart local v15    # "os":Ljava/io/OutputStream;
    :catch_3
    move-exception v16

    goto/16 :goto_3

    .line 409
    .end local v4    # "data":[B
    .end local v9    # "len":I
    :catchall_1
    move-exception v16

    move-object v14, v15

    .end local v15    # "os":Ljava/io/OutputStream;
    .restart local v14    # "os":Ljava/io/OutputStream;
    goto :goto_6

    .line 403
    .end local v14    # "os":Ljava/io/OutputStream;
    .restart local v15    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v5

    move-object v14, v15

    .end local v15    # "os":Ljava/io/OutputStream;
    .restart local v14    # "os":Ljava/io/OutputStream;
    goto :goto_4
.end method
