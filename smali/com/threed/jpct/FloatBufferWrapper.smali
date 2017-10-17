.class Lcom/threed/jpct/FloatBufferWrapper;
.super Ljava/lang/Object;
.source "FloatBufferWrapper.java"


# static fields
.field private static intArray:[I


# instance fields
.field bytes:Ljava/nio/ByteBuffer;

.field floats:Ljava/nio/FloatBuffer;

.field private ints:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    .line 31
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    .line 32
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    .line 25
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    .line 26
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    .line 27
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 117
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 118
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 119
    return-void
.end method

.method public flip()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 37
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 38
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 39
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public limit()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public position()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 2
    .param p1, "p"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    return-void
.end method

.method public put(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 42
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 44
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    return-void
.end method

.method public put(Lcom/threed/jpct/FloatBufferWrapper;)V
    .locals 2
    .param p1, "b"    # Lcom/threed/jpct/FloatBufferWrapper;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 85
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    return-void
.end method

.method public put([F)V
    .locals 6
    .param p1, "data"    # [F

    .prologue
    .line 63
    sget-object v2, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    array-length v2, v2

    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 64
    array-length v2, p1

    new-array v2, v2, [I

    sput-object v2, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    .line 67
    :cond_0
    array-length v0, p1

    .line 68
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 72
    iget-object v2, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    iget-object v2, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    iget-object v2, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    sget-object v3, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 75
    return-void

    .line 69
    :cond_1
    sget-object v2, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v2, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public put([FII)V
    .locals 5
    .param p1, "data"    # [F
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 48
    sget-object v2, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    array-length v2, v2

    if-ge v2, p3, :cond_0

    .line 49
    new-array v2, p3, [I

    sput-object v2, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    .line 52
    :cond_0
    add-int v0, p2, p3

    .line 53
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 57
    iget-object v2, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v4, p3, 0x4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    iget-object v2, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->position()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    iget-object v2, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    sget-object v3, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 60
    return-void

    .line 54
    :cond_1
    sget-object v2, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    sub-int v3, v1, p2

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v2, v3

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public put([I)V
    .locals 3
    .param p1, "data"    # [I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 81
    return-void
.end method

.method public remaining()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 123
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 124
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 125
    return-void
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method
