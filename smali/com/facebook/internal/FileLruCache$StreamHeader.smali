.class final Lcom/facebook/internal/FileLruCache$StreamHeader;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamHeader"
.end annotation


# static fields
.field private static final HEADER_VERSION:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 17
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 355
    .local v12, "version":I
    if-eqz v12, :cond_0

    .line 356
    const/4 v4, 0x0

    .line 398
    :goto_0
    return-object v4

    .line 359
    :cond_0
    const/4 v6, 0x0

    .line 360
    .local v6, "headerSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v13, 0x3

    if-ge v8, v13, :cond_2

    .line 361
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 362
    .local v1, "b":I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_1

    .line 363
    sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    const-string v15, "readHeader: stream.read returned -1 while reading header size"

    invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v4, 0x0

    goto :goto_0

    .line 367
    :cond_1
    shl-int/lit8 v6, v6, 0x8

    .line 368
    and-int/lit16 v13, v1, 0xff

    add-int/2addr v6, v13

    .line 360
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 371
    .end local v1    # "b":I
    :cond_2
    new-array v5, v6, [B

    .line 372
    .local v5, "headerBytes":[B
    const/4 v2, 0x0

    .line 373
    .local v2, "count":I
    :goto_2
    array-length v13, v5

    if-ge v2, v13, :cond_4

    .line 374
    array-length v13, v5

    sub-int/2addr v13, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 375
    .local v10, "readCount":I
    const/4 v13, 0x1

    if-ge v10, v13, :cond_3

    .line 376
    sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "readHeader: stream.read stopped at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " when expected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v5

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v4, 0x0

    goto :goto_0

    .line 381
    :cond_3
    add-int/2addr v2, v10

    .line 382
    goto :goto_2

    .line 384
    .end local v10    # "readCount":I
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    .line 385
    .local v7, "headerString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 386
    .local v4, "header":Lorg/json/JSONObject;
    new-instance v11, Lorg/json/JSONTokener;

    invoke-direct {v11, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 388
    .local v11, "tokener":Lorg/json/JSONTokener;
    :try_start_0
    invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v9

    .line 389
    .local v9, "parsed":Ljava/lang/Object;
    instance-of v13, v9, Lorg/json/JSONObject;

    if-nez v13, :cond_5

    .line 390
    sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "readHeader: expected JSONObject, got "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 393
    :cond_5
    move-object v0, v9

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 394
    .end local v9    # "parsed":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 395
    .local v3, "e":Lorg/json/JSONException;
    new-instance v13, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method static writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/OutputStream;
    .param p1, "header"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "headerString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 345
    .local v0, "headerBytes":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 346
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 347
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 348
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 350
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 351
    return-void
.end method
