.class public Lcom/fabzat/shop/manager/FZFileManager;
.super Ljava/lang/Object;
.source "FZFileManager.java"


# static fields
.field private static BUFFER_SIZE:I = 0x0

.field public static final FOLDER_SEPARATOR:Ljava/lang/String; = "/"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/fabzat/shop/manager/FZFileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/manager/FZFileManager;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0x400

    sput v0, Lcom/fabzat/shop/manager/FZFileManager;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    new-instance v7, Lcom/fabzat/shop/dao/connection/FZSSLHelper;

    invoke-direct {v7}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;-><init>()V

    invoke-virtual {v7, p1}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->getSimpleHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 241
    .local v3, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x12e

    if-ne v7, v8, :cond_0

    .line 242
    const-string v7, "location"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/fabzat/shop/manager/FZFileManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 270
    .end local v3    # "http":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v6

    .line 244
    .restart local v3    # "http":Ljava/net/HttpURLConnection;
    :cond_0
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fabzat/shop/manager/FZFileManager;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v6, "outputFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 248
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 249
    .local v4, "input":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 251
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 254
    .local v1, "data":[B
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "count":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    .line 257
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 258
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 259
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 262
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v3    # "http":Ljava/net/HttpURLConnection;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "outputFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 270
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 255
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v3    # "http":Ljava/net/HttpURLConnection;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v6    # "outputFile":Ljava/io/File;
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v1, v7, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 265
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v3    # "http":Ljava/net/HttpURLConnection;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "outputFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 267
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static a(Ljava/io/File;)V
    .locals 4
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 94
    return-void

    .line 87
    :cond_1
    aget-object v0, v2, v1

    .line 89
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 90
    invoke-static {v0}, Lcom/fabzat/shop/manager/FZFileManager;->a(Ljava/io/File;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 348
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 351
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 353
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-gtz v2, :cond_0

    .line 356
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 357
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 358
    return-void

    .line 354
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;[Ljava/io/File;)V
    .locals 16
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .local v11, "tempFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 448
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 450
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    .line 451
    .local v10, "renameOk":Z
    if-nez v10, :cond_0

    .line 453
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "could not rename the file "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 455
    :cond_0
    const/16 v13, 0x400

    new-array v1, v13, [B

    .line 457
    .local v1, "buf":[B
    new-instance v12, Ljava/util/zip/ZipInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 458
    .local v12, "zin":Ljava/util/zip/ZipInputStream;
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v13}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 460
    .local v9, "out":Ljava/util/zip/ZipOutputStream;
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 461
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    if-nez v2, :cond_1

    .line 482
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V

    .line 484
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v13, v0

    if-lt v4, v13, :cond_6

    .line 498
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 499
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 500
    return-void

    .line 462
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x1

    .line 464
    .local v8, "notInFiles":Z
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v13, 0x0

    :goto_2
    if-lt v13, v14, :cond_3

    .line 470
    :goto_3
    if-eqz v8, :cond_2

    .line 472
    new-instance v13, Ljava/util/zip/ZipEntry;

    invoke-direct {v13, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 475
    :goto_4
    invoke-virtual {v12, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    if-gtz v6, :cond_5

    .line 479
    .end local v6    # "len":I
    :cond_2
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    goto :goto_0

    .line 464
    :cond_3
    aget-object v3, p2, v13

    .line 465
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 466
    const/4 v8, 0x0

    .line 467
    goto :goto_3

    .line 464
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 476
    .end local v3    # "f":Ljava/io/File;
    .restart local v6    # "len":I
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v9, v1, v13, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_4

    .line 485
    .end local v6    # "len":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "notInFiles":Z
    .restart local v4    # "i":I
    :cond_6
    new-instance v5, Ljava/io/FileInputStream;

    aget-object v13, p2, v4

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 487
    .local v5, "in":Ljava/io/InputStream;
    new-instance v13, Ljava/util/zip/ZipEntry;

    aget-object v14, p2, v4

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 490
    :goto_5
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .restart local v6    # "len":I
    if-gtz v6, :cond_7

    .line 494
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 495
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 491
    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v9, v1, v13, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_5
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;)V
    .locals 18
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "dstFolder"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fabzat/shop/dao/connection/FZOnProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    :try_start_0
    new-instance v14, Lcom/fabzat/shop/dao/connection/FZSSLHelper;

    invoke-direct {v14}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->getSimpleHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 286
    .local v7, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    const/16 v15, 0x12e

    if-ne v14, v15, :cond_0

    .line 288
    const-string v14, "location"

    invoke-virtual {v7, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v14, v1, v2}, Lcom/fabzat/shop/manager/FZFileManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;)V

    .line 338
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v6, "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 296
    new-instance v10, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/fabzat/shop/manager/FZFileManager;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v6, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    .local v10, "outputFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    .line 300
    .local v13, "total":I
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 301
    .local v8, "input":Ljava/io/InputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 303
    .local v9, "output":Ljava/io/OutputStream;
    const/16 v14, 0x400

    new-array v4, v14, [B

    .line 305
    .local v4, "data":[B
    const/4 v12, 0x0

    .line 306
    .local v12, "progress":I
    const/4 v11, 0x0

    .line 309
    .local v11, "percent":I
    if-eqz p3, :cond_1

    .line 310
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lcom/fabzat/shop/dao/connection/FZOnProgressListener;->onUpdateProgress(I)V

    .line 312
    :cond_1
    :goto_1
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v14, -0x1

    if-ne v3, v14, :cond_2

    .line 322
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 323
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 324
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 326
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "folder":Ljava/io/File;
    .end local v7    # "http":Ljava/net/HttpURLConnection;
    .end local v8    # "input":Ljava/io/InputStream;
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .end local v11    # "percent":I
    .end local v12    # "progress":I
    .end local v13    # "total":I
    :catch_0
    move-exception v5

    .line 328
    .local v5, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 330
    throw v5

    .line 313
    .end local v5    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "folder":Ljava/io/File;
    .restart local v7    # "http":Ljava/net/HttpURLConnection;
    .restart local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v10    # "outputFile":Ljava/io/File;
    .restart local v11    # "percent":I
    .restart local v12    # "progress":I
    .restart local v13    # "total":I
    :cond_2
    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v9, v4, v14, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 314
    add-int/2addr v12, v3

    .line 317
    if-eqz p3, :cond_1

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    int-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v14, v14

    div-int/2addr v14, v13

    if-eq v11, v14, :cond_1

    .line 318
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    int-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v14, v14

    div-int v11, v14, v13

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/fabzat/shop/dao/connection/FZOnProgressListener;->onUpdateProgress(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 331
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "folder":Ljava/io/File;
    .end local v7    # "http":Ljava/net/HttpURLConnection;
    .end local v8    # "input":Ljava/io/InputStream;
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .end local v11    # "percent":I
    .end local v12    # "progress":I
    .end local v13    # "total":I
    :catch_1
    move-exception v5

    .line 333
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 335
    throw v5
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .param p2, "zipFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 505
    .local v6, "origin":Ljava/io/BufferedInputStream;
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 509
    .local v8, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    sget v9, Lcom/fabzat/shop/manager/FZFileManager;->BUFFER_SIZE:I

    new-array v1, v9, [B

    .line 511
    .local v1, "data":[B
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    move-object v7, v6

    .end local v6    # "origin":Ljava/io/BufferedInputStream;
    .local v7, "origin":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v10

    if-nez v10, :cond_0

    .line 540
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 542
    return-void

    .line 511
    :cond_0
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 513
    .local v5, "fname":Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 514
    .local v4, "fi":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    sget v10, Lcom/fabzat/shop/manager/FZFileManager;->BUFFER_SIZE:I

    invoke-direct {v6, v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 518
    .end local v7    # "origin":Ljava/io/BufferedInputStream;
    .restart local v6    # "origin":Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 521
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    :try_start_4
    invoke-virtual {v8, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 525
    :goto_1
    const/4 v10, 0x0

    sget v11, Lcom/fabzat/shop/manager/FZFileManager;->BUFFER_SIZE:I

    invoke-virtual {v6, v1, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    .local v0, "count":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 535
    .end local v0    # "count":I
    :goto_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v7, v6

    .end local v6    # "origin":Ljava/io/BufferedInputStream;
    .restart local v7    # "origin":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 526
    .end local v7    # "origin":Ljava/io/BufferedInputStream;
    .restart local v0    # "count":I
    .restart local v6    # "origin":Ljava/io/BufferedInputStream;
    :cond_1
    const/4 v10, 0x0

    :try_start_6
    invoke-virtual {v8, v1, v10, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 528
    .end local v0    # "count":I
    :catch_0
    move-exception v2

    .line 529
    .local v2, "e":Ljava/util/zip/ZipException;
    :try_start_7
    sget-object v10, Lcom/fabzat/shop/manager/FZFileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Skipping file "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 534
    .end local v2    # "e":Ljava/util/zip/ZipException;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v9

    .line 535
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 536
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 539
    .end local v1    # "data":[B
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v5    # "fname":Ljava/lang/String;
    :catchall_1
    move-exception v9

    .line 540
    :goto_3
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 541
    throw v9

    .line 539
    .end local v6    # "origin":Ljava/io/BufferedInputStream;
    .restart local v1    # "data":[B
    .restart local v7    # "origin":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "origin":Ljava/io/BufferedInputStream;
    .restart local v6    # "origin":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "folder"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 369
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v2, "root":Ljava/io/File;
    new-instance v0, Lcom/fabzat/shop/manager/FZFileManager$1;

    invoke-direct {v0, p1}, Lcom/fabzat/shop/manager/FZFileManager$1;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "filefilter":Ljava/io/FilenameFilter;
    invoke-virtual {v2, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "files":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 384
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 387
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static deleteMainFolderContent()V
    .locals 7

    .prologue
    .line 65
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->getFolderPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "mainFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 75
    .local v0, "f":Ljava/io/File;
    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    invoke-static {v0}, Lcom/fabzat/shop/manager/FZFileManager;->a(Ljava/io/File;)V

    .line 74
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getCacheFolderPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->getFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "splits":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static getFolderPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    const-string v1, "Fabzat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMtlPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folder"    # Ljava/lang/String;

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mtl"

    invoke-static {p0, v1}, Lcom/fabzat/shop/manager/FZFileManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getObjPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folder"    # Ljava/lang/String;

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".obj"

    invoke-static {p0, v1}, Lcom/fabzat/shop/manager/FZFileManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadFolderPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->getFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_upload_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public downloadOrCopy(Landroid/content/Context;Lcom/fabzat/shop/model/FZ3DResource;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Lcom/fabzat/shop/model/FZ3DResource;
    .param p3, "listener"    # Lcom/fabzat/shop/dao/connection/FZOnProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p2}, Lcom/fabzat/shop/model/FZ3DResource;->isPathRemote()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {p2}, Lcom/fabzat/shop/model/FZ3DResource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/fabzat/shop/manager/FZFileManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;)V

    .line 227
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Lcom/fabzat/shop/model/FZ3DResource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v3, "src":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "dstFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 216
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fabzat/shop/model/FZ3DResource;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fabzat/shop/manager/FZFileManager;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "dst":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 220
    invoke-direct {p0, v3, v0}, Lcom/fabzat/shop/manager/FZFileManager;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getObjectFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p1}, Lcom/fabzat/shop/manager/FZFileManager;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "fname":Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "splits":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 193
    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 194
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .end local v0    # "fname":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public setUploadFolder(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p2, "dstFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fabzat/shop/model/FZCartLine;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lcom/fabzat/shop/model/FZCartLine;>;"
    :try_start_0
    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->getUploadFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "dstPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v2, "dstFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 403
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v1, "archiveFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 431
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v8}, Lcom/fabzat/shop/manager/FZFileManager;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 433
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .end local v1    # "archiveFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "dstFolder":Ljava/io/File;
    .end local v3    # "dstPath":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 407
    .restart local v1    # "archiveFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "dstFolder":Ljava/io/File;
    .restart local v3    # "dstPath":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fabzat/shop/model/FZCartLine;

    .line 409
    .local v7, "line":Lcom/fabzat/shop/model/FZCartLine;
    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZCartLine;->getArchivePathFile()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "archiveFile":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/fabzat/shop/model/FZCartLine;->getImgPreview()Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "imageFilename":Ljava/lang/String;
    invoke-static {v6}, Lcom/fabzat/shop/utils/FZImageCache;->getImageFromCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 415
    .local v5, "imageFile":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 417
    :cond_1
    const-string v9, "http"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 418
    invoke-direct {p0, v6, v3}, Lcom/fabzat/shop/manager/FZFileManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 424
    :cond_2
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/io/File;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-direct {p0, v9, v10}, Lcom/fabzat/shop/manager/FZFileManager;->a(Ljava/io/File;[Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    .end local v0    # "archiveFile":Ljava/lang/String;
    .end local v1    # "archiveFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "dstFolder":Ljava/io/File;
    .end local v3    # "dstPath":Ljava/lang/String;
    .end local v5    # "imageFile":Ljava/io/File;
    .end local v6    # "imageFilename":Ljava/lang/String;
    .end local v7    # "line":Lcom/fabzat/shop/model/FZCartLine;
    :catch_0
    move-exception v4

    .line 435
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 436
    const/4 v8, 0x0

    goto :goto_1

    .line 421
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "archiveFile":Ljava/lang/String;
    .restart local v1    # "archiveFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "dstFolder":Ljava/io/File;
    .restart local v3    # "dstPath":Ljava/lang/String;
    .restart local v5    # "imageFile":Ljava/io/File;
    .restart local v6    # "imageFilename":Ljava/lang/String;
    .restart local v7    # "line":Lcom/fabzat/shop/model/FZCartLine;
    :cond_3
    :try_start_1
    new-instance v5, Ljava/io/File;

    .end local v5    # "imageFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "imageFile":Ljava/io/File;
    goto :goto_2
.end method

.method public unpackZip(Ljava/lang/String;Ljava/lang/String;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;)Z
    .locals 17
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "zipname"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    .prologue
    .line 108
    :try_start_0
    new-instance v11, Ljava/util/zip/ZipFile;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .local v11, "zip":Ljava/util/zip/ZipFile;
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->size()I

    move-result v10

    .line 114
    .local v10, "total":I
    const/4 v4, 0x0

    .line 116
    .local v4, "count":I
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 118
    .local v6, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    if-eqz p3, :cond_0

    .line 119
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Lcom/fabzat/shop/dao/connection/FZOnProgressListener;->onUpdateProgress(I)V

    .line 121
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-nez v13, :cond_1

    .line 167
    const/4 v13, 0x1

    .end local v4    # "count":I
    .end local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "total":I
    .end local v11    # "zip":Ljava/util/zip/ZipFile;
    :goto_1
    return v13

    .line 109
    :catch_0
    move-exception v5

    .line 110
    .local v5, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    goto :goto_1

    .line 125
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "count":I
    .restart local v6    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v10    # "total":I
    .restart local v11    # "zip":Ljava/util/zip/ZipFile;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/zip/ZipEntry;

    .line 126
    .local v12, "zipEntry":Ljava/util/zip/ZipEntry;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/16 v13, 0x800

    new-array v3, v13, [B

    .line 131
    .local v3, "buffer":[B
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 132
    new-instance v7, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v7, "fmd":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 158
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "buffer":[B
    .end local v7    # "fmd":Ljava/io/File;
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v5

    .line 160
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "buffer":[B
    .restart local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 141
    .local v8, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    array-length v13, v3

    invoke-direct {v2, v8, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 143
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :goto_2
    const/4 v13, 0x0

    array-length v14, v3

    invoke-virtual {v1, v3, v13, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    .local v9, "size":I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_3

    .line 147
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 148
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 149
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 151
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 153
    add-int/lit8 v4, v4, 0x1

    .line 155
    if-eqz p3, :cond_0

    .line 156
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    int-to-double v15, v4

    mul-double/2addr v13, v15

    double-to-int v13, v13

    div-int/2addr v13, v10

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Lcom/fabzat/shop/dao/connection/FZOnProgressListener;->onUpdateProgress(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 161
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "buffer":[B
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "size":I
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v5

    .line 163
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 144
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "size":I
    .restart local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    const/4 v13, 0x0

    :try_start_3
    invoke-virtual {v2, v3, v13, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2
.end method
