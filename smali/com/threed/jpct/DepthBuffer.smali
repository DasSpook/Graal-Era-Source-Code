.class public Lcom/threed/jpct/DepthBuffer;
.super Ljava/lang/Object;
.source "DepthBuffer.java"


# instance fields
.field height:I

.field lastHandlerId:I

.field renderBuffer:I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/threed/jpct/DepthBuffer;->renderBuffer:I

    .line 16
    iput v1, p0, Lcom/threed/jpct/DepthBuffer;->width:I

    .line 18
    iput v1, p0, Lcom/threed/jpct/DepthBuffer;->height:I

    .line 20
    iput v0, p0, Lcom/threed/jpct/DepthBuffer;->lastHandlerId:I

    .line 28
    iput p1, p0, Lcom/threed/jpct/DepthBuffer;->width:I

    .line 29
    iput p2, p0, Lcom/threed/jpct/DepthBuffer;->height:I

    .line 30
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/threed/jpct/DepthBuffer;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/threed/jpct/DepthBuffer;->width:I

    return v0
.end method
