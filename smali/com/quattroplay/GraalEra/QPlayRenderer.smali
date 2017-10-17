.class public Lcom/quattroplay/GraalEra/QPlayRenderer;
.super Ljava/lang/Object;
.source "QPlayRenderer.java"

# interfaces
.implements Lcom/quattroplay/GraalEra/GLView$Renderer;


# instance fields
.field private mAppPath:Ljava/lang/String;

.field private mContext:Lcom/quattroplay/GraalEra/QPlayActivity;

.field private mDataPath:Ljava/lang/String;

.field private mDisplayHeight:I

.field private mDisplayWidth:I


# direct methods
.method public constructor <init>(Lcom/quattroplay/GraalEra/QPlayActivity;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lcom/quattroplay/GraalEra/QPlayActivity;
    .param p2, "displaywidth"    # I
    .param p3, "displayheight"    # I
    .param p4, "apppath"    # Ljava/lang/String;
    .param p5, "datapath"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mContext:Lcom/quattroplay/GraalEra/QPlayActivity;

    .line 47
    iput p2, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mDisplayWidth:I

    .line 48
    iput p3, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mDisplayHeight:I

    .line 49
    iput-object p4, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mAppPath:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mDataPath:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private loadLibrary()V
    .locals 13

    .prologue
    .line 109
    sget-boolean v0, Lcom/quattroplay/GraalEra/Natives;->downloaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v0, "qplay"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    .local v11, "dm":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mContext:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "sdcardpath":Ljava/lang/String;
    :goto_1
    const-string v10, ""

    .line 126
    .local v10, "startparams":Ljava/lang/String;
    iget-object v0, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mContext:Lcom/quattroplay/GraalEra/QPlayActivity;

    invoke-virtual {v0}, Lcom/quattroplay/GraalEra/QPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 127
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 130
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mAppPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mDataPath:Ljava/lang/String;

    iget v4, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mDisplayWidth:I

    iget v5, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mDisplayHeight:I

    iget v6, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v7, v11, Landroid/util/DisplayMetrics;->xdpi:F

    iget v8, v11, Landroid/util/DisplayMetrics;->ydpi:F

    iget v9, v11, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static/range {v0 .. v10}, Lcom/quattroplay/GraalEra/Natives;->QPlayMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFFFLjava/lang/String;)I

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    goto :goto_0

    .line 120
    .end local v3    # "sdcardpath":Ljava/lang/String;
    .end local v10    # "startparams":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, ""

    goto :goto_1
.end method

.method private runLibrary(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/quattroplay/GraalEra/QPlayRenderer;->loadLibrary()V

    .line 103
    sget-boolean v2, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-nez v2, :cond_0

    .line 105
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/quattroplay/GraalEra/Natives;->QPlayLoop()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public drawFrame(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/quattroplay/GraalEra/QPlayRenderer;->runLibrary(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v0

    return v0
.end method

.method public getConfigSpec()[I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 60
    const/4 v1, 0x1

    .line 61
    .local v1, "EGL_OPENGL_ES_BIT":I
    const/4 v0, 0x4

    .line 62
    .local v0, "EGL_OPENGL_ES2_BIT":I
    const/4 v3, 0x5

    new-array v2, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x3025

    aput v4, v2, v3

    aput v5, v2, v5

    const/4 v3, 0x2

    const/16 v4, 0x3040

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x3038

    aput v4, v2, v3

    .line 72
    .local v2, "configSpec":[I
    return-object v2
.end method

.method public sizeChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 90
    iput p2, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mDisplayWidth:I

    .line 91
    iput p3, p0, Lcom/quattroplay/GraalEra/QPlayRenderer;->mDisplayHeight:I

    .line 95
    return-void
.end method

.method public surfaceCreated(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 77
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 78
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v2, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 80
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 81
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 83
    sget-boolean v0, Lcom/quattroplay/GraalEra/Natives;->loaded:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/quattroplay/GraalEra/Natives;->onReloadTextures()V

    .line 85
    :cond_0
    return-void
.end method
