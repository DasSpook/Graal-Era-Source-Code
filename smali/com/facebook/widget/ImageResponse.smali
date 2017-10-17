.class Lcom/facebook/widget/ImageResponse;
.super Ljava/lang/Object;
.source "ImageResponse.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private error:Ljava/lang/Exception;

.field private isCachedRedirect:Z

.field private request:Lcom/facebook/widget/ImageRequest;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "request"    # Lcom/facebook/widget/ImageRequest;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "isCachedRedirect"    # Z
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/widget/ImageResponse;->request:Lcom/facebook/widget/ImageRequest;

    .line 30
    iput-object p2, p0, Lcom/facebook/widget/ImageResponse;->error:Ljava/lang/Exception;

    .line 31
    iput-object p4, p0, Lcom/facebook/widget/ImageResponse;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-boolean p3, p0, Lcom/facebook/widget/ImageResponse;->isCachedRedirect:Z

    .line 33
    return-void
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/widget/ImageResponse;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/widget/ImageResponse;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method getRequest()Lcom/facebook/widget/ImageRequest;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/widget/ImageResponse;->request:Lcom/facebook/widget/ImageRequest;

    return-object v0
.end method

.method isCachedRedirect()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/facebook/widget/ImageResponse;->isCachedRedirect:Z

    return v0
.end method
