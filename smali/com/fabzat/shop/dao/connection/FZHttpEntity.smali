.class public Lcom/fabzat/shop/dao/connection/FZHttpEntity;
.super Ljava/lang/Object;
.source "FZHttpEntity.java"

# interfaces
.implements Lcom/fabzat/shop/dao/connection/FZEntityContentHandler;
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private cA:Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;

.field private cy:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

.field private cz:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "listener"    # Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    .line 25
    iput-object p2, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cy:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    .line 26
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 31
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;

    iget-object v1, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cy:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    iget-object v2, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;-><init>(Ljava/io/OutputStream;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;J)V

    iput-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cA:Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;

    .line 72
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cz:Lorg/apache/http/HttpEntity;

    iget-object v1, p0, Lcom/fabzat/shop/dao/connection/FZHttpEntity;->cA:Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 74
    return-void
.end method
