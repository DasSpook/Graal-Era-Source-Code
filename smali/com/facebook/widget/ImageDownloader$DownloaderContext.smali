.class Lcom/facebook/widget/ImageDownloader$DownloaderContext;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloaderContext"
.end annotation


# instance fields
.field isCancelled:Z

.field request:Lcom/facebook/widget/ImageRequest;

.field workItem:Lcom/facebook/widget/WorkQueue$WorkItem;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/ImageDownloader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/widget/ImageDownloader$1;

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/facebook/widget/ImageDownloader$DownloaderContext;-><init>()V

    return-void
.end method
