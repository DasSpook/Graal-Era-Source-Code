.class Lcom/quattroplay/GraalEra/GLView$EglHelper;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quattroplay/GraalEra/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/quattroplay/GraalEra/GLView;


# direct methods
.method public constructor <init>(Lcom/quattroplay/GraalEra/GLView;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->this$0:Lcom/quattroplay/GraalEra/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 240
    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 248
    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 261
    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 265
    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 266
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->this$0:Lcom/quattroplay/GraalEra/GLView;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/GLView;->access$000(Lcom/quattroplay/GraalEra/GLView;)Lcom/quattroplay/GraalEra/GLView$GLWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->this$0:Lcom/quattroplay/GraalEra/GLView;

    invoke-static {v1}, Lcom/quattroplay/GraalEra/GLView;->access$000(Lcom/quattroplay/GraalEra/GLView;)Lcom/quattroplay/GraalEra/GLView$GLWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/quattroplay/GraalEra/GLView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 270
    :cond_1
    return-object v0
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 290
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 294
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 295
    iput-object v5, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 299
    iput-object v5, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 303
    iput-object v5, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 305
    :cond_2
    return-void
.end method

.method public start([I)V
    .locals 11
    .param p1, "configSpec"    # [I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 200
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 205
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 210
    new-array v8, v10, [I

    .line 211
    .local v8, "version":[I
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 213
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 214
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .line 215
    .local v5, "num_config":[I
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 217
    aget-object v0, v3, v9

    iput-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 223
    const/16 v6, 0x3098

    .line 225
    .local v6, "EGL_CONTEXT_CLIENT_VERSION":I
    const/4 v0, 0x3

    new-array v7, v0, [I

    aput v6, v7, v9

    aput v4, v7, v4

    const/16 v0, 0x3038

    aput v0, v7, v10

    .line 226
    .local v7, "attrib_list":[I
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v4, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 230
    return-void
.end method

.method public swap()Z
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 286
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
