.class public Lcom/threed/jpct/IntList;
.super Ljava/lang/Object;
.source "IntList.java"


# instance fields
.field private cnt:I

.field private store:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    .line 8
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 18
    iget v1, p0, Lcom/threed/jpct/IntList;->cnt:I

    iget-object v2, p0, Lcom/threed/jpct/IntList;->store:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 19
    iget v1, p0, Lcom/threed/jpct/IntList;->cnt:I

    const v2, 0x8000

    iget v3, p0, Lcom/threed/jpct/IntList;->cnt:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 20
    .local v0, "n":[I
    iget-object v1, p0, Lcom/threed/jpct/IntList;->store:[I

    iget v2, p0, Lcom/threed/jpct/IntList;->cnt:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iput-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    .line 23
    .end local v0    # "n":[I
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/IntList;->store:[I

    iget v2, p0, Lcom/threed/jpct/IntList;->cnt:I

    aput p1, v1, v2

    .line 24
    iget v1, p0, Lcom/threed/jpct/IntList;->cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/threed/jpct/IntList;->cnt:I

    .line 25
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    .line 33
    return-void
.end method

.method public compact()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget v1, p0, Lcom/threed/jpct/IntList;->cnt:I

    new-array v0, v1, [I

    .line 61
    .local v0, "n":[I
    iget-object v1, p0, Lcom/threed/jpct/IntList;->store:[I

    iget v2, p0, Lcom/threed/jpct/IntList;->cnt:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    .line 63
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 41
    iget v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    if-lt p1, v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/IntList;->store:[I

    aget v0, v0, p1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/threed/jpct/IntList;->cnt:I

    return v0
.end method
