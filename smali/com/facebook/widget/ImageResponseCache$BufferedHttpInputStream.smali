.class Lcom/facebook/widget/ImageResponseCache$BufferedHttpInputStream;
.super Ljava/io/BufferedInputStream;
.source "ImageResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ImageResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedHttpInputStream"
.end annotation


# instance fields
.field connection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 102
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 103
    iput-object p2, p0, Lcom/facebook/widget/ImageResponseCache$BufferedHttpInputStream;->connection:Ljava/net/HttpURLConnection;

    .line 104
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 109
    iget-object v0, p0, Lcom/facebook/widget/ImageResponseCache$BufferedHttpInputStream;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 110
    return-void
.end method
