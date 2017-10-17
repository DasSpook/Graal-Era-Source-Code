.class final Lcom/facebook/widget/ImageDownloader$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/ImageDownloader;->issueResponse(Lcom/facebook/widget/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/facebook/widget/ImageRequest$Callback;

.field final synthetic val$error:Ljava/lang/Exception;

.field final synthetic val$isCachedRedirect:Z

.field final synthetic val$request:Lcom/facebook/widget/ImageRequest;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/widget/ImageRequest$Callback;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/widget/ImageDownloader$1;->val$request:Lcom/facebook/widget/ImageRequest;

    iput-object p2, p0, Lcom/facebook/widget/ImageDownloader$1;->val$error:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/facebook/widget/ImageDownloader$1;->val$isCachedRedirect:Z

    iput-object p4, p0, Lcom/facebook/widget/ImageDownloader$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/facebook/widget/ImageDownloader$1;->val$callback:Lcom/facebook/widget/ImageRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 156
    new-instance v0, Lcom/facebook/widget/ImageResponse;

    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$1;->val$request:Lcom/facebook/widget/ImageRequest;

    iget-object v2, p0, Lcom/facebook/widget/ImageDownloader$1;->val$error:Ljava/lang/Exception;

    iget-boolean v3, p0, Lcom/facebook/widget/ImageDownloader$1;->val$isCachedRedirect:Z

    iget-object v4, p0, Lcom/facebook/widget/ImageDownloader$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/widget/ImageResponse;-><init>(Lcom/facebook/widget/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    .line 161
    .local v0, "response":Lcom/facebook/widget/ImageResponse;
    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$1;->val$callback:Lcom/facebook/widget/ImageRequest$Callback;

    invoke-interface {v1, v0}, Lcom/facebook/widget/ImageRequest$Callback;->onCompleted(Lcom/facebook/widget/ImageResponse;)V

    .line 162
    return-void
.end method
