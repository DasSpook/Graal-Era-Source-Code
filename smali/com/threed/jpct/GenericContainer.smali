.class Lcom/threed/jpct/GenericContainer;
.super Ljava/lang/Object;
.source "GenericContainer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/threed/jpct/GenericContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private content:[I

.field private hash:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    .line 11
    iput v1, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    .line 12
    iput v1, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "cnt"    # I

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    .line 11
    iput v1, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    .line 12
    iput v1, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    .line 19
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    .line 20
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 23
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/GenericContainer;->add(I)V

    .line 24
    return-void
.end method

.method public add(I)V
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 32
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    iget-object v3, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 33
    iget-object v2, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    .line 34
    .local v1, "newy":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    if-lt v0, v2, :cond_1

    .line 37
    iput-object v1, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    .line 39
    .end local v0    # "i":I
    .end local v1    # "newy":[I
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    iget v3, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    aput p1, v2, v3

    .line 40
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    .line 41
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 42
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    .line 46
    :goto_1
    return-void

    .line 35
    .restart local v0    # "i":I
    .restart local v1    # "newy":[I
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    .end local v1    # "newy":[I
    :cond_2
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    .line 28
    iput v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    .line 29
    return-void
.end method

.method public compareTo(Lcom/threed/jpct/GenericContainer;)I
    .locals 4
    .param p1, "io"    # Lcom/threed/jpct/GenericContainer;

    .prologue
    .line 80
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    iget v3, p1, Lcom/threed/jpct/GenericContainer;->pos:I

    if-eq v2, v3, :cond_1

    .line 81
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    iget v3, p1, Lcom/threed/jpct/GenericContainer;->pos:I

    sub-int v0, v2, v3

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    if-lt v1, v2, :cond_2

    .line 89
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v2, v2, v1

    iget-object v3, p1, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v3, v3, v1

    sub-int v0, v2, v3

    .line 85
    .local v0, "dif":I
    if-nez v0, :cond_0

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/threed/jpct/GenericContainer;

    invoke-virtual {p0, p1}, Lcom/threed/jpct/GenericContainer;->compareTo(Lcom/threed/jpct/GenericContainer;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 49
    instance-of v3, p1, Lcom/threed/jpct/GenericContainer;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 50
    check-cast v1, Lcom/threed/jpct/GenericContainer;

    .line 51
    .local v1, "io":Lcom/threed/jpct/GenericContainer;
    iget v3, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    iget v4, v1, Lcom/threed/jpct/GenericContainer;->pos:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    iget v4, v1, Lcom/threed/jpct/GenericContainer;->hash:I

    if-eq v3, v4, :cond_1

    .line 61
    .end local v1    # "io":Lcom/threed/jpct/GenericContainer;
    :cond_0
    :goto_0
    return v2

    .line 54
    .restart local v1    # "io":Lcom/threed/jpct/GenericContainer;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    if-lt v0, v3, :cond_2

    .line 59
    const/4 v2, 0x1

    goto :goto_0

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v3, v3, v0

    iget-object v4, v1, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/threed/jpct/GenericContainer;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
