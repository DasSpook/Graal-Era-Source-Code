.class public Lcom/threed/jpct/NPOTTexture;
.super Lcom/threed/jpct/Texture;
.source "NPOTTexture.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(IILcom/threed/jpct/RGBColor;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "col"    # Lcom/threed/jpct/RGBColor;

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/Texture;-><init>(IILcom/threed/jpct/RGBColor;Z)V

    .line 29
    iput-boolean v0, p0, Lcom/threed/jpct/NPOTTexture;->nPot:Z

    .line 30
    return-void
.end method
