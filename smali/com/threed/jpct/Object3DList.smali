.class final Lcom/threed/jpct/Object3DList;
.super Ljava/lang/Object;
.source "Object3DList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private SIZE:I

.field private count:I

.field private objList:[Lcom/threed/jpct/Object3D;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    .line 18
    const/16 v0, 0x64

    iput v0, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    .line 23
    iget v0, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    iput-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    .line 24
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    .line 18
    const/16 v0, 0x64

    iput v0, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    .line 27
    iput p1, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    .line 28
    new-array v0, p1, [Lcom/threed/jpct/Object3D;

    iput-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/threed/jpct/Object3DList;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    return v0
.end method

.method static synthetic access$1(Lcom/threed/jpct/Object3DList;)[Lcom/threed/jpct/Object3D;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    return-object v0
.end method


# virtual methods
.method addElement(Lcom/threed/jpct/Object3D;)V
    .locals 4
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    const/4 v3, 0x0

    .line 54
    iget v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    iget-object v2, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 56
    iget v1, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    iget-object v2, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/threed/jpct/Object3D;

    .line 57
    .local v0, "tmp":[Lcom/threed/jpct/Object3D;
    iget-object v1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    iget-object v2, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iput-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    .line 60
    .end local v0    # "tmp":[Lcom/threed/jpct/Object3D;
    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    iget v2, p0, Lcom/threed/jpct/Object3DList;->count:I

    aput-object p1, v1, v2

    .line 61
    iget v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    .line 62
    return-void
.end method

.method clear()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    if-lt v0, v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    array-length v1, v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 41
    iget v1, p0, Lcom/threed/jpct/Object3DList;->SIZE:I

    new-array v1, v1, [Lcom/threed/jpct/Object3D;

    iput-object v1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    .line 43
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    .line 44
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method contains(Lcom/threed/jpct/Object3D;)Z
    .locals 3
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    .line 82
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 87
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const/4 v2, 0x1

    goto :goto_1

    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method elementAt(I)Lcom/threed/jpct/Object3D;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    aget-object v0, v0, p1

    return-object v0
.end method

.method elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/threed/jpct/Object3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/threed/jpct/Object3DList$1;

    invoke-direct {v0, p0}, Lcom/threed/jpct/Object3DList$1;-><init>(Lcom/threed/jpct/Object3DList;)V

    return-object v0
.end method

.method getInternalArray()[Lcom/threed/jpct/Object3D;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    return-object v0
.end method

.method removeElement(Lcom/threed/jpct/Object3D;)Z
    .locals 3
    .param p1, "obj"    # Lcom/threed/jpct/Object3D;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    .line 92
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 98
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p0, v1}, Lcom/threed/jpct/Object3DList;->removeElementAt(I)V

    .line 95
    const/4 v2, 0x1

    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeElementAt(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 73
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    iget v3, p0, Lcom/threed/jpct/Object3DList;->count:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    :cond_0
    iget v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    .line 77
    iget-object v0, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    iget v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 78
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/threed/jpct/Object3DList;->count:I

    return v0
.end method

.method toArray()[Lcom/threed/jpct/Object3D;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    iget v1, p0, Lcom/threed/jpct/Object3DList;->count:I

    new-array v0, v1, [Lcom/threed/jpct/Object3D;

    .line 49
    .local v0, "res":[Lcom/threed/jpct/Object3D;
    iget-object v1, p0, Lcom/threed/jpct/Object3DList;->objList:[Lcom/threed/jpct/Object3D;

    iget v2, p0, Lcom/threed/jpct/Object3DList;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-object v0
.end method
