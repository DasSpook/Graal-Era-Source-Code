.class public interface abstract Lcom/threed/jpct/IVertexController;
.super Ljava/lang/Object;
.source "IVertexController.java"


# static fields
.field public static final ALTER_SOURCE_MESH:Z = true

.field public static final PRESERVE_SOURCE_MESH:Z


# virtual methods
.method public abstract apply()V
.end method

.method public abstract cleanup()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getDestinationMesh()[Lcom/threed/jpct/SimpleVector;
.end method

.method public abstract getDestinationNormals()[Lcom/threed/jpct/SimpleVector;
.end method

.method public abstract getMeshSize()I
.end method

.method public abstract getPolygonIDs(II)[I
.end method

.method public abstract getSourceMesh()[Lcom/threed/jpct/SimpleVector;
.end method

.method public abstract getSourceNormals()[Lcom/threed/jpct/SimpleVector;
.end method

.method public abstract init(Lcom/threed/jpct/Mesh;Z)Z
.end method

.method public abstract refreshMeshData()V
.end method

.method public abstract setup()Z
.end method

.method public abstract updateMesh()V
.end method
