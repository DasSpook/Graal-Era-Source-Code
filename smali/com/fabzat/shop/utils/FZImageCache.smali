.class public Lcom/fabzat/shop/utils/FZImageCache;
.super Landroid/os/AsyncTask;
.source "FZImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fabzat/shop/utils/FZImageCache$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final CACHE_FOLDER:Ljava/lang/String; = "_cache_"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static dg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/String;

.field private dh:Landroid/graphics/Bitmap;

.field private di:Lcom/fabzat/shop/utils/ui/FZImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/fabzat/shop/utils/FZImageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fabzat/shop/utils/FZImageCache;->LOG_TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/fabzat/shop/utils/ui/FZImage;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageView"    # Lcom/fabzat/shop/utils/ui/FZImage;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/fabzat/shop/utils/FZImageCache;->di:Lcom/fabzat/shop/utils/ui/FZImage;

    .line 46
    iput-object p2, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fabzat/shop/utils/FZImageCache;->dh:Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method

.method private P()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fabzat/shop/utils/FZImageCache;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Ljava/io/File;

    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    iget-object v2, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/fabzat/shop/utils/FZImageCache;->c(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/utils/FZImageCache;->dh:Landroid/graphics/Bitmap;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/fabzat/shop/utils/FZImageCache;->dh:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/fabzat/shop/utils/FZImageCache;->R()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fabzat/shop/utils/FZImageCache;->dh:Landroid/graphics/Bitmap;

    .line 90
    invoke-direct {p0}, Lcom/fabzat/shop/utils/FZImageCache;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fabzat/shop/utils/FZImageCache;->e(Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/fabzat/shop/utils/FZImageCache;->dh:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/fabzat/shop/utils/FZImageCache;->S()V

    .line 97
    :cond_2
    return-void
.end method

.method private Q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/fabzat/shop/manager/FZFileManager;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private R()Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/fabzat/shop/utils/FZImageCache;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/fabzat/shop/utils/FZImageCache;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/fabzat/shop/utils/FZImageCache;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 164
    :goto_0
    return-object v0

    .line 161
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/fabzat/shop/utils/FZImageCache;->c(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/fabzat/shop/utils/FZImageCache;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/fabzat/shop/utils/FZImageCache;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private S()V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    iget-object v1, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    iget-object v1, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "fname"    # Ljava/lang/String;

    .prologue
    .line 203
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 205
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v2, 0x1

    .line 211
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/File;)V
    .locals 4
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 76
    return-void

    .line 69
    :cond_1
    aget-object v0, v2, v1

    .line 71
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    invoke-static {v0}, Lcom/fabzat/shop/utils/FZImageCache;->b(Ljava/io/File;)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private c(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Clearing image cache"

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/fabzat/shop/manager/FZFileManager;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fabzat/shop/utils/FZImageCache;->b(Ljava/io/File;)V

    .line 61
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    .line 173
    :cond_0
    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    iget-object v1, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method private f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    new-instance v2, Lcom/fabzat/shop/dao/connection/FZSSLHelper;

    invoke-direct {v2}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;-><init>()V

    invoke-virtual {v2, p1}, Lcom/fabzat/shop/dao/connection/FZSSLHelper;->getSimpleHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 222
    .local v1, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_0

    .line 223
    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fabzat/shop/utils/FZImageCache;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 234
    .end local v1    # "http":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v2

    .line 225
    .restart local v1    # "http":Ljava/net/HttpURLConnection;
    :cond_0
    new-instance v2, Lcom/fabzat/shop/utils/FZImageCache$a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fabzat/shop/utils/FZImageCache$a;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 226
    .end local v1    # "http":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 234
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getImageFromCache(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->dg:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fabzat/shop/utils/FZImageCache;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 187
    sget-object v0, Lcom/fabzat/shop/utils/FZImageCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieving image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fabzat/shop/utils/FZImageCache;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fabzat/shop/utils/FZLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/fabzat/shop/utils/FZImageCache;->P()V

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fabzat/shop/utils/FZImageCache;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fabzat/shop/utils/FZImageCache;->di:Lcom/fabzat/shop/utils/ui/FZImage;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/fabzat/shop/utils/FZImageCache;->di:Lcom/fabzat/shop/utils/ui/FZImage;

    iget-object v1, p0, Lcom/fabzat/shop/utils/FZImageCache;->dh:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/utils/ui/FZImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    :cond_0
    return-void
.end method
