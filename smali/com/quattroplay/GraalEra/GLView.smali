.class Lcom/quattroplay/GraalEra/GLView;
.super Landroid/view/SurfaceView;
.source "GLView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quattroplay/GraalEra/GLView$GLThread;,
        Lcom/quattroplay/GraalEra/GLView$EglHelper;,
        Lcom/quattroplay/GraalEra/GLView$Renderer;,
        Lcom/quattroplay/GraalEra/GLView$GLWrapper;
    }
.end annotation


# static fields
.field private static final sEglSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

.field private mGLWrapper:Lcom/quattroplay/GraalEra/GLView$GLWrapper;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/quattroplay/GraalEra/GLView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView;->mSizeChanged:Z

    .line 61
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/GLView;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView;->mSizeChanged:Z

    .line 66
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/GLView;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/quattroplay/GraalEra/GLView;)Lcom/quattroplay/GraalEra/GLView$GLWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/GLView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLWrapper:Lcom/quattroplay/GraalEra/GLView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/quattroplay/GraalEra/GLView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/quattroplay/GraalEra/GLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/GLView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/quattroplay/GraalEra/GLView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/quattroplay/GraalEra/GLView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/GLView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/quattroplay/GraalEra/GLView;->mSizeChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/quattroplay/GraalEra/GLView;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/quattroplay/GraalEra/GLView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/quattroplay/GraalEra/GLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mHolder:Landroid/view/SurfaceHolder;

    .line 73
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 74
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 322
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 139
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->requestExitAndWait()V

    .line 140
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->onPause()V

    .line 110
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->onResume()V

    .line 118
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 317
    sget-boolean v0, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/quattroplay/GraalEra/Natives;->onAccelerator(III)V

    .line 319
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 125
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-virtual {v0, p1}, Lcom/quattroplay/GraalEra/GLView$GLThread;->onWindowFocusChanged(Z)V

    .line 126
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-virtual {v0, p1}, Lcom/quattroplay/GraalEra/GLView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public setGLWrapper(Lcom/quattroplay/GraalEra/GLView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/quattroplay/GraalEra/GLView$GLWrapper;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/quattroplay/GraalEra/GLView;->mGLWrapper:Lcom/quattroplay/GraalEra/GLView$GLWrapper;

    .line 79
    return-void
.end method

.method public setRenderer(Lcom/quattroplay/GraalEra/GLView$Renderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/quattroplay/GraalEra/GLView$Renderer;

    .prologue
    .line 82
    new-instance v0, Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/quattroplay/GraalEra/GLView$GLThread;-><init>(Lcom/quattroplay/GraalEra/GLView;Lcom/quattroplay/GraalEra/GLView$Renderer;)V

    iput-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    .line 83
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->start()V

    .line 84
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/quattroplay/GraalEra/GLView$GLThread;->onWindowResize(II)V

    .line 102
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->surfaceCreated()V

    .line 89
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/quattroplay/GraalEra/GLView;->mGLThread:Lcom/quattroplay/GraalEra/GLView$GLThread;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/GLView$GLThread;->surfaceDestroyed()V

    .line 95
    :cond_0
    return-void
.end method
