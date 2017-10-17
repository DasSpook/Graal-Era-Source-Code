.class public interface abstract Lcom/quattroplay/GraalEra/GLView$Renderer;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quattroplay/GraalEra/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Renderer"
.end annotation


# virtual methods
.method public abstract drawFrame(Ljavax/microedition/khronos/opengles/GL10;)Z
.end method

.method public abstract getConfigSpec()[I
.end method

.method public abstract sizeChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.end method

.method public abstract surfaceCreated(Ljavax/microedition/khronos/opengles/GL10;)V
.end method
