.class Lcom/threed/jpct/VisListManager;
.super Ljava/lang/Object;
.source "VisListManager.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private buf2Vis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threed/jpct/VisList;",
            ">;>;"
        }
    .end annotation
.end field

.field isDisposed:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/VisListManager;->buf2Vis:Ljava/util/HashMap;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/VisListManager;->isDisposed:Z

    .line 20
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/VisListManager;->isDisposed:Z

    .line 24
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/threed/jpct/VisListManager;->dispose()V

    .line 28
    return-void
.end method

.method getVisList(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/VisList;)Lcom/threed/jpct/VisList;
    .locals 8
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;
    .param p2, "current"    # Lcom/threed/jpct/VisList;

    .prologue
    .line 31
    iget-object v4, p0, Lcom/threed/jpct/VisListManager;->buf2Vis:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getID()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 32
    .local v1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/VisList;>;"
    if-nez v1, :cond_0

    .line 33
    invoke-virtual {p1, p0}, Lcom/threed/jpct/FrameBuffer;->register(Lcom/threed/jpct/VisListManager;)V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/VisList;>;"
    const/4 v4, 0x3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .restart local v1    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/threed/jpct/VisList;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v4, p0, Lcom/threed/jpct/VisListManager;->buf2Vis:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getID()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-wide v4, p1, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    iput-wide v4, p2, Lcom/threed/jpct/VisList;->lastCycle:J

    .line 55
    .end local p2    # "current":Lcom/threed/jpct/VisList;
    :goto_0
    return-object p2

    .line 41
    .restart local p2    # "current":Lcom/threed/jpct/VisList;
    :cond_0
    const/4 v2, 0x0

    .line 42
    .local v2, "use":Lcom/threed/jpct/VisList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 49
    :goto_2
    if-nez v2, :cond_1

    .line 50
    new-instance v2, Lcom/threed/jpct/VisList;

    .end local v2    # "use":Lcom/threed/jpct/VisList;
    invoke-virtual {p2}, Lcom/threed/jpct/VisList;->getMaxSize()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/threed/jpct/VisList;-><init>(I)V

    .line 51
    .restart local v2    # "use":Lcom/threed/jpct/VisList;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Additional visibility list ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") created with size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/threed/jpct/VisList;->getMaxSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 54
    :cond_1
    iget-wide v4, p1, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    iput-wide v4, v2, Lcom/threed/jpct/VisList;->lastCycle:J

    move-object p2, v2

    .line 55
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/VisList;

    .line 44
    .local v3, "vl":Lcom/threed/jpct/VisList;
    iget-wide v4, v3, Lcom/threed/jpct/VisList;->lastCycle:J

    iget-wide v6, p1, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 45
    move-object v2, v3

    .line 46
    goto :goto_2

    .line 42
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method remove(Lcom/threed/jpct/FrameBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lcom/threed/jpct/FrameBuffer;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/threed/jpct/VisListManager;->buf2Vis:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "Visibility lists disposed!"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 63
    :cond_0
    return-void
.end method
