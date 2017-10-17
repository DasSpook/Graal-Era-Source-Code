.class Lcom/threed/jpct/Object3DList$1;
.super Ljava/lang/Object;
.source "Object3DList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threed/jpct/Object3DList;->elements()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Lcom/threed/jpct/Object3D;",
        ">;"
    }
.end annotation


# instance fields
.field cnt:I

.field sc:I

.field final synthetic this$0:Lcom/threed/jpct/Object3DList;


# direct methods
.method constructor <init>(Lcom/threed/jpct/Object3DList;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    .line 104
    invoke-static {p1}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/Object3DList$1;->sc:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v0}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result v0

    iget v1, p0, Lcom/threed/jpct/Object3DList$1;->sc:I

    if-eq v0, v1, :cond_0

    .line 109
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget v0, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    iget-object v1, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v1}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Lcom/threed/jpct/Object3D;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v0}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result v0

    iget v1, p0, Lcom/threed/jpct/Object3DList$1;->sc:I

    if-eq v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 121
    :cond_0
    iget v0, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    iget-object v1, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v1}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v0}, Lcom/threed/jpct/Object3DList;->access$1(Lcom/threed/jpct/Object3DList;)[Lcom/threed/jpct/Object3D;

    move-result-object v0

    iget v1, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    aget-object v0, v0, v1

    return-object v0

    .line 124
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ObjList Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/threed/jpct/Object3DList$1;->nextElement()Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method
