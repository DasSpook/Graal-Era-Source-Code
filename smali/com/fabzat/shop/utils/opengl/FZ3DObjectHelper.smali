.class public Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;
.super Ljava/lang/Object;
.source "FZ3DObjectHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TMP:Ljava/lang/String; = ".tmp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->LOG_TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "done":Z
    const/4 v2, 0x1

    .line 187
    .local v2, "downsampleBy":I
    const/4 v0, 0x0

    .line 188
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    move v3, v2

    .line 190
    .end local v2    # "downsampleBy":I
    .local v3, "downsampleBy":I
    :goto_0
    if-eqz v1, :cond_0

    .line 201
    return-object v0

    .line 191
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "downsampleBy":I
    .restart local v2    # "downsampleBy":I
    iput v3, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 193
    :try_start_0
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    const/4 v1, 0x1

    move v3, v2

    .line 195
    .end local v2    # "downsampleBy":I
    .restart local v3    # "downsampleBy":I
    goto :goto_0

    .line 196
    .end local v3    # "downsampleBy":I
    .restart local v2    # "downsampleBy":I
    :catch_0
    move-exception v5

    move v3, v2

    .end local v2    # "downsampleBy":I
    .restart local v3    # "downsampleBy":I
    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Lcom/threed/jpct/Texture;
    .locals 7
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 155
    :try_start_0
    sget-object v5, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Rescaling texture"

    invoke-static {v5, v6}, Lcom/fabzat/shop/utils/FZLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 174
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 162
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Lcom/fabzat/shop/utils/FZTools;->getNearestPowerOfTwo(I)I

    move-result v3

    .line 163
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Lcom/fabzat/shop/utils/FZTools;->getNearestPowerOfTwo(I)I

    move-result v2

    .line 169
    .local v2, "height":I
    new-instance v5, Lcom/threed/jpct/Texture;

    invoke-static {v0, v3, v2}, Lcom/threed/jpct/util/BitmapHelper;->rescale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/threed/jpct/Texture;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v5

    goto :goto_0

    .line 171
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 173
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method


# virtual methods
.method public addTexture(Lcom/fabzat/shop/model/FZ3DResource;Ljava/lang/String;)V
    .locals 8
    .param p1, "res"    # Lcom/fabzat/shop/model/FZ3DResource;
    .param p2, "textName"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-object v5, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding texture : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "fname":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/threed/jpct/Texture;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/threed/jpct/Texture;-><init>(Ljava/io/InputStream;)V

    .line 126
    .local v4, "texture":Lcom/threed/jpct/Texture;
    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->removeAlpha()V

    .line 128
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .end local v4    # "texture":Lcom/threed/jpct/Texture;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, "o":Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OutOfMemoryError, Could not load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v3    # "o":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->g(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v4

    .line 137
    .restart local v4    # "texture":Lcom/threed/jpct/Texture;
    :try_start_1
    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->removeAlpha()V

    .line 138
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 140
    :catch_2
    move-exception v1

    .line 141
    .local v1, "e2":Ljava/lang/Exception;
    sget-object v5, Lcom/fabzat/shop/utils/opengl/FZ3DObjectHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fabzat/shop/utils/FZLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTextureFiles(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 89
    const/4 v10, 0x3

    new-array v7, v10, [Ljava/lang/String;

    const-string v10, "([a-zA-Z0-9\\-\\_]+\\.jpg)"

    aput-object v10, v7, v9

    const-string v10, "([a-zA-Z0-9\\-\\_]+\\.png)"

    aput-object v10, v7, v11

    const/4 v10, 0x2

    const-string v11, "([a-zA-Z0-9\\-\\_]+\\.jpeg)"

    aput-object v11, v7, v10

    .line 90
    .local v7, "patterns":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v4, "filenames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v8, "stream":Ljava/io/InputStream;
    invoke-static {v8}, Lcom/fabzat/shop/utils/FZTools;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "fileString":Ljava/lang/String;
    array-length v10, v7

    :goto_0
    if-lt v9, v10, :cond_0

    .line 113
    .end local v3    # "fileString":Ljava/lang/String;
    .end local v8    # "stream":Ljava/io/InputStream;
    :goto_1
    return-object v4

    .line 98
    .restart local v3    # "fileString":Ljava/lang/String;
    .restart local v8    # "stream":Ljava/io/InputStream;
    :cond_0
    aget-object v6, v7, v9

    .line 100
    .local v6, "pattern":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 101
    .local v0, "currentPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 103
    .local v5, "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-nez v11, :cond_2

    .line 98
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 104
    :cond_2
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 105
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 109
    .end local v0    # "currentPattern":Ljava/util/regex/Pattern;
    .end local v3    # "fileString":Ljava/lang/String;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "pattern":Ljava/lang/String;
    .end local v8    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadFixedMtlFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "mtlFile"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v2, "[kK][dD]\\ 0\\.000000\\ 0\\.000000\\ 0\\.000000"

    .line 44
    .local v2, "fixPattern":Ljava/lang/String;
    const-string v3, "Kd 0.100000 0.100000 0.100000"

    .line 46
    .local v3, "fixed":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v6, "tmp":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 53
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 58
    .local v7, "writer":Ljava/io/BufferedWriter;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 61
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 62
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 69
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 59
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "tmp":Ljava/io/File;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public unloadFixedMtl(Ljava/lang/String;)V
    .locals 3
    .param p1, "mtlFile"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    :cond_0
    return-void
.end method
