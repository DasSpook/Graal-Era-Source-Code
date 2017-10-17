.class Lcom/facebook/widget/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;,
        Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;,
        Lcom/facebook/widget/ImageDownloader$DownloaderContext;,
        Lcom/facebook/widget/ImageDownloader$RequestKey;
    }
.end annotation


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static cacheReadQueue:Lcom/facebook/widget/WorkQueue;

.field private static downloadQueue:Lcom/facebook/widget/WorkQueue;

.field private static final handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/widget/ImageDownloader$RequestKey;",
            "Lcom/facebook/widget/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/facebook/widget/ImageDownloader;->handler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/facebook/widget/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/widget/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/widget/ImageDownloader;->downloadQueue:Lcom/facebook/widget/WorkQueue;

    .line 38
    new-instance v0, Lcom/facebook/widget/WorkQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/widget/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/widget/ImageDownloader;->cacheReadQueue:Lcom/facebook/widget/WorkQueue;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/ImageDownloader$RequestKey;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/facebook/widget/ImageDownloader;->readFromCache(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/widget/ImageDownloader$RequestKey;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/facebook/widget/ImageDownloader;->download(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;)V

    return-void
.end method

.method static cancelRequest(Lcom/facebook/widget/ImageRequest;)Z
    .locals 5
    .param p0, "request"    # Lcom/facebook/widget/ImageRequest;

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "cancelled":Z
    new-instance v2, Lcom/facebook/widget/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getImageUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/widget/ImageDownloader$RequestKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    .line 73
    .local v2, "key":Lcom/facebook/widget/ImageDownloader$RequestKey;
    sget-object v4, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v4

    .line 74
    :try_start_0
    sget-object v3, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    .line 75
    .local v1, "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    iget-object v3, v1, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/widget/WorkQueue$WorkItem;

    invoke-interface {v3}, Lcom/facebook/widget/WorkQueue$WorkItem;->cancel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    sget-object v3, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    :goto_0
    monitor-exit v4

    .line 91
    return v0

    .line 86
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z

    goto :goto_0

    .line 89
    .end local v1    # "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static download(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 17
    .param p0, "key"    # Lcom/facebook/widget/ImageDownloader$RequestKey;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const/4 v4, 0x0

    .line 200
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v13, 0x0

    .line 201
    .local v13, "stream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 202
    .local v7, "error":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 203
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    .line 206
    .local v9, "issueResponse":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 207
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 209
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 239
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    .line 240
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 241
    .local v10, "reader":Ljava/io/InputStreamReader;
    const/16 v14, 0x80

    new-array v2, v14, [C

    .line 243
    .local v2, "buffer":[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v8, "errorMessageBuilder":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v14, 0x0

    array-length v15, v2

    invoke-virtual {v10, v2, v14, v15}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    .local v3, "bufferLength":I
    if-lez v3, :cond_2

    .line 245
    const/4 v14, 0x0

    invoke-virtual {v8, v2, v14, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 252
    .end local v2    # "buffer":[C
    .end local v3    # "bufferLength":I
    .end local v7    # "error":Ljava/lang/Exception;
    .end local v8    # "errorMessageBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v6

    .line 253
    .local v6, "e":Ljava/io/IOException;
    move-object v7, v6

    .line 255
    .restart local v7    # "error":Ljava/lang/Exception;
    invoke-static {v13}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 256
    invoke-static {v4}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 259
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v9, :cond_0

    .line 260
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v1, v14}, Lcom/facebook/widget/ImageDownloader;->issueResponse(Lcom/facebook/widget/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 262
    :cond_0
    return-void

    .line 213
    :sswitch_0
    const/4 v9, 0x0

    .line 215
    :try_start_1
    const-string v14, "location"

    invoke-virtual {v4, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 216
    .local v11, "redirectLocation":Ljava/lang/String;
    invoke-static {v11}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 217
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v12, "redirectUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-static {v0, v14, v12}, Lcom/facebook/widget/UrlRedirectCache;->cacheUrlRedirect(Landroid/content/Context;Ljava/net/URL;Ljava/net/URL;)V

    .line 222
    invoke-static/range {p0 .. p0}, Lcom/facebook/widget/ImageDownloader;->removePendingRequest(Lcom/facebook/widget/ImageDownloader$RequestKey;)Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    move-result-object v5

    .line 223
    .local v5, "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    if-eqz v5, :cond_1

    iget-boolean v14, v5, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v14, :cond_1

    .line 224
    iget-object v14, v5, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    new-instance v15, Lcom/facebook/widget/ImageDownloader$RequestKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v12, v0}, Lcom/facebook/widget/ImageDownloader$RequestKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/facebook/widget/ImageDownloader;->enqueueCacheRead(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v5    # "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    .end local v11    # "redirectLocation":Ljava/lang/String;
    .end local v12    # "redirectUrl":Ljava/net/URL;
    :cond_1
    :goto_2
    invoke-static {v13}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 256
    invoke-static {v4}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    goto :goto_1

    .line 234
    :sswitch_1
    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/facebook/widget/ImageResponseCache;->interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v13

    .line 235
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    goto :goto_2

    .line 247
    .restart local v2    # "buffer":[C
    .restart local v3    # "bufferLength":I
    .restart local v8    # "errorMessageBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "reader":Ljava/io/InputStreamReader;
    :cond_2
    invoke-static {v10}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 249
    new-instance v7, Lcom/facebook/FacebookException;

    .end local v7    # "error":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v7    # "error":Ljava/lang/Exception;
    goto :goto_2

    .line 255
    .end local v2    # "buffer":[C
    .end local v3    # "bufferLength":I
    .end local v7    # "error":Ljava/lang/Exception;
    .end local v8    # "errorMessageBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "reader":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v14

    invoke-static {v13}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 256
    invoke-static {v4}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw v14

    .line 209
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method static downloadAsync(Lcom/facebook/widget/ImageRequest;)V
    .locals 4
    .param p0, "request"    # Lcom/facebook/widget/ImageRequest;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v1, Lcom/facebook/widget/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getImageUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/widget/ImageDownloader$RequestKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    .line 58
    .local v1, "key":Lcom/facebook/widget/ImageDownloader$RequestKey;
    sget-object v3, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v3

    .line 59
    :try_start_0
    sget-object v2, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    .line 60
    .local v0, "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    if-eqz v0, :cond_1

    .line 61
    iput-object p0, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z

    .line 63
    iget-object v2, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/widget/WorkQueue$WorkItem;

    invoke-interface {v2}, Lcom/facebook/widget/WorkQueue$WorkItem;->moveToFront()V

    .line 67
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 65
    .restart local v0    # "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/facebook/widget/ImageDownloader;->enqueueCacheRead(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static enqueueCacheRead(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V
    .locals 3
    .param p0, "request"    # Lcom/facebook/widget/ImageRequest;
    .param p1, "key"    # Lcom/facebook/widget/ImageDownloader$RequestKey;
    .param p2, "allowCachedRedirects"    # Z

    .prologue
    .line 105
    sget-object v0, Lcom/facebook/widget/ImageDownloader;->cacheReadQueue:Lcom/facebook/widget/WorkQueue;

    new-instance v1, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/widget/ImageDownloader;->enqueueRequest(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method private static enqueueDownload(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;)V
    .locals 3
    .param p0, "request"    # Lcom/facebook/widget/ImageRequest;
    .param p1, "key"    # Lcom/facebook/widget/ImageDownloader$RequestKey;

    .prologue
    .line 113
    sget-object v0, Lcom/facebook/widget/ImageDownloader;->downloadQueue:Lcom/facebook/widget/WorkQueue;

    new-instance v1, Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/widget/ImageDownloader$RequestKey;)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/widget/ImageDownloader;->enqueueRequest(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method private static enqueueRequest(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "request"    # Lcom/facebook/widget/ImageRequest;
    .param p1, "key"    # Lcom/facebook/widget/ImageDownloader$RequestKey;
    .param p2, "workQueue"    # Lcom/facebook/widget/WorkQueue;
    .param p3, "workItem"    # Ljava/lang/Runnable;

    .prologue
    .line 125
    sget-object v2, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    .line 126
    :try_start_0
    new-instance v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/widget/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/widget/ImageDownloader$1;)V

    .line 127
    .local v0, "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    iput-object p0, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    .line 128
    sget-object v1, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p2, p3}, Lcom/facebook/widget/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/widget/WorkQueue$WorkItem;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/widget/WorkQueue$WorkItem;

    .line 138
    monitor-exit v2

    .line 139
    return-void

    .line 138
    .end local v0    # "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static issueResponse(Lcom/facebook/widget/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .param p0, "key"    # Lcom/facebook/widget/ImageDownloader$RequestKey;
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isCachedRedirect"    # Z

    .prologue
    .line 148
    invoke-static {p0}, Lcom/facebook/widget/ImageDownloader;->removePendingRequest(Lcom/facebook/widget/ImageDownloader$RequestKey;)Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    move-result-object v6

    .line 149
    .local v6, "completedRequestContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    if-eqz v6, :cond_0

    iget-boolean v0, v6, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v1, v6, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    .line 151
    .local v1, "request":Lcom/facebook/widget/ImageRequest;
    invoke-virtual {v1}, Lcom/facebook/widget/ImageRequest;->getCallback()Lcom/facebook/widget/ImageRequest$Callback;

    move-result-object v5

    .line 152
    .local v5, "callback":Lcom/facebook/widget/ImageRequest$Callback;
    if-eqz v5, :cond_0

    .line 153
    sget-object v7, Lcom/facebook/widget/ImageDownloader;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/widget/ImageDownloader$1;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/ImageDownloader$1;-><init>(Lcom/facebook/widget/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/widget/ImageRequest$Callback;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .end local v1    # "request":Lcom/facebook/widget/ImageRequest;
    .end local v5    # "callback":Lcom/facebook/widget/ImageRequest$Callback;
    :cond_0
    return-void
.end method

.method static prioritizeRequest(Lcom/facebook/widget/ImageRequest;)V
    .locals 4
    .param p0, "request"    # Lcom/facebook/widget/ImageRequest;

    .prologue
    .line 95
    new-instance v1, Lcom/facebook/widget/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getImageUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/widget/ImageDownloader$RequestKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    .line 96
    .local v1, "key":Lcom/facebook/widget/ImageDownloader$RequestKey;
    sget-object v3, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v3

    .line 97
    :try_start_0
    sget-object v2, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    .line 98
    .local v0, "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/widget/WorkQueue$WorkItem;

    invoke-interface {v2}, Lcom/facebook/widget/WorkQueue$WorkItem;->moveToFront()V

    .line 101
    :cond_0
    monitor-exit v3

    .line 102
    return-void

    .line 101
    .end local v0    # "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static readFromCache(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 6
    .param p0, "key"    # Lcom/facebook/widget/ImageDownloader$RequestKey;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowCachedRedirects"    # Z

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "cachedStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 171
    .local v3, "isCachedRedirect":Z
    if-eqz p2, :cond_0

    .line 172
    iget-object v5, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    invoke-static {p1, v5}, Lcom/facebook/widget/UrlRedirectCache;->getRedirectedUrl(Landroid/content/Context;Ljava/net/URL;)Ljava/net/URL;

    move-result-object v4

    .line 173
    .local v4, "redirectUrl":Ljava/net/URL;
    if-eqz v4, :cond_0

    .line 174
    invoke-static {v4, p1}, Lcom/facebook/widget/ImageResponseCache;->getCachedImageStream(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .line 179
    .end local v4    # "redirectUrl":Ljava/net/URL;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 180
    iget-object v5, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    invoke-static {v5, p1}, Lcom/facebook/widget/ImageResponseCache;->getCachedImageStream(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 183
    :cond_1
    if-eqz v1, :cond_4

    .line 185
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    const/4 v5, 0x0

    invoke-static {p0, v5, v0, v3}, Lcom/facebook/widget/ImageDownloader;->issueResponse(Lcom/facebook/widget/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 196
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-void

    .line 175
    .restart local v4    # "redirectUrl":Ljava/net/URL;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 191
    .end local v4    # "redirectUrl":Ljava/net/URL;
    :cond_4
    invoke-static {p0}, Lcom/facebook/widget/ImageDownloader;->removePendingRequest(Lcom/facebook/widget/ImageDownloader$RequestKey;)Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    move-result-object v2

    .line 192
    .local v2, "downloaderContext":Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    if-eqz v2, :cond_2

    iget-boolean v5, v2, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v5, :cond_2

    .line 193
    iget-object v5, v2, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    invoke-static {v5, p0}, Lcom/facebook/widget/ImageDownloader;->enqueueDownload(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;)V

    goto :goto_1
.end method

.method private static removePendingRequest(Lcom/facebook/widget/ImageDownloader$RequestKey;)Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    .locals 2
    .param p0, "key"    # Lcom/facebook/widget/ImageDownloader$RequestKey;

    .prologue
    .line 265
    sget-object v1, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 266
    :try_start_0
    sget-object v0, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    monitor-exit v1

    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
