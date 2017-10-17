.class final Lcom/distimo/sdk/m;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:[B

.field private h:I

.field private i:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/distimo/sdk/m;->f:Z

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/distimo/sdk/m;->a:Z

    iget-boolean v0, p0, Lcom/distimo/sdk/m;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/distimo/sdk/m;->d:I

    iget v0, p0, Lcom/distimo/sdk/m;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/distimo/sdk/m;->c:[B

    iput v2, p0, Lcom/distimo/sdk/m;->b:I

    iput v2, p0, Lcom/distimo/sdk/m;->e:I

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/distimo/sdk/m;->g:[B

    iput p2, p0, Lcom/distimo/sdk/m;->h:I

    invoke-static {p2}, Lcom/distimo/sdk/l;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/distimo/sdk/m;->i:[B

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2
.end method


# virtual methods
.method public final close()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/distimo/sdk/m;->b:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/distimo/sdk/m;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/distimo/sdk/m;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/distimo/sdk/m;->g:[B

    iget-object v2, p0, Lcom/distimo/sdk/m;->c:[B

    iget v3, p0, Lcom/distimo/sdk/m;->b:I

    iget v4, p0, Lcom/distimo/sdk/m;->h:I

    invoke-static {v1, v2, v3, v4}, Lcom/distimo/sdk/l;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/distimo/sdk/m;->b:I

    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iput-object v5, p0, Lcom/distimo/sdk/m;->c:[B

    iput-object v5, p0, Lcom/distimo/sdk/m;->out:Ljava/io/OutputStream;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(I)V
    .locals 6
    .param p1, "theByte"    # I

    .prologue
    const/4 v2, -0x5

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/distimo/sdk/m;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/distimo/sdk/m;->c:[B

    iget v1, p0, Lcom/distimo/sdk/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/distimo/sdk/m;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/distimo/sdk/m;->b:I

    iget v1, p0, Lcom/distimo/sdk/m;->d:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/distimo/sdk/m;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/distimo/sdk/m;->g:[B

    iget-object v2, p0, Lcom/distimo/sdk/m;->c:[B

    iget v3, p0, Lcom/distimo/sdk/m;->d:I

    iget v4, p0, Lcom/distimo/sdk/m;->h:I

    invoke-static {v1, v2, v3, v4}, Lcom/distimo/sdk/l;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/distimo/sdk/m;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/distimo/sdk/m;->e:I

    iget-boolean v0, p0, Lcom/distimo/sdk/m;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/distimo/sdk/m;->e:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/distimo/sdk/m;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iput v5, p0, Lcom/distimo/sdk/m;->e:I

    :cond_0
    iput v5, p0, Lcom/distimo/sdk/m;->b:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/distimo/sdk/m;->i:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/distimo/sdk/m;->c:[B

    iget v1, p0, Lcom/distimo/sdk/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/distimo/sdk/m;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/distimo/sdk/m;->b:I

    iget v1, p0, Lcom/distimo/sdk/m;->d:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/distimo/sdk/m;->c:[B

    iget-object v1, p0, Lcom/distimo/sdk/m;->g:[B

    iget v2, p0, Lcom/distimo/sdk/m;->h:I

    invoke-static {v0, v1, v2}, Lcom/distimo/sdk/l;->a([B[BI)I

    move-result v0

    iget-object v1, p0, Lcom/distimo/sdk/m;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/distimo/sdk/m;->g:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v5, p0, Lcom/distimo/sdk/m;->b:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/distimo/sdk/m;->i:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "theBytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/distimo/sdk/m;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
