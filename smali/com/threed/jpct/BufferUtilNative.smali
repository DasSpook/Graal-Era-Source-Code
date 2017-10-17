.class Lcom/threed/jpct/BufferUtilNative;
.super Ljava/lang/Object;
.source "BufferUtilNative.java"

# interfaces
.implements Lcom/threed/jpct/BufferUtil;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy([FLcom/threed/jpct/FloatBufferWrapper;)V
    .locals 3
    .param p1, "src"    # [F
    .param p2, "dest"    # Lcom/threed/jpct/FloatBufferWrapper;

    .prologue
    .line 14
    iget-object v0, p2, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 15
    return-void
.end method
