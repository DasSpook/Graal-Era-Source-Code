.class Lcom/threed/jpct/BufferUtilVM;
.super Ljava/lang/Object;
.source "BufferUtilVM.java"

# interfaces
.implements Lcom/threed/jpct/BufferUtil;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy([FLcom/threed/jpct/FloatBufferWrapper;)V
    .locals 0
    .param p1, "src"    # [F
    .param p2, "dest"    # Lcom/threed/jpct/FloatBufferWrapper;

    .prologue
    .line 12
    invoke-virtual {p2, p1}, Lcom/threed/jpct/FloatBufferWrapper;->put([F)V

    .line 13
    return-void
.end method
