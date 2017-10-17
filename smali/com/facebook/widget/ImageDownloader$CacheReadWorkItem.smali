.class Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheReadWorkItem"
.end annotation


# instance fields
.field private allowCachedRedirects:Z

.field private context:Landroid/content/Context;

.field private key:Lcom/facebook/widget/ImageDownloader$RequestKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Lcom/facebook/widget/ImageDownloader$RequestKey;
    .param p3, "allowCachedRedirects"    # Z

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    .line 318
    iput-object p2, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->key:Lcom/facebook/widget/ImageDownloader$RequestKey;

    .line 319
    iput-boolean p3, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    .line 320
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->key:Lcom/facebook/widget/ImageDownloader$RequestKey;

    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    invoke-static {v0, v1, v2}, Lcom/facebook/widget/ImageDownloader;->access$100(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    .line 325
    return-void
.end method
