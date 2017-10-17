.class Lcom/threed/jpct/ZipHelper;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# static fields
.field private static buffer:[B

.field private static myOutput:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/threed/jpct/ZipHelper;->buffer:[B

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/ZipHelper;->myOutput:Ljava/io/ByteArrayOutputStream;

    .line 14
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buffer([II)I
    .locals 8
    .param p0, "data"    # [I
    .param p1, "pos"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "cnt":I
    sget-object v6, Lcom/threed/jpct/ZipHelper;->buffer:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x2

    array-length v7, p0

    sub-int/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v2, v6, p1

    .line 88
    .local v2, "end":I
    const/4 v4, 0x0

    .line 89
    .local v4, "ii":I
    move v3, p1

    .local v3, "i":I
    move v1, v0

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 97
    return v4

    .line 90
    :cond_0
    aget v5, p0, v3

    .line 91
    .local v5, "vali":I
    sget-object v6, Lcom/threed/jpct/ZipHelper;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    ushr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    .line 92
    sget-object v6, Lcom/threed/jpct/ZipHelper;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    ushr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 93
    sget-object v6, Lcom/threed/jpct/ZipHelper;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    .line 94
    sget-object v6, Lcom/threed/jpct/ZipHelper;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    int-to-byte v7, v5

    aput-byte v7, v6, v0

    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static byteArrayToInt([B)[I
    .locals 7
    .param p0, "b"    # [B

    .prologue
    .line 115
    array-length v6, p0

    add-int/lit8 v6, v6, 0x3

    shr-int/lit8 v6, v6, 0x2

    new-array v2, v6, [I

    .line 116
    .local v2, "data":[I
    const/4 v0, 0x0

    .line 117
    .local v0, "cnt":I
    array-length v3, p0

    .line 118
    .local v3, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v1, v0

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 131
    return-object v2

    .line 119
    :cond_0
    aget-byte v6, p0, v4

    shl-int/lit8 v5, v6, 0x18

    .line 120
    .local v5, "val":I
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_1

    .line 121
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    .line 123
    :cond_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_2

    .line 124
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 126
    :cond_2
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_3

    .line 127
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 129
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    aput v5, v2, v1

    .line 118
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_0
.end method

.method private static checkBuffer()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/threed/jpct/ZipHelper;->myOutput:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sput-object v0, Lcom/threed/jpct/ZipHelper;->myOutput:Ljava/io/ByteArrayOutputStream;

    .line 55
    :cond_0
    return-void
.end method

.method public static intToByteArray([I)[B
    .locals 7
    .param p0, "value"    # [I

    .prologue
    .line 101
    array-length v6, p0

    shl-int/lit8 v6, v6, 0x2

    new-array v2, v6, [B

    .line 102
    .local v2, "data":[B
    const/4 v0, 0x0

    .line 103
    .local v0, "cnt":I
    array-length v3, p0

    .line 104
    .local v3, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v1, v0

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 111
    return-object v2

    .line 105
    :cond_0
    aget v5, p0, v4

    .line 106
    .local v5, "vali":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    ushr-int/lit8 v6, v5, 0x18

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    .line 107
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    ushr-int/lit8 v6, v5, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    .line 108
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    ushr-int/lit8 v6, v5, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    .line 109
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    int-to-byte v6, v5

    aput-byte v6, v2, v0

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized unzip([B)[I
    .locals 12
    .param p0, "zipped"    # [B

    .prologue
    .line 20
    const-class v9, Lcom/threed/jpct/ZipHelper;

    monitor-enter v9

    move-object v3, p0

    .line 21
    .local v3, "data":[B
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 22
    .local v5, "start":J
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 23
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lcom/threed/jpct/ZipHelper;->checkBuffer()V

    .line 24
    sget-object v1, Lcom/threed/jpct/ZipHelper;->myOutput:Ljava/io/ByteArrayOutputStream;

    .line 25
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .local v7, "zis":Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 30
    .local v2, "cnt":I
    :cond_0
    sget-object v8, Lcom/threed/jpct/ZipHelper;->buffer:[B

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    .line 31
    const/4 v8, -0x1

    if-eq v2, v8, :cond_1

    .line 32
    sget-object v8, Lcom/threed/jpct/ZipHelper;->buffer:[B

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v10, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 34
    :cond_1
    if-gez v2, :cond_0

    .line 35
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Uncompressed "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, p0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " bytes to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " bytes in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "ms!"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    invoke-static {v8, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 44
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    sget v10, Lcom/threed/jpct/Config;->byteBufferLimit:I

    if-le v8, v10, :cond_3

    .line 45
    const/4 v8, 0x0

    sput-object v8, Lcom/threed/jpct/ZipHelper;->myOutput:Ljava/io/ByteArrayOutputStream;

    .line 47
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/threed/jpct/ZipHelper;->byteArrayToInt([B)[I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    monitor-exit v9

    return-object v8

    .line 36
    .end local v2    # "cnt":I
    .end local v7    # "zis":Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v4

    .line 37
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "start":J
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static declared-synchronized zip([I)[B
    .locals 9
    .param p0, "unzipped"    # [I

    .prologue
    .line 58
    const-class v6, Lcom/threed/jpct/ZipHelper;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/threed/jpct/ZipHelper;->checkBuffer()V

    .line 59
    sget-object v0, Lcom/threed/jpct/ZipHelper;->myOutput:Ljava/io/ByteArrayOutputStream;

    .line 60
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    .local v4, "zos":Ljava/util/zip/GZIPOutputStream;
    const/4 v3, 0x0

    .line 64
    .local v3, "pos":I
    const/4 v1, 0x0

    .line 65
    .local v1, "cur":I
    :goto_0
    invoke-static {p0, v3}, Lcom/threed/jpct/ZipHelper;->buffer([II)I

    move-result v1

    if-gtz v1, :cond_2

    .line 69
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Compressed "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, p0

    shl-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bytes to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bytes!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    sget v7, Lcom/threed/jpct/Config;->byteBufferLimit:I

    if-le v5, v7, :cond_1

    .line 80
    const/4 v5, 0x0

    sput-object v5, Lcom/threed/jpct/ZipHelper;->myOutput:Ljava/io/ByteArrayOutputStream;

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 66
    :cond_2
    :try_start_3
    sget-object v5, Lcom/threed/jpct/ZipHelper;->buffer:[B

    const/4 v7, 0x0

    shl-int/lit8 v8, v1, 0x2

    invoke-virtual {v4, v5, v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    add-int/2addr v3, v1

    goto :goto_0

    .line 71
    .end local v1    # "cur":I
    .end local v3    # "pos":I
    .end local v4    # "zos":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
