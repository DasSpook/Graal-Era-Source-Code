.class public Lcom/threed/jpct/ShaderLocator;
.super Ljava/lang/Object;
.source "ShaderLocator.java"


# instance fields
.field private assets:Landroid/content/res/AssetManager;

.field private rawResourceId:Ljava/lang/Integer;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    .line 31
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    .line 32
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    .line 35
    const-string v0, "Accessing shaders via JAR!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    .line 31
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    .line 32
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    .line 39
    iput-object p1, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    .line 40
    const-string v0, "Accessing shaders via assets directory!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "rawResourceId"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    .line 31
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    .line 32
    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    .line 45
    iput-object p1, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    .line 46
    const-string v0, "Accessing shaders via res/raw directory!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private getFileFromZip(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x0

    .line 101
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from zip file!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 107
    invoke-static {v1}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 110
    :cond_1
    if-nez v0, :cond_0

    .line 111
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
.end method

.method private loadFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    const-string v2, "jpct_shaders.zip"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/ShaderLocator;->getFileFromZip(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 78
    :cond_0
    return-object v1

    .line 79
    :catchall_0
    move-exception v1

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_1
    throw v1
.end method

.method private loadFromJar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 90
    :cond_0
    return-object v1

    .line 91
    :catchall_0
    move-exception v1

    .line 92
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 95
    :cond_1
    throw v1
.end method

.method private loadFromRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/threed/jpct/ShaderLocator;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/ShaderLocator;->getFileFromZip(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 66
    :cond_0
    return-object v1

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 71
    :cond_1
    throw v1
.end method


# virtual methods
.method public getShaderCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/threed/jpct/ShaderLocator;->loadFromJar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/ShaderLocator;->assets:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0, p1}, Lcom/threed/jpct/ShaderLocator;->loadFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/ShaderLocator;->rawResourceId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 57
    invoke-direct {p0, p1}, Lcom/threed/jpct/ShaderLocator;->loadFromRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
