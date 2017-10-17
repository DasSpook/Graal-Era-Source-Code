.class public Lcom/threed/jpct/VertexAttributes;
.super Ljava/lang/Object;
.source "VertexAttributes.java"


# static fields
.field public static final TYPE_FOUR_FLOATS:I = 0x4

.field public static final TYPE_SINGLE_FLOATS:I = 0x1

.field public static final TYPE_THREE_FLOATS:I = 0x3

.field public static final TYPE_TWO_FLOATS:I = 0x2


# instance fields
.field data:[F

.field dynamic:Z

.field name:Ljava/lang/String;

.field type:I

.field updated:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[FI)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [F
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/threed/jpct/VertexAttributes;->updated:Z

    .line 38
    iput-boolean v2, p0, Lcom/threed/jpct/VertexAttributes;->dynamic:Z

    .line 48
    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/VertexAttributes;->data:[F

    .line 49
    iget-object v0, p0, Lcom/threed/jpct/VertexAttributes;->data:[F

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iput p3, p0, Lcom/threed/jpct/VertexAttributes;->type:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/VertexAttributes;->updated:Z

    .line 52
    iput-object p1, p0, Lcom/threed/jpct/VertexAttributes;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public isDynamic()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/threed/jpct/VertexAttributes;->dynamic:Z

    return v0
.end method

.method public matches(I)Z
    .locals 2
    .param p1, "vertexCount"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/threed/jpct/VertexAttributes;->data:[F

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/threed/jpct/VertexAttributes;->type:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDynamic(Z)V
    .locals 0
    .param p1, "dynamic"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/threed/jpct/VertexAttributes;->dynamic:Z

    .line 70
    return-void
.end method

.method public update([FI)V
    .locals 4
    .param p1, "data"    # [F
    .param p2, "start"    # I

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-boolean v1, p0, Lcom/threed/jpct/VertexAttributes;->dynamic:Z

    if-nez v1, :cond_0

    .line 80
    const-string v1, "VertexAttributes haven\'t been defined as dynamic!"

    invoke-static {v1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    array-length v0, p1

    .line 84
    .local v0, "len":I
    if-ltz p2, :cond_1

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    .line 85
    iget-object v1, p0, Lcom/threed/jpct/VertexAttributes;->data:[F

    invoke-static {p1, v3, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/VertexAttributes;->updated:Z

    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method
