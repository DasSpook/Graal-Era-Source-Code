.class Lcom/threed/jpct/util/Overlay$MyController;
.super Lcom/threed/jpct/GenericVertexController;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threed/jpct/util/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyController"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private poss:[Lcom/threed/jpct/SimpleVector;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/threed/jpct/GenericVertexController;-><init>()V

    .line 403
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/threed/jpct/SimpleVector;

    iput-object v0, p0, Lcom/threed/jpct/util/Overlay$MyController;->poss:[Lcom/threed/jpct/SimpleVector;

    .line 399
    return-void
.end method

.method synthetic constructor <init>(Lcom/threed/jpct/util/Overlay$MyController;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/threed/jpct/util/Overlay$MyController;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/threed/jpct/util/Overlay$MyController;->getDestinationMesh()[Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    .line 407
    .local v0, "dstMesh":[Lcom/threed/jpct/SimpleVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 410
    return-void

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/util/Overlay$MyController;->poss:[Lcom/threed/jpct/SimpleVector;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setNewBounds(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 2
    .param p1, "ul"    # Lcom/threed/jpct/SimpleVector;
    .param p2, "ll"    # Lcom/threed/jpct/SimpleVector;
    .param p3, "ur"    # Lcom/threed/jpct/SimpleVector;
    .param p4, "lr"    # Lcom/threed/jpct/SimpleVector;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay$MyController;->poss:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 414
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay$MyController;->poss:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 415
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay$MyController;->poss:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 416
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay$MyController;->poss:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 417
    return-void
.end method
