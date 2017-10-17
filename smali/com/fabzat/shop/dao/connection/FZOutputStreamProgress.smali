.class public Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;
.super Ljava/io/OutputStream;
.source "FZOutputStreamProgress.java"


# instance fields
.field private final cB:Ljava/io/OutputStream;

.field private cC:J

.field private cD:J

.field private cE:I

.field private cy:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/fabzat/shop/dao/connection/FZOnProgressListener;J)V
    .locals 3
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/fabzat/shop/dao/connection/FZOnProgressListener;
    .param p3, "total"    # J

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 22
    iput-wide v1, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cC:J

    .line 23
    iput-wide v1, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cD:J

    .line 24
    iput v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cE:I

    .line 27
    iput-object p1, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cB:Ljava/io/OutputStream;

    .line 28
    iput-object p2, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cy:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    .line 29
    iput-wide p3, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cD:J

    .line 30
    iput v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cE:I

    .line 31
    return-void
.end method

.method private L()V
    .locals 5

    .prologue
    .line 75
    iget-object v1, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cy:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    if-eqz v1, :cond_0

    .line 77
    const-wide/16 v1, 0x64

    iget-wide v3, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cC:J

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cD:J

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 79
    .local v0, "percent":I
    iget v1, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cE:I

    if-eq v1, v0, :cond_0

    .line 81
    iput v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cE:I

    .line 82
    iget-object v1, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cy:Lcom/fabzat/shop/dao/connection/FZOnProgressListener;

    iget v2, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cE:I

    invoke-interface {v1, v2}, Lcom/fabzat/shop/dao/connection/FZOnProgressListener;->onUpdateProgress(I)V

    .line 85
    .end local v0    # "percent":I
    :cond_0
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
    .line 64
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cB:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 65
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cB:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 60
    return-void
.end method

.method public getWrittenLength()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cC:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cB:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 36
    iget-wide v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cC:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cC:J

    .line 38
    invoke-direct {p0}, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->L()V

    .line 39
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cB:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 44
    iget-wide v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cC:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cC:J

    .line 46
    invoke-direct {p0}, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->L()V

    .line 47
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cB:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    iget-wide v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cC:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->cC:J

    .line 54
    invoke-direct {p0}, Lcom/fabzat/shop/dao/connection/FZOutputStreamProgress;->L()V

    .line 55
    return-void
.end method
