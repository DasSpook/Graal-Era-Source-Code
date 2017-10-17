.class Lcom/fabzat/shop/utils/FZImageCache$a;
.super Ljava/io/FilterInputStream;
.source "FZImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fabzat/shop/utils/FZImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 240
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const-wide/16 v3, 0x0

    .line 245
    .local v3, "totalBytesSkipped":J
    :goto_0
    cmp-long v5, v3, p1

    if-ltz v5, :cond_1

    .line 257
    :cond_0
    return-wide v3

    .line 246
    :cond_1
    iget-object v5, p0, Lcom/fabzat/shop/utils/FZImageCache$a;->in:Ljava/io/InputStream;

    sub-long v6, p1, v3

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 247
    .local v1, "bytesSkipped":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/FZImageCache$a;->read()I

    move-result v0

    .line 249
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 252
    const-wide/16 v1, 0x1

    .line 255
    .end local v0    # "b":I
    :cond_2
    add-long/2addr v3, v1

    goto :goto_0
.end method
