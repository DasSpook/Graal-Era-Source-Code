.class Lcom/facebook/widget/ImageResponseCache;
.super Ljava/lang/Object;
.source "ImageResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/ImageResponseCache$BufferedHttpInputStream;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static volatile imageCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/facebook/widget/ImageResponseCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/ImageResponseCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static declared-synchronized getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const-class v1, Lcom/facebook/widget/ImageResponseCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/widget/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/facebook/widget/ImageResponseCache;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v4}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/widget/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    .line 41
    :cond_0
    sget-object v0, Lcom/facebook/widget/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getCachedImageStream(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 7
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, "imageStream":Ljava/io/InputStream;
    if-eqz p0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/facebook/widget/ImageResponseCache;->isCDNURL(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/facebook/widget/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    .line 52
    .local v0, "cache":Lcom/facebook/internal/FileLruCache;
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 59
    .end local v0    # "cache":Lcom/facebook/internal/FileLruCache;
    :cond_0
    :goto_0
    return-object v2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x5

    sget-object v5, Lcom/facebook/widget/ImageResponseCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 66
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 67
    invoke-static {v2}, Lcom/facebook/widget/ImageResponseCache;->isCDNURL(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/facebook/widget/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    .line 72
    .local v0, "cache":Lcom/facebook/internal/FileLruCache;
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/widget/ImageResponseCache$BufferedHttpInputStream;

    invoke-direct {v4, v1, p1}, Lcom/facebook/widget/ImageResponseCache$BufferedHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-virtual {v0, v3, v4}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    .end local v0    # "cache":Lcom/facebook/internal/FileLruCache;
    .end local v2    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v1

    .line 75
    .restart local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isCDNURL(Ljava/net/URL;)Z
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x1

    .line 84
    if-eqz p0, :cond_2

    .line 85
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "uriHost":Ljava/lang/String;
    const-string v2, "fbcdn.net"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    .end local v0    # "uriHost":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 91
    .restart local v0    # "uriHost":Ljava/lang/String;
    :cond_1
    const-string v2, "fbcdn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "akamaihd.net"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    .end local v0    # "uriHost":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
