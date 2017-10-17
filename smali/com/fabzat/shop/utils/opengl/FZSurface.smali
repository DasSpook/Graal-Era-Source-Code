.class public Lcom/fabzat/shop/utils/opengl/FZSurface;
.super Landroid/opengl/GLSurfaceView;
.source "FZSurface.java"


# instance fields
.field private initialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput-boolean v6, p0, Lcom/fabzat/shop/utils/opengl/FZSurface;->initialized:Z

    .line 16
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fabzat/shop/utils/opengl/FZSurface;->setEGLContextClientVersion(I)V

    .line 17
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/fabzat/shop/utils/opengl/FZSurface;->setEGLConfigChooser(IIIIII)V

    .line 19
    return-void
.end method


# virtual methods
.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 25
    invoke-virtual {p0}, Lcom/fabzat/shop/utils/opengl/FZSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 26
    invoke-virtual {p0, v2}, Lcom/fabzat/shop/utils/opengl/FZSurface;->setZOrderOnTop(Z)V

    .line 27
    iput-boolean v2, p0, Lcom/fabzat/shop/utils/opengl/FZSurface;->initialized:Z

    .line 29
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/opengl/FZSurface;->initialized:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 45
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/fabzat/shop/utils/opengl/FZSurface;->initialized:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 37
    :cond_0
    return-void
.end method
