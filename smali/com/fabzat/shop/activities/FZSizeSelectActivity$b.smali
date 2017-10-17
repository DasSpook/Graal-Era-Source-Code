.class Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;
.super Ljava/lang/Thread;
.source "FZSizeSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fabzat/shop/activities/FZSizeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;


# direct methods
.method constructor <init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    new-instance v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$2;

    invoke-direct {v1, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$2;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)V

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method static synthetic a(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)Lcom/fabzat/shop/activities/FZSizeSelectActivity;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    new-instance v1, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$1;

    invoke-direct {v1, p0, p1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$1;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;I)V

    invoke-virtual {v0, v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 470
    new-instance v2, Lcom/fabzat/shop/manager/FZFileManager;

    invoke-direct {v2}, Lcom/fabzat/shop/manager/FZFileManager;-><init>()V

    .line 473
    .local v2, "manager":Lcom/fabzat/shop/manager/FZFileManager;
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    const-string v4, "fz_info_progress_downloading_resource"

    invoke-virtual {v3, v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getStringId(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(I)V

    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    iget-object v4, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v4

    iget-object v5, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-virtual {v2, v3, v4, v5}, Lcom/fabzat/shop/manager/FZFileManager;->downloadOrCopy(Landroid/content/Context;Lcom/fabzat/shop/model/FZ3DResource;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    const-string v4, "fz_info_progress_downloading_unpack"

    invoke-virtual {v3, v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getStringId(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(I)V

    .line 512
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 513
    iget-object v4, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fabzat/shop/model/FZ3DResource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fabzat/shop/manager/FZFileManager;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 514
    iget-object v5, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    .line 511
    invoke-virtual {v2, v3, v4, v5}, Lcom/fabzat/shop/manager/FZFileManager;->unpackZip(Ljava/lang/String;Ljava/lang/String;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;)Z

    .line 518
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    const-string v4, "fz_info_progress_rendering"

    invoke-virtual {v3, v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->getStringId(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->a(I)V

    .line 519
    invoke-direct {p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->B()V

    .line 525
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    new-instance v4, Lcom/fabzat/shop/utils/opengl/FZRenderer;

    iget-object v5, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    iget-object v6, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v6}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/fabzat/shop/utils/opengl/FZRenderer;-><init>(Lcom/fabzat/shop/utils/opengl/FZRendererListener;Lcom/fabzat/shop/model/FZ3DResource;)V

    invoke-static {v3, v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity;Lcom/fabzat/shop/utils/opengl/FZAbstractRenderer;)V

    .line 528
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    new-instance v4, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$4;

    invoke-direct {v4, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$4;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)V

    invoke-virtual {v3, v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 545
    const-string v3, "Fabzat-JNI"

    const-string v4, "C Parsing"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/fabzat/shop/utils/FZTools;->logTimeStamp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 546
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->d(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)Lcom/fabzat/shop/model/FZ3DResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fabzat/shop/model/FZ3DResource;->getLocalFolderPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fabzat/shop/manager/FZFileManager;->getObjPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "fname":Ljava/lang/String;
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    iget-object v4, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-virtual {v4, v1}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->calculateVolume(Ljava/lang/String;)[F

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->a(Lcom/fabzat/shop/activities/FZSizeSelectActivity;[F)V

    .line 549
    const-string v3, "Fabzat-JNI"

    const-string v4, "C Parsing"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/fabzat/shop/utils/FZTools;->logTimeStamp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 552
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    invoke-static {v3}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->f(Lcom/fabzat/shop/activities/FZSizeSelectActivity;)V

    .line 553
    .end local v1    # "fname":Ljava/lang/String;
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;->bn:Lcom/fabzat/shop/activities/FZSizeSelectActivity;

    new-instance v4, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;

    invoke-direct {v4, p0}, Lcom/fabzat/shop/activities/FZSizeSelectActivity$b$3;-><init>(Lcom/fabzat/shop/activities/FZSizeSelectActivity$b;)V

    invoke-virtual {v3, v4}, Lcom/fabzat/shop/activities/FZSizeSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
